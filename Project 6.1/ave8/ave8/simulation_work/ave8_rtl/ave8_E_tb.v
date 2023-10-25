//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -output=file -b10 -finish -scr=modelsim-all -dump=VCD -dump_signal=PORT:ALL ave8_E.IFF
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

`timescale 1ps / 1ps

`include "./ave8_E_FIO.v"

module T_ave8_00;

`define CYBER_SIMULATION


`include "./ave8_E_SIG.v"
`include "./ave8_E_COM.v"
`include "./ave8_E_BAS.v"
`include "./ave8_E_USR.v"

parameter TestName     = "T_ave8_00";

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
    #(TB_ResetPeriod-TB_ClockResetInterval_CLOCK);
    TB_TR_CLOCK = 1'b1;
end

//---------------------------------------------------------------------------

// in0
assign in0 = TB_in0_dout;

// in0: index
always @ ( posedge TB_CLOCK_posclk ) begin
    if ( TB_in0_rd_incadr == 1 ) begin
        TB_in0_index_t <= TB_in0_index_t + 1;
    end
end
assign TB_in0_index = TB_in0_index_t;

// in0: rd_incadr
always @ ( TB_RESET_posrst or TB_TD_CLOCK or TB_in0_fvc or TB_SimEnd ) begin
    if ( TB_RESET_posrst === 1'b0 && TB_TD_CLOCK == 1'b1 && TB_in0_fvc >= 1 && TB_SimEnd != 1'b1 ) begin
        TB_in0_rd_incadr_t <= 1'b1;
    end else begin
        TB_in0_rd_incadr_t <= 1'b0;
    end
end
assign TB_in0_rd_incadr = TB_in0_rd_incadr_t;

// ave8_ret
// ave8_ret: din
assign TB_ave8_ret_din = ave8_ret;

// ave8_ret: index
always @ ( posedge TB_CLOCK_posclk ) begin
    if ( TB_ave8_ret_wr_incadr == 1 ) begin
        TB_ave8_ret_index_t <= TB_ave8_ret_index_t + 1;
    end
end
assign TB_ave8_ret_index = TB_ave8_ret_index_t;

// ave8_ret: wr_incadr
always @ ( TB_RESET_posrst or TB_TD_CLOCK or TB_ave8_ret_fvc or TB_SimEnd ) begin
    if ( TB_RESET_posrst === 1'b0 && TB_TD_CLOCK == 1'b1 && TB_ave8_ret_fvc >= 1 && TB_SimEnd != 1'b1 ) begin
        TB_ave8_ret_wr_incadr_t <= 1'b1;
    end else begin
        TB_ave8_ret_wr_incadr_t <= 1'b0;
    end
end
assign TB_ave8_ret_wr_incadr = TB_ave8_ret_wr_incadr_t;
endmodule

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
