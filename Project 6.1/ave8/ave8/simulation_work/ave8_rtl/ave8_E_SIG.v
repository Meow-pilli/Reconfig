//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -output=file -b10 -finish -scr=modelsim-all -dump=VCD -dump_signal=PORT:ALL ave8_E.IFF
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

parameter TB_CC         = 20000;
parameter TB_CCH        = TB_CC/2;
parameter TB_CCL        = TB_CC - TB_CCH;
parameter TB_CCQ        = TB_CCH/2;
parameter TB_DELAY      = 1;
parameter TB_CP         = 1;
parameter TB_ResetCycle = 10;
parameter TB_ResetPeriod = TB_CC * TB_ResetCycle + TB_CCQ; // first reset period

parameter TB_CC_CLOCK  = 20000;
parameter TB_CCH_CLOCK = TB_CC_CLOCK / 2;
parameter TB_CCL_CLOCK = TB_CC_CLOCK - TB_CCH_CLOCK;
parameter TB_CCQ_CLOCK = TB_CCH_CLOCK / 2;
parameter TB_ClockResetInterval_CLOCK = TB_ResetPeriod % TB_CC_CLOCK;

parameter TB_StopFlg    = 1;   // 0)$stop, 1)$finish

parameter TB_Msg2 = " ****************************************************************************** ";
parameter TB_Msg3 = " ------------------------------------------------------------------------------ ";

parameter TB_MaxBusWidth = 8;

//---------------------------------------------------------------------------

reg                 TB_TD_CLOCK;
reg                 TB_TR_CLOCK;
reg [63:0]          TB_TimeData;

wire                TB_SimEnd;
reg                 TB_MxCEnd;
wire                TB_MxPEnd;
wire                TB_FioEnd;

//---------------------------------------------------------------------------

reg                 CLOCK;
reg                 RESET;
wire  [0:7]         in0;
wire  [0:7]         ave8_ret;

//---------------------------------------------------------------------------

wire                TB_CLOCK_net;
wire                TB_RESET_net;
wire  [0:7]         TB_in0_net;
wire  [0:7]         TB_ave8_ret_net;

reg                 TB_ave8_ret_Err;


wire                TB_in0_rd_incadr;
wire                TB_ave8_ret_wr_incadr;

reg                 TB_in0_rd_incadr_t;
reg                 TB_ave8_ret_wr_incadr_t;

wire  [0:7]         TB_in0_dout;
wire  [0:7]         TB_ave8_ret_din;

wire                TB_in0_DataEmpty;

wire [0:2]          TB_in0_FioEnd;
wire [0:2]          TB_ave8_ret_FioEnd;

wire  [0:31]        TB_in0_index;
wire  [0:31]        TB_ave8_ret_index;

reg   [0:31]        TB_in0_index_t;
reg   [0:31]        TB_ave8_ret_index_t;

integer             TB_in0_fvc;
integer             TB_ave8_ret_fvc;

wire                TB_CLOCK_posclk;
wire                TB_RESET_posrst;
wire                TB_CLOCK_for_clock_sig;
wire                TB_CLOCK_for_reset_sig;

//---------------------------------------------------------------------------

assign           TB_CLOCK_net          = CLOCK;
assign #TB_DELAY TB_RESET_net          = RESET;
assign #TB_DELAY TB_in0_net            = in0;

//---------------------------------------------------------------------------


//---------------------------------------------------------------------------

assign ave8_ret              = TB_ave8_ret_net;



//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

initial begin
    TB_MxCEnd = 1'b0;

    TB_in0_index_t = 1;
    TB_ave8_ret_index_t = 1;

    TB_in0_rd_incadr_t = 0;
    TB_ave8_ret_wr_incadr_t = 0;
    TB_in0_fvc = 1;
    TB_ave8_ret_fvc = 1;

end

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
