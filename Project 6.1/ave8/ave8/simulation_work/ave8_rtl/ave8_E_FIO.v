//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -output=file -b10 -finish -scr=modelsim-all -dump=VCD -dump_signal=PORT:ALL ave8_E.IFF
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

// in0
module ave8_in0_fio( clk, rst, rd_incadr, SimEnd, dout, DataEmpty, FioEnd );

`define CYBER_SIMULATION

input  clk;
input  rst;
input  rd_incadr;
input  SimEnd;
output [0:7] dout;
output DataEmpty;
output [0:2] FioEnd;

reg    [0:7] din_t;
reg    PLI_end_t;
reg    PLI_end;
reg    DataEmpty;

reg    [0:7] wr_ptr_reg;
reg    [0:7] rd_ptr_reg;
wire   [0:7] rd_ptr_reg_t;
reg    [0:7] end_ptr;

reg    [0:7] fifo [0:100];
reg    [0:7] i;

wire   empty;
wire   next_empty;
reg    empty_r;
reg    [0:2] FioEnd_t;
reg    [0:7] last_data;
reg    f_cnt;
integer rfp;
parameter TB_CCQ_CLOCK = 20000/4;	// 1/4 clock cycle

initial begin
    #1;
    rfp <= 0;
    wr_ptr_reg <= 1;
    rd_ptr_reg <= 0;
    PLI_end    <= 1'b0;
    PLI_end_t  <= 1'b0;
    DataEmpty  <= 1'b0;
    empty_r    <= 1'b0;
    f_cnt      <= 1'b0;
    last_data  <= {8{1'bX}};

    #1;
    rfp = $fopen("in0.clv", "r");
    TB_read_txt_data_in0(din_t, PLI_end_t);
    if ( PLI_end_t == 1'b1 ) begin
        PLI_end <= 1'b1;
        wr_ptr_reg <= 0;
    end
    fifo[0] = din_t;

    #0;
    if ( PLI_end != 1'b1 ) begin
        wait ( PLI_end == 1'b1 );
    end
    $fclose(rfp);
end

assign  rd_ptr_reg_t = ( rd_incadr == 1'b1 && empty == 1'b0 ) ? ( rd_ptr_reg + 1 ) % 101 : rd_ptr_reg;
assign  empty = ( wr_ptr_reg == rd_ptr_reg ) ? 1'b1 : 1'b0;
always @ ( posedge clk ) begin
    if ( rd_incadr === 1'b1 ) begin
        if ( empty === 1'b1 ) begin
            empty_r <= 1'b1;
        end else begin
            empty_r <= 1'b0;
        end
    end
end

assign  FioEnd = FioEnd_t;
initial begin
    FioEnd_t <= 3'b000;
    #1;
    wait ( empty === 1'b1 );
    FioEnd_t <= ( f_cnt == 1'b0 ) ? 3'b001 : 3'b101;
    #(TB_CCQ_CLOCK);
    wait ( rd_incadr === 1'b1 );
    FioEnd_t <= ( f_cnt == 1'b0 ) ? 3'b011 : 3'b111;
end
assign  next_empty = ( wr_ptr_reg == rd_ptr_reg_t ) ? 1'b1 : 1'b0;
assign  dout = ( empty !== 1'b1 ) ? fifo[rd_ptr_reg] : last_data;

always @ ( posedge clk ) begin
    if ( next_empty == 1'b1 && PLI_end == 1'b0 ) begin
        end_ptr = ( rd_ptr_reg == 0 ) ? 100 : rd_ptr_reg - 1;
        i = wr_ptr_reg;
        while ( (i != end_ptr) && (PLI_end_t !== 1'b1)) begin
            #0
            TB_read_txt_data_in0(din_t, PLI_end_t);
            if ( PLI_end_t === 1'b1 ) begin
                PLI_end <= 1'b1;
                wr_ptr_reg <= i;
            end else begin
                #0
                fifo[i] = din_t;
                i = ( i + 1 ) % 101;
            end
        end // while
        if ( PLI_end_t !== 1'b1 ) begin
            wr_ptr_reg <= i;
        end
    end
end // always @ ( posedge clk )

always @ ( posedge clk ) begin
    rd_ptr_reg <= rd_ptr_reg_t;
end

function integer TB_getint;
    input [7:0] data;
    begin
        case (data)
        "0" : TB_getint = 0;
        "1" : TB_getint = 1;
        "2" : TB_getint = 2;
        "3" : TB_getint = 3;
        "4" : TB_getint = 4;
        "5" : TB_getint = 5;
        "6" : TB_getint = 6;
        "7" : TB_getint = 7;
        "8" : TB_getint = 8;
        "9" : TB_getint = 9;
        default : TB_getint = 0;
        endcase 
    end
endfunction

function integer TB_chkint;
    input [7:0] data;
    begin
        case (data)
        "0" : TB_chkint = 1;
        "1" : TB_chkint = 1;
        "2" : TB_chkint = 1;
        "3" : TB_chkint = 1;
        "4" : TB_chkint = 1;
        "5" : TB_chkint = 1;
        "6" : TB_chkint = 1;
        "7" : TB_chkint = 1;
        "8" : TB_chkint = 1;
        "9" : TB_chkint = 1;
        "x" : TB_chkint = 2;
        "X" : TB_chkint = 2;
        "z" : TB_chkint = 3;
        "Z" : TB_chkint = 3;
        "-" : TB_chkint = 4;
        "+" : TB_chkint = 6;
        " " : TB_chkint = 0;
        "\t" : TB_chkint = 0;
        "\n" : TB_chkint = 0;
        8'h0A : TB_chkint = 0;
        8'h0D : TB_chkint = 0;
        default : TB_chkint = 5;
        endcase 
    end
endfunction

task TB_read_txt_data_in0;
output [7:0] din_t;
output PLI_end_t;

reg [3:0] ctmp;
reg [11:0] tmp;

integer r,c;
reg f_minus;
reg f_x;
integer cnt;

begin
    tmp = 12'd0;
    ctmp = 0;
    cnt = 0;
    f_minus = 1'b0;
    f_x = 1'b0;
    if ( f_cnt == 1'b1 ) begin
        PLI_end_t = 1'b1;
        din_t = last_data;
        disable TB_read_txt_data_in0;
    end

    if ( rfp != 0 ) begin
        c = $fgetc(rfp);
    end else begin
        c = 32'hFFFF_FFFF;
    end
    while ( c != 32'hFFFF_FFFF ) begin
        #0;
        r = TB_chkint(c);
        if ( r != 0 && r != 6 && f_x != 1'b1 ) begin
            if ( r == 1 ) begin
                ctmp = TB_getint(c);
            end else if ( r == 3 ) begin
                ctmp = 4'hZ;
            end else if ( r == 4 && cnt == 0 ) begin
                f_minus = 1'b1;
            end else begin
                if ( r != 2 ) begin
                    $display ( " Warning: Illegal data '%c' in pattern file of the signal 'in0'." , c );
                end
                f_x = 1'b1;
                ctmp = 4'hX;
            end
            tmp = tmp * 10 + ctmp;
            cnt = cnt + 1;
        end
        if ( r == 0 && cnt != 0 ) begin
            c = 32'hFFFF_FFFF;
        end else begin
            c = $fgetc(rfp);
        end
        if ( r == 6 ) begin
            f_cnt = 1'b1;
        end
    end

    if ( cnt == 0 ) begin
        PLI_end_t = 1'b1;
    end else if ( f_x == 1'b1 || (cnt == 1 && f_minus == 1'b1 )) begin
        PLI_end_t = 1'b0;
        din_t = 8'hXX;
    end else begin
        PLI_end_t = 1'b0;
        if ( f_minus == 1'b1 ) begin
            din_t = tmp * -1;
        end else begin
            din_t = tmp;
        end
    end
    if ( cnt != 0 ) begin
        last_data = tmp[7:0];
    end else begin
        f_cnt = 1'b1;
    end
end
endtask

endmodule

// ave8_ret
module ave8_ave8_ret_fio( clk, rst, wr_incadr, SimEnd, din, FioEnd );

`define CYBER_SIMULATION

input  clk;
input  rst;
input  wr_incadr;
input  SimEnd;
input  [0:7] din;
output [0:2] FioEnd;

assign FioEnd = 3'b000;

integer wfp;
reg    [0:7]  filebuf [0:100];
reg    f_fclose;

parameter TB_CC_CLOCK = 20000;
parameter TB_CP = 1;

initial begin
    wfp = $fopen("ave8_ret.clv", "w");
    f_fclose = 1'b0;
end

always @ ( posedge clk ) begin
    #(TB_CC_CLOCK-TB_CP);
    TB_write_txt_data_ave8_ret(wr_incadr, din, SimEnd, f_fclose);
end

task TB_write_txt_data_ave8_ret;
input  incadr;
input  [0:7]  dat;
input  f_end;
inout  f_fclose;
begin
    if ( f_fclose == 1'b0 ) begin
        if ( f_end != 1 && incadr == 1 ) begin
            $fwrite(wfp, "%0d\n", dat);
        end
        if ( f_end == 1 ) begin
            $fclose(wfp);
            f_fclose = 1'b1;
        end
    end
end
endtask

endmodule

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
