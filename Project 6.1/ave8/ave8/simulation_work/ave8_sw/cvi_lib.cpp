
#include "cvi_lib.h"

static CVI_DATA *cvi_new_cdata(void);
static int cvi_getline_vcd_file(void);
static int cvi_read_vcd_header_date(void);
static int cvi_read_vcd_header_version(void);
static int cvi_read_vcd_header_timescale(void);
static int cvi_read_vcd_header_comment(void);
static int cvi_read_vcd_header_scope(void);
static int cvi_read_vcd_header_var(int counter);
static void cvi_read_vcd_header_var_bit(CVI_DATA *cdatp, char *buf);
static int cvi_read_vcd_header_upscope(void);
static int cvi_read_vcd_header_enddefinitions(void);
static int cvi_read_vcd_header_dumpvars(void);
static int cvi_read_vcd_now_data(CVI_DATA **cdatp);
static void cvi_analyze_vcd_data(char *line, char *data, char *namp);
static void cvi_initial_cdata_update(void);
static void cvi_read_from_vcd(CVI_DATA *vvalue);
static void cvi_read_from_vcd_cycle(CVI_DATA *cdatp);
static void cvi_check_update_value(void);
static void cvi_check_update_value_cycle(CVI_PTYPE ptype);
static void cvi_split_str(char *s, char split_buf[][CVI_LINEMAX], int *item_num);
static void cvi_sys_error(const char *msg, char level);
static CVI_FIFO_DATA *cvi_fifo_init(CVI_DATA *cdatp);
static void cvi_fifo_enq(CVI_DATA *cdatp);
static char *cvi_fifo_deq(CVI_DATA *cdatp);
static void cvi_fifo_free(CVI_DATA *cdatp);
static int cvi_fifo_is_empty(CVI_DATA *cdatp);

static char *cvi_create_alias(void);
static void cvi_dump_vcd_header_var(void);
static void cvi_dump_vcd_dumpvars(void);


FILE *L_cvi_fp = NULL;
char *L_cvi_line = NULL;
char *L_cvi_data = NULL;
char *L_cvi_namp = NULL;
int L_cvi_max_bitwidth = 0;
CVI_HEADER L_cheader = {NULL, NULL, NULL};
CVI_DATA *L_cdata_tbl = NULL;	
int L_cdata_num = 0;
int L_cdata_clk_idx = 0;
int L_cdata_rst_idx = 1;

unsigned int L_cvi_sim_time = 0;
CVI_CMODE L_cvi_compare_mode;	

const char *cvi_value_0 = "0";
const char *cvi_value_1 = "1";

const char *L_cvi_version = "0.13";

void
cvi_read_start(
    char *fname,
    CVI_CMODE compare_mode
    )
{
    L_cvi_compare_mode = compare_mode;

    L_cvi_fp = fopen (fname, "r");
    if (L_cvi_fp == NULL) {
	char buf[CVI_LINEMAX];
	(void)sprintf(buf, "cannot open %s", fname);
	cvi_sys_error(buf, 'F');
    }

    cvi_alloc_line_buffer();

    cvi_read_vcd_header();
    
    cvi_check_port();
}


void
cvi_append_read_port(
    char *port_name,
    int bitstart,
    int bitwidth,
    CVI_PTYPE ptype
    )
{
    CVI_DATA *cdatp;
    int abs_bitw;
    int len;
    char *namp;

    cdatp = cvi_new_cdata();
    
    len = strlen(port_name);
    namp = (char *)malloc((len + 3) * sizeof(char));
    (void)sprintf(namp, "\"%s\"", port_name);

    cdatp->signal.namp = cvi_strsave(namp);
    cdatp->signal.bitstart = bitstart;
    cdatp->signal.bitwidth = bitwidth;
    cdatp->signal.ptype = ptype;

    cdatp->update = CVI_NO;
    cdatp->fifo = cvi_fifo_init(cdatp);
    cdatp->m_fifo = cdatp->fifo;
    cdatp->m_last_fifo = cdatp->fifo;

    abs_bitw = abs(cdatp->signal.bitwidth);

    cdatp->now_data = (char*)calloc(abs_bitw + 1, sizeof(char));
    
    if (L_cvi_max_bitwidth < abs_bitw) {
	L_cvi_max_bitwidth = abs_bitw;
    }

    free(namp);
}

