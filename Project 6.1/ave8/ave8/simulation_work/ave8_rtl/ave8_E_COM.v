//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -output=file -b10 -finish -scr=modelsim-all -dump=VCD -dump_signal=PORT:ALL ave8_E.IFF
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
ave8
    U_ave8(
        .CLOCK              (TB_CLOCK_net),
        .RESET              (TB_RESET_net),
        .in0                (TB_in0_net),
        .ave8_ret           (TB_ave8_ret_net)
    );

ave8_in0_fio
    T_ave8_in0_fio(
        .clk            (TB_CLOCK_posclk),
        .rst            (TB_RESET_posrst),
        .rd_incadr      (TB_in0_rd_incadr), 
        .SimEnd         (TB_SimEnd), 
        .dout           (TB_in0_dout),
        .DataEmpty      (TB_in0_DataEmpty),
        .FioEnd         (TB_in0_FioEnd)
    );

ave8_ave8_ret_fio
    T_ave8_ave8_ret_fio(
        .clk            (TB_CLOCK_posclk),
        .rst            (TB_RESET_posrst),
        .wr_incadr      (TB_ave8_ret_wr_incadr), 
        .SimEnd         (TB_SimEnd), 
        .din            (TB_ave8_ret_din),
        .FioEnd         (TB_ave8_ret_FioEnd)
    );

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
