//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -b10 -finish -scr=modelsim-all -hdl sobel_E.v -dump=VCD sobel_E.IFF
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
sobel
    U_sobel(
        .CLOCK              (TB_CLOCK_net),
        .RESET              (TB_RESET_net),
        .input_row_a00      (TB_input_row_a00_net),
        .input_row_a01      (TB_input_row_a01_net),
        .input_row_a02      (TB_input_row_a02_net),
        .sobel_ret          (TB_sobel_ret_net)
    );

sobel_input_row_a00_fio
    T_sobel_input_row_a00_fio(
        .clk            (TB_CLOCK_posclk),
        .rst            (TB_RESET_posrst),
        .rd_incadr      (TB_input_row_a00_rd_incadr), 
        .SimEnd         (TB_SimEnd), 
        .dout           (TB_input_row_a00_dout),
        .DataEmpty      (TB_input_row_a00_DataEmpty),
        .FioEnd         (TB_input_row_a00_FioEnd)
    );

sobel_input_row_a01_fio
    T_sobel_input_row_a01_fio(
        .clk            (TB_CLOCK_posclk),
        .rst            (TB_RESET_posrst),
        .rd_incadr      (TB_input_row_a01_rd_incadr), 
        .SimEnd         (TB_SimEnd), 
        .dout           (TB_input_row_a01_dout),
        .DataEmpty      (TB_input_row_a01_DataEmpty),
        .FioEnd         (TB_input_row_a01_FioEnd)
    );

sobel_input_row_a02_fio
    T_sobel_input_row_a02_fio(
        .clk            (TB_CLOCK_posclk),
        .rst            (TB_RESET_posrst),
        .rd_incadr      (TB_input_row_a02_rd_incadr), 
        .SimEnd         (TB_SimEnd), 
        .dout           (TB_input_row_a02_dout),
        .DataEmpty      (TB_input_row_a02_DataEmpty),
        .FioEnd         (TB_input_row_a02_FioEnd)
    );

sobel_sobel_ret_fio
    T_sobel_sobel_ret_fio(
        .clk            (TB_CLOCK_posclk),
        .rst            (TB_RESET_posrst),
        .rd_incadr      (TB_sobel_ret_rd_incadr), 
        .SimEnd         (TB_SimEnd), 
        .dout           (TB_sobel_ret_dout),
        .FioEnd         (TB_sobel_ret_FioEnd)
    );

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