void
cvi_append_read_port_with_valid(
    char *port_name,
    int bitstart,
    int bitwidth,
    CVI_PTYPE ptype,
    char *valid_name
    )
{
    CVI_DATA *cdatp;
    CVI_DATA *cdatp_v;
    int bs_v;
    int bw_v;

    cvi_append_read_port(port_name, bitstart, bitwidth, ptype);

    if (bitwidth > 0) {
	bs_v = 0;
	bw_v = 1;
    }
    else {
	bs_v = 0;
	bw_v = -1;
    }

    cvi_append_read_port(valid_name, bs_v, bw_v, CVI_PORT_OUT);

    cdatp = &(L_cdata_tbl[L_cdata_num-2]);
    cdatp_v = &(L_cdata_tbl[L_cdata_num-1]);

    cdatp_v->port_tno = cdatp->tno;

    cdatp->port_tno = cdatp_v->tno;

    cdatp_v->signal.is_valid = CVI_YES;
}

static CVI_DATA *
cvi_new_cdata()
{
    CVI_DATA *cdatp;

    if (L_cdata_tbl == NULL) {
	L_cdata_num++;
	L_cdata_tbl = (CVI_DATA*)calloc(L_cdata_num, sizeof(CVI_DATA));
    }
    else {
	L_cdata_num++;
	L_cdata_tbl = (CVI_DATA*)realloc(L_cdata_tbl, sizeof(CVI_DATA) * L_cdata_num);
    }

    cdatp = &(L_cdata_tbl[L_cdata_num-1]);

    cdatp->tno = L_cdata_num - 1;
    cdatp->signal.type = VNONE;
    cdatp->signal.bitstart = -1;
    cdatp->signal.bitwidth = 0;
    cdatp->signal.ptype = CVI_PORT_NONE;
    cdatp->signal.alias = NULL;
    cdatp->signal.namp = NULL;
    cdatp->signal.is_valid = CVI_NO;

    cdatp->fifo = NULL;
    cdatp->m_fifo = NULL;
    cdatp->m_last_fifo = NULL;
    cdatp->port_tno = -1;
    cdatp->now_data = NULL;
    cdatp->update = -1;

    return cdatp;
}

void
cvi_alloc_line_buffer()
{
    int len;

    len = CVI_FIFO_DATA_SIZE + CVI_ALIAS_NAME_MAXLEN + 3;

    len = len > CVI_LINEMAX ? len : CVI_LINEMAX;

    L_cvi_line = (char*)calloc(len, sizeof(char));

    L_cvi_data = (char*)calloc(L_cvi_max_bitwidth+1, sizeof(char));
    L_cvi_namp = (char*)calloc(CVI_ALIAS_NAME_MAXLEN+1, sizeof(char));
}

void
cvi_check_port()
{
    int i;
    CVI_DATA *cdatp;

    for (i = 0; i < L_cdata_num; i++) {
	cdatp = &L_cdata_tbl[i];

	if (cdatp->update == -1) {
	    cvi_sys_error("not found port", 'F');
	}
    }

}

static int
cvi_getline_vcd_file()
{
    char *c;

    L_cvi_line[0] = '\0';
    c = fgets(L_cvi_line, CVI_LINEMAX, L_cvi_fp);
    if (c == NULL) {
	return CVI_NO;
    }

    return CVI_YES;
}


void
cvi_read_vcd_header()
{
    int res;
    int var_counter;

    var_counter = 0;

    for (;;) {
	res = cvi_getline_vcd_file();
	if (res == CVI_NO) {
	    break;
	}

	if (strcmp(L_cvi_line, "\n") == 0) {
	    continue;
	}

	if (strncmp(L_cvi_line, "$date", 5) == 0) {
	    res = cvi_read_vcd_header_date();
	}
	else if (strncmp(L_cvi_line, "$version", 8) == 0) {
	    res = cvi_read_vcd_header_version();
	}
	else if (strncmp(L_cvi_line, "$timescale", 10) == 0) {
	    res = cvi_read_vcd_header_timescale();
	}
	else if (strncmp(L_cvi_line, "$comment", 8) == 0) {
	    res = cvi_read_vcd_header_comment();
	}
	else if (strncmp(L_cvi_line, "$scope", 6) == 0) {
	    res = cvi_read_vcd_header_scope();
	}
	else if (strncmp(L_cvi_line, "$var", 4) == 0) {
	    res = cvi_read_vcd_header_var(var_counter);
	    var_counter++;
	}
	else if (strncmp(L_cvi_line, "$upscope", 8) == 0) {
	    res = cvi_read_vcd_header_upscope();
	}
	else if (strncmp(L_cvi_line, "$enddefinitions", 15) == 0) {
	    res = cvi_read_vcd_header_enddefinitions();
	}
	else if (strncmp(L_cvi_line, "$dumpvars", 9) == 0) {
	    res = cvi_read_vcd_header_dumpvars();

	    break;
	}
	
	if (res == CVI_NO) {
	    break;
	}
    }

}

