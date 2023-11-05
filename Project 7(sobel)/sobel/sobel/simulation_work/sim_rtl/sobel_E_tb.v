//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -b10 -finish -scr=modelsim-all -hdl sobel_E.v -dump=VCD sobel_E.IFF
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

`timescale 1ps / 1ps

`include "./sobel_E_FIO.v"

module T_sobel_00;

`define CYBER_SIMULATION


`include "./sobel_E_SIG.v"
`include "./sobel_E_COM.v"
`include "./sobel_E_BAS.v"
`include "./sobel_E_USR.v"

parameter TestName     = "T_sobel_00";

//---------------------------------------------------------------------------

initial begin
    TB_Sim_Start( TestName );

    #TB_CP;
    wait ( TB_SimEnd === 1'b1 );

    #TB_CCH;
    TB_Sim_End(TestName);

    if (TB_StopFlg == 0) begin
        $stop(2);
    end else begin
        $finish(2);
    end
end

initial begin
    RESET = 1'b1;
    #TB_ResetPeriod;
    RESET = 1'b0;
end

initial begin
    TB_TD_CLOCK = 1'b0;
    wait ( TB_RESET_posrst === 1'b0 );
    TB_TD_CLOCK = 1'b1;
end

initial begin
    TB_TR_CLOCK = 1'b0;
    wait ( TB_RESET_posrst === 1'b0 );
    #(TB_CC_CLOCK-TB_ClockResetInterval_CLOCK);
    TB_TR_CLOCK = 1'b1;
end

//---------------------------------------------------------------------------

// input_row_a00
assign input_row_a00 = TB_input_row_a00_dout;

// input_row_a00: index
always @ ( posedge TB_CLOCK_posclk ) begin
    if ( TB_input_row_a00_rd_incadr == 1 ) begin
        TB_input_row_a00_index_t <= TB_input_row_a00_index_t + 1;
    end
end
assign TB_input_row_a00_index = TB_input_row_a00_index_t;

// input_row_a00: rd_incadr
always @ ( TB_RESET_posrst or TB_TD_CLOCK or TB_input_row_a00_fvc or TB_SimEnd ) begin
    if ( TB_RESET_posrst === 1'b0 && TB_TD_CLOCK == 1'b1 && TB_input_row_a00_fvc >= 1 && TB_SimEnd != 1'b1 ) begin
        TB_input_row_a00_rd_incadr_t <= 1'b1;
    end else begin
        TB_input_row_a00_rd_incadr_t <= 1'b0;
    end
end
assign TB_input_row_a00_rd_incadr = TB_input_row_a00_rd_incadr_t;

// input_row_a01
assign input_row_a01 = TB_input_row_a01_dout;

// input_row_a01: index
always @ ( posedge TB_CLOCK_posclk ) begin
    if ( TB_input_row_a01_rd_incadr == 1 ) begin
        TB_input_row_a01_index_t <= TB_input_row_a01_index_t + 1;
    end
end
assign TB_input_row_a01_index = TB_input_row_a01_index_t;

// input_row_a01: rd_incadr
always @ ( TB_RESET_posrst or TB_TD_CLOCK or TB_input_row_a01_fvc or TB_SimEnd ) begin
    if ( TB_RESET_posrst === 1'b0 && TB_TD_CLOCK == 1'b1 && TB_input_row_a01_fvc >= 1 && TB_SimEnd != 1'b1 ) begin
        TB_input_row_a01_rd_incadr_t <= 1'b1;
    end else begin
        TB_input_row_a01_rd_incadr_t <= 1'b0;
    end
end
assign TB_input_row_a01_rd_incadr = TB_input_row_a01_rd_incadr_t;

// input_row_a02
assign input_row_a02 = TB_input_row_a02_dout;

// input_row_a02: index
always @ ( posedge TB_CLOCK_posclk ) begin
    if ( TB_input_row_a02_rd_incadr == 1 ) begin
        TB_input_row_a02_index_t <= TB_input_row_a02_index_t + 1;
    end
end
assign TB_input_row_a02_index = TB_input_row_a02_index_t;

// input_row_a02: rd_incadr
always @ ( TB_RESET_posrst or TB_TD_CLOCK or TB_input_row_a02_fvc or TB_SimEnd ) begin
    if ( TB_RESET_posrst === 1'b0 && TB_TD_CLOCK == 1'b1 && TB_input_row_a02_fvc >= 1 && TB_SimEnd != 1'b1 ) begin
        TB_input_row_a02_rd_incadr_t <= 1'b1;
    end else begin
        TB_input_row_a02_rd_incadr_t <= 1'b0;
    end
end
assign TB_input_row_a02_rd_incadr = TB_input_row_a02_rd_incadr_t;

// sobel_ret
assign TB_sobel_ret_E = TB_sobel_ret_dout;

// sobel_ret: index
always @ ( posedge TB_CLOCK_posclk ) begin
    if ( TB_sobel_ret_rd_incadr == 1 ) begin
        TB_sobel_ret_index_t <= TB_sobel_ret_index_t + 1;
    end
end
assign TB_sobel_ret_index = TB_sobel_ret_index_t;

// sobel_ret: rd_incadr
always @ ( TB_RESET_posrst or TB_TD_CLOCK or TB_sobel_ret_fvc or TB_SimEnd ) begin
    if ( TB_RESET_posrst === 1'b0 && TB_TD_CLOCK == 1'b1 && TB_sobel_ret_fvc >= 1 && TB_SimEnd != 1'b1 ) begin
        TB_sobel_ret_rd_incadr_t <= 1'b1;
    end else begin
        TB_sobel_ret_rd_incadr_t <= 1'b0;
    end
end
assign TB_sobel_ret_rd_incadr = TB_sobel_ret_rd_incadr_t;
endmodule

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
