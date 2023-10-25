//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -output=file -b10 -finish -scr=modelsim-all -dump=VCD -dump_signal=PORT:ALL ave8_E.IFF
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

assign TB_SimEnd = TB_FioEnd | TB_MxPEnd | TB_MxCEnd;

assign TB_FioEnd = ( TB_in0_FioEnd[1] === 1'b1 );

assign TB_MxPEnd = 1'b0;

//---------------------------------------------------------------------------

initial begin
    $dumpfile("ave8_E.vcd");
    $dumpvars(1, TB_SimEnd);
    $dumpvars(0, U_ave8);
end

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