static int
cvi_read_vcd_header_date()
{
    int res;

    res = cvi_getline_vcd_file();
    if (res == CVI_NO) {
	return CVI_NO;
    }

    L_cheader.date = cvi_strsave(L_cvi_line);

    res = cvi_getline_vcd_file();
    if (res == CVI_NO) {
	return CVI_NO;
    }

    if (strncmp(L_cvi_line, "$end", 4) == 0) {
	return CVI_YES;
    }

    return CVI_NO;
}

static int
cvi_read_vcd_header_version()
{
    int res;

    res = cvi_getline_vcd_file();
    if (res == CVI_NO) {
	return CVI_NO;
    }

    L_cheader.version = cvi_strsave(L_cvi_line);

    res = cvi_getline_vcd_file();
    if (res == CVI_NO) {
	return CVI_NO;
    }

    if (strncmp(L_cvi_line, "$end", 4) == 0) {
	return CVI_YES;
    }

    return CVI_NO;
}

static int
cvi_read_vcd_header_timescale()
{
    int res;

    res = cvi_getline_vcd_file();
    if (res == CVI_NO) {
	return CVI_NO;
    }

    L_cheader.timescale = cvi_strsave(L_cvi_line);

    res = cvi_getline_vcd_file();
    if (res == CVI_NO) {
	return CVI_NO;
    }

    if (strncmp(L_cvi_line, "$end", 4) == 0) {
	return CVI_YES;
    }

    return CVI_NO;
}

static int
cvi_read_vcd_header_comment()
{
    int res;

    for (;;) {
	res = cvi_getline_vcd_file();
	if (res == CVI_NO) {
	    return CVI_NO;
	}

	if (strncmp(L_cvi_line, "$end", 4) == 0) {
	    return CVI_YES;
	}
    }

    return CVI_NO;
}

static int
cvi_read_vcd_header_scope()
{
    return CVI_YES;
}

static int
cvi_read_vcd_header_var(int counter)
{
    CVI_DATA *cdatp;
    char split_buf[CVI_LINEMAX][CVI_LINEMAX];
    int item_num;
    int i;
    int check_port_flag;
    static int pre_port_tno = -1;
    
    cvi_split_str(L_cvi_line, split_buf, &item_num);

    if (counter == L_cdata_clk_idx
	|| counter == L_cdata_rst_idx) {
	cdatp = &L_cdata_tbl[counter];
	pre_port_tno = -1;
    }
    else if (pre_port_tno != -1){ 

	cdatp = &L_cdata_tbl[pre_port_tno];
	pre_port_tno = -1;
    }
    else {
	check_port_flag = CVI_NO;
	for (i = 0; i < L_cdata_num; i++) {
	    cdatp = &L_cdata_tbl[i];

	    if (strcmp(cdatp->signal.namp, split_buf[4]) == 0) {
		check_port_flag = CVI_YES;
		break;
	    }
	}

	if (check_port_flag == CVI_NO) {
	    return CVI_YES;
	}

	pre_port_tno = cdatp->port_tno;
    }

    for (i = 0; i < item_num; i++) {
	switch(i) {
	case 0:			
	    if (strcmp(split_buf[i], "$var") == 0) {
		;
	    }
	    else {
		cvi_sys_error("unknown format", 'F');
	    }
	    break;

	case 1:
	    if (strcmp(split_buf[i], "wire") == 0) {
		cdatp->signal.type = VWIRE;
	    }
	    else if (strcmp(split_buf[i], "reg") == 0) {
		cdatp->signal.type = VREG;
	    }
	    else {
		cvi_sys_error("unknown verilog type", 'X');
	    }
	    break;

	case 2:
	    cdatp->signal.bitstart = 0;
	    cdatp->signal.bitwidth = atoi(split_buf[i]);
	    break;

	case 3:
	    cdatp->signal.alias = cvi_strsave(split_buf[i]);
	    break;

	case 4:	
	    break;

	case 5:
	    if (strcmp(split_buf[i], "$end") == 0) {
		break;
	    }
	    else {
		cvi_read_vcd_header_var_bit(cdatp, split_buf[i]);
	    }
	    break;
	}
    }

    return CVI_YES;
}

static void
cvi_read_vcd_header_var_bit(
    CVI_DATA *cdatp,
    char *buf
    )
{
    char *colon_pos;
    char *kakko_pos;
    int lsb;
    int bits;
    int sub;

    colon_pos = strchr(buf+1, ':');
    *colon_pos = '\0';

    bits = atoi(buf+1);
    cdatp->signal.bitstart = bits;
    
    kakko_pos = strchr(colon_pos+1, ']');
    *kakko_pos = '\0';

    lsb = atoi(colon_pos+1);

    sub = lsb - bits;
    if (sub > 0) {
	cdatp->signal.bitwidth = sub + 1;
    }
    else {
	cdatp->signal.bitwidth = sub - 1;
    }
}

