//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -b10 -finish -scr=modelsim-all -hdl sobel_E.v -dump=VCD sobel_E.IFF
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
parameter TB_input_row_a00_BitWidth = 8;
parameter TB_input_row_a01_BitWidth = 8;
parameter TB_input_row_a02_BitWidth = 8;
parameter TB_sobel_ret_BitWidth = 8;

//---------------------------------------------------------------------------

reg                 TB_TD_CLOCK;
reg                 TB_TR_CLOCK;
wire                TB_ErrFlg;
reg [63:0]          TB_TimeData;

wire                TB_SimEnd;
reg                 TB_MxCEnd;
wire                TB_MxPEnd;
wire                TB_FioEnd;
integer             TB_total_CmpCnt;
integer             TB_total_ErrCnt;
integer             TB_total_XMatCnt;
integer             TB_total_ZMatCnt;
integer             TB_total_MatCnt;

//---------------------------------------------------------------------------

reg                 CLOCK;
reg                 RESET;
wire  [7:0]         input_row_a00;
wire  [7:0]         input_row_a01;
wire  [7:0]         input_row_a02;
wire  [7:0]         sobel_ret;

//---------------------------------------------------------------------------

wire                TB_CLOCK_net;
wire                TB_RESET_net;
wire  [7:0]         TB_input_row_a00_net;
wire  [7:0]         TB_input_row_a01_net;
wire  [7:0]         TB_input_row_a02_net;
wire  [7:0]         TB_sobel_ret_net;

wire  [7:0]         TB_sobel_ret_E;

reg                 TB_sobel_ret_Err;


wire                TB_input_row_a00_rd_incadr;
wire                TB_input_row_a01_rd_incadr;
wire                TB_input_row_a02_rd_incadr;
wire                TB_sobel_ret_rd_incadr;

reg                 TB_input_row_a00_rd_incadr_t;
reg                 TB_input_row_a01_rd_incadr_t;
reg                 TB_input_row_a02_rd_incadr_t;
reg                 TB_sobel_ret_rd_incadr_t;

wire  [7:0]         TB_input_row_a00_dout;
wire  [7:0]         TB_input_row_a01_dout;
wire  [7:0]         TB_input_row_a02_dout;
wire  [7:0]         TB_sobel_ret_dout;

wire                TB_input_row_a00_DataEmpty;
wire                TB_input_row_a01_DataEmpty;
wire                TB_input_row_a02_DataEmpty;

wire [0:2]          TB_input_row_a00_FioEnd;
wire [0:2]          TB_input_row_a01_FioEnd;
wire [0:2]          TB_input_row_a02_FioEnd;
wire [0:2]          TB_sobel_ret_FioEnd;

integer             TB_sobel_ret_CmpCnt;

integer             TB_sobel_ret_ErrCnt;

integer             TB_sobel_ret_XMatCnt;

integer             TB_sobel_ret_ZMatCnt;

integer             TB_sobel_ret_MatCnt;

wire  [0:31]        TB_input_row_a00_index;
wire  [0:31]        TB_input_row_a01_index;
wire  [0:31]        TB_input_row_a02_index;
wire  [0:31]        TB_sobel_ret_index;

reg   [0:31]        TB_input_row_a00_index_t;
reg   [0:31]        TB_input_row_a01_index_t;
reg   [0:31]        TB_input_row_a02_index_t;
reg   [0:31]        TB_sobel_ret_index_t;

integer             TB_input_row_a00_fvc;
integer             TB_input_row_a01_fvc;
integer             TB_input_row_a02_fvc;
integer             TB_sobel_ret_fvc;

wire                TB_CLOCK_posclk;
wire                TB_RESET_posrst;
wire                TB_CLOCK_for_clock_sig;
wire                TB_CLOCK_for_reset_sig;

//---------------------------------------------------------------------------

assign           TB_CLOCK_net          = CLOCK;
assign #TB_DELAY TB_RESET_net          = RESET;
assign #TB_DELAY TB_input_row_a00_net  = input_row_a00;
assign #TB_DELAY TB_input_row_a01_net  = input_row_a01;
assign #TB_DELAY TB_input_row_a02_net  = input_row_a02;

//---------------------------------------------------------------------------


//---------------------------------------------------------------------------

assign sobel_ret             = TB_sobel_ret_net;



//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

initial begin
    TB_MxCEnd = 1'b0;

    TB_total_CmpCnt  = 0;
    TB_total_ErrCnt  = 0;
    TB_total_XMatCnt = 0;
    TB_total_ZMatCnt = 0;
    TB_total_MatCnt  = 0;

    TB_input_row_a00_index_t = 1;
    TB_input_row_a01_index_t = 1;
    TB_input_row_a02_index_t = 1;
    TB_sobel_ret_index_t = 1;

    TB_input_row_a00_rd_incadr_t = 0;
    TB_input_row_a01_rd_incadr_t = 0;
    TB_input_row_a02_rd_incadr_t = 0;
    TB_sobel_ret_rd_incadr_t = 0;
    TB_input_row_a00_fvc = 1;
    TB_input_row_a01_fvc = 1;
    TB_input_row_a02_fvc = 1;
    TB_sobel_ret_fvc = 1;

end

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
