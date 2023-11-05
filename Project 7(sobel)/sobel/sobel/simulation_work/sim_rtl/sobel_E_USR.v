//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -b10 -finish -scr=modelsim-all -hdl sobel_E.v -dump=VCD sobel_E.IFF
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

initial begin
    #0 CLOCK = 1'b0;
    #TB_CC;
    forever begin
        CLOCK = 1'b1;
        #TB_CCH;
        CLOCK = 1'b0;
        #TB_CCL;
    end
end


assign TB_CLOCK_posclk = CLOCK;
assign TB_RESET_posrst = RESET;
assign #(TB_CP)   TB_CLOCK_for_reset_sig = TB_CLOCK_posclk;
assign #(TB_CP*2) TB_CLOCK_for_clock_sig = TB_CLOCK_posclk;

//---------------------------------------------------------------------------

// sobel_ret
initial begin
    #0 TB_sobel_ret_CmpCnt  = 0;
    #0 TB_sobel_ret_ErrCnt  = 0;
    #0 TB_sobel_ret_XMatCnt = 0;
    #0 TB_sobel_ret_ZMatCnt = 0;
    #0 TB_sobel_ret_MatCnt  = 0;
    #0 TB_sobel_ret_Err = 1'b0;

    forever begin
        #(TB_CC_CLOCK-TB_CP);
        if ( TB_SimEnd != 1'b1 && TB_TR_CLOCK == 1'b1 ) begin
            if ( TB_RESET_posrst === 1'b0 && TB_sobel_ret_fvc >= 1 ) begin
                if ( TB_sobel_ret_FioEnd === 3'b000 ) begin
                    TB_Err_Check ( TB_sobel_ret_E, sobel_ret, TB_sobel_ret_BitWidth, "sobel_ret", TB_sobel_ret_CmpCnt, TB_sobel_ret_ErrCnt, TB_sobel_ret_XMatCnt, TB_sobel_ret_ZMatCnt, TB_sobel_ret_MatCnt, TB_sobel_ret_Err );
                end else if ( TB_sobel_ret_FioEnd[0] !== 1'b1 ) begin
                    TB_Dump_Time;
                    $display ( " Warning: Output signal not compared with expected value due to insufficient data patterns. (sobel_ret)" );
                end
            end
        end
        #TB_CP;
        TB_sobel_ret_Err = 1'b0;
    end
end

assign TB_ErrFlg = TB_sobel_ret_Err;


assign TB_SimEnd = TB_FioEnd | TB_MxPEnd | TB_MxCEnd;

assign TB_FioEnd = ( TB_input_row_a00_FioEnd !== 3'b000 )
                 & ( TB_input_row_a01_FioEnd !== 3'b000 )
                 & ( TB_input_row_a02_FioEnd !== 3'b000 )
                 & ( TB_sobel_ret_FioEnd !== 3'b000 );

assign TB_MxPEnd = 1'b0;

//---------------------------------------------------------------------------

initial begin
    $dumpfile("sobel_E.vcd");
    $dumpvars(1, TB_ErrFlg);
    $dumpvars(1, TB_SimEnd);
    $dumpvars(1, TB_sobel_ret_E);
    $dumpvars(0, U_sobel);
end

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