static int
cvi_read_vcd_header_upscope()
{
    return CVI_YES;
}

static int
cvi_read_vcd_header_enddefinitions()
{
    return CVI_YES;
}

static int
cvi_read_vcd_header_dumpvars()
{
    int i;
    CVI_DATA *cdatp;
    int res;

    cvi_initial_cdata_update();

    for (;;) {
	res = cvi_getline_vcd_file();
	if (res == CVI_NO) {
	    break;
	}

	if (strncmp(L_cvi_line, "$end", 4) == 0) {
	    break;
	}

	cvi_analyze_vcd_data(L_cvi_line, L_cvi_data, L_cvi_namp);

	for (i=0; i<L_cdata_num; i++) {
	    cdatp = &L_cdata_tbl[i];

	    if (strcmp(cdatp->signal.alias, L_cvi_namp) == 0) {
		(void)strcpy(cdatp->now_data, L_cvi_data);

		if (L_cvi_compare_mode == CVI_TRANSACTION) {
		    cdatp->update = CVI_YES;
		}
		break;
	    }
	}
    }
    
    if (L_cvi_compare_mode == CVI_TRANSACTION) {
	cvi_check_update_value();
    }
    else {
    }

    return CVI_YES;
}


static int
cvi_read_vcd_now_data(
    CVI_DATA **cdatp
)
{
    int i;

    (*cdatp) = NULL;

    cvi_analyze_vcd_data(L_cvi_line, L_cvi_data, L_cvi_namp);

    for (i=0; i < L_cdata_num; i++) {
        (*cdatp) = &L_cdata_tbl[i];
        
        if (strcmp((*cdatp)->signal.alias, L_cvi_namp) == 0) {
            (void)strcpy((*cdatp)->now_data, L_cvi_data);
            (*cdatp)->update = CVI_YES;
            break;
        }
    }

    return CVI_YES;
 
}

static void
cvi_analyze_vcd_data(char *line, char *data, char *namp)
{
    int i;
    int idx;
    int line_num;

    L_cvi_data[0] = '\0';
    L_cvi_namp[0] = '\0';
    line_num = strlen(line);

    if (line[0] == 'b') {
        for (i=1, idx=0; i < line_num; i++, idx++) {
            if (line[i] == ' ') {
                i++;
                break;
            }
            L_cvi_data[idx] = line[i];
        }
        L_cvi_data[idx] = '\0';

        for (idx=0; i < line_num; i++, idx++) {
            if (line[i] == '\n') {
                break;
            }
            L_cvi_namp[idx] = line[i];
        }
        L_cvi_namp[idx] = '\0';
    }
    else {
        L_cvi_data[0] = line[0];
        L_cvi_data[1] = '\0';

        for (i=1, idx=0; i < line_num; i++, idx++) {
            if (line[i] == '\n') {
                break;
            }
            L_cvi_namp[idx] = line[i];
        }
        L_cvi_namp[idx] = '\0';
    }
    
}

static void
cvi_initial_cdata_update()
{
    int i;

    for (i=0; i < L_cdata_num; i++) {
	L_cdata_tbl[i].update = CVI_NO;
    }
}


char *
cvi_read_from_fifo(
    int tno	
    )
{
    CVI_DATA *cdatp;
    char *str;

    cdatp = &L_cdata_tbl[tno];

    if (cvi_fifo_is_empty(cdatp)) {
	if (L_cvi_compare_mode == CVI_TRANSACTION) {
	    cvi_read_from_vcd(cdatp);
	}
	else {
	    cvi_read_from_vcd_cycle(cdatp);
	}
    }

    str = cvi_fifo_deq(cdatp);

    return str;
}

static void
cvi_read_from_vcd(
    CVI_DATA *cdatp
    )
{
    int res;
    CVI_DATA *cp;

    for (;;) {
	res = cvi_getline_vcd_file();
	if (res == CVI_NO) {
	    break;
	}

	if (strcmp(L_cvi_line, "\n") == 0) {
	    continue;
	}

	if (strncmp(L_cvi_line, "#", 1) == 0) {
	    cvi_check_update_value();

	    if (cdatp->m_last_fifo->tail_pos == CVI_FIFO_DATA_SIZE) {
		break;
	    }
	}
	else {
	    res = cvi_read_vcd_now_data(&cp);
	}

	if (res == CVI_NO) {
	    break;
	}
    }
}

