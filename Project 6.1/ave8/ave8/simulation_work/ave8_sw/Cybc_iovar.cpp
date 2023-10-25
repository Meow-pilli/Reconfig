/*
 * (C) Copyright by NEC Corporation 2008-2011. All rights reserved.
 */

#include "Cybc_iovar.h"
using namespace cyber;

namespace cyber {
    FILE *simres_fp = NULL;
    bool init_flag = false;
    BC_SCHE_MODE bc_io_base::sche_mode = BC_SCHE_AUTO;
    BC_COMP_MODE bc_io_base::comp_mode = BC_COMP_TRANS;
    bool bc_src::delimiter = true;
    int bc_src::radix = 16;
    unsigned int bc_src::vcd_cnt = 0;
    std::list<FILE *> bc_log_list;
    bc_out_report bc_report;

    void bc_initial(bool bc_stdout, bool bc_fileout) {
	static bool bc_stdout_flag = false;
	static bool bc_fileout_flag = false;

	if (init_flag == true) return;

	init_genrand(5489);

	if (bc_stdout == true && bc_stdout_flag == false) {
	    bc_log_list.push_back(stdout);
	    bc_stdout_flag = true;
	}

	if (bc_fileout == true && bc_fileout_flag == false) {
	    if((simres_fp = fopen("sim.res", "w")) == NULL){
		bc_sys_error("cannot open file(sim.res)");
	    }
	    bc_log_list.push_back(simres_fp);
	    bc_fileout_flag = true;
	}

	init_flag = true;
    }

    void bc_sys_error(const char *msg) {
	fprintf(stderr, "Error: %s\n", msg);
	exit(1);
    }
};