static void
cvi_check_update_value()
{
    CVI_DATA *cdatp;
    CVI_DATA *cclk;
    CVI_DATA *port_cdatp;
    int i;



    cclk = &L_cdata_tbl[L_cdata_clk_idx];

    if (cclk->update == CVI_YES && cclk->now_data[0] == '1') {
	for (i = 0; i < L_cdata_num; i++) {
	    cdatp = &L_cdata_tbl[i];

	    if (cdatp->signal.is_valid == CVI_NO) {
		continue;
	    }

	    if (cdatp->now_data[0] == '0') {
		continue;
	    }

	    port_cdatp = &L_cdata_tbl[cdatp->port_tno];


	    cvi_fifo_enq(port_cdatp);
	}
    }
    else {
	for (i = 0; i < L_cdata_num; i++) {
	    cdatp = &L_cdata_tbl[i];

	    if (cdatp->signal.is_valid == CVI_NO) {
		continue;
	    }

	    if (cdatp->update == CVI_YES && cdatp->now_data[0] == '1') {
		port_cdatp = &L_cdata_tbl[cdatp->port_tno];


		cvi_fifo_enq(port_cdatp);
	    }
	}
    }

    cvi_initial_cdata_update();
}

static void
cvi_read_from_vcd_cycle(
    CVI_DATA *cdatp		
    )
{
    int res;
    CVI_DATA *cclk;
    CVI_DATA *cp;
    static int first_output = CVI_YES;

    cclk = &L_cdata_tbl[L_cdata_clk_idx];
    
    for (;;) {
	res = cvi_getline_vcd_file();
	if (res == CVI_NO) {
	    break;
	}

	if (strcmp(L_cvi_line, "\n") == 0) {
	    continue;
	}

	if (strncmp(L_cvi_line, "#", 1) == 0) {
	    if (cclk->update == CVI_YES
		&& cclk->now_data[0] == '1') {
		cvi_check_update_value_cycle(CVI_PORT_IN);
	    }

	    cclk->update = CVI_NO;
	}
	else {
	    res = cvi_read_vcd_now_data(&cp);

	    if (cp == cclk 
		&& cp->update == CVI_YES
		&& cp->now_data[0] == '1') {
		
		if (first_output == CVI_NO) { 
		    cvi_check_update_value_cycle(CVI_PORT_OUT);
		}
		else {
		    first_output = CVI_NO;
		}
	    }

	}

	if (res == CVI_NO) {
	    break;
	}
    }
}

static void
cvi_check_update_value_cycle(
    CVI_PTYPE ptype
    )
{
    int i;
    CVI_DATA *cdatp, *cclk;

    cclk = &L_cdata_tbl[L_cdata_clk_idx];

    for (i=0; i < L_cdata_num; i++) {
	cdatp = &L_cdata_tbl[i];

	if (cdatp->signal.ptype != ptype) {
	    continue;
	}

	if (cdatp == cclk) {
	    continue;
	}

	cvi_fifo_enq(cdatp);
    }

    return;
}

int
cvi_end(char *name)
{
    int i, j;
    CVI_DATA *cdatp;
    CVI_FIFO_DATA *fifo, *nfifo;

    fclose(L_cvi_fp);

    for (i=0; i < L_cdata_num; i++) {
	cdatp = &L_cdata_tbl[i];
	
	if (cdatp->signal.alias != NULL) {
	    free(cdatp->signal.alias);
	}
	if (cdatp->signal.namp != NULL) {
	    free(cdatp->signal.namp);
	}
	for (fifo=cdatp->m_fifo; fifo; fifo=nfifo) {
	    nfifo = fifo->nxtp;
	    for (j = 0; j < CVI_FIFO_DATA_SIZE; j++) {
		free(fifo->data[j]);
	    }
	    free(fifo);
	}
	if (cdatp->now_data != NULL) {
	    free(cdatp->now_data);
	}
    }
    free(L_cdata_tbl);

    if (L_cheader.date != NULL) {
	free(L_cheader.date);
    }
    if (L_cheader.version != NULL) {
	free(L_cheader.version);
    }
    if (L_cheader.timescale != NULL) {
	free(L_cheader.timescale);
    }

    return 0;
}


char *
cvi_strsave(
    const char  *s             
)
{
    char  *p;

    if (s == NULL)      s = "";         

    p = (char *)malloc(strlen(s) + 1);
    (void)strcpy(p, s);
    return (p);
}

static void
cvi_split_str(
    char *s,
    char split_buf[][CVI_LINEMAX], 
    int *item_num	
    )
{
    int i;
    int len;
    int str_num;
    char buf[2];

    len = strlen(s);
    (*item_num) = 0;
    str_num = 0;

    for (i=0; i<len; i++) {

	if (s[i] == ' ' || s[i] == '\n') {	
	    str_num = 0;
	    continue;
	}


	if (str_num == 0) {
	    (*item_num)++;
	    split_buf[(*item_num)-1][0] = '\0';
	}

	(void)sprintf(buf, "%c", s[i]);	
	(void)strcat(split_buf[(*item_num)-1], buf);
	str_num++;
    }
}

static void
cvi_sys_error(const char *msg, char level)
{
    (void)fprintf(stderr, "%c: %s\n", level, msg);
    exit(1);
}

void
cvi_get_days(
    int *year,
    int *month,
    int *mday
    )
{
    struct tm *ttable; 
    time_t    time_num; 

    if ((time_num = time((time_t *)NULL)) == -1){    
        cvi_sys_error("time get error.", 'F');
        exit(1);
    }

    ttable = localtime(&time_num);    

    *year       = ttable->tm_year + 1900;  
    *month      = ttable->tm_mon + 1;
    *mday       = ttable->tm_mday; 

}

char *
cvi_10_to_2(
    int digit,
    int bitw
    )
{
    static char tmp[CVI_LINEMAX];
    int i;

    for( i=1; i<=bitw; i++) {
	if (digit % 2 == 1) {
	    tmp[bitw - i] = '1';
        }
	else {
	    tmp[bitw - i] = '0';
        }
	digit = digit / 2;
    }

    tmp[bitw] = '\0';

    return tmp;
}

char *
cvi_get_sig_name(
    int table_no
    )
{
    static char namp[CVI_LINEMAX];
    int len;

    (void)strcpy(namp, L_cdata_tbl[table_no].signal.namp);
    len = strlen(namp);

    namp[len-1] = '\0';
    
    return namp+1;
}


static CVI_FIFO_DATA*
cvi_fifo_init(CVI_DATA *cdatp)
{
    CVI_FIFO_DATA *fifo;
    int i;

    fifo = (CVI_FIFO_DATA*)calloc(1, sizeof(CVI_FIFO_DATA));

    for (i = 0; i < CVI_FIFO_DATA_SIZE; i++) {
	fifo->data[i] = (char*)calloc(abs(cdatp->signal.bitwidth)+1, sizeof(char));
    }
    fifo->head_pos = 0;
    fifo->tail_pos = 0;
    fifo->nxtp = NULL;

    return fifo;
}

static void
cvi_fifo_enq(CVI_DATA *cdatp)
{
    CVI_FIFO_DATA* fifo;

    fifo = cdatp->m_last_fifo;

    if (fifo->tail_pos == CVI_FIFO_DATA_SIZE) {
	fifo->nxtp = cvi_fifo_init(cdatp);
	fifo = fifo->nxtp;
	cdatp->m_last_fifo = fifo;
    }

    (void)strcpy(fifo->data[fifo->tail_pos], cdatp->now_data);
    (fifo->tail_pos)++;
}

static char *
cvi_fifo_deq(CVI_DATA *cdatp)
{
    static char ret[CVI_LINEMAX];
    CVI_FIFO_DATA *m_fifo;

    m_fifo = cdatp->m_fifo;

    if (cvi_fifo_is_empty(cdatp) == CVI_YES) {
	return NULL;
    }

    (void)strcpy(ret, m_fifo->data[m_fifo->head_pos]);
    m_fifo->data[m_fifo->head_pos][0] = '\0';
    (m_fifo->head_pos)++;

    if (m_fifo->head_pos == m_fifo->tail_pos) {
	if (m_fifo->nxtp == NULL) {
	    m_fifo->head_pos = 0;
	    m_fifo->tail_pos = 0;
	}
	else {
	    cvi_fifo_free(cdatp);
	}
    }

    return ret;
}

static void
cvi_fifo_free(CVI_DATA *cdatp)
{
    CVI_FIFO_DATA *fifo;
    int i;

    fifo = cdatp->m_fifo->nxtp;

    for (i = 0; i < CVI_FIFO_DATA_SIZE; i++) {
	free(cdatp->m_fifo->data[i]);
    }
    free(cdatp->m_fifo);
    
    cdatp->m_fifo = fifo;
    cdatp->fifo = fifo;
}

static int
cvi_fifo_is_empty(CVI_DATA *cdatp)
{
    if (cdatp->m_fifo->head_pos != cdatp->m_fifo->tail_pos) {
	return CVI_NO;
    }
    else {
	return CVI_YES;
    }
}




void
cvi_dump_start(
    const char *fname,
    CVI_CMODE compare_mode,
    const char *timescale
    )
{
    L_cvi_compare_mode = compare_mode;

    L_cvi_fp = fopen (fname, "w");

    cvi_dump_set_header(timescale);

    cvi_dump_vcd_header();

    cvi_dump_vcd_data_return();
    cvi_dump_vcd_data_time(0);
}


void
cvi_append_dump_port(
    const char *port_name,
    int bitstart,
    int bitwidth,
    CVI_PTYPE ptype,
    const char *init_data	
    )
{
    CVI_DATA *cdatp;
    int len;
    char *namp;

    cdatp = cvi_new_cdata();

    len = strlen(port_name);
    namp = (char *)malloc((len + 3) * sizeof(char));
    (void)sprintf(namp, "\"%s\"", port_name);

    cdatp->signal.namp = cvi_strsave(namp);
    cdatp->signal.bitstart = bitstart;
    cdatp->signal.bitwidth = bitwidth;
    cdatp->signal.ptype = ptype;
    cdatp->signal.alias = cvi_strsave(cvi_create_alias());

    cdatp->update = CVI_NO;
    cdatp->now_data = (char*)calloc(abs(bitwidth) + 1, sizeof(char));

    (void)strcpy(cdatp->now_data, init_data);

    free(namp);
}

void
cvi_append_dump_port_with_valid(
    const char *port_name,
    int bitstart,
    int bitwidth,
    CVI_PTYPE ptype,
    const char *init_data,
    const char *valid_name
    )
{
    CVI_DATA *cdatp;
    CVI_DATA *cdatp_v;
    int bs_v;
    int bw_v;

    cvi_append_dump_port(port_name, bitstart, bitwidth, ptype, init_data);

    if (bitwidth > 0) {
	bs_v = 0;
	bw_v = 1;
    }
    else {
	bs_v = 0;
	bw_v = -1;
    }

    cvi_append_dump_port(valid_name, bs_v, bw_v, CVI_PORT_OUT, "0");

    cdatp = &(L_cdata_tbl[L_cdata_num-2]);
    cdatp_v = &(L_cdata_tbl[L_cdata_num-1]);

    cdatp->port_tno = cdatp_v->tno;
}

static char *
cvi_create_alias()
{
    int i;
    static char alias[CVI_ALIAS_NAME_MAXLEN] = "AAAA";
    static char tmp[CVI_ALIAS_NAME_MAXLEN];
    static int str_size = 4;
    int ascii_min = 65;
    int ascii_max = 90;
    int increase;

    (void)strcpy(tmp, alias);
    increase = CVI_NO;

    for (i=str_size-1; i >= 0; i--) {
	alias[i]++;

	if (alias[i] <= ascii_max) {
	    break;
	}

	alias[i] = ascii_min;

	if (i == 0) {
	    increase = CVI_YES;
	}
    }

    if (increase == CVI_YES) {
	str_size++;
	if (str_size >= CVI_ALIAS_NAME_MAXLEN) {
	    cvi_sys_error("over alias name length.", 'F');
	}

	alias[str_size-1] = ascii_min;
	alias[str_size] = '\0';
    }

    return tmp;
}


void
cvi_dump_set_header(const char *timescale)
{
    char buf[CVI_LINEMAX];
    int year;
    int month;
    int mday;

    cvi_get_days(&year, &month, &mday);
    (void)sprintf(buf, "%d/%d/%d", year, month, mday);
    L_cheader.date = cvi_strsave(buf);

    (void)sprintf(buf, "CWB vcd interface -- version %s", L_cvi_version);
    L_cheader.version = cvi_strsave(buf);

    L_cheader.timescale = cvi_strsave(timescale);

}

void
cvi_dump_vcd_header()
{
    (void)fprintf(L_cvi_fp, "$date\n");
    (void)fprintf(L_cvi_fp, "%s\n", L_cheader.date);
    (void)fprintf(L_cvi_fp, "$end\n");
    cvi_dump_vcd_data_return();

    (void)fprintf(L_cvi_fp, "$version\n");
    (void)fprintf(L_cvi_fp, "%s\n", L_cheader.version);
    (void)fprintf(L_cvi_fp, "$end\n");
    cvi_dump_vcd_data_return();

    (void)fprintf(L_cvi_fp, "$timescale\n");
    (void)fprintf(L_cvi_fp, "%s\n", L_cheader.timescale);
    (void)fprintf(L_cvi_fp, "$end\n");
    cvi_dump_vcd_data_return();

    (void)fprintf(L_cvi_fp, "$scope module test $end\n");

    cvi_dump_vcd_header_var();

    (void)fprintf(L_cvi_fp, "$upscope $end\n");

    (void)fprintf(L_cvi_fp, "$enddefinitions $end\n");

    cvi_dump_vcd_data_return();

    (void)fprintf(L_cvi_fp, "$comment\n");
    (void)fprintf(L_cvi_fp, "$end\n");

    cvi_dump_vcd_data_return();

    cvi_dump_vcd_dumpvars();

    cvi_dump_vcd_data_return();
}

static void
cvi_dump_vcd_header_var()
{
    int i;
    CVI_DATA *cdatp;
    int bitw;
    int bits;
    int abs_bitw;

    for (i = 0; i < L_cdata_num; i++) {
	cdatp = &L_cdata_tbl[i];

	(void)fprintf(L_cvi_fp, "$var ");

	if (cdatp->signal.type == VREG) {
	    (void)fprintf(L_cvi_fp, "reg ");
	}
	else {
	    (void)fprintf(L_cvi_fp, "wire ");
	}

	bits = cdatp->signal.bitstart;
	bitw = cdatp->signal.bitwidth;
	abs_bitw = abs(bitw);

	(void)fprintf(L_cvi_fp, "%d ", abs_bitw);

	(void)fprintf(L_cvi_fp, "%s ", cdatp->signal.alias);

	(void)fprintf(L_cvi_fp, "%s ", cdatp->signal.namp);

	if (abs_bitw == 1) {
	}
	else if (bitw > 1) {
	    (void)fprintf(L_cvi_fp, "[%d:%d] ", bits, bits+bitw-1);
	}
	else {	
	    (void)fprintf(L_cvi_fp, "[%d:%d] ", bits, bits+bitw+1);
	}

	(void)fprintf(L_cvi_fp, "$end\n");
    }

}

static void
cvi_dump_vcd_dumpvars()
{
    int i;
    CVI_DATA *cdatp;

    (void)fprintf(L_cvi_fp, "$dumpvars\n");

    for (i = 0; i < L_cdata_num; i++) {
	cdatp = &L_cdata_tbl[i];
	cvi_dump_vcd_data_one(cdatp);
    }
    (void)fprintf(L_cvi_fp, "$end\n");

}

void
cvi_dump_vcd_data_trans(int table_no, char *data)
{
    CVI_DATA *cdatp;
    CVI_DATA *cclk;	
    CVI_DATA *cdatp_v;

    cdatp = &L_cdata_tbl[table_no];
    cclk = &L_cdata_tbl[L_cdata_clk_idx];
    cdatp_v = &L_cdata_tbl[cdatp->port_tno];

    if (L_cvi_sim_time != 0) {
	cvi_dump_vcd_data_time(L_cvi_sim_time);
    }
    L_cvi_sim_time += 5;

    (void)strcpy(cclk->now_data, "1");
    (void)strcpy(cdatp->now_data, data);
    (void)strcpy(cdatp_v->now_data, "1");
    cvi_dump_vcd_data_one(cclk);
    cvi_dump_vcd_data_one(cdatp);
    cvi_dump_vcd_data_one(cdatp_v);

    cvi_dump_vcd_data_return();

    cvi_dump_vcd_data_time(L_cvi_sim_time);
    L_cvi_sim_time += 5;

    (void)strcpy(cclk->now_data, "0");
    (void)strcpy(cdatp_v->now_data, "0");
    cvi_dump_vcd_data_one(cclk);
    cvi_dump_vcd_data_one(cdatp_v);

    cvi_dump_vcd_data_return();
}

void
cvi_dump_vcd_data_cycle(int table_no, char *data)
{
    CVI_DATA *cdatp;

    cdatp = &L_cdata_tbl[table_no];

    (void)strcpy(cdatp->now_data, data);
    cvi_dump_vcd_data_one(cdatp);
}

void
cvi_dump_vcd_data_clock_edge(
    int value
    )
{
    CVI_DATA *cclk;

    cvi_dump_vcd_data_return();

    if (L_cvi_sim_time != 0) {
	cvi_dump_vcd_data_time(L_cvi_sim_time);
    }

    cclk = &L_cdata_tbl[L_cdata_clk_idx];
    if(value == 0) {
	(void)strcpy(cclk->now_data, cvi_value_0);
    }
    else {
	(void)strcpy(cclk->now_data, cvi_value_1);
    }
    cvi_dump_vcd_data_one(cclk);

    L_cvi_sim_time += 5;
}

void
cvi_dump_vcd_data_time(
    unsigned int sim_time
    )
{
    (void)fprintf(L_cvi_fp, "#%u\n", sim_time);
}

void
cvi_dump_vcd_data_one(
    CVI_DATA *cdatp
    )
{
    if (cdatp->signal.bitwidth == 1) {
	(void)fprintf(L_cvi_fp, "%s%s\n", cdatp->now_data, cdatp->signal.alias);
    }
    else {
	(void)fprintf(L_cvi_fp, "b%s %s\n", cdatp->now_data, cdatp->signal.alias);
    }
}

void
cvi_dump_vcd_data_return()
{
    (void)fprintf(L_cvi_fp, "\n");
    (void)fflush(L_cvi_fp);
}
