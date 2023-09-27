// Copyright (C) 2023  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

// DATE "09/26/2023 12:00:12"

// 
// Device: Altera 5CSEMA5F31C6 Package FBGA896
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module sincos (
	a,
	areset,
	c,
	clk,
	s)/* synthesis synthesis_greybox=0 */;
input 	[9:0] a;
input 	areset;
output 	[6:0] c;
input 	clk;
output 	[6:0] s;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \cordic_0|c[0]~0_combout ;
wire \cordic_0|c[1]~1_combout ;
wire \cordic_0|c[2]~2_combout ;
wire \cordic_0|c[3]~3_combout ;
wire \cordic_0|c[4]~4_combout ;
wire \cordic_0|c[5]~5_combout ;
wire \cordic_0|c[6]~6_combout ;
wire \cordic_0|s[0]~0_combout ;
wire \cordic_0|s[1]~1_combout ;
wire \cordic_0|s[2]~2_combout ;
wire \cordic_0|s[3]~3_combout ;
wire \cordic_0|s[4]~4_combout ;
wire \cordic_0|s[5]~5_combout ;
wire \cordic_0|s[6]~6_combout ;
wire \clk~input_o ;
wire \areset~input_o ;
wire \a[9]~input_o ;
wire \a[8]~input_o ;
wire \a[7]~input_o ;
wire \a[6]~input_o ;
wire \a[5]~input_o ;
wire \a[4]~input_o ;
wire \a[3]~input_o ;
wire \a[2]~input_o ;
wire \a[1]~input_o ;
wire \a[0]~input_o ;


sincos_sincos_CORDIC_0 cordic_0(
	.c_0(\cordic_0|c[0]~0_combout ),
	.c_1(\cordic_0|c[1]~1_combout ),
	.c_2(\cordic_0|c[2]~2_combout ),
	.c_3(\cordic_0|c[3]~3_combout ),
	.c_4(\cordic_0|c[4]~4_combout ),
	.c_5(\cordic_0|c[5]~5_combout ),
	.c_6(\cordic_0|c[6]~6_combout ),
	.s_0(\cordic_0|s[0]~0_combout ),
	.s_1(\cordic_0|s[1]~1_combout ),
	.s_2(\cordic_0|s[2]~2_combout ),
	.s_3(\cordic_0|s[3]~3_combout ),
	.s_4(\cordic_0|s[4]~4_combout ),
	.s_5(\cordic_0|s[5]~5_combout ),
	.s_6(\cordic_0|s[6]~6_combout ),
	.clk(\clk~input_o ),
	.areset(\areset~input_o ),
	.a({\a[9]~input_o ,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.a_8(\a[8]~input_o ),
	.a_7(\a[7]~input_o ),
	.a_6(\a[6]~input_o ),
	.a_5(\a[5]~input_o ),
	.a_4(\a[4]~input_o ),
	.a_3(\a[3]~input_o ),
	.a_2(\a[2]~input_o ),
	.a_1(\a[1]~input_o ),
	.a_0(\a[0]~input_o ));

assign \clk~input_o  = clk;

assign \areset~input_o  = areset;

assign \a[9]~input_o  = a[9];

assign \a[8]~input_o  = a[8];

assign \a[7]~input_o  = a[7];

assign \a[6]~input_o  = a[6];

assign \a[5]~input_o  = a[5];

assign \a[4]~input_o  = a[4];

assign \a[3]~input_o  = a[3];

assign \a[2]~input_o  = a[2];

assign \a[1]~input_o  = a[1];

assign \a[0]~input_o  = a[0];

assign c[0] = \cordic_0|c[0]~0_combout ;

assign c[1] = \cordic_0|c[1]~1_combout ;

assign c[2] = \cordic_0|c[2]~2_combout ;

assign c[3] = \cordic_0|c[3]~3_combout ;

assign c[4] = \cordic_0|c[4]~4_combout ;

assign c[5] = \cordic_0|c[5]~5_combout ;

assign c[6] = \cordic_0|c[6]~6_combout ;

assign s[0] = \cordic_0|s[0]~0_combout ;

assign s[1] = \cordic_0|s[1]~1_combout ;

assign s[2] = \cordic_0|s[2]~2_combout ;

assign s[3] = \cordic_0|s[3]~3_combout ;

assign s[4] = \cordic_0|s[4]~4_combout ;

assign s[5] = \cordic_0|s[5]~5_combout ;

assign s[6] = \cordic_0|s[6]~6_combout ;

endmodule

module sincos_sincos_CORDIC_0 (
	c_0,
	c_1,
	c_2,
	c_3,
	c_4,
	c_5,
	c_6,
	s_0,
	s_1,
	s_2,
	s_3,
	s_4,
	s_5,
	s_6,
	clk,
	areset,
	a,
	a_8,
	a_7,
	a_6,
	a_5,
	a_4,
	a_3,
	a_2,
	a_1,
	a_0)/* synthesis synthesis_greybox=0 */;
output 	c_0;
output 	c_1;
output 	c_2;
output 	c_3;
output 	c_4;
output 	c_5;
output 	c_6;
output 	s_0;
output 	s_1;
output 	s_2;
output 	s_3;
output 	s_4;
output 	s_5;
output 	s_6;
input 	clk;
input 	areset;
input 	[9:0] a;
input 	a_8;
input 	a_7;
input 	a_6;
input 	a_5;
input 	a_4;
input 	a_3;
input 	a_2;
input 	a_1;
input 	a_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Add2~1_sumout ;
wire \Add2~6_cout ;
wire \Add1~1_sumout ;
wire \Add2~9_sumout ;
wire \Add2~10 ;
wire \Add1~5_sumout ;
wire \Add1~6 ;
wire \Add2~13_sumout ;
wire \Add2~14 ;
wire \Add9~1_sumout ;
wire \Add1~9_sumout ;
wire \Add1~10 ;
wire \Add2~17_sumout ;
wire \Add2~18 ;
wire \Add9~5_sumout ;
wire \Add9~6 ;
wire \Add5~1_sumout ;
wire \Add4~1_sumout ;
wire \Add6~1_sumout ;
wire \Add7~1_sumout ;
wire \Add7~2 ;
wire \Add7~5_sumout ;
wire \Add8~1_sumout ;
wire \Add8~2 ;
wire \Add8~5_sumout ;
wire \Add1~13_sumout ;
wire \Add1~14 ;
wire \Add2~21_sumout ;
wire \Add2~22 ;
wire \Add7~9_sumout ;
wire \Add7~10 ;
wire \Add8~9_sumout ;
wire \Add8~10 ;
wire \Add9~9_sumout ;
wire \Add9~10 ;
wire \Add4~5_sumout ;
wire \Add4~6 ;
wire \Add5~5_sumout ;
wire \Add5~6 ;
wire \Add5~7 ;
wire \Add6~5_sumout ;
wire \Add6~6 ;
wire \Add6~7 ;
wire \Add5~9_sumout ;
wire \Add5~10 ;
wire \Add5~11 ;
wire \Add1~17_sumout ;
wire \Add1~18 ;
wire \Add2~25_sumout ;
wire \Add2~26 ;
wire \Add5~13_sumout ;
wire \Add5~14 ;
wire \Add5~15 ;
wire \Add7~13_sumout ;
wire \Add7~14 ;
wire \Add8~13_sumout ;
wire \Add8~14 ;
wire \Add9~13_sumout ;
wire \Add9~14 ;
wire \Add4~9_sumout ;
wire \Add4~10 ;
wire \Add6~10_cout ;
wire \Add6~11 ;
wire \Add4~13_sumout ;
wire \Add4~14 ;
wire \Add1~21_sumout ;
wire \Add1~22 ;
wire \Add2~29_sumout ;
wire \Add2~30 ;
wire \Add4~17_sumout ;
wire \Add4~18 ;
wire \Add5~17_sumout ;
wire \Add5~18 ;
wire \Add5~19 ;
wire \Add7~17_sumout ;
wire \Add7~18 ;
wire \Add8~17_sumout ;
wire \Add8~18 ;
wire \Add9~17_sumout ;
wire \Add9~18 ;
wire \Add6~14_cout ;
wire \Add6~15 ;
wire \Add1~25_sumout ;
wire \Add1~26 ;
wire \Add2~33_sumout ;
wire \Add2~34 ;
wire \Add4~21_sumout ;
wire \Add4~22 ;
wire \Add5~21_sumout ;
wire \Add5~22 ;
wire \Add5~23 ;
wire \Add7~21_sumout ;
wire \Add7~22 ;
wire \Add8~21_sumout ;
wire \Add8~22 ;
wire \Add9~21_sumout ;
wire \Add9~22 ;
wire \Add6~18_cout ;
wire \Add6~19 ;
wire \Add1~29_sumout ;
wire \Add1~30 ;
wire \Add2~37_sumout ;
wire \Add2~38 ;
wire \Add4~25_sumout ;
wire \Add4~26 ;
wire \Add5~26_cout ;
wire \Add5~27 ;
wire \Add7~25_sumout ;
wire \Add7~26 ;
wire \Add8~25_sumout ;
wire \Add8~26 ;
wire \Add9~25_sumout ;
wire \Add9~26 ;
wire \Add6~22_cout ;
wire \Add6~23 ;
wire \Add1~33_sumout ;
wire \Add1~34 ;
wire \Add4~29_sumout ;
wire \Add4~30 ;
wire \Add5~30_cout ;
wire \Add5~31 ;
wire \Add7~29_sumout ;
wire \Add7~30 ;
wire \Add8~29_sumout ;
wire \Add8~30 ;
wire \Add9~29_sumout ;
wire \Add9~30 ;
wire \Add6~26_cout ;
wire \Add6~27 ;
wire \Add4~33_sumout ;
wire \Add4~34 ;
wire \Add5~34_cout ;
wire \Add5~35 ;
wire \Add7~33_sumout ;
wire \Add7~34 ;
wire \Add8~33_sumout ;
wire \Add8~34 ;
wire \Add9~33_sumout ;
wire \Add9~34 ;
wire \Add6~30_cout ;
wire \Add6~31 ;
wire \Add5~38_cout ;
wire \Add5~39 ;
wire \Add7~37_sumout ;
wire \Add7~38 ;
wire \Add8~37_sumout ;
wire \Add8~38 ;
wire \Add9~37_sumout ;
wire \Add9~38 ;
wire \Add6~34_cout ;
wire \Add6~35 ;
wire \Add5~42_cout ;
wire \Add5~43 ;
wire \Add7~41_sumout ;
wire \Add7~42 ;
wire \Add9~41_sumout ;
wire \Add9~42 ;
wire \redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist5_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][11]~q ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][10]~q ;
wire \xip1E_3_uid76_sincosTest_s[0]~0_combout ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][9]~q ;
wire \absA_uid21_sincosTest_q[7]~0_combout ;
wire \aip1E_3_uid79_sincosTest_o[3]~0_combout ;
wire \aip1E_4_uid95_sincosTest_a[13]~0_combout ;
wire \redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][15]~q ;
wire \redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ;
wire \redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ;
wire \redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][15]~q ;
wire \redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ;
wire \redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ;
wire \redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][12]~q ;
wire \redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][12]~q ;
wire \absA_uid21_sincosTest_q[6]~1_combout ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][8]~q ;
wire \aip1E_3_uid79_sincosTest_o[3]~1_combout ;
wire \aip1E_3_uid79_sincosTest_o[3]~2_combout ;
wire \aip1E_3_uid79_sincosTest_o[3]~3_combout ;
wire \absA_uid21_sincosTest_q[5]~2_combout ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][7]~q ;
wire \absA_uid21_sincosTest_q[4]~3_combout ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][6]~q ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][5]~q ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][4]~q ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][3]~q ;
wire \redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][4]~q ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][2]~q ;
wire \aip1E_3_uid79_sincosTest_o[3]~4_combout ;
wire \redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][1]~q ;
wire \redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][1]~q ;
wire \Add11~46_cout ;
wire \Add11~42 ;
wire \Add11~38 ;
wire \Add11~34 ;
wire \Add11~30 ;
wire \Add11~26 ;
wire \Add11~22 ;
wire \Add11~18 ;
wire \Add11~14 ;
wire \Add11~10 ;
wire \Add11~6 ;
wire \Add11~1_sumout ;
wire \Add12~42 ;
wire \Add12~38 ;
wire \Add12~34 ;
wire \Add12~30 ;
wire \Add12~26 ;
wire \Add12~22 ;
wire \Add12~18 ;
wire \Add12~14 ;
wire \Add12~10 ;
wire \Add12~6 ;
wire \Add12~1_sumout ;
wire \aip1E_6high_uid129_sincosTest_a[10]~0_combout ;
wire \Add11~5_sumout ;
wire \Add12~5_sumout ;
wire \Add11~9_sumout ;
wire \Add12~9_sumout ;
wire \Add11~13_sumout ;
wire \Add12~13_sumout ;
wire \Add11~17_sumout ;
wire \Add12~17_sumout ;
wire \Add11~21_sumout ;
wire \Add12~21_sumout ;
wire \Add11~25_sumout ;
wire \Add12~25_sumout ;
wire \Add11~29_sumout ;
wire \Add12~29_sumout ;
wire \Add11~33_sumout ;
wire \Add12~33_sumout ;
wire \Add11~37_sumout ;
wire \Add12~37_sumout ;
wire \Add11~41_sumout ;
wire \Add12~41_sumout ;
wire \Add14~42_cout ;
wire \Add14~38_cout ;
wire \Add14~34_cout ;
wire \Add14~30_cout ;
wire \Add14~26_cout ;
wire \Add14~22_cout ;
wire \Add14~18_cout ;
wire \Add14~14_cout ;
wire \Add14~10_cout ;
wire \Add14~6_cout ;
wire \Add14~1_sumout ;
wire \Add13~6_cout ;
wire \Add13~1_sumout ;
wire \Add28~70 ;
wire \Add28~71 ;
wire \Add28~66 ;
wire \Add28~67 ;
wire \Add28~62 ;
wire \Add28~63 ;
wire \Add28~58 ;
wire \Add28~59 ;
wire \Add28~54 ;
wire \Add28~55 ;
wire \Add28~50 ;
wire \Add28~51 ;
wire \Add28~46 ;
wire \Add28~47 ;
wire \Add28~42 ;
wire \Add28~43 ;
wire \Add28~38 ;
wire \Add28~39 ;
wire \Add28~34 ;
wire \Add28~35 ;
wire \Add28~18 ;
wire \Add28~19 ;
wire \Add28~22 ;
wire \Add28~23 ;
wire \Add28~26 ;
wire \Add28~27 ;
wire \Add28~30 ;
wire \Add28~31 ;
wire \Add28~14 ;
wire \Add28~15 ;
wire \Add28~10 ;
wire \Add28~11 ;
wire \Add28~6 ;
wire \Add28~7 ;
wire \Add28~1_sumout ;
wire \Add26~70 ;
wire \Add26~71 ;
wire \Add26~66 ;
wire \Add26~67 ;
wire \Add26~62 ;
wire \Add26~63 ;
wire \Add26~58 ;
wire \Add26~59 ;
wire \Add26~54 ;
wire \Add26~55 ;
wire \Add26~50 ;
wire \Add26~51 ;
wire \Add26~46 ;
wire \Add26~47 ;
wire \Add26~42 ;
wire \Add26~43 ;
wire \Add26~38 ;
wire \Add26~39 ;
wire \Add26~34 ;
wire \Add26~35 ;
wire \Add26~6 ;
wire \Add26~7 ;
wire \Add26~10 ;
wire \Add26~11 ;
wire \Add26~26 ;
wire \Add26~27 ;
wire \Add26~30 ;
wire \Add26~31 ;
wire \Add26~22 ;
wire \Add26~23 ;
wire \Add26~18 ;
wire \Add26~19 ;
wire \Add26~14 ;
wire \Add26~15 ;
wire \Add26~1_sumout ;
wire \Add25~66 ;
wire \Add25~62 ;
wire \Add25~58 ;
wire \Add25~54 ;
wire \Add25~50 ;
wire \Add25~46 ;
wire \Add25~42 ;
wire \Add25~38 ;
wire \Add25~34 ;
wire \Add25~30 ;
wire \Add25~2 ;
wire \Add25~6 ;
wire \Add25~22 ;
wire \Add25~26 ;
wire \Add25~18 ;
wire \Add25~14 ;
wire \Add25~9_sumout ;
wire \Add26~13_sumout ;
wire \Add25~13_sumout ;
wire \Add26~17_sumout ;
wire \Add25~17_sumout ;
wire \Add26~21_sumout ;
wire \Add25~25_sumout ;
wire \Add26~29_sumout ;
wire \Add28~5_sumout ;
wire \Add27~66 ;
wire \Add27~62 ;
wire \Add27~58 ;
wire \Add27~54 ;
wire \Add27~50 ;
wire \Add27~46 ;
wire \Add27~42 ;
wire \Add27~38 ;
wire \Add27~34 ;
wire \Add27~30 ;
wire \Add27~14 ;
wire \Add27~18 ;
wire \Add27~22 ;
wire \Add27~26 ;
wire \Add27~10 ;
wire \Add27~6 ;
wire \Add27~1_sumout ;
wire \Add25~21_sumout ;
wire \Add26~25_sumout ;
wire \xip1E_5_uid108_sincosTest_a[12]~2_combout ;
wire \Add28~9_sumout ;
wire \Add27~5_sumout ;
wire \Add25~5_sumout ;
wire \Add26~9_sumout ;
wire \xip1E_5_uid108_sincosTest_a[11]~1_combout ;
wire \Add28~13_sumout ;
wire \Add27~9_sumout ;
wire \Add25~1_sumout ;
wire \Add26~5_sumout ;
wire \xip1E_5_uid108_sincosTest_a[10]~0_combout ;
wire \Add28~29_sumout ;
wire \Add27~25_sumout ;
wire \Add25~29_sumout ;
wire \Add26~33_sumout ;
wire \xip1E_5_uid108_sincosTest_a[9]~3_combout ;
wire \Add28~25_sumout ;
wire \Add27~21_sumout ;
wire \Add25~33_sumout ;
wire \Add26~37_sumout ;
wire \xip1E_5_uid108_sincosTest_a[8]~4_combout ;
wire \Add28~21_sumout ;
wire \Add27~17_sumout ;
wire \Add25~37_sumout ;
wire \Add26~41_sumout ;
wire \xip1E_5_uid108_sincosTest_a[7]~5_combout ;
wire \Add28~17_sumout ;
wire \Add27~13_sumout ;
wire \Add25~41_sumout ;
wire \Add26~45_sumout ;
wire \xip1E_5_uid108_sincosTest_a[6]~6_combout ;
wire \Add28~33_sumout ;
wire \Add27~29_sumout ;
wire \Add25~45_sumout ;
wire \Add26~49_sumout ;
wire \xip1E_5_uid108_sincosTest_a[5]~7_combout ;
wire \Add28~37_sumout ;
wire \Add27~33_sumout ;
wire \Add25~49_sumout ;
wire \Add26~53_sumout ;
wire \xip1E_5_uid108_sincosTest_a[4]~8_combout ;
wire \Add28~41_sumout ;
wire \Add27~37_sumout ;
wire \Add25~53_sumout ;
wire \Add26~57_sumout ;
wire \xip1E_4_uid92_sincosTest_o[3]~0_combout ;
wire \Add28~45_sumout ;
wire \Add27~41_sumout ;
wire \Add25~57_sumout ;
wire \Add26~61_sumout ;
wire \xip1E_4_uid92_sincosTest_o[2]~1_combout ;
wire \Add28~49_sumout ;
wire \Add27~45_sumout ;
wire \Add25~61_sumout ;
wire \Add26~65_sumout ;
wire \xip1E_4_uid92_sincosTest_o[1]~2_combout ;
wire \Add28~53_sumout ;
wire \Add27~49_sumout ;
wire \Add25~65_sumout ;
wire \Add26~69_sumout ;
wire \xip1E_4_uid92_sincosTest_o[0]~3_combout ;
wire \Add31~78_cout ;
wire \Add31~74 ;
wire \Add31~70 ;
wire \Add31~66 ;
wire \Add31~62 ;
wire \Add31~58 ;
wire \Add31~54 ;
wire \Add31~50 ;
wire \Add31~46 ;
wire \Add31~42 ;
wire \Add31~38 ;
wire \Add31~6 ;
wire \Add31~10 ;
wire \Add31~26 ;
wire \Add31~30 ;
wire \Add31~34 ;
wire \Add31~18 ;
wire \Add31~14 ;
wire \Add31~22 ;
wire \Add31~1_sumout ;
wire \xip1E_5_uid108_sincosTest_b[8]~2_combout ;
wire \xip1E_5_uid108_sincosTest_b[7]~1_combout ;
wire \xip1E_5_uid108_sincosTest_b[6]~0_combout ;
wire \xip1E_5_uid108_sincosTest_b[5]~3_combout ;
wire \xip1E_5_uid108_sincosTest_b[4]~4_combout ;
wire \xip1E_5_uid108_sincosTest_b[3]~5_combout ;
wire \xip1E_5_uid108_sincosTest_b[2]~6_combout ;
wire \xip1E_5_uid108_sincosTest_b[1]~7_combout ;
wire \xip1E_5_uid108_sincosTest_b[0]~8_combout ;
wire \Add28~57_sumout ;
wire \Add27~53_sumout ;
wire \yip1E_4_uid93_sincosTest_o[3]~0_combout ;
wire \Add28~61_sumout ;
wire \Add27~57_sumout ;
wire \yip1E_4_uid93_sincosTest_o[2]~1_combout ;
wire \Add28~65_sumout ;
wire \Add27~61_sumout ;
wire \yip1E_4_uid93_sincosTest_o[1]~2_combout ;
wire \Add28~69_sumout ;
wire \Add27~65_sumout ;
wire \yip1E_4_uid93_sincosTest_o[0]~3_combout ;
wire \Add29~78_cout ;
wire \Add29~74 ;
wire \Add29~70 ;
wire \Add29~66 ;
wire \Add29~62 ;
wire \Add29~58 ;
wire \Add29~54 ;
wire \Add29~50 ;
wire \Add29~46 ;
wire \Add29~42 ;
wire \Add29~38 ;
wire \Add29~18 ;
wire \Add29~22 ;
wire \Add29~26 ;
wire \Add29~30 ;
wire \Add29~34 ;
wire \Add29~6 ;
wire \Add29~1_sumout ;
wire \Add29~5_sumout ;
wire \Add29~33_sumout ;
wire \Add29~29_sumout ;
wire \Add31~21_sumout ;
wire \Add29~25_sumout ;
wire \Add31~13_sumout ;
wire \Add29~21_sumout ;
wire \Add31~17_sumout ;
wire \Add29~17_sumout ;
wire \Add31~33_sumout ;
wire \Add29~37_sumout ;
wire \Add31~29_sumout ;
wire \Add29~41_sumout ;
wire \Add31~25_sumout ;
wire \Add29~45_sumout ;
wire \Add31~9_sumout ;
wire \Add29~49_sumout ;
wire \Add31~5_sumout ;
wire \Add29~53_sumout ;
wire \Add31~37_sumout ;
wire \Add29~57_sumout ;
wire \Add31~41_sumout ;
wire \Add29~61_sumout ;
wire \Add31~45_sumout ;
wire \Add29~65_sumout ;
wire \Add31~49_sumout ;
wire \Add29~69_sumout ;
wire \Add31~53_sumout ;
wire \Add29~73_sumout ;
wire \Add36~74 ;
wire \Add36~75 ;
wire \Add36~70 ;
wire \Add36~71 ;
wire \Add36~66 ;
wire \Add36~67 ;
wire \Add36~62 ;
wire \Add36~63 ;
wire \Add36~58 ;
wire \Add36~59 ;
wire \Add36~54 ;
wire \Add36~55 ;
wire \Add36~50 ;
wire \Add36~51 ;
wire \Add36~46 ;
wire \Add36~47 ;
wire \Add36~42 ;
wire \Add36~43 ;
wire \Add36~38 ;
wire \Add36~39 ;
wire \Add36~10 ;
wire \Add36~11 ;
wire \Add36~14 ;
wire \Add36~15 ;
wire \Add36~22 ;
wire \Add36~23 ;
wire \Add36~26 ;
wire \Add36~27 ;
wire \Add36~30 ;
wire \Add36~31 ;
wire \Add36~34 ;
wire \Add36~35 ;
wire \Add36~1_sumout ;
wire \Add35~74 ;
wire \Add35~70 ;
wire \Add35~66 ;
wire \Add35~62 ;
wire \Add35~58 ;
wire \Add35~54 ;
wire \Add35~50 ;
wire \Add35~46 ;
wire \Add35~42 ;
wire \Add35~38 ;
wire \Add35~10 ;
wire \Add35~14 ;
wire \Add35~22 ;
wire \Add35~26 ;
wire \Add35~30 ;
wire \Add35~34 ;
wire \Add35~1_sumout ;
wire \xip1E_7_uid143_sincosTest_b[10]~0_combout ;
wire \Add31~57_sumout ;
wire \Add31~61_sumout ;
wire \Add31~65_sumout ;
wire \Add31~69_sumout ;
wire \Add31~73_sumout ;
wire \Add33~74 ;
wire \Add33~70 ;
wire \Add33~66 ;
wire \Add33~62 ;
wire \Add33~58 ;
wire \Add33~54 ;
wire \Add33~50 ;
wire \Add33~46 ;
wire \Add33~42 ;
wire \Add33~38 ;
wire \Add33~1_sumout ;
wire \Add34~74 ;
wire \Add34~75 ;
wire \Add34~70 ;
wire \Add34~71 ;
wire \Add34~66 ;
wire \Add34~67 ;
wire \Add34~62 ;
wire \Add34~63 ;
wire \Add34~58 ;
wire \Add34~59 ;
wire \Add34~54 ;
wire \Add34~55 ;
wire \Add34~50 ;
wire \Add34~51 ;
wire \Add34~46 ;
wire \Add34~47 ;
wire \Add34~42 ;
wire \Add34~43 ;
wire \Add34~38 ;
wire \Add34~39 ;
wire \Add34~1_sumout ;
wire \xip1E_7_uid143_sincosTest_a[10]~0_combout ;
wire \Add36~33_sumout ;
wire \Add35~33_sumout ;
wire \xip1E_7_uid143_sincosTest_b[9]~4_combout ;
wire \Add33~37_sumout ;
wire \Add34~37_sumout ;
wire \xip1E_7_uid143_sincosTest_a[9]~4_combout ;
wire \Add36~29_sumout ;
wire \Add35~29_sumout ;
wire \xip1E_7_uid143_sincosTest_b[8]~6_combout ;
wire \Add33~41_sumout ;
wire \Add34~41_sumout ;
wire \xip1E_7_uid143_sincosTest_a[8]~6_combout ;
wire \Add36~25_sumout ;
wire \Add35~25_sumout ;
wire \xip1E_7_uid143_sincosTest_b[7]~8_combout ;
wire \Add33~45_sumout ;
wire \Add34~45_sumout ;
wire \xip1E_7_uid143_sincosTest_a[7]~8_combout ;
wire \Add36~21_sumout ;
wire \Add35~21_sumout ;
wire \xip1E_7_uid143_sincosTest_b[6]~10_combout ;
wire \Add33~49_sumout ;
wire \Add34~49_sumout ;
wire \xip1E_7_uid143_sincosTest_a[6]~10_combout ;
wire \Add36~13_sumout ;
wire \Add35~13_sumout ;
wire \xip1E_7_uid143_sincosTest_b[5]~3_combout ;
wire \Add33~53_sumout ;
wire \Add34~53_sumout ;
wire \xip1E_6_uid124_sincosTest_o[5]~0_combout ;
wire \Add36~9_sumout ;
wire \Add35~9_sumout ;
wire \xip1E_7_uid143_sincosTest_b[4]~2_combout ;
wire \Add33~57_sumout ;
wire \Add34~57_sumout ;
wire \xip1E_6_uid124_sincosTest_o[4]~1_combout ;
wire \Add36~37_sumout ;
wire \Add35~37_sumout ;
wire \xip1E_7_uid143_sincosTest_b[3]~5_combout ;
wire \Add33~61_sumout ;
wire \Add34~61_sumout ;
wire \xip1E_6_uid124_sincosTest_o[3]~2_combout ;
wire \Add36~41_sumout ;
wire \Add35~41_sumout ;
wire \xip1E_7_uid143_sincosTest_b[2]~7_combout ;
wire \Add33~65_sumout ;
wire \Add34~65_sumout ;
wire \xip1E_6_uid124_sincosTest_o[2]~3_combout ;
wire \Add36~45_sumout ;
wire \Add35~45_sumout ;
wire \xip1E_7_uid143_sincosTest_b[1]~9_combout ;
wire \Add33~69_sumout ;
wire \Add34~69_sumout ;
wire \xip1E_6_uid124_sincosTest_o[1]~4_combout ;
wire \Add36~49_sumout ;
wire \Add35~49_sumout ;
wire \xip1E_7_uid143_sincosTest_b[0]~11_combout ;
wire \Add33~73_sumout ;
wire \Add34~73_sumout ;
wire \xip1E_6_uid124_sincosTest_o[0]~5_combout ;
wire \Add42~75_cout ;
wire \Add42~71_cout ;
wire \Add42~67_cout ;
wire \Add42~63_cout ;
wire \Add42~59_cout ;
wire \Add42~55_cout ;
wire \Add42~51_cout ;
wire \Add42~47_cout ;
wire \Add42~43_cout ;
wire \Add42~39_cout ;
wire \Add42~34_cout ;
wire \Add42~1_sumout ;
wire \Add29~2 ;
wire \Add29~9_sumout ;
wire \Add36~2 ;
wire \Add36~3 ;
wire \Add36~5_sumout ;
wire \Add35~2 ;
wire \Add35~5_sumout ;
wire \xip1E_7_uid143_sincosTest_b[11]~1_combout ;
wire \Add33~2 ;
wire \Add33~5_sumout ;
wire \Add34~2 ;
wire \Add34~3 ;
wire \Add34~5_sumout ;
wire \xip1E_7_uid143_sincosTest_a[11]~1_combout ;
wire \Add42~2 ;
wire \Add42~5_sumout ;
wire \Add44~1_sumout ;
wire \Add46~1_sumout ;
wire \Add29~10 ;
wire \Add29~13_sumout ;
wire \Add33~6 ;
wire \Add33~18 ;
wire \Add33~26 ;
wire \Add33~30 ;
wire \Add33~34 ;
wire \Add33~9_sumout ;
wire \Add34~6 ;
wire \Add34~7 ;
wire \Add34~18 ;
wire \Add34~19 ;
wire \Add34~26 ;
wire \Add34~27 ;
wire \Add34~30 ;
wire \Add34~31 ;
wire \Add34~34 ;
wire \Add34~35 ;
wire \Add34~9_sumout ;
wire \xip1E_7_uid143_sincosTest_a[16]~2_combout ;
wire \Add33~33_sumout ;
wire \Add34~33_sumout ;
wire \xip1E_7_uid143_sincosTest_a[15]~5_combout ;
wire \Add33~29_sumout ;
wire \Add34~29_sumout ;
wire \xip1E_7_uid143_sincosTest_a[14]~7_combout ;
wire \Add33~25_sumout ;
wire \Add34~25_sumout ;
wire \xip1E_7_uid143_sincosTest_a[13]~9_combout ;
wire \Add33~17_sumout ;
wire \Add34~17_sumout ;
wire \xip1E_7_uid143_sincosTest_a[12]~11_combout ;
wire \Add36~53_sumout ;
wire \Add35~53_sumout ;
wire \yip1E_6_uid125_sincosTest_o[5]~0_combout ;
wire \Add36~57_sumout ;
wire \Add35~57_sumout ;
wire \yip1E_6_uid125_sincosTest_o[4]~1_combout ;
wire \Add36~61_sumout ;
wire \Add35~61_sumout ;
wire \yip1E_6_uid125_sincosTest_o[3]~2_combout ;
wire \Add36~65_sumout ;
wire \Add35~65_sumout ;
wire \yip1E_6_uid125_sincosTest_o[2]~3_combout ;
wire \Add36~69_sumout ;
wire \Add35~69_sumout ;
wire \yip1E_6_uid125_sincosTest_o[1]~4_combout ;
wire \Add36~73_sumout ;
wire \Add35~73_sumout ;
wire \yip1E_6_uid125_sincosTest_o[0]~5_combout ;
wire \Add37~75_cout ;
wire \Add37~71_cout ;
wire \Add37~67_cout ;
wire \Add37~63_cout ;
wire \Add37~59_cout ;
wire \Add37~55_cout ;
wire \Add37~51_cout ;
wire \Add37~47_cout ;
wire \Add37~43_cout ;
wire \Add37~39_cout ;
wire \Add37~34_cout ;
wire \Add37~1_sumout ;
wire \Add33~10 ;
wire \Add33~13_sumout ;
wire \Add34~10 ;
wire \Add34~11 ;
wire \Add34~13_sumout ;
wire \xip1E_7_uid143_sincosTest_a[17]~3_combout ;
wire \Add37~2 ;
wire \Add37~5_sumout ;
wire \Add39~1_sumout ;
wire \Add41~1_sumout ;
wire \Add35~6 ;
wire \Add35~17_sumout ;
wire \Add36~6 ;
wire \Add36~7 ;
wire \Add36~17_sumout ;
wire \Add42~36_combout ;
wire \Add42~6 ;
wire \Add42~9_sumout ;
wire \Add44~2 ;
wire \Add44~5_sumout ;
wire \Add46~2 ;
wire \Add46~5_sumout ;
wire \Add34~14 ;
wire \Add34~15 ;
wire \Add34~21_sumout ;
wire \Add33~14 ;
wire \Add33~21_sumout ;
wire \Add37~36_combout ;
wire \Add37~6 ;
wire \Add37~9_sumout ;
wire \Add39~2 ;
wire \Add39~5_sumout ;
wire \Add41~2 ;
wire \Add41~5_sumout ;
wire \Add42~10 ;
wire \Add42~13_sumout ;
wire \Add44~6 ;
wire \Add44~9_sumout ;
wire \Add46~6 ;
wire \Add46~9_sumout ;
wire \Add37~10 ;
wire \Add37~13_sumout ;
wire \Add39~6 ;
wire \Add39~9_sumout ;
wire \Add41~6 ;
wire \Add41~9_sumout ;
wire \Add42~14 ;
wire \Add42~17_sumout ;
wire \Add44~10 ;
wire \Add44~13_sumout ;
wire \Add46~10 ;
wire \Add46~13_sumout ;
wire \Add37~14 ;
wire \Add37~17_sumout ;
wire \Add39~10 ;
wire \Add39~13_sumout ;
wire \Add41~10 ;
wire \Add41~13_sumout ;
wire \Add42~18 ;
wire \Add42~21_sumout ;
wire \Add44~14 ;
wire \Add44~17_sumout ;
wire \Add46~14 ;
wire \Add46~17_sumout ;
wire \Add37~18 ;
wire \Add37~21_sumout ;
wire \Add39~14 ;
wire \Add39~17_sumout ;
wire \Add41~14 ;
wire \Add41~17_sumout ;
wire \Add42~22 ;
wire \Add42~25_sumout ;
wire \Add44~18 ;
wire \Add44~21_sumout ;
wire \Add46~18 ;
wire \Add46~21_sumout ;
wire \Add37~22 ;
wire \Add37~25_sumout ;
wire \Add39~18 ;
wire \Add39~21_sumout ;
wire \Add41~18 ;
wire \Add41~21_sumout ;
wire \Add42~26 ;
wire \Add42~29_sumout ;
wire \Add44~22 ;
wire \Add44~25_sumout ;
wire \Add46~22 ;
wire \Add46~25_sumout ;
wire \Add37~26 ;
wire \Add37~29_sumout ;
wire \Add39~22 ;
wire \Add39~25_sumout ;
wire \Add41~22 ;
wire \Add41~25_sumout ;


sincos_dspba_delay redist0_aip1E_uid98_sincosTest_b_1(
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,\Add9~1_sumout ,\Add9~5_sumout ,\Add9~9_sumout ,\Add9~13_sumout ,\Add9~17_sumout ,\Add9~21_sumout ,\Add9~25_sumout ,\Add9~29_sumout ,\Add9~33_sumout ,\Add9~37_sumout ,\Add9~41_sumout ,\aip1E_4_uid95_sincosTest_a[13]~0_combout ,gnd}),
	.delay_signals_12_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.delay_signals_11_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][11]~q ),
	.delay_signals_10_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][10]~q ),
	.delay_signals_1_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.delay_signals_9_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][9]~q ),
	.delay_signals_8_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][8]~q ),
	.delay_signals_7_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][7]~q ),
	.delay_signals_6_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][6]~q ),
	.delay_signals_5_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][5]~q ),
	.delay_signals_4_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][4]~q ),
	.delay_signals_3_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][3]~q ),
	.delay_signals_2_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][2]~q ),
	.delay_signals_0_0(\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset));

sincos_dspba_delay_5 redist5_invSignA_uid8_sincosTest_q_1(
	.delay_signals_0_0(\redist5_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.a_9(a[9]));

sincos_dspba_delay_6 redist6_signA_uid7_sincosTest_b_1(
	.delay_signals_0_0(\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,a[9]}));

sincos_dspba_delay_4 redist4_firstQuadrant_uid15_sincosTest_b_1(
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add2~1_sumout }),
	.delay_signals_0_0(\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset));

sincos_dspba_delay_3 redist3_xip1_3_uid80_sincosTest_b_1(
	.xin({gnd,gnd,gnd,\aip1E_3_uid79_sincosTest_o[3]~2_combout ,gnd,gnd,\aip1E_3_uid79_sincosTest_o[3]~0_combout ,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add4~1_sumout }),
	.delay_signals_0_0(\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.delay_signals_15_0(\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][15]~q ),
	.delay_signals_12_0(\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][12]~q ),
	.delay_signals_1_0(\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][1]~q ),
	.clk(clk),
	.aclr(areset));

sincos_dspba_delay_2 redist2_yip1_3_uid81_sincosTest_b_1(
	.Add4(\Add4~1_sumout ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,\aip1E_3_uid79_sincosTest_o[3]~3_combout ,gnd,gnd,gnd,gnd,gnd,\xip1E_3_uid76_sincosTest_s[0]~0_combout ,\aip1E_3_uid79_sincosTest_o[3]~1_combout ,\aip1E_3_uid79_sincosTest_o[3]~4_combout ,gnd,gnd,gnd,gnd}),
	.delay_signals_15_0(\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][15]~q ),
	.delay_signals_0_0(\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.delay_signals_13_0(\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.delay_signals_6_0(\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.delay_signals_5_0(\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.delay_signals_11_0(\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.delay_signals_12_0(\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][12]~q ),
	.aip1E_3_uid79_sincosTest_o_3(\aip1E_3_uid79_sincosTest_o[3]~2_combout ),
	.delay_signals_4_0(\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][4]~q ),
	.delay_signals_1_0(\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][1]~q ),
	.clk(clk),
	.aclr(areset));

cyclonev_lcell_comb \Add2~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~1_sumout ),
	.cout(),
	.shareout());
defparam \Add2~1 .extended_lut = "off";
defparam \Add2~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add2~1 .shared_arith = "off";

cyclonev_lcell_comb \Add2~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add2~6_cout ),
	.shareout());
defparam \Add2~6 .extended_lut = "off";
defparam \Add2~6 .lut_mask = 64'h00000000000000FF;
defparam \Add2~6 .shared_arith = "off";

cyclonev_lcell_comb \Add1~1 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_8),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~1_sumout ),
	.cout(),
	.shareout());
defparam \Add1~1 .extended_lut = "off";
defparam \Add1~1 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~1 .shared_arith = "off";

cyclonev_lcell_comb \Add2~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~9_sumout ),
	.cout(\Add2~10 ),
	.shareout());
defparam \Add2~9 .extended_lut = "off";
defparam \Add2~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add2~9 .shared_arith = "off";

cyclonev_lcell_comb \Add1~5 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~5_sumout ),
	.cout(\Add1~6 ),
	.shareout());
defparam \Add1~5 .extended_lut = "off";
defparam \Add1~5 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~5 .shared_arith = "off";

cyclonev_lcell_comb \Add2~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~13_sumout ),
	.cout(\Add2~14 ),
	.shareout());
defparam \Add2~13 .extended_lut = "off";
defparam \Add2~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add2~13 .shared_arith = "off";

cyclonev_lcell_comb \Add9~1 (
	.dataa(!\xip1E_3_uid76_sincosTest_s[0]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add7~5_sumout ),
	.datad(!\Add8~1_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~1_sumout ),
	.cout(),
	.shareout());
defparam \Add9~1 .extended_lut = "off";
defparam \Add9~1 .lut_mask = 64'h000005AF000011BB;
defparam \Add9~1 .shared_arith = "off";

cyclonev_lcell_comb \Add1~9 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~9_sumout ),
	.cout(\Add1~10 ),
	.shareout());
defparam \Add1~9 .extended_lut = "off";
defparam \Add1~9 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~9 .shared_arith = "off";

cyclonev_lcell_comb \Add2~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~17_sumout ),
	.cout(\Add2~18 ),
	.shareout());
defparam \Add2~17 .extended_lut = "off";
defparam \Add2~17 .lut_mask = 64'h00000000000000FF;
defparam \Add2~17 .shared_arith = "off";

cyclonev_lcell_comb \Add9~5 (
	.dataa(!\xip1E_3_uid76_sincosTest_s[0]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~9_sumout ),
	.datad(!\Add8~9_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~5_sumout ),
	.cout(\Add9~6 ),
	.shareout());
defparam \Add9~5 .extended_lut = "off";
defparam \Add9~5 .lut_mask = 64'h000011BB000005AF;
defparam \Add9~5 .shared_arith = "off";

cyclonev_lcell_comb \Add5~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~6 ),
	.sharein(\Add5~7 ),
	.combout(),
	.sumout(\Add5~1_sumout ),
	.cout(),
	.shareout());
defparam \Add5~1 .extended_lut = "off";
defparam \Add5~1 .lut_mask = 64'h00000000000000FF;
defparam \Add5~1 .shared_arith = "on";

cyclonev_lcell_comb \Add4~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~1_sumout ),
	.cout(),
	.shareout());
defparam \Add4~1 .extended_lut = "off";
defparam \Add4~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add4~1 .shared_arith = "off";

cyclonev_lcell_comb \Add6~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~6 ),
	.sharein(\Add6~7 ),
	.combout(),
	.sumout(\Add6~1_sumout ),
	.cout(),
	.shareout());
defparam \Add6~1 .extended_lut = "off";
defparam \Add6~1 .lut_mask = 64'h00000000000000FF;
defparam \Add6~1 .shared_arith = "on";

cyclonev_lcell_comb \Add7~1 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\absA_uid21_sincosTest_q[7]~0_combout ),
	.datad(!\Add5~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~1_sumout ),
	.cout(\Add7~2 ),
	.shareout());
defparam \Add7~1 .extended_lut = "off";
defparam \Add7~1 .lut_mask = 64'h0000FFFF0000A0F5;
defparam \Add7~1 .shared_arith = "off";

cyclonev_lcell_comb \Add7~5 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~5_sumout ),
	.datac(gnd),
	.datad(!\Add6~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~5_sumout ),
	.cout(),
	.shareout());
defparam \Add7~5 .extended_lut = "off";
defparam \Add7~5 .lut_mask = 64'h0000FFFF000011BB;
defparam \Add7~5 .shared_arith = "off";

cyclonev_lcell_comb \Add8~1 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\absA_uid21_sincosTest_q[7]~0_combout ),
	.datad(!\Add5~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~1_sumout ),
	.cout(\Add8~2 ),
	.shareout());
defparam \Add8~1 .extended_lut = "off";
defparam \Add8~1 .lut_mask = 64'h000000000000A0F5;
defparam \Add8~1 .shared_arith = "off";

cyclonev_lcell_comb \Add8~5 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~5_sumout ),
	.datac(gnd),
	.datad(!\Add6~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~5_sumout ),
	.cout(),
	.shareout());
defparam \Add8~5 .extended_lut = "off";
defparam \Add8~5 .lut_mask = 64'h00000000000011BB;
defparam \Add8~5 .shared_arith = "off";

cyclonev_lcell_comb \Add1~13 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~13_sumout ),
	.cout(\Add1~14 ),
	.shareout());
defparam \Add1~13 .extended_lut = "off";
defparam \Add1~13 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~13 .shared_arith = "off";

cyclonev_lcell_comb \Add2~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~21_sumout ),
	.cout(\Add2~22 ),
	.shareout());
defparam \Add2~21 .extended_lut = "off";
defparam \Add2~21 .lut_mask = 64'h00000000000000FF;
defparam \Add2~21 .shared_arith = "off";

cyclonev_lcell_comb \Add7~9 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\absA_uid21_sincosTest_q[6]~1_combout ),
	.datad(!\Add5~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~9_sumout ),
	.cout(\Add7~10 ),
	.shareout());
defparam \Add7~9 .extended_lut = "off";
defparam \Add7~9 .lut_mask = 64'h0000000000000A5F;
defparam \Add7~9 .shared_arith = "off";

cyclonev_lcell_comb \Add8~9 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\absA_uid21_sincosTest_q[6]~1_combout ),
	.datad(!\Add5~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~9_sumout ),
	.cout(\Add8~10 ),
	.shareout());
defparam \Add8~9 .extended_lut = "off";
defparam \Add8~9 .lut_mask = 64'h0000FFFF00000A5F;
defparam \Add8~9 .shared_arith = "off";

cyclonev_lcell_comb \Add9~9 (
	.dataa(!\xip1E_3_uid76_sincosTest_s[0]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~13_sumout ),
	.datad(!\Add8~13_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~9_sumout ),
	.cout(\Add9~10 ),
	.shareout());
defparam \Add9~9 .extended_lut = "off";
defparam \Add9~9 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~9 .shared_arith = "off";

cyclonev_lcell_comb \Add4~5 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~5_sumout ),
	.datad(!\Add2~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~5_sumout ),
	.cout(\Add4~6 ),
	.shareout());
defparam \Add4~5 .extended_lut = "off";
defparam \Add4~5 .lut_mask = 64'h00000000000005AF;
defparam \Add4~5 .shared_arith = "off";

cyclonev_lcell_comb \Add5~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~10 ),
	.sharein(\Add5~11 ),
	.combout(),
	.sumout(\Add5~5_sumout ),
	.cout(\Add5~6 ),
	.shareout(\Add5~7 ));
defparam \Add5~5 .extended_lut = "off";
defparam \Add5~5 .lut_mask = 64'h00000000000000FF;
defparam \Add5~5 .shared_arith = "on";

cyclonev_lcell_comb \Add6~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~10_cout ),
	.sharein(\Add6~11 ),
	.combout(),
	.sumout(\Add6~5_sumout ),
	.cout(\Add6~6 ),
	.shareout(\Add6~7 ));
defparam \Add6~5 .extended_lut = "off";
defparam \Add6~5 .lut_mask = 64'h000000FF0000FF00;
defparam \Add6~5 .shared_arith = "on";

cyclonev_lcell_comb \Add5~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~14 ),
	.sharein(\Add5~15 ),
	.combout(),
	.sumout(\Add5~9_sumout ),
	.cout(\Add5~10 ),
	.shareout(\Add5~11 ));
defparam \Add5~9 .extended_lut = "off";
defparam \Add5~9 .lut_mask = 64'h000000FF0000FF00;
defparam \Add5~9 .shared_arith = "on";

cyclonev_lcell_comb \Add1~17 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~17_sumout ),
	.cout(\Add1~18 ),
	.shareout());
defparam \Add1~17 .extended_lut = "off";
defparam \Add1~17 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~17 .shared_arith = "off";

cyclonev_lcell_comb \Add2~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~25_sumout ),
	.cout(\Add2~26 ),
	.shareout());
defparam \Add2~25 .extended_lut = "off";
defparam \Add2~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add2~25 .shared_arith = "off";

cyclonev_lcell_comb \Add5~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~18 ),
	.sharein(\Add5~19 ),
	.combout(),
	.sumout(\Add5~13_sumout ),
	.cout(\Add5~14 ),
	.shareout(\Add5~15 ));
defparam \Add5~13 .extended_lut = "off";
defparam \Add5~13 .lut_mask = 64'h000000FF0000FF00;
defparam \Add5~13 .shared_arith = "on";

cyclonev_lcell_comb \Add7~13 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\absA_uid21_sincosTest_q[5]~2_combout ),
	.datad(!\Add5~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~13_sumout ),
	.cout(\Add7~14 ),
	.shareout());
defparam \Add7~13 .extended_lut = "off";
defparam \Add7~13 .lut_mask = 64'h0000000000000A5F;
defparam \Add7~13 .shared_arith = "off";

cyclonev_lcell_comb \Add8~13 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\absA_uid21_sincosTest_q[5]~2_combout ),
	.datad(!\Add5~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~13_sumout ),
	.cout(\Add8~14 ),
	.shareout());
defparam \Add8~13 .extended_lut = "off";
defparam \Add8~13 .lut_mask = 64'h0000FFFF00000A5F;
defparam \Add8~13 .shared_arith = "off";

cyclonev_lcell_comb \Add9~13 (
	.dataa(!\xip1E_3_uid76_sincosTest_s[0]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~17_sumout ),
	.datad(!\Add8~17_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~13_sumout ),
	.cout(\Add9~14 ),
	.shareout());
defparam \Add9~13 .extended_lut = "off";
defparam \Add9~13 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~13 .shared_arith = "off";

cyclonev_lcell_comb \Add4~9 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~9_sumout ),
	.datad(!\Add2~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~9_sumout ),
	.cout(\Add4~10 ),
	.shareout());
defparam \Add4~9 .extended_lut = "off";
defparam \Add4~9 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add4~9 .shared_arith = "off";

cyclonev_lcell_comb \Add6~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~14_cout ),
	.sharein(\Add6~15 ),
	.combout(),
	.sumout(),
	.cout(\Add6~10_cout ),
	.shareout(\Add6~11 ));
defparam \Add6~10 .extended_lut = "off";
defparam \Add6~10 .lut_mask = 64'h00000000000000FF;
defparam \Add6~10 .shared_arith = "on";

cyclonev_lcell_comb \Add4~13 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~13_sumout ),
	.datad(!\Add2~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~13_sumout ),
	.cout(\Add4~14 ),
	.shareout());
defparam \Add4~13 .extended_lut = "off";
defparam \Add4~13 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add4~13 .shared_arith = "off";

cyclonev_lcell_comb \Add1~21 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~21_sumout ),
	.cout(\Add1~22 ),
	.shareout());
defparam \Add1~21 .extended_lut = "off";
defparam \Add1~21 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~21 .shared_arith = "off";

cyclonev_lcell_comb \Add2~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~29_sumout ),
	.cout(\Add2~30 ),
	.shareout());
defparam \Add2~29 .extended_lut = "off";
defparam \Add2~29 .lut_mask = 64'h00000000000000FF;
defparam \Add2~29 .shared_arith = "off";

cyclonev_lcell_comb \Add4~17 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~17_sumout ),
	.datad(!\Add2~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~17_sumout ),
	.cout(\Add4~18 ),
	.shareout());
defparam \Add4~17 .extended_lut = "off";
defparam \Add4~17 .lut_mask = 64'h00000000000005AF;
defparam \Add4~17 .shared_arith = "off";

cyclonev_lcell_comb \Add5~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~22 ),
	.sharein(\Add5~23 ),
	.combout(),
	.sumout(\Add5~17_sumout ),
	.cout(\Add5~18 ),
	.shareout(\Add5~19 ));
defparam \Add5~17 .extended_lut = "off";
defparam \Add5~17 .lut_mask = 64'h000000FF0000FF00;
defparam \Add5~17 .shared_arith = "on";

cyclonev_lcell_comb \Add7~17 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\absA_uid21_sincosTest_q[4]~3_combout ),
	.datad(!\Add5~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~17_sumout ),
	.cout(\Add7~18 ),
	.shareout());
defparam \Add7~17 .extended_lut = "off";
defparam \Add7~17 .lut_mask = 64'h0000000000000A5F;
defparam \Add7~17 .shared_arith = "off";

cyclonev_lcell_comb \Add8~17 (
	.dataa(!\Add4~1_sumout ),
	.datab(gnd),
	.datac(!\absA_uid21_sincosTest_q[4]~3_combout ),
	.datad(!\Add5~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~17_sumout ),
	.cout(\Add8~18 ),
	.shareout());
defparam \Add8~17 .extended_lut = "off";
defparam \Add8~17 .lut_mask = 64'h0000FFFF00000A5F;
defparam \Add8~17 .shared_arith = "off";

cyclonev_lcell_comb \Add9~17 (
	.dataa(!\xip1E_3_uid76_sincosTest_s[0]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~21_sumout ),
	.datad(!\Add8~21_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~17_sumout ),
	.cout(\Add9~18 ),
	.shareout());
defparam \Add9~17 .extended_lut = "off";
defparam \Add9~17 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~17 .shared_arith = "off";

cyclonev_lcell_comb \Add6~14 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~18_cout ),
	.sharein(\Add6~19 ),
	.combout(),
	.sumout(),
	.cout(\Add6~14_cout ),
	.shareout(\Add6~15 ));
defparam \Add6~14 .extended_lut = "off";
defparam \Add6~14 .lut_mask = 64'h00000000000000FF;
defparam \Add6~14 .shared_arith = "on";

cyclonev_lcell_comb \Add1~25 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~25_sumout ),
	.cout(\Add1~26 ),
	.shareout());
defparam \Add1~25 .extended_lut = "off";
defparam \Add1~25 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~25 .shared_arith = "off";

cyclonev_lcell_comb \Add2~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~33_sumout ),
	.cout(\Add2~34 ),
	.shareout());
defparam \Add2~33 .extended_lut = "off";
defparam \Add2~33 .lut_mask = 64'h00000000000000FF;
defparam \Add2~33 .shared_arith = "off";

cyclonev_lcell_comb \Add4~21 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~21_sumout ),
	.datad(!\Add2~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~21_sumout ),
	.cout(\Add4~22 ),
	.shareout());
defparam \Add4~21 .extended_lut = "off";
defparam \Add4~21 .lut_mask = 64'h00000000000005AF;
defparam \Add4~21 .shared_arith = "off";

cyclonev_lcell_comb \Add5~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~26_cout ),
	.sharein(\Add5~27 ),
	.combout(),
	.sumout(\Add5~21_sumout ),
	.cout(\Add5~22 ),
	.shareout(\Add5~23 ));
defparam \Add5~21 .extended_lut = "off";
defparam \Add5~21 .lut_mask = 64'h00000000000000FF;
defparam \Add5~21 .shared_arith = "on";

cyclonev_lcell_comb \Add7~21 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add2~1_sumout ),
	.datac(!\Add1~29_sumout ),
	.datad(!\Add2~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~21_sumout ),
	.cout(\Add7~22 ),
	.shareout());
defparam \Add7~21 .extended_lut = "off";
defparam \Add7~21 .lut_mask = 64'h000000000000569A;
defparam \Add7~21 .shared_arith = "off";

cyclonev_lcell_comb \Add8~21 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add2~1_sumout ),
	.datac(!\Add1~29_sumout ),
	.datad(!\Add2~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~21_sumout ),
	.cout(\Add8~22 ),
	.shareout());
defparam \Add8~21 .extended_lut = "off";
defparam \Add8~21 .lut_mask = 64'h0000FFFF0000569A;
defparam \Add8~21 .shared_arith = "off";

cyclonev_lcell_comb \Add9~21 (
	.dataa(!\xip1E_3_uid76_sincosTest_s[0]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~25_sumout ),
	.datad(!\Add8~25_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~21_sumout ),
	.cout(\Add9~22 ),
	.shareout());
defparam \Add9~21 .extended_lut = "off";
defparam \Add9~21 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~21 .shared_arith = "off";

cyclonev_lcell_comb \Add6~18 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~22_cout ),
	.sharein(\Add6~23 ),
	.combout(),
	.sumout(),
	.cout(\Add6~18_cout ),
	.shareout(\Add6~19 ));
defparam \Add6~18 .extended_lut = "off";
defparam \Add6~18 .lut_mask = 64'h00000000000000FF;
defparam \Add6~18 .shared_arith = "on";

cyclonev_lcell_comb \Add1~29 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~29_sumout ),
	.cout(\Add1~30 ),
	.shareout());
defparam \Add1~29 .extended_lut = "off";
defparam \Add1~29 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~29 .shared_arith = "off";

cyclonev_lcell_comb \Add2~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add2~37_sumout ),
	.cout(\Add2~38 ),
	.shareout());
defparam \Add2~37 .extended_lut = "off";
defparam \Add2~37 .lut_mask = 64'h00000000000000FF;
defparam \Add2~37 .shared_arith = "off";

cyclonev_lcell_comb \Add4~25 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~25_sumout ),
	.datad(!\Add2~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~25_sumout ),
	.cout(\Add4~26 ),
	.shareout());
defparam \Add4~25 .extended_lut = "off";
defparam \Add4~25 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add4~25 .shared_arith = "off";

cyclonev_lcell_comb \Add5~26 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~30_cout ),
	.sharein(\Add5~31 ),
	.combout(),
	.sumout(),
	.cout(\Add5~26_cout ),
	.shareout(\Add5~27 ));
defparam \Add5~26 .extended_lut = "off";
defparam \Add5~26 .lut_mask = 64'h000000FF0000FF00;
defparam \Add5~26 .shared_arith = "on";

cyclonev_lcell_comb \Add7~25 (
	.dataa(gnd),
	.datab(!\Add2~1_sumout ),
	.datac(!\Add1~33_sumout ),
	.datad(!\Add2~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~25_sumout ),
	.cout(\Add7~26 ),
	.shareout());
defparam \Add7~25 .extended_lut = "off";
defparam \Add7~25 .lut_mask = 64'h00000000000003CF;
defparam \Add7~25 .shared_arith = "off";

cyclonev_lcell_comb \Add8~25 (
	.dataa(gnd),
	.datab(!\Add2~1_sumout ),
	.datac(!\Add1~33_sumout ),
	.datad(!\Add2~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~25_sumout ),
	.cout(\Add8~26 ),
	.shareout());
defparam \Add8~25 .extended_lut = "off";
defparam \Add8~25 .lut_mask = 64'h0000FFFF000003CF;
defparam \Add8~25 .shared_arith = "off";

cyclonev_lcell_comb \Add9~25 (
	.dataa(!\xip1E_3_uid76_sincosTest_s[0]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~29_sumout ),
	.datad(!\Add8~29_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~25_sumout ),
	.cout(\Add9~26 ),
	.shareout());
defparam \Add9~25 .extended_lut = "off";
defparam \Add9~25 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~25 .shared_arith = "off";

cyclonev_lcell_comb \Add6~22 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~26_cout ),
	.sharein(\Add6~27 ),
	.combout(),
	.sumout(),
	.cout(\Add6~22_cout ),
	.shareout(\Add6~23 ));
defparam \Add6~22 .extended_lut = "off";
defparam \Add6~22 .lut_mask = 64'h000000FF0000FF00;
defparam \Add6~22 .shared_arith = "on";

cyclonev_lcell_comb \Add1~33 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~33_sumout ),
	.cout(\Add1~34 ),
	.shareout());
defparam \Add1~33 .extended_lut = "off";
defparam \Add1~33 .lut_mask = 64'h0000AAAA000055AA;
defparam \Add1~33 .shared_arith = "off";

cyclonev_lcell_comb \Add4~29 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~29_sumout ),
	.datad(!\Add2~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~29_sumout ),
	.cout(\Add4~30 ),
	.shareout());
defparam \Add4~29 .extended_lut = "off";
defparam \Add4~29 .lut_mask = 64'h00000000000005AF;
defparam \Add4~29 .shared_arith = "off";

cyclonev_lcell_comb \Add5~30 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~34_cout ),
	.sharein(\Add5~35 ),
	.combout(),
	.sumout(),
	.cout(\Add5~30_cout ),
	.shareout(\Add5~31 ));
defparam \Add5~30 .extended_lut = "off";
defparam \Add5~30 .lut_mask = 64'h000000FF0000FF00;
defparam \Add5~30 .shared_arith = "on";

cyclonev_lcell_comb \Add7~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~29_sumout ),
	.cout(\Add7~30 ),
	.shareout());
defparam \Add7~29 .extended_lut = "off";
defparam \Add7~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add7~29 .shared_arith = "off";

cyclonev_lcell_comb \Add8~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~29_sumout ),
	.cout(\Add8~30 ),
	.shareout());
defparam \Add8~29 .extended_lut = "off";
defparam \Add8~29 .lut_mask = 64'h00000000000000FF;
defparam \Add8~29 .shared_arith = "off";

cyclonev_lcell_comb \Add9~29 (
	.dataa(!\xip1E_3_uid76_sincosTest_s[0]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~33_sumout ),
	.datad(!\Add8~33_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~29_sumout ),
	.cout(\Add9~30 ),
	.shareout());
defparam \Add9~29 .extended_lut = "off";
defparam \Add9~29 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~29 .shared_arith = "off";

cyclonev_lcell_comb \Add6~26 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~30_cout ),
	.sharein(\Add6~31 ),
	.combout(),
	.sumout(),
	.cout(\Add6~26_cout ),
	.shareout(\Add6~27 ));
defparam \Add6~26 .extended_lut = "off";
defparam \Add6~26 .lut_mask = 64'h00000000000000FF;
defparam \Add6~26 .shared_arith = "on";

cyclonev_lcell_comb \Add4~33 (
	.dataa(!\Add2~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~33_sumout ),
	.datad(!\Add2~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~33_sumout ),
	.cout(\Add4~34 ),
	.shareout());
defparam \Add4~33 .extended_lut = "off";
defparam \Add4~33 .lut_mask = 64'h00000000000005AF;
defparam \Add4~33 .shared_arith = "off";

cyclonev_lcell_comb \Add5~34 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~38_cout ),
	.sharein(\Add5~39 ),
	.combout(),
	.sumout(),
	.cout(\Add5~34_cout ),
	.shareout(\Add5~35 ));
defparam \Add5~34 .extended_lut = "off";
defparam \Add5~34 .lut_mask = 64'h0000000000000000;
defparam \Add5~34 .shared_arith = "on";

cyclonev_lcell_comb \Add7~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~33_sumout ),
	.cout(\Add7~34 ),
	.shareout());
defparam \Add7~33 .extended_lut = "off";
defparam \Add7~33 .lut_mask = 64'h00000000000000FF;
defparam \Add7~33 .shared_arith = "off";

cyclonev_lcell_comb \Add8~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~33_sumout ),
	.cout(\Add8~34 ),
	.shareout());
defparam \Add8~33 .extended_lut = "off";
defparam \Add8~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add8~33 .shared_arith = "off";

cyclonev_lcell_comb \Add9~33 (
	.dataa(!\xip1E_3_uid76_sincosTest_s[0]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~37_sumout ),
	.datad(!\Add8~37_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~33_sumout ),
	.cout(\Add9~34 ),
	.shareout());
defparam \Add9~33 .extended_lut = "off";
defparam \Add9~33 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~33 .shared_arith = "off";

cyclonev_lcell_comb \Add6~30 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~34_cout ),
	.sharein(\Add6~35 ),
	.combout(),
	.sumout(),
	.cout(\Add6~30_cout ),
	.shareout(\Add6~31 ));
defparam \Add6~30 .extended_lut = "off";
defparam \Add6~30 .lut_mask = 64'h00000000000000FF;
defparam \Add6~30 .shared_arith = "on";

cyclonev_lcell_comb \Add5~38 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~42_cout ),
	.sharein(\Add5~43 ),
	.combout(),
	.sumout(),
	.cout(\Add5~38_cout ),
	.shareout(\Add5~39 ));
defparam \Add5~38 .extended_lut = "off";
defparam \Add5~38 .lut_mask = 64'h0000FFFF00000000;
defparam \Add5~38 .shared_arith = "on";

cyclonev_lcell_comb \Add7~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~37_sumout ),
	.cout(\Add7~38 ),
	.shareout());
defparam \Add7~37 .extended_lut = "off";
defparam \Add7~37 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add7~37 .shared_arith = "off";

cyclonev_lcell_comb \Add8~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~37_sumout ),
	.cout(\Add8~38 ),
	.shareout());
defparam \Add8~37 .extended_lut = "off";
defparam \Add8~37 .lut_mask = 64'h000000000000FF00;
defparam \Add8~37 .shared_arith = "off";

cyclonev_lcell_comb \Add9~37 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(!\Add7~41_sumout ),
	.datae(gnd),
	.dataf(!\aip1E_4_uid95_sincosTest_a[13]~0_combout ),
	.datag(gnd),
	.cin(\Add9~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~37_sumout ),
	.cout(\Add9~38 ),
	.shareout());
defparam \Add9~37 .extended_lut = "off";
defparam \Add9~37 .lut_mask = 64'h000000FF000044F5;
defparam \Add9~37 .shared_arith = "off";

cyclonev_lcell_comb \Add6~34 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add6~34_cout ),
	.shareout(\Add6~35 ));
defparam \Add6~34 .extended_lut = "off";
defparam \Add6~34 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add6~34 .shared_arith = "on";

cyclonev_lcell_comb \Add5~42 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add5~42_cout ),
	.shareout(\Add5~43 ));
defparam \Add5~42 .extended_lut = "off";
defparam \Add5~42 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add5~42 .shared_arith = "on";

cyclonev_lcell_comb \Add7~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~41_sumout ),
	.cout(\Add7~42 ),
	.shareout());
defparam \Add7~41 .extended_lut = "off";
defparam \Add7~41 .lut_mask = 64'h00000000000000FF;
defparam \Add7~41 .shared_arith = "off";

cyclonev_lcell_comb \Add9~41 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add5~1_sumout ),
	.datac(gnd),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~41_sumout ),
	.cout(\Add9~42 ),
	.shareout());
defparam \Add9~41 .extended_lut = "off";
defparam \Add9~41 .lut_mask = 64'h000000000000BB11;
defparam \Add9~41 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_3_uid76_sincosTest_s[0]~0 (
	.dataa(!\Add5~1_sumout ),
	.datab(!\Add4~1_sumout ),
	.datac(!\Add6~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_3_uid76_sincosTest_s[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_3_uid76_sincosTest_s[0]~0 .extended_lut = "off";
defparam \xip1E_3_uid76_sincosTest_s[0]~0 .lut_mask = 64'hD1D1D1D1D1D1D1D1;
defparam \xip1E_3_uid76_sincosTest_s[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid21_sincosTest_q[7]~0 (
	.dataa(!\Add1~13_sumout ),
	.datab(!\Add2~1_sumout ),
	.datac(!\Add2~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid21_sincosTest_q[7]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid21_sincosTest_q[7]~0 .extended_lut = "off";
defparam \absA_uid21_sincosTest_q[7]~0 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid21_sincosTest_q[7]~0 .shared_arith = "off";

cyclonev_lcell_comb \aip1E_3_uid79_sincosTest_o[3]~0 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_3_uid79_sincosTest_o[3]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_3_uid79_sincosTest_o[3]~0 .extended_lut = "off";
defparam \aip1E_3_uid79_sincosTest_o[3]~0 .lut_mask = 64'h7777777777777777;
defparam \aip1E_3_uid79_sincosTest_o[3]~0 .shared_arith = "off";

cyclonev_lcell_comb \aip1E_4_uid95_sincosTest_a[13]~0 (
	.dataa(!\Add5~1_sumout ),
	.datab(!\Add4~1_sumout ),
	.datac(!\aip1E_3_uid79_sincosTest_o[3]~0_combout ),
	.datad(!\Add7~5_sumout ),
	.datae(!\Add8~5_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_4_uid95_sincosTest_a[13]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_4_uid95_sincosTest_a[13]~0 .extended_lut = "off";
defparam \aip1E_4_uid95_sincosTest_a[13]~0 .lut_mask = 64'h00F10EFF00F10EFF;
defparam \aip1E_4_uid95_sincosTest_a[13]~0 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid21_sincosTest_q[6]~1 (
	.dataa(!\Add1~17_sumout ),
	.datab(!\Add2~1_sumout ),
	.datac(!\Add2~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid21_sincosTest_q[6]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid21_sincosTest_q[6]~1 .extended_lut = "off";
defparam \absA_uid21_sincosTest_q[6]~1 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid21_sincosTest_q[6]~1 .shared_arith = "off";

cyclonev_lcell_comb \aip1E_3_uid79_sincosTest_o[3]~1 (
	.dataa(!\Add5~1_sumout ),
	.datab(!\Add4~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_3_uid79_sincosTest_o[3]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_3_uid79_sincosTest_o[3]~1 .extended_lut = "off";
defparam \aip1E_3_uid79_sincosTest_o[3]~1 .lut_mask = 64'h1111111111111111;
defparam \aip1E_3_uid79_sincosTest_o[3]~1 .shared_arith = "off";

cyclonev_lcell_comb \aip1E_3_uid79_sincosTest_o[3]~2 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add6~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_3_uid79_sincosTest_o[3]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_3_uid79_sincosTest_o[3]~2 .extended_lut = "off";
defparam \aip1E_3_uid79_sincosTest_o[3]~2 .lut_mask = 64'hDDDDDDDDDDDDDDDD;
defparam \aip1E_3_uid79_sincosTest_o[3]~2 .shared_arith = "off";

cyclonev_lcell_comb \aip1E_3_uid79_sincosTest_o[3]~3 (
	.dataa(!\Add5~1_sumout ),
	.datab(!\Add4~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_3_uid79_sincosTest_o[3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_3_uid79_sincosTest_o[3]~3 .extended_lut = "off";
defparam \aip1E_3_uid79_sincosTest_o[3]~3 .lut_mask = 64'hDDDDDDDDDDDDDDDD;
defparam \aip1E_3_uid79_sincosTest_o[3]~3 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid21_sincosTest_q[5]~2 (
	.dataa(!\Add1~21_sumout ),
	.datab(!\Add2~1_sumout ),
	.datac(!\Add2~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid21_sincosTest_q[5]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid21_sincosTest_q[5]~2 .extended_lut = "off";
defparam \absA_uid21_sincosTest_q[5]~2 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid21_sincosTest_q[5]~2 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid21_sincosTest_q[4]~3 (
	.dataa(!\Add1~25_sumout ),
	.datab(!\Add2~1_sumout ),
	.datac(!\Add2~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid21_sincosTest_q[4]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid21_sincosTest_q[4]~3 .extended_lut = "off";
defparam \absA_uid21_sincosTest_q[4]~3 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid21_sincosTest_q[4]~3 .shared_arith = "off";

cyclonev_lcell_comb \aip1E_3_uid79_sincosTest_o[3]~4 (
	.dataa(!\aip1E_3_uid79_sincosTest_o[3]~1_combout ),
	.datab(!\aip1E_3_uid79_sincosTest_o[3]~2_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_3_uid79_sincosTest_o[3]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_3_uid79_sincosTest_o[3]~4 .extended_lut = "off";
defparam \aip1E_3_uid79_sincosTest_o[3]~4 .lut_mask = 64'hDDDDDDDDDDDDDDDD;
defparam \aip1E_3_uid79_sincosTest_o[3]~4 .shared_arith = "off";

cyclonev_lcell_comb \c[0]~0 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~1_sumout ),
	.datac(!\Add41~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[0]~0 .extended_lut = "off";
defparam \c[0]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \c[1]~1 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~5_sumout ),
	.datac(!\Add41~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[1]~1 .extended_lut = "off";
defparam \c[1]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \c[2]~2 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~9_sumout ),
	.datac(!\Add41~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[2]~2 .extended_lut = "off";
defparam \c[2]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \c[3]~3 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~13_sumout ),
	.datac(!\Add41~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[3]~3 .extended_lut = "off";
defparam \c[3]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[3]~3 .shared_arith = "off";

cyclonev_lcell_comb \c[4]~4 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~17_sumout ),
	.datac(!\Add41~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[4]~4 .extended_lut = "off";
defparam \c[4]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[4]~4 .shared_arith = "off";

cyclonev_lcell_comb \c[5]~5 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~21_sumout ),
	.datac(!\Add41~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_5),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[5]~5 .extended_lut = "off";
defparam \c[5]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[5]~5 .shared_arith = "off";

cyclonev_lcell_comb \c[6]~6 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~25_sumout ),
	.datac(!\Add41~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_6),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[6]~6 .extended_lut = "off";
defparam \c[6]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \c[6]~6 .shared_arith = "off";

cyclonev_lcell_comb \s[0]~0 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~1_sumout ),
	.datac(!\Add41~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[0]~0 .extended_lut = "off";
defparam \s[0]~0 .lut_mask = 64'h2727272727272727;
defparam \s[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \s[1]~1 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~5_sumout ),
	.datac(!\Add41~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[1]~1 .extended_lut = "off";
defparam \s[1]~1 .lut_mask = 64'h2727272727272727;
defparam \s[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \s[2]~2 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~9_sumout ),
	.datac(!\Add41~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[2]~2 .extended_lut = "off";
defparam \s[2]~2 .lut_mask = 64'h2727272727272727;
defparam \s[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \s[3]~3 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~13_sumout ),
	.datac(!\Add41~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[3]~3 .extended_lut = "off";
defparam \s[3]~3 .lut_mask = 64'h2727272727272727;
defparam \s[3]~3 .shared_arith = "off";

cyclonev_lcell_comb \s[4]~4 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~17_sumout ),
	.datac(!\Add41~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[4]~4 .extended_lut = "off";
defparam \s[4]~4 .lut_mask = 64'h2727272727272727;
defparam \s[4]~4 .shared_arith = "off";

cyclonev_lcell_comb \s[5]~5 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~21_sumout ),
	.datac(!\Add41~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_5),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[5]~5 .extended_lut = "off";
defparam \s[5]~5 .lut_mask = 64'h2727272727272727;
defparam \s[5]~5 .shared_arith = "off";

cyclonev_lcell_comb \s[6]~6 (
	.dataa(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add46~25_sumout ),
	.datac(!\Add41~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_6),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[6]~6 .extended_lut = "off";
defparam \s[6]~6 .lut_mask = 64'h2727272727272727;
defparam \s[6]~6 .shared_arith = "off";

cyclonev_lcell_comb \Add11~46 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add11~46_cout ),
	.shareout());
defparam \Add11~46 .extended_lut = "off";
defparam \Add11~46 .lut_mask = 64'h00000000000000FF;
defparam \Add11~46 .shared_arith = "off";

cyclonev_lcell_comb \Add11~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~46_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~41_sumout ),
	.cout(\Add11~42 ),
	.shareout());
defparam \Add11~41 .extended_lut = "off";
defparam \Add11~41 .lut_mask = 64'h00000000000000FF;
defparam \Add11~41 .shared_arith = "off";

cyclonev_lcell_comb \Add11~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~37_sumout ),
	.cout(\Add11~38 ),
	.shareout());
defparam \Add11~37 .extended_lut = "off";
defparam \Add11~37 .lut_mask = 64'h00000000000000FF;
defparam \Add11~37 .shared_arith = "off";

cyclonev_lcell_comb \Add11~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~33_sumout ),
	.cout(\Add11~34 ),
	.shareout());
defparam \Add11~33 .extended_lut = "off";
defparam \Add11~33 .lut_mask = 64'h00000000000000FF;
defparam \Add11~33 .shared_arith = "off";

cyclonev_lcell_comb \Add11~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~29_sumout ),
	.cout(\Add11~30 ),
	.shareout());
defparam \Add11~29 .extended_lut = "off";
defparam \Add11~29 .lut_mask = 64'h00000000000000FF;
defparam \Add11~29 .shared_arith = "off";

cyclonev_lcell_comb \Add11~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~25_sumout ),
	.cout(\Add11~26 ),
	.shareout());
defparam \Add11~25 .extended_lut = "off";
defparam \Add11~25 .lut_mask = 64'h00000000000000FF;
defparam \Add11~25 .shared_arith = "off";

cyclonev_lcell_comb \Add11~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~21_sumout ),
	.cout(\Add11~22 ),
	.shareout());
defparam \Add11~21 .extended_lut = "off";
defparam \Add11~21 .lut_mask = 64'h00000000000000FF;
defparam \Add11~21 .shared_arith = "off";

cyclonev_lcell_comb \Add11~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~17_sumout ),
	.cout(\Add11~18 ),
	.shareout());
defparam \Add11~17 .extended_lut = "off";
defparam \Add11~17 .lut_mask = 64'h00000000000000FF;
defparam \Add11~17 .shared_arith = "off";

cyclonev_lcell_comb \Add11~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~13_sumout ),
	.cout(\Add11~14 ),
	.shareout());
defparam \Add11~13 .extended_lut = "off";
defparam \Add11~13 .lut_mask = 64'h00000000000000FF;
defparam \Add11~13 .shared_arith = "off";

cyclonev_lcell_comb \Add11~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~9_sumout ),
	.cout(\Add11~10 ),
	.shareout());
defparam \Add11~9 .extended_lut = "off";
defparam \Add11~9 .lut_mask = 64'h00000000000000FF;
defparam \Add11~9 .shared_arith = "off";

cyclonev_lcell_comb \Add11~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~5_sumout ),
	.cout(\Add11~6 ),
	.shareout());
defparam \Add11~5 .extended_lut = "off";
defparam \Add11~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add11~5 .shared_arith = "off";

cyclonev_lcell_comb \Add11~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add11~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add11~1_sumout ),
	.cout(),
	.shareout());
defparam \Add11~1 .extended_lut = "off";
defparam \Add11~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add11~1 .shared_arith = "off";

cyclonev_lcell_comb \Add12~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~41_sumout ),
	.cout(\Add12~42 ),
	.shareout());
defparam \Add12~41 .extended_lut = "off";
defparam \Add12~41 .lut_mask = 64'h0000FF00000000FF;
defparam \Add12~41 .shared_arith = "off";

cyclonev_lcell_comb \Add12~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~37_sumout ),
	.cout(\Add12~38 ),
	.shareout());
defparam \Add12~37 .extended_lut = "off";
defparam \Add12~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add12~37 .shared_arith = "off";

cyclonev_lcell_comb \Add12~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~33_sumout ),
	.cout(\Add12~34 ),
	.shareout());
defparam \Add12~33 .extended_lut = "off";
defparam \Add12~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add12~33 .shared_arith = "off";

cyclonev_lcell_comb \Add12~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~29_sumout ),
	.cout(\Add12~30 ),
	.shareout());
defparam \Add12~29 .extended_lut = "off";
defparam \Add12~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add12~29 .shared_arith = "off";

cyclonev_lcell_comb \Add12~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~25_sumout ),
	.cout(\Add12~26 ),
	.shareout());
defparam \Add12~25 .extended_lut = "off";
defparam \Add12~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add12~25 .shared_arith = "off";

cyclonev_lcell_comb \Add12~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~21_sumout ),
	.cout(\Add12~22 ),
	.shareout());
defparam \Add12~21 .extended_lut = "off";
defparam \Add12~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add12~21 .shared_arith = "off";

cyclonev_lcell_comb \Add12~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~17_sumout ),
	.cout(\Add12~18 ),
	.shareout());
defparam \Add12~17 .extended_lut = "off";
defparam \Add12~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add12~17 .shared_arith = "off";

cyclonev_lcell_comb \Add12~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~13_sumout ),
	.cout(\Add12~14 ),
	.shareout());
defparam \Add12~13 .extended_lut = "off";
defparam \Add12~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add12~13 .shared_arith = "off";

cyclonev_lcell_comb \Add12~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~9_sumout ),
	.cout(\Add12~10 ),
	.shareout());
defparam \Add12~9 .extended_lut = "off";
defparam \Add12~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add12~9 .shared_arith = "off";

cyclonev_lcell_comb \Add12~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~5_sumout ),
	.cout(\Add12~6 ),
	.shareout());
defparam \Add12~5 .extended_lut = "off";
defparam \Add12~5 .lut_mask = 64'h00000000000000FF;
defparam \Add12~5 .shared_arith = "off";

cyclonev_lcell_comb \Add12~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add12~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add12~1_sumout ),
	.cout(),
	.shareout());
defparam \Add12~1 .extended_lut = "off";
defparam \Add12~1 .lut_mask = 64'h00000000000000FF;
defparam \Add12~1 .shared_arith = "off";

cyclonev_lcell_comb \aip1E_6high_uid129_sincosTest_a[10]~0 (
	.dataa(!\Add11~1_sumout ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datac(!\Add12~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_6high_uid129_sincosTest_a[10]~0 .extended_lut = "off";
defparam \aip1E_6high_uid129_sincosTest_a[10]~0 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \aip1E_6high_uid129_sincosTest_a[10]~0 .shared_arith = "off";

cyclonev_lcell_comb \Add14~42 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add14~42_cout ),
	.shareout());
defparam \Add14~42 .extended_lut = "off";
defparam \Add14~42 .lut_mask = 64'h000000000000FFFF;
defparam \Add14~42 .shared_arith = "off";

cyclonev_lcell_comb \Add14~38 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~41_sumout ),
	.datad(!\Add12~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add14~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add14~38_cout ),
	.shareout());
defparam \Add14~38 .extended_lut = "off";
defparam \Add14~38 .lut_mask = 64'h00000000000005AF;
defparam \Add14~38 .shared_arith = "off";

cyclonev_lcell_comb \Add14~34 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~37_sumout ),
	.datad(!\Add12~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add14~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add14~34_cout ),
	.shareout());
defparam \Add14~34 .extended_lut = "off";
defparam \Add14~34 .lut_mask = 64'h00000000000005AF;
defparam \Add14~34 .shared_arith = "off";

cyclonev_lcell_comb \Add14~30 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~33_sumout ),
	.datad(!\Add12~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add14~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add14~30_cout ),
	.shareout());
defparam \Add14~30 .extended_lut = "off";
defparam \Add14~30 .lut_mask = 64'h00000000000005AF;
defparam \Add14~30 .shared_arith = "off";

cyclonev_lcell_comb \Add14~26 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~29_sumout ),
	.datad(!\Add12~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add14~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add14~26_cout ),
	.shareout());
defparam \Add14~26 .extended_lut = "off";
defparam \Add14~26 .lut_mask = 64'h00000000000005AF;
defparam \Add14~26 .shared_arith = "off";

cyclonev_lcell_comb \Add14~22 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~25_sumout ),
	.datad(!\Add12~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add14~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add14~22_cout ),
	.shareout());
defparam \Add14~22 .extended_lut = "off";
defparam \Add14~22 .lut_mask = 64'h00000000000005AF;
defparam \Add14~22 .shared_arith = "off";

cyclonev_lcell_comb \Add14~18 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~21_sumout ),
	.datad(!\Add12~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add14~22_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add14~18_cout ),
	.shareout());
defparam \Add14~18 .extended_lut = "off";
defparam \Add14~18 .lut_mask = 64'h00000000000005AF;
defparam \Add14~18 .shared_arith = "off";

cyclonev_lcell_comb \Add14~14 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~17_sumout ),
	.datad(!\Add12~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add14~18_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add14~14_cout ),
	.shareout());
defparam \Add14~14 .extended_lut = "off";
defparam \Add14~14 .lut_mask = 64'h00000000000005AF;
defparam \Add14~14 .shared_arith = "off";

cyclonev_lcell_comb \Add14~10 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~13_sumout ),
	.datad(!\Add12~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add14~14_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add14~10_cout ),
	.shareout());
defparam \Add14~10 .extended_lut = "off";
defparam \Add14~10 .lut_mask = 64'h00000000000005AF;
defparam \Add14~10 .shared_arith = "off";

cyclonev_lcell_comb \Add14~6 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~9_sumout ),
	.datad(!\Add12~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add14~10_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add14~6_cout ),
	.shareout());
defparam \Add14~6 .extended_lut = "off";
defparam \Add14~6 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add14~6 .shared_arith = "off";

cyclonev_lcell_comb \Add14~1 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\Add11~5_sumout ),
	.datac(gnd),
	.datad(!\Add12~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add14~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add14~1_sumout ),
	.cout(),
	.shareout());
defparam \Add14~1 .extended_lut = "off";
defparam \Add14~1 .lut_mask = 64'h00000000000011BB;
defparam \Add14~1 .shared_arith = "off";

cyclonev_lcell_comb \Add13~6 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~9_sumout ),
	.datad(!\Add12~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add13~6_cout ),
	.shareout());
defparam \Add13~6 .extended_lut = "off";
defparam \Add13~6 .lut_mask = 64'h00000000000005AF;
defparam \Add13~6 .shared_arith = "off";

cyclonev_lcell_comb \Add13~1 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(!\Add11~5_sumout ),
	.datad(!\Add12~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add13~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add13~1_sumout ),
	.cout(),
	.shareout());
defparam \Add13~1 .extended_lut = "off";
defparam \Add13~1 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add13~1 .shared_arith = "off";

cyclonev_lcell_comb \Add28~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add28~69_sumout ),
	.cout(\Add28~70 ),
	.shareout(\Add28~71 ));
defparam \Add28~69 .extended_lut = "off";
defparam \Add28~69 .lut_mask = 64'h0000F0FF00000FF0;
defparam \Add28~69 .shared_arith = "on";

cyclonev_lcell_comb \Add28~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][4]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~70 ),
	.sharein(\Add28~71 ),
	.combout(),
	.sumout(\Add28~65_sumout ),
	.cout(\Add28~66 ),
	.shareout(\Add28~67 ));
defparam \Add28~65 .extended_lut = "off";
defparam \Add28~65 .lut_mask = 64'h000000F00000F00F;
defparam \Add28~65 .shared_arith = "on";

cyclonev_lcell_comb \Add28~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~66 ),
	.sharein(\Add28~67 ),
	.combout(),
	.sumout(\Add28~61_sumout ),
	.cout(\Add28~62 ),
	.shareout(\Add28~63 ));
defparam \Add28~61 .extended_lut = "off";
defparam \Add28~61 .lut_mask = 64'h000000F00000F00F;
defparam \Add28~61 .shared_arith = "on";

cyclonev_lcell_comb \Add28~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~62 ),
	.sharein(\Add28~63 ),
	.combout(),
	.sumout(\Add28~57_sumout ),
	.cout(\Add28~58 ),
	.shareout(\Add28~59 ));
defparam \Add28~57 .extended_lut = "off";
defparam \Add28~57 .lut_mask = 64'h00000F000000F00F;
defparam \Add28~57 .shared_arith = "on";

cyclonev_lcell_comb \Add28~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][4]~q ),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~58 ),
	.sharein(\Add28~59 ),
	.combout(),
	.sumout(\Add28~53_sumout ),
	.cout(\Add28~54 ),
	.shareout(\Add28~55 ));
defparam \Add28~53 .extended_lut = "off";
defparam \Add28~53 .lut_mask = 64'h00000F000000F00F;
defparam \Add28~53 .shared_arith = "on";

cyclonev_lcell_comb \Add28~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~54 ),
	.sharein(\Add28~55 ),
	.combout(),
	.sumout(\Add28~49_sumout ),
	.cout(\Add28~50 ),
	.shareout(\Add28~51 ));
defparam \Add28~49 .extended_lut = "off";
defparam \Add28~49 .lut_mask = 64'h000000F00000F00F;
defparam \Add28~49 .shared_arith = "on";

cyclonev_lcell_comb \Add28~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~50 ),
	.sharein(\Add28~51 ),
	.combout(),
	.sumout(\Add28~45_sumout ),
	.cout(\Add28~46 ),
	.shareout(\Add28~47 ));
defparam \Add28~45 .extended_lut = "off";
defparam \Add28~45 .lut_mask = 64'h000000F00000F00F;
defparam \Add28~45 .shared_arith = "on";

cyclonev_lcell_comb \Add28~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~46 ),
	.sharein(\Add28~47 ),
	.combout(),
	.sumout(\Add28~41_sumout ),
	.cout(\Add28~42 ),
	.shareout(\Add28~43 ));
defparam \Add28~41 .extended_lut = "off";
defparam \Add28~41 .lut_mask = 64'h00000F000000F00F;
defparam \Add28~41 .shared_arith = "on";

cyclonev_lcell_comb \Add28~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~42 ),
	.sharein(\Add28~43 ),
	.combout(),
	.sumout(\Add28~37_sumout ),
	.cout(\Add28~38 ),
	.shareout(\Add28~39 ));
defparam \Add28~37 .extended_lut = "off";
defparam \Add28~37 .lut_mask = 64'h000000000000FFFF;
defparam \Add28~37 .shared_arith = "on";

cyclonev_lcell_comb \Add28~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~38 ),
	.sharein(\Add28~39 ),
	.combout(),
	.sumout(\Add28~33_sumout ),
	.cout(\Add28~34 ),
	.shareout(\Add28~35 ));
defparam \Add28~33 .extended_lut = "off";
defparam \Add28~33 .lut_mask = 64'h00000F000000F00F;
defparam \Add28~33 .shared_arith = "on";

cyclonev_lcell_comb \Add28~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~34 ),
	.sharein(\Add28~35 ),
	.combout(),
	.sumout(\Add28~17_sumout ),
	.cout(\Add28~18 ),
	.shareout(\Add28~19 ));
defparam \Add28~17 .extended_lut = "off";
defparam \Add28~17 .lut_mask = 64'h000000F00000F00F;
defparam \Add28~17 .shared_arith = "on";

cyclonev_lcell_comb \Add28~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~18 ),
	.sharein(\Add28~19 ),
	.combout(),
	.sumout(\Add28~21_sumout ),
	.cout(\Add28~22 ),
	.shareout(\Add28~23 ));
defparam \Add28~21 .extended_lut = "off";
defparam \Add28~21 .lut_mask = 64'h00000F000000F00F;
defparam \Add28~21 .shared_arith = "on";

cyclonev_lcell_comb \Add28~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][12]~q ),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~22 ),
	.sharein(\Add28~23 ),
	.combout(),
	.sumout(\Add28~25_sumout ),
	.cout(\Add28~26 ),
	.shareout(\Add28~27 ));
defparam \Add28~25 .extended_lut = "off";
defparam \Add28~25 .lut_mask = 64'h00000F000000F00F;
defparam \Add28~25 .shared_arith = "on";

cyclonev_lcell_comb \Add28~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~26 ),
	.sharein(\Add28~27 ),
	.combout(),
	.sumout(\Add28~29_sumout ),
	.cout(\Add28~30 ),
	.shareout(\Add28~31 ));
defparam \Add28~29 .extended_lut = "off";
defparam \Add28~29 .lut_mask = 64'h000000FF0000FF00;
defparam \Add28~29 .shared_arith = "on";

cyclonev_lcell_comb \Add28~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~30 ),
	.sharein(\Add28~31 ),
	.combout(),
	.sumout(\Add28~13_sumout ),
	.cout(\Add28~14 ),
	.shareout(\Add28~15 ));
defparam \Add28~13 .extended_lut = "off";
defparam \Add28~13 .lut_mask = 64'h000000FF0000FF00;
defparam \Add28~13 .shared_arith = "on";

cyclonev_lcell_comb \Add28~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~14 ),
	.sharein(\Add28~15 ),
	.combout(),
	.sumout(\Add28~9_sumout ),
	.cout(\Add28~10 ),
	.shareout(\Add28~11 ));
defparam \Add28~9 .extended_lut = "off";
defparam \Add28~9 .lut_mask = 64'h000000FF0000FF00;
defparam \Add28~9 .shared_arith = "on";

cyclonev_lcell_comb \Add28~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~10 ),
	.sharein(\Add28~11 ),
	.combout(),
	.sumout(\Add28~5_sumout ),
	.cout(\Add28~6 ),
	.shareout(\Add28~7 ));
defparam \Add28~5 .extended_lut = "off";
defparam \Add28~5 .lut_mask = 64'h000000000000FFFF;
defparam \Add28~5 .shared_arith = "on";

cyclonev_lcell_comb \Add28~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add28~6 ),
	.sharein(\Add28~7 ),
	.combout(),
	.sumout(\Add28~1_sumout ),
	.cout(),
	.shareout());
defparam \Add28~1 .extended_lut = "off";
defparam \Add28~1 .lut_mask = 64'h000000000000FFFF;
defparam \Add28~1 .shared_arith = "on";

cyclonev_lcell_comb \Add26~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add26~69_sumout ),
	.cout(\Add26~70 ),
	.shareout(\Add26~71 ));
defparam \Add26~69 .extended_lut = "off";
defparam \Add26~69 .lut_mask = 64'h0000F0FF00000FF0;
defparam \Add26~69 .shared_arith = "on";

cyclonev_lcell_comb \Add26~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][4]~q ),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~70 ),
	.sharein(\Add26~71 ),
	.combout(),
	.sumout(\Add26~65_sumout ),
	.cout(\Add26~66 ),
	.shareout(\Add26~67 ));
defparam \Add26~65 .extended_lut = "off";
defparam \Add26~65 .lut_mask = 64'h000000F00000F00F;
defparam \Add26~65 .shared_arith = "on";

cyclonev_lcell_comb \Add26~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~66 ),
	.sharein(\Add26~67 ),
	.combout(),
	.sumout(\Add26~61_sumout ),
	.cout(\Add26~62 ),
	.shareout(\Add26~63 ));
defparam \Add26~61 .extended_lut = "off";
defparam \Add26~61 .lut_mask = 64'h00000F000000F00F;
defparam \Add26~61 .shared_arith = "on";

cyclonev_lcell_comb \Add26~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~62 ),
	.sharein(\Add26~63 ),
	.combout(),
	.sumout(\Add26~57_sumout ),
	.cout(\Add26~58 ),
	.shareout(\Add26~59 ));
defparam \Add26~57 .extended_lut = "off";
defparam \Add26~57 .lut_mask = 64'h000000F00000F00F;
defparam \Add26~57 .shared_arith = "on";

cyclonev_lcell_comb \Add26~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][4]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~58 ),
	.sharein(\Add26~59 ),
	.combout(),
	.sumout(\Add26~53_sumout ),
	.cout(\Add26~54 ),
	.shareout(\Add26~55 ));
defparam \Add26~53 .extended_lut = "off";
defparam \Add26~53 .lut_mask = 64'h00000F000000F00F;
defparam \Add26~53 .shared_arith = "on";

cyclonev_lcell_comb \Add26~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~54 ),
	.sharein(\Add26~55 ),
	.combout(),
	.sumout(\Add26~49_sumout ),
	.cout(\Add26~50 ),
	.shareout(\Add26~51 ));
defparam \Add26~49 .extended_lut = "off";
defparam \Add26~49 .lut_mask = 64'h00000F000000F00F;
defparam \Add26~49 .shared_arith = "on";

cyclonev_lcell_comb \Add26~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~50 ),
	.sharein(\Add26~51 ),
	.combout(),
	.sumout(\Add26~45_sumout ),
	.cout(\Add26~46 ),
	.shareout(\Add26~47 ));
defparam \Add26~45 .extended_lut = "off";
defparam \Add26~45 .lut_mask = 64'h00000F000000F00F;
defparam \Add26~45 .shared_arith = "on";

cyclonev_lcell_comb \Add26~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~46 ),
	.sharein(\Add26~47 ),
	.combout(),
	.sumout(\Add26~41_sumout ),
	.cout(\Add26~42 ),
	.shareout(\Add26~43 ));
defparam \Add26~41 .extended_lut = "off";
defparam \Add26~41 .lut_mask = 64'h000000F00000F00F;
defparam \Add26~41 .shared_arith = "on";

cyclonev_lcell_comb \Add26~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~42 ),
	.sharein(\Add26~43 ),
	.combout(),
	.sumout(\Add26~37_sumout ),
	.cout(\Add26~38 ),
	.shareout(\Add26~39 ));
defparam \Add26~37 .extended_lut = "off";
defparam \Add26~37 .lut_mask = 64'h000000000000FFFF;
defparam \Add26~37 .shared_arith = "on";

cyclonev_lcell_comb \Add26~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~38 ),
	.sharein(\Add26~39 ),
	.combout(),
	.sumout(\Add26~33_sumout ),
	.cout(\Add26~34 ),
	.shareout(\Add26~35 ));
defparam \Add26~33 .extended_lut = "off";
defparam \Add26~33 .lut_mask = 64'h00000F000000F00F;
defparam \Add26~33 .shared_arith = "on";

cyclonev_lcell_comb \Add26~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~34 ),
	.sharein(\Add26~35 ),
	.combout(),
	.sumout(\Add26~5_sumout ),
	.cout(\Add26~6 ),
	.shareout(\Add26~7 ));
defparam \Add26~5 .extended_lut = "off";
defparam \Add26~5 .lut_mask = 64'h000000F00000F00F;
defparam \Add26~5 .shared_arith = "on";

cyclonev_lcell_comb \Add26~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~6 ),
	.sharein(\Add26~7 ),
	.combout(),
	.sumout(\Add26~9_sumout ),
	.cout(\Add26~10 ),
	.shareout(\Add26~11 ));
defparam \Add26~9 .extended_lut = "off";
defparam \Add26~9 .lut_mask = 64'h00000F000000F00F;
defparam \Add26~9 .shared_arith = "on";

cyclonev_lcell_comb \Add26~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][15]~q ),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~10 ),
	.sharein(\Add26~11 ),
	.combout(),
	.sumout(\Add26~25_sumout ),
	.cout(\Add26~26 ),
	.shareout(\Add26~27 ));
defparam \Add26~25 .extended_lut = "off";
defparam \Add26~25 .lut_mask = 64'h000000F00000F00F;
defparam \Add26~25 .shared_arith = "on";

cyclonev_lcell_comb \Add26~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~26 ),
	.sharein(\Add26~27 ),
	.combout(),
	.sumout(\Add26~29_sumout ),
	.cout(\Add26~30 ),
	.shareout(\Add26~31 ));
defparam \Add26~29 .extended_lut = "off";
defparam \Add26~29 .lut_mask = 64'h000000FF0000FF00;
defparam \Add26~29 .shared_arith = "on";

cyclonev_lcell_comb \Add26~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~30 ),
	.sharein(\Add26~31 ),
	.combout(),
	.sumout(\Add26~21_sumout ),
	.cout(\Add26~22 ),
	.shareout(\Add26~23 ));
defparam \Add26~21 .extended_lut = "off";
defparam \Add26~21 .lut_mask = 64'h000000FF0000FF00;
defparam \Add26~21 .shared_arith = "on";

cyclonev_lcell_comb \Add26~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~22 ),
	.sharein(\Add26~23 ),
	.combout(),
	.sumout(\Add26~17_sumout ),
	.cout(\Add26~18 ),
	.shareout(\Add26~19 ));
defparam \Add26~17 .extended_lut = "off";
defparam \Add26~17 .lut_mask = 64'h000000FF0000FF00;
defparam \Add26~17 .shared_arith = "on";

cyclonev_lcell_comb \Add26~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~18 ),
	.sharein(\Add26~19 ),
	.combout(),
	.sumout(\Add26~13_sumout ),
	.cout(\Add26~14 ),
	.shareout(\Add26~15 ));
defparam \Add26~13 .extended_lut = "off";
defparam \Add26~13 .lut_mask = 64'h000000000000FFFF;
defparam \Add26~13 .shared_arith = "on";

cyclonev_lcell_comb \Add26~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add26~14 ),
	.sharein(\Add26~15 ),
	.combout(),
	.sumout(\Add26~1_sumout ),
	.cout(),
	.shareout());
defparam \Add26~1 .extended_lut = "off";
defparam \Add26~1 .lut_mask = 64'h000000000000FFFF;
defparam \Add26~1 .shared_arith = "on";

cyclonev_lcell_comb \Add25~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~65_sumout ),
	.cout(\Add25~66 ),
	.shareout());
defparam \Add25~65 .extended_lut = "off";
defparam \Add25~65 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~65 .shared_arith = "off";

cyclonev_lcell_comb \Add25~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][1]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][4]~q ),
	.datag(gnd),
	.cin(\Add25~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~61_sumout ),
	.cout(\Add25~62 ),
	.shareout());
defparam \Add25~61 .extended_lut = "off";
defparam \Add25~61 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~61 .shared_arith = "off";

cyclonev_lcell_comb \Add25~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datag(gnd),
	.cin(\Add25~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~57_sumout ),
	.cout(\Add25~58 ),
	.shareout());
defparam \Add25~57 .extended_lut = "off";
defparam \Add25~57 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~57 .shared_arith = "off";

cyclonev_lcell_comb \Add25~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datag(gnd),
	.cin(\Add25~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~53_sumout ),
	.cout(\Add25~54 ),
	.shareout());
defparam \Add25~53 .extended_lut = "off";
defparam \Add25~53 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~53 .shared_arith = "off";

cyclonev_lcell_comb \Add25~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][4]~q ),
	.datag(gnd),
	.cin(\Add25~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~49_sumout ),
	.cout(\Add25~50 ),
	.shareout());
defparam \Add25~49 .extended_lut = "off";
defparam \Add25~49 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~49 .shared_arith = "off";

cyclonev_lcell_comb \Add25~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(\Add25~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~45_sumout ),
	.cout(\Add25~46 ),
	.shareout());
defparam \Add25~45 .extended_lut = "off";
defparam \Add25~45 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~45 .shared_arith = "off";

cyclonev_lcell_comb \Add25~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datag(gnd),
	.cin(\Add25~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~41_sumout ),
	.cout(\Add25~42 ),
	.shareout());
defparam \Add25~41 .extended_lut = "off";
defparam \Add25~41 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~41 .shared_arith = "off";

cyclonev_lcell_comb \Add25~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add25~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~37_sumout ),
	.cout(\Add25~38 ),
	.shareout());
defparam \Add25~37 .extended_lut = "off";
defparam \Add25~37 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~37 .shared_arith = "off";

cyclonev_lcell_comb \Add25~33 (
	.dataa(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add25~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~33_sumout ),
	.cout(\Add25~34 ),
	.shareout());
defparam \Add25~33 .extended_lut = "off";
defparam \Add25~33 .lut_mask = 64'h0000AAAA00005555;
defparam \Add25~33 .shared_arith = "off";

cyclonev_lcell_comb \Add25~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(\Add25~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~29_sumout ),
	.cout(\Add25~30 ),
	.shareout());
defparam \Add25~29 .extended_lut = "off";
defparam \Add25~29 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~29 .shared_arith = "off";

cyclonev_lcell_comb \Add25~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(\Add25~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~1_sumout ),
	.cout(\Add25~2 ),
	.shareout());
defparam \Add25~1 .extended_lut = "off";
defparam \Add25~1 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~1 .shared_arith = "off";

cyclonev_lcell_comb \Add25~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datag(gnd),
	.cin(\Add25~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~5_sumout ),
	.cout(\Add25~6 ),
	.shareout());
defparam \Add25~5 .extended_lut = "off";
defparam \Add25~5 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~5 .shared_arith = "off";

cyclonev_lcell_comb \Add25~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][15]~q ),
	.datag(gnd),
	.cin(\Add25~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~21_sumout ),
	.cout(\Add25~22 ),
	.shareout());
defparam \Add25~21 .extended_lut = "off";
defparam \Add25~21 .lut_mask = 64'h0000FF00000000FF;
defparam \Add25~21 .shared_arith = "off";

cyclonev_lcell_comb \Add25~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add25~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~25_sumout ),
	.cout(\Add25~26 ),
	.shareout());
defparam \Add25~25 .extended_lut = "off";
defparam \Add25~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add25~25 .shared_arith = "off";

cyclonev_lcell_comb \Add25~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add25~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~17_sumout ),
	.cout(\Add25~18 ),
	.shareout());
defparam \Add25~17 .extended_lut = "off";
defparam \Add25~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add25~17 .shared_arith = "off";

cyclonev_lcell_comb \Add25~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add25~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~13_sumout ),
	.cout(\Add25~14 ),
	.shareout());
defparam \Add25~13 .extended_lut = "off";
defparam \Add25~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add25~13 .shared_arith = "off";

cyclonev_lcell_comb \Add25~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add25~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~9_sumout ),
	.cout(),
	.shareout());
defparam \Add25~9 .extended_lut = "off";
defparam \Add25~9 .lut_mask = 64'h0000FFFF00000000;
defparam \Add25~9 .shared_arith = "off";

cyclonev_lcell_comb \Add27~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~65_sumout ),
	.cout(\Add27~66 ),
	.shareout());
defparam \Add27~65 .extended_lut = "off";
defparam \Add27~65 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~65 .shared_arith = "off";

cyclonev_lcell_comb \Add27~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][1]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][4]~q ),
	.datag(gnd),
	.cin(\Add27~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~61_sumout ),
	.cout(\Add27~62 ),
	.shareout());
defparam \Add27~61 .extended_lut = "off";
defparam \Add27~61 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~61 .shared_arith = "off";

cyclonev_lcell_comb \Add27~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(\Add27~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~57_sumout ),
	.cout(\Add27~58 ),
	.shareout());
defparam \Add27~57 .extended_lut = "off";
defparam \Add27~57 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~57 .shared_arith = "off";

cyclonev_lcell_comb \Add27~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(\Add27~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~53_sumout ),
	.cout(\Add27~54 ),
	.shareout());
defparam \Add27~53 .extended_lut = "off";
defparam \Add27~53 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~53 .shared_arith = "off";

cyclonev_lcell_comb \Add27~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][4]~q ),
	.datag(gnd),
	.cin(\Add27~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~49_sumout ),
	.cout(\Add27~50 ),
	.shareout());
defparam \Add27~49 .extended_lut = "off";
defparam \Add27~49 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~49 .shared_arith = "off";

cyclonev_lcell_comb \Add27~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datag(gnd),
	.cin(\Add27~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~45_sumout ),
	.cout(\Add27~46 ),
	.shareout());
defparam \Add27~45 .extended_lut = "off";
defparam \Add27~45 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~45 .shared_arith = "off";

cyclonev_lcell_comb \Add27~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datag(gnd),
	.cin(\Add27~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~41_sumout ),
	.cout(\Add27~42 ),
	.shareout());
defparam \Add27~41 .extended_lut = "off";
defparam \Add27~41 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~41 .shared_arith = "off";

cyclonev_lcell_comb \Add27~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add27~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~37_sumout ),
	.cout(\Add27~38 ),
	.shareout());
defparam \Add27~37 .extended_lut = "off";
defparam \Add27~37 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~37 .shared_arith = "off";

cyclonev_lcell_comb \Add27~33 (
	.dataa(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add27~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~33_sumout ),
	.cout(\Add27~34 ),
	.shareout());
defparam \Add27~33 .extended_lut = "off";
defparam \Add27~33 .lut_mask = 64'h0000AAAA00005555;
defparam \Add27~33 .shared_arith = "off";

cyclonev_lcell_comb \Add27~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][12]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datag(gnd),
	.cin(\Add27~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~29_sumout ),
	.cout(\Add27~30 ),
	.shareout());
defparam \Add27~29 .extended_lut = "off";
defparam \Add27~29 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~29 .shared_arith = "off";

cyclonev_lcell_comb \Add27~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][5]~q ),
	.datag(gnd),
	.cin(\Add27~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~13_sumout ),
	.cout(\Add27~14 ),
	.shareout());
defparam \Add27~13 .extended_lut = "off";
defparam \Add27~13 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~13 .shared_arith = "off";

cyclonev_lcell_comb \Add27~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][11]~q ),
	.datag(gnd),
	.cin(\Add27~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~17_sumout ),
	.cout(\Add27~18 ),
	.shareout());
defparam \Add27~17 .extended_lut = "off";
defparam \Add27~17 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~17 .shared_arith = "off";

cyclonev_lcell_comb \Add27~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist3_xip1_3_uid80_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][12]~q ),
	.datag(gnd),
	.cin(\Add27~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~21_sumout ),
	.cout(\Add27~22 ),
	.shareout());
defparam \Add27~21 .extended_lut = "off";
defparam \Add27~21 .lut_mask = 64'h0000FF00000000FF;
defparam \Add27~21 .shared_arith = "off";

cyclonev_lcell_comb \Add27~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add27~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~25_sumout ),
	.cout(\Add27~26 ),
	.shareout());
defparam \Add27~25 .extended_lut = "off";
defparam \Add27~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add27~25 .shared_arith = "off";

cyclonev_lcell_comb \Add27~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add27~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~9_sumout ),
	.cout(\Add27~10 ),
	.shareout());
defparam \Add27~9 .extended_lut = "off";
defparam \Add27~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add27~9 .shared_arith = "off";

cyclonev_lcell_comb \Add27~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist2_yip1_3_uid81_sincosTest_b_1|delay_signals[0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add27~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~5_sumout ),
	.cout(\Add27~6 ),
	.shareout());
defparam \Add27~5 .extended_lut = "off";
defparam \Add27~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add27~5 .shared_arith = "off";

cyclonev_lcell_comb \Add27~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add27~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add27~1_sumout ),
	.cout(),
	.shareout());
defparam \Add27~1 .extended_lut = "off";
defparam \Add27~1 .lut_mask = 64'h0000FFFF00000000;
defparam \Add27~1 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_a[12]~2 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~21_sumout ),
	.datac(!\Add26~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[12]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[12]~2 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[12]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[12]~2 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_a[11]~1 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~5_sumout ),
	.datac(!\Add26~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[11]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[11]~1 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[11]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[11]~1 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_a[10]~0 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~1_sumout ),
	.datac(!\Add26~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[10]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[10]~0 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[10]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[10]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_a[9]~3 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~29_sumout ),
	.datac(!\Add26~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[9]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[9]~3 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[9]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[9]~3 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_a[8]~4 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~33_sumout ),
	.datac(!\Add26~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[8]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[8]~4 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[8]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[8]~4 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_a[7]~5 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~37_sumout ),
	.datac(!\Add26~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[7]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[7]~5 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[7]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[7]~5 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_a[6]~6 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~41_sumout ),
	.datac(!\Add26~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[6]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[6]~6 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[6]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[6]~6 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_a[5]~7 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~45_sumout ),
	.datac(!\Add26~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[5]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[5]~7 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[5]~7 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[5]~7 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_a[4]~8 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~49_sumout ),
	.datac(!\Add26~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_a[4]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_a[4]~8 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_a[4]~8 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_a[4]~8 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_4_uid92_sincosTest_o[3]~0 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~53_sumout ),
	.datac(!\Add26~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid92_sincosTest_o[3]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid92_sincosTest_o[3]~0 .extended_lut = "off";
defparam \xip1E_4_uid92_sincosTest_o[3]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_4_uid92_sincosTest_o[3]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_4_uid92_sincosTest_o[2]~1 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~57_sumout ),
	.datac(!\Add26~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid92_sincosTest_o[2]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid92_sincosTest_o[2]~1 .extended_lut = "off";
defparam \xip1E_4_uid92_sincosTest_o[2]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_4_uid92_sincosTest_o[2]~1 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_4_uid92_sincosTest_o[1]~2 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~61_sumout ),
	.datac(!\Add26~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid92_sincosTest_o[1]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid92_sincosTest_o[1]~2 .extended_lut = "off";
defparam \xip1E_4_uid92_sincosTest_o[1]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_4_uid92_sincosTest_o[1]~2 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_4_uid92_sincosTest_o[0]~3 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add25~65_sumout ),
	.datac(!\Add26~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid92_sincosTest_o[0]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid92_sincosTest_o[0]~3 .extended_lut = "off";
defparam \xip1E_4_uid92_sincosTest_o[0]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_4_uid92_sincosTest_o[0]~3 .shared_arith = "off";

cyclonev_lcell_comb \Add31~78 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~78_cout ),
	.shareout());
defparam \Add31~78 .extended_lut = "off";
defparam \Add31~78 .lut_mask = 64'h000000000000AAAA;
defparam \Add31~78 .shared_arith = "off";

cyclonev_lcell_comb \Add31~73 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~53_sumout ),
	.datad(!\Add27~49_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_4_uid92_sincosTest_o[0]~3_combout ),
	.datag(gnd),
	.cin(\Add31~78_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~73_sumout ),
	.cout(\Add31~74 ),
	.shareout());
defparam \Add31~73 .extended_lut = "off";
defparam \Add31~73 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~73 .shared_arith = "off";

cyclonev_lcell_comb \Add31~69 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~49_sumout ),
	.datad(!\Add27~45_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_4_uid92_sincosTest_o[1]~2_combout ),
	.datag(gnd),
	.cin(\Add31~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~69_sumout ),
	.cout(\Add31~70 ),
	.shareout());
defparam \Add31~69 .extended_lut = "off";
defparam \Add31~69 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~69 .shared_arith = "off";

cyclonev_lcell_comb \Add31~65 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~45_sumout ),
	.datad(!\Add27~41_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_4_uid92_sincosTest_o[2]~1_combout ),
	.datag(gnd),
	.cin(\Add31~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~65_sumout ),
	.cout(\Add31~66 ),
	.shareout());
defparam \Add31~65 .extended_lut = "off";
defparam \Add31~65 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~65 .shared_arith = "off";

cyclonev_lcell_comb \Add31~61 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~41_sumout ),
	.datad(!\Add27~37_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_4_uid92_sincosTest_o[3]~0_combout ),
	.datag(gnd),
	.cin(\Add31~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~61_sumout ),
	.cout(\Add31~62 ),
	.shareout());
defparam \Add31~61 .extended_lut = "off";
defparam \Add31~61 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~61 .shared_arith = "off";

cyclonev_lcell_comb \Add31~57 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~37_sumout ),
	.datad(!\Add27~33_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[4]~8_combout ),
	.datag(gnd),
	.cin(\Add31~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~57_sumout ),
	.cout(\Add31~58 ),
	.shareout());
defparam \Add31~57 .extended_lut = "off";
defparam \Add31~57 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~57 .shared_arith = "off";

cyclonev_lcell_comb \Add31~53 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~33_sumout ),
	.datad(!\Add27~29_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[5]~7_combout ),
	.datag(gnd),
	.cin(\Add31~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~53_sumout ),
	.cout(\Add31~54 ),
	.shareout());
defparam \Add31~53 .extended_lut = "off";
defparam \Add31~53 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~53 .shared_arith = "off";

cyclonev_lcell_comb \Add31~49 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~17_sumout ),
	.datad(!\Add27~13_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[6]~6_combout ),
	.datag(gnd),
	.cin(\Add31~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~49_sumout ),
	.cout(\Add31~50 ),
	.shareout());
defparam \Add31~49 .extended_lut = "off";
defparam \Add31~49 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~49 .shared_arith = "off";

cyclonev_lcell_comb \Add31~45 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~21_sumout ),
	.datad(!\Add27~17_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[7]~5_combout ),
	.datag(gnd),
	.cin(\Add31~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~45_sumout ),
	.cout(\Add31~46 ),
	.shareout());
defparam \Add31~45 .extended_lut = "off";
defparam \Add31~45 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~45 .shared_arith = "off";

cyclonev_lcell_comb \Add31~41 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~25_sumout ),
	.datad(!\Add27~21_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[8]~4_combout ),
	.datag(gnd),
	.cin(\Add31~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~41_sumout ),
	.cout(\Add31~42 ),
	.shareout());
defparam \Add31~41 .extended_lut = "off";
defparam \Add31~41 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~41 .shared_arith = "off";

cyclonev_lcell_comb \Add31~37 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~29_sumout ),
	.datad(!\Add27~25_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[9]~3_combout ),
	.datag(gnd),
	.cin(\Add31~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~37_sumout ),
	.cout(\Add31~38 ),
	.shareout());
defparam \Add31~37 .extended_lut = "off";
defparam \Add31~37 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~37 .shared_arith = "off";

cyclonev_lcell_comb \Add31~5 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~13_sumout ),
	.datad(!\Add27~9_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[10]~0_combout ),
	.datag(gnd),
	.cin(\Add31~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~5_sumout ),
	.cout(\Add31~6 ),
	.shareout());
defparam \Add31~5 .extended_lut = "off";
defparam \Add31~5 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~5 .shared_arith = "off";

cyclonev_lcell_comb \Add31~9 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~9_sumout ),
	.datad(!\Add27~5_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[11]~1_combout ),
	.datag(gnd),
	.cin(\Add31~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~9_sumout ),
	.cout(\Add31~10 ),
	.shareout());
defparam \Add31~9 .extended_lut = "off";
defparam \Add31~9 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~9 .shared_arith = "off";

cyclonev_lcell_comb \Add31~25 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~5_sumout ),
	.datad(!\Add27~1_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_a[12]~2_combout ),
	.datag(gnd),
	.cin(\Add31~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~25_sumout ),
	.cout(\Add31~26 ),
	.shareout());
defparam \Add31~25 .extended_lut = "off";
defparam \Add31~25 .lut_mask = 64'h0000FF000000A965;
defparam \Add31~25 .shared_arith = "off";

cyclonev_lcell_comb \Add31~29 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~25_sumout ),
	.datad(!\Add28~1_sumout ),
	.datae(gnd),
	.dataf(!\Add26~29_sumout ),
	.datag(gnd),
	.cin(\Add31~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~29_sumout ),
	.cout(\Add31~30 ),
	.shareout());
defparam \Add31~29 .extended_lut = "off";
defparam \Add31~29 .lut_mask = 64'h0000FC300000AA99;
defparam \Add31~29 .shared_arith = "off";

cyclonev_lcell_comb \Add31~33 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~17_sumout ),
	.datad(!\Add28~1_sumout ),
	.datae(gnd),
	.dataf(!\Add26~21_sumout ),
	.datag(gnd),
	.cin(\Add31~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~33_sumout ),
	.cout(\Add31~34 ),
	.shareout());
defparam \Add31~33 .extended_lut = "off";
defparam \Add31~33 .lut_mask = 64'h0000FC300000AA99;
defparam \Add31~33 .shared_arith = "off";

cyclonev_lcell_comb \Add31~17 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~13_sumout ),
	.datad(!\Add28~1_sumout ),
	.datae(gnd),
	.dataf(!\Add26~17_sumout ),
	.datag(gnd),
	.cin(\Add31~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~17_sumout ),
	.cout(\Add31~18 ),
	.shareout());
defparam \Add31~17 .extended_lut = "off";
defparam \Add31~17 .lut_mask = 64'h0000FC300000AA99;
defparam \Add31~17 .shared_arith = "off";

cyclonev_lcell_comb \Add31~13 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~9_sumout ),
	.datad(!\Add28~1_sumout ),
	.datae(gnd),
	.dataf(!\Add26~13_sumout ),
	.datag(gnd),
	.cin(\Add31~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~13_sumout ),
	.cout(\Add31~14 ),
	.shareout());
defparam \Add31~13 .extended_lut = "off";
defparam \Add31~13 .lut_mask = 64'h0000FC300000AA99;
defparam \Add31~13 .shared_arith = "off";

cyclonev_lcell_comb \Add31~21 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(gnd),
	.datad(!\Add28~1_sumout ),
	.datae(gnd),
	.dataf(!\Add26~1_sumout ),
	.datag(gnd),
	.cin(\Add31~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~21_sumout ),
	.cout(\Add31~22 ),
	.shareout());
defparam \Add31~21 .extended_lut = "off";
defparam \Add31~21 .lut_mask = 64'h0000FF330000AA99;
defparam \Add31~21 .shared_arith = "off";

cyclonev_lcell_comb \Add31~1 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(gnd),
	.datad(!\Add28~1_sumout ),
	.datae(gnd),
	.dataf(!\Add26~1_sumout ),
	.datag(gnd),
	.cin(\Add31~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~1_sumout ),
	.cout(),
	.shareout());
defparam \Add31~1 .extended_lut = "off";
defparam \Add31~1 .lut_mask = 64'h0000FF330000AA99;
defparam \Add31~1 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_b[8]~2 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~25_sumout ),
	.datac(!\Add27~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[8]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[8]~2 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[8]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[8]~2 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_b[7]~1 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~21_sumout ),
	.datac(!\Add27~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[7]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[7]~1 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[7]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[7]~1 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_b[6]~0 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~17_sumout ),
	.datac(!\Add27~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[6]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[6]~0 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[6]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[6]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_b[5]~3 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~33_sumout ),
	.datac(!\Add27~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[5]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[5]~3 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[5]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[5]~3 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_b[4]~4 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~37_sumout ),
	.datac(!\Add27~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[4]~4 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[4]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[4]~4 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_b[3]~5 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~41_sumout ),
	.datac(!\Add27~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[3]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[3]~5 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[3]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[3]~5 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_b[2]~6 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~45_sumout ),
	.datac(!\Add27~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[2]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[2]~6 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[2]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[2]~6 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_b[1]~7 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~49_sumout ),
	.datac(!\Add27~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[1]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[1]~7 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[1]~7 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[1]~7 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid108_sincosTest_b[0]~8 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~53_sumout ),
	.datac(!\Add27~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid108_sincosTest_b[0]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid108_sincosTest_b[0]~8 .extended_lut = "off";
defparam \xip1E_5_uid108_sincosTest_b[0]~8 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid108_sincosTest_b[0]~8 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_4_uid93_sincosTest_o[3]~0 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~57_sumout ),
	.datac(!\Add27~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid93_sincosTest_o[3]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid93_sincosTest_o[3]~0 .extended_lut = "off";
defparam \yip1E_4_uid93_sincosTest_o[3]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_4_uid93_sincosTest_o[3]~0 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_4_uid93_sincosTest_o[2]~1 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~61_sumout ),
	.datac(!\Add27~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid93_sincosTest_o[2]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid93_sincosTest_o[2]~1 .extended_lut = "off";
defparam \yip1E_4_uid93_sincosTest_o[2]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_4_uid93_sincosTest_o[2]~1 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_4_uid93_sincosTest_o[1]~2 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~65_sumout ),
	.datac(!\Add27~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid93_sincosTest_o[1]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid93_sincosTest_o[1]~2 .extended_lut = "off";
defparam \yip1E_4_uid93_sincosTest_o[1]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_4_uid93_sincosTest_o[1]~2 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_4_uid93_sincosTest_o[0]~3 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datab(!\Add28~69_sumout ),
	.datac(!\Add27~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid93_sincosTest_o[0]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid93_sincosTest_o[0]~3 .extended_lut = "off";
defparam \yip1E_4_uid93_sincosTest_o[0]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_4_uid93_sincosTest_o[0]~3 .shared_arith = "off";

cyclonev_lcell_comb \Add29~78 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add29~78_cout ),
	.shareout());
defparam \Add29~78 .extended_lut = "off";
defparam \Add29~78 .lut_mask = 64'h0000000000005555;
defparam \Add29~78 .shared_arith = "off";

cyclonev_lcell_comb \Add29~73 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~49_sumout ),
	.datad(!\Add26~53_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_4_uid93_sincosTest_o[0]~3_combout ),
	.datag(gnd),
	.cin(\Add29~78_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~73_sumout ),
	.cout(\Add29~74 ),
	.shareout());
defparam \Add29~73 .extended_lut = "off";
defparam \Add29~73 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~73 .shared_arith = "off";

cyclonev_lcell_comb \Add29~69 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~45_sumout ),
	.datad(!\Add26~49_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_4_uid93_sincosTest_o[1]~2_combout ),
	.datag(gnd),
	.cin(\Add29~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~69_sumout ),
	.cout(\Add29~70 ),
	.shareout());
defparam \Add29~69 .extended_lut = "off";
defparam \Add29~69 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~69 .shared_arith = "off";

cyclonev_lcell_comb \Add29~65 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~41_sumout ),
	.datad(!\Add26~45_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_4_uid93_sincosTest_o[2]~1_combout ),
	.datag(gnd),
	.cin(\Add29~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~65_sumout ),
	.cout(\Add29~66 ),
	.shareout());
defparam \Add29~65 .extended_lut = "off";
defparam \Add29~65 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~65 .shared_arith = "off";

cyclonev_lcell_comb \Add29~61 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~37_sumout ),
	.datad(!\Add26~41_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_4_uid93_sincosTest_o[3]~0_combout ),
	.datag(gnd),
	.cin(\Add29~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~61_sumout ),
	.cout(\Add29~62 ),
	.shareout());
defparam \Add29~61 .extended_lut = "off";
defparam \Add29~61 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~61 .shared_arith = "off";

cyclonev_lcell_comb \Add29~57 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~33_sumout ),
	.datad(!\Add26~37_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[0]~8_combout ),
	.datag(gnd),
	.cin(\Add29~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~57_sumout ),
	.cout(\Add29~58 ),
	.shareout());
defparam \Add29~57 .extended_lut = "off";
defparam \Add29~57 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~57 .shared_arith = "off";

cyclonev_lcell_comb \Add29~53 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~29_sumout ),
	.datad(!\Add26~33_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[1]~7_combout ),
	.datag(gnd),
	.cin(\Add29~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~53_sumout ),
	.cout(\Add29~54 ),
	.shareout());
defparam \Add29~53 .extended_lut = "off";
defparam \Add29~53 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~53 .shared_arith = "off";

cyclonev_lcell_comb \Add29~49 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~1_sumout ),
	.datad(!\Add26~5_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[2]~6_combout ),
	.datag(gnd),
	.cin(\Add29~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~49_sumout ),
	.cout(\Add29~50 ),
	.shareout());
defparam \Add29~49 .extended_lut = "off";
defparam \Add29~49 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~49 .shared_arith = "off";

cyclonev_lcell_comb \Add29~45 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~5_sumout ),
	.datad(!\Add26~9_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[3]~5_combout ),
	.datag(gnd),
	.cin(\Add29~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~45_sumout ),
	.cout(\Add29~46 ),
	.shareout());
defparam \Add29~45 .extended_lut = "off";
defparam \Add29~45 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~45 .shared_arith = "off";

cyclonev_lcell_comb \Add29~41 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~21_sumout ),
	.datad(!\Add26~25_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[4]~4_combout ),
	.datag(gnd),
	.cin(\Add29~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~41_sumout ),
	.cout(\Add29~42 ),
	.shareout());
defparam \Add29~41 .extended_lut = "off";
defparam \Add29~41 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~41 .shared_arith = "off";

cyclonev_lcell_comb \Add29~37 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~25_sumout ),
	.datad(!\Add26~29_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[5]~3_combout ),
	.datag(gnd),
	.cin(\Add29~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~37_sumout ),
	.cout(\Add29~38 ),
	.shareout());
defparam \Add29~37 .extended_lut = "off";
defparam \Add29~37 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~37 .shared_arith = "off";

cyclonev_lcell_comb \Add29~17 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~17_sumout ),
	.datad(!\Add26~21_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[6]~0_combout ),
	.datag(gnd),
	.cin(\Add29~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~17_sumout ),
	.cout(\Add29~18 ),
	.shareout());
defparam \Add29~17 .extended_lut = "off";
defparam \Add29~17 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~17 .shared_arith = "off";

cyclonev_lcell_comb \Add29~21 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~13_sumout ),
	.datad(!\Add26~17_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[7]~1_combout ),
	.datag(gnd),
	.cin(\Add29~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~21_sumout ),
	.cout(\Add29~22 ),
	.shareout());
defparam \Add29~21 .extended_lut = "off";
defparam \Add29~21 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~21 .shared_arith = "off";

cyclonev_lcell_comb \Add29~25 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add25~9_sumout ),
	.datad(!\Add26~13_sumout ),
	.datae(gnd),
	.dataf(!\xip1E_5_uid108_sincosTest_b[8]~2_combout ),
	.datag(gnd),
	.cin(\Add29~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~25_sumout ),
	.cout(\Add29~26 ),
	.shareout());
defparam \Add29~25 .extended_lut = "off";
defparam \Add29~25 .lut_mask = 64'h0000FF000000569A;
defparam \Add29~25 .shared_arith = "off";

cyclonev_lcell_comb \Add29~29 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~29_sumout ),
	.datad(!\Add26~1_sumout ),
	.datae(gnd),
	.dataf(!\Add27~25_sumout ),
	.datag(gnd),
	.cin(\Add29~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~29_sumout ),
	.cout(\Add29~30 ),
	.shareout());
defparam \Add29~29 .extended_lut = "off";
defparam \Add29~29 .lut_mask = 64'h0000FC3000005599;
defparam \Add29~29 .shared_arith = "off";

cyclonev_lcell_comb \Add29~33 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~13_sumout ),
	.datad(!\Add26~1_sumout ),
	.datae(gnd),
	.dataf(!\Add27~9_sumout ),
	.datag(gnd),
	.cin(\Add29~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~33_sumout ),
	.cout(\Add29~34 ),
	.shareout());
defparam \Add29~33 .extended_lut = "off";
defparam \Add29~33 .lut_mask = 64'h0000FC3000005599;
defparam \Add29~33 .shared_arith = "off";

cyclonev_lcell_comb \Add29~5 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~9_sumout ),
	.datad(!\Add26~1_sumout ),
	.datae(gnd),
	.dataf(!\Add27~5_sumout ),
	.datag(gnd),
	.cin(\Add29~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~5_sumout ),
	.cout(\Add29~6 ),
	.shareout());
defparam \Add29~5 .extended_lut = "off";
defparam \Add29~5 .lut_mask = 64'h0000FC3000005599;
defparam \Add29~5 .shared_arith = "off";

cyclonev_lcell_comb \Add29~1 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(!\Add28~5_sumout ),
	.datad(!\Add26~1_sumout ),
	.datae(gnd),
	.dataf(!\Add27~1_sumout ),
	.datag(gnd),
	.cin(\Add29~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~1_sumout ),
	.cout(\Add29~2 ),
	.shareout());
defparam \Add29~1 .extended_lut = "off";
defparam \Add29~1 .lut_mask = 64'h0000FC3000005599;
defparam \Add29~1 .shared_arith = "off";

cyclonev_lcell_comb \Add36~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~53_sumout ),
	.datad(!\Add29~73_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add36~73_sumout ),
	.cout(\Add36~74 ),
	.shareout(\Add36~75 ));
defparam \Add36~73 .extended_lut = "off";
defparam \Add36~73 .lut_mask = 64'h0000F0FF00000FF0;
defparam \Add36~73 .shared_arith = "on";

cyclonev_lcell_comb \Add36~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~49_sumout ),
	.datad(!\Add29~69_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~74 ),
	.sharein(\Add36~75 ),
	.combout(),
	.sumout(\Add36~69_sumout ),
	.cout(\Add36~70 ),
	.shareout(\Add36~71 ));
defparam \Add36~69 .extended_lut = "off";
defparam \Add36~69 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~69 .shared_arith = "on";

cyclonev_lcell_comb \Add36~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~45_sumout ),
	.datad(!\Add29~65_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~70 ),
	.sharein(\Add36~71 ),
	.combout(),
	.sumout(\Add36~65_sumout ),
	.cout(\Add36~66 ),
	.shareout(\Add36~67 ));
defparam \Add36~65 .extended_lut = "off";
defparam \Add36~65 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~65 .shared_arith = "on";

cyclonev_lcell_comb \Add36~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~41_sumout ),
	.datad(!\Add29~61_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~66 ),
	.sharein(\Add36~67 ),
	.combout(),
	.sumout(\Add36~61_sumout ),
	.cout(\Add36~62 ),
	.shareout(\Add36~63 ));
defparam \Add36~61 .extended_lut = "off";
defparam \Add36~61 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~61 .shared_arith = "on";

cyclonev_lcell_comb \Add36~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~37_sumout ),
	.datad(!\Add29~57_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~62 ),
	.sharein(\Add36~63 ),
	.combout(),
	.sumout(\Add36~57_sumout ),
	.cout(\Add36~58 ),
	.shareout(\Add36~59 ));
defparam \Add36~57 .extended_lut = "off";
defparam \Add36~57 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~57 .shared_arith = "on";

cyclonev_lcell_comb \Add36~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~5_sumout ),
	.datad(!\Add29~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~58 ),
	.sharein(\Add36~59 ),
	.combout(),
	.sumout(\Add36~53_sumout ),
	.cout(\Add36~54 ),
	.shareout(\Add36~55 ));
defparam \Add36~53 .extended_lut = "off";
defparam \Add36~53 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~53 .shared_arith = "on";

cyclonev_lcell_comb \Add36~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~9_sumout ),
	.datad(!\Add29~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~54 ),
	.sharein(\Add36~55 ),
	.combout(),
	.sumout(\Add36~49_sumout ),
	.cout(\Add36~50 ),
	.shareout(\Add36~51 ));
defparam \Add36~49 .extended_lut = "off";
defparam \Add36~49 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~49 .shared_arith = "on";

cyclonev_lcell_comb \Add36~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~25_sumout ),
	.datad(!\Add29~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~50 ),
	.sharein(\Add36~51 ),
	.combout(),
	.sumout(\Add36~45_sumout ),
	.cout(\Add36~46 ),
	.shareout(\Add36~47 ));
defparam \Add36~45 .extended_lut = "off";
defparam \Add36~45 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~45 .shared_arith = "on";

cyclonev_lcell_comb \Add36~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~29_sumout ),
	.datad(!\Add29~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~46 ),
	.sharein(\Add36~47 ),
	.combout(),
	.sumout(\Add36~41_sumout ),
	.cout(\Add36~42 ),
	.shareout(\Add36~43 ));
defparam \Add36~41 .extended_lut = "off";
defparam \Add36~41 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~41 .shared_arith = "on";

cyclonev_lcell_comb \Add36~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~33_sumout ),
	.datad(!\Add29~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~42 ),
	.sharein(\Add36~43 ),
	.combout(),
	.sumout(\Add36~37_sumout ),
	.cout(\Add36~38 ),
	.shareout(\Add36~39 ));
defparam \Add36~37 .extended_lut = "off";
defparam \Add36~37 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~37 .shared_arith = "on";

cyclonev_lcell_comb \Add36~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~17_sumout ),
	.datad(!\Add29~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~38 ),
	.sharein(\Add36~39 ),
	.combout(),
	.sumout(\Add36~9_sumout ),
	.cout(\Add36~10 ),
	.shareout(\Add36~11 ));
defparam \Add36~9 .extended_lut = "off";
defparam \Add36~9 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~9 .shared_arith = "on";

cyclonev_lcell_comb \Add36~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~13_sumout ),
	.datad(!\Add29~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~10 ),
	.sharein(\Add36~11 ),
	.combout(),
	.sumout(\Add36~13_sumout ),
	.cout(\Add36~14 ),
	.shareout(\Add36~15 ));
defparam \Add36~13 .extended_lut = "off";
defparam \Add36~13 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~13 .shared_arith = "on";

cyclonev_lcell_comb \Add36~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~21_sumout ),
	.datad(!\Add29~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~14 ),
	.sharein(\Add36~15 ),
	.combout(),
	.sumout(\Add36~21_sumout ),
	.cout(\Add36~22 ),
	.shareout(\Add36~23 ));
defparam \Add36~21 .extended_lut = "off";
defparam \Add36~21 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~21 .shared_arith = "on";

cyclonev_lcell_comb \Add36~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~1_sumout ),
	.datad(!\Add29~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~22 ),
	.sharein(\Add36~23 ),
	.combout(),
	.sumout(\Add36~25_sumout ),
	.cout(\Add36~26 ),
	.shareout(\Add36~27 ));
defparam \Add36~25 .extended_lut = "off";
defparam \Add36~25 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~25 .shared_arith = "on";

cyclonev_lcell_comb \Add36~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~1_sumout ),
	.datad(!\Add29~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~26 ),
	.sharein(\Add36~27 ),
	.combout(),
	.sumout(\Add36~29_sumout ),
	.cout(\Add36~30 ),
	.shareout(\Add36~31 ));
defparam \Add36~29 .extended_lut = "off";
defparam \Add36~29 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~29 .shared_arith = "on";

cyclonev_lcell_comb \Add36~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~1_sumout ),
	.datad(!\Add29~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~30 ),
	.sharein(\Add36~31 ),
	.combout(),
	.sumout(\Add36~33_sumout ),
	.cout(\Add36~34 ),
	.shareout(\Add36~35 ));
defparam \Add36~33 .extended_lut = "off";
defparam \Add36~33 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~33 .shared_arith = "on";

cyclonev_lcell_comb \Add36~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~1_sumout ),
	.datad(!\Add29~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~34 ),
	.sharein(\Add36~35 ),
	.combout(),
	.sumout(\Add36~1_sumout ),
	.cout(\Add36~2 ),
	.shareout(\Add36~3 ));
defparam \Add36~1 .extended_lut = "off";
defparam \Add36~1 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~1 .shared_arith = "on";

cyclonev_lcell_comb \Add35~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~73_sumout ),
	.datae(gnd),
	.dataf(!\Add31~53_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~73_sumout ),
	.cout(\Add35~74 ),
	.shareout());
defparam \Add35~73 .extended_lut = "off";
defparam \Add35~73 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~73 .shared_arith = "off";

cyclonev_lcell_comb \Add35~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~69_sumout ),
	.datae(gnd),
	.dataf(!\Add31~49_sumout ),
	.datag(gnd),
	.cin(\Add35~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~69_sumout ),
	.cout(\Add35~70 ),
	.shareout());
defparam \Add35~69 .extended_lut = "off";
defparam \Add35~69 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~69 .shared_arith = "off";

cyclonev_lcell_comb \Add35~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~65_sumout ),
	.datae(gnd),
	.dataf(!\Add31~45_sumout ),
	.datag(gnd),
	.cin(\Add35~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~65_sumout ),
	.cout(\Add35~66 ),
	.shareout());
defparam \Add35~65 .extended_lut = "off";
defparam \Add35~65 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~65 .shared_arith = "off";

cyclonev_lcell_comb \Add35~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~61_sumout ),
	.datae(gnd),
	.dataf(!\Add31~41_sumout ),
	.datag(gnd),
	.cin(\Add35~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~61_sumout ),
	.cout(\Add35~62 ),
	.shareout());
defparam \Add35~61 .extended_lut = "off";
defparam \Add35~61 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~61 .shared_arith = "off";

cyclonev_lcell_comb \Add35~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~57_sumout ),
	.datae(gnd),
	.dataf(!\Add31~37_sumout ),
	.datag(gnd),
	.cin(\Add35~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~57_sumout ),
	.cout(\Add35~58 ),
	.shareout());
defparam \Add35~57 .extended_lut = "off";
defparam \Add35~57 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~57 .shared_arith = "off";

cyclonev_lcell_comb \Add35~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~53_sumout ),
	.datae(gnd),
	.dataf(!\Add31~5_sumout ),
	.datag(gnd),
	.cin(\Add35~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~53_sumout ),
	.cout(\Add35~54 ),
	.shareout());
defparam \Add35~53 .extended_lut = "off";
defparam \Add35~53 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~53 .shared_arith = "off";

cyclonev_lcell_comb \Add35~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~49_sumout ),
	.datae(gnd),
	.dataf(!\Add31~9_sumout ),
	.datag(gnd),
	.cin(\Add35~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~49_sumout ),
	.cout(\Add35~50 ),
	.shareout());
defparam \Add35~49 .extended_lut = "off";
defparam \Add35~49 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~49 .shared_arith = "off";

cyclonev_lcell_comb \Add35~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~45_sumout ),
	.datae(gnd),
	.dataf(!\Add31~25_sumout ),
	.datag(gnd),
	.cin(\Add35~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~45_sumout ),
	.cout(\Add35~46 ),
	.shareout());
defparam \Add35~45 .extended_lut = "off";
defparam \Add35~45 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~45 .shared_arith = "off";

cyclonev_lcell_comb \Add35~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~41_sumout ),
	.datae(gnd),
	.dataf(!\Add31~29_sumout ),
	.datag(gnd),
	.cin(\Add35~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~41_sumout ),
	.cout(\Add35~42 ),
	.shareout());
defparam \Add35~41 .extended_lut = "off";
defparam \Add35~41 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~41 .shared_arith = "off";

cyclonev_lcell_comb \Add35~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~37_sumout ),
	.datae(gnd),
	.dataf(!\Add31~33_sumout ),
	.datag(gnd),
	.cin(\Add35~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~37_sumout ),
	.cout(\Add35~38 ),
	.shareout());
defparam \Add35~37 .extended_lut = "off";
defparam \Add35~37 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~37 .shared_arith = "off";

cyclonev_lcell_comb \Add35~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~17_sumout ),
	.datae(gnd),
	.dataf(!\Add31~17_sumout ),
	.datag(gnd),
	.cin(\Add35~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~9_sumout ),
	.cout(\Add35~10 ),
	.shareout());
defparam \Add35~9 .extended_lut = "off";
defparam \Add35~9 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~9 .shared_arith = "off";

cyclonev_lcell_comb \Add35~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~21_sumout ),
	.datae(gnd),
	.dataf(!\Add31~13_sumout ),
	.datag(gnd),
	.cin(\Add35~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~13_sumout ),
	.cout(\Add35~14 ),
	.shareout());
defparam \Add35~13 .extended_lut = "off";
defparam \Add35~13 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~13 .shared_arith = "off";

cyclonev_lcell_comb \Add35~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~25_sumout ),
	.datae(gnd),
	.dataf(!\Add31~21_sumout ),
	.datag(gnd),
	.cin(\Add35~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~21_sumout ),
	.cout(\Add35~22 ),
	.shareout());
defparam \Add35~21 .extended_lut = "off";
defparam \Add35~21 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~21 .shared_arith = "off";

cyclonev_lcell_comb \Add35~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~29_sumout ),
	.datae(gnd),
	.dataf(!\Add31~1_sumout ),
	.datag(gnd),
	.cin(\Add35~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~25_sumout ),
	.cout(\Add35~26 ),
	.shareout());
defparam \Add35~25 .extended_lut = "off";
defparam \Add35~25 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~25 .shared_arith = "off";

cyclonev_lcell_comb \Add35~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~33_sumout ),
	.datae(gnd),
	.dataf(!\Add31~1_sumout ),
	.datag(gnd),
	.cin(\Add35~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~29_sumout ),
	.cout(\Add35~30 ),
	.shareout());
defparam \Add35~29 .extended_lut = "off";
defparam \Add35~29 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~29 .shared_arith = "off";

cyclonev_lcell_comb \Add35~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~5_sumout ),
	.datae(gnd),
	.dataf(!\Add31~1_sumout ),
	.datag(gnd),
	.cin(\Add35~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~33_sumout ),
	.cout(\Add35~34 ),
	.shareout());
defparam \Add35~33 .extended_lut = "off";
defparam \Add35~33 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~33 .shared_arith = "off";

cyclonev_lcell_comb \Add35~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~1_sumout ),
	.datae(gnd),
	.dataf(!\Add31~1_sumout ),
	.datag(gnd),
	.cin(\Add35~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~1_sumout ),
	.cout(\Add35~2 ),
	.shareout());
defparam \Add35~1 .extended_lut = "off";
defparam \Add35~1 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~1 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[10]~0 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~1_sumout ),
	.datac(!\Add35~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[10]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[10]~0 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[10]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[10]~0 .shared_arith = "off";

cyclonev_lcell_comb \Add33~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~53_sumout ),
	.datae(gnd),
	.dataf(!\Add31~73_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~73_sumout ),
	.cout(\Add33~74 ),
	.shareout());
defparam \Add33~73 .extended_lut = "off";
defparam \Add33~73 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~73 .shared_arith = "off";

cyclonev_lcell_comb \Add33~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~49_sumout ),
	.datae(gnd),
	.dataf(!\Add31~69_sumout ),
	.datag(gnd),
	.cin(\Add33~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~69_sumout ),
	.cout(\Add33~70 ),
	.shareout());
defparam \Add33~69 .extended_lut = "off";
defparam \Add33~69 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~69 .shared_arith = "off";

cyclonev_lcell_comb \Add33~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~45_sumout ),
	.datae(gnd),
	.dataf(!\Add31~65_sumout ),
	.datag(gnd),
	.cin(\Add33~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~65_sumout ),
	.cout(\Add33~66 ),
	.shareout());
defparam \Add33~65 .extended_lut = "off";
defparam \Add33~65 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~65 .shared_arith = "off";

cyclonev_lcell_comb \Add33~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~41_sumout ),
	.datae(gnd),
	.dataf(!\Add31~61_sumout ),
	.datag(gnd),
	.cin(\Add33~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~61_sumout ),
	.cout(\Add33~62 ),
	.shareout());
defparam \Add33~61 .extended_lut = "off";
defparam \Add33~61 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~61 .shared_arith = "off";

cyclonev_lcell_comb \Add33~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~37_sumout ),
	.datae(gnd),
	.dataf(!\Add31~57_sumout ),
	.datag(gnd),
	.cin(\Add33~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~57_sumout ),
	.cout(\Add33~58 ),
	.shareout());
defparam \Add33~57 .extended_lut = "off";
defparam \Add33~57 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~57 .shared_arith = "off";

cyclonev_lcell_comb \Add33~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~17_sumout ),
	.datae(gnd),
	.dataf(!\Add31~53_sumout ),
	.datag(gnd),
	.cin(\Add33~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~53_sumout ),
	.cout(\Add33~54 ),
	.shareout());
defparam \Add33~53 .extended_lut = "off";
defparam \Add33~53 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~53 .shared_arith = "off";

cyclonev_lcell_comb \Add33~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~21_sumout ),
	.datae(gnd),
	.dataf(!\Add31~49_sumout ),
	.datag(gnd),
	.cin(\Add33~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~49_sumout ),
	.cout(\Add33~50 ),
	.shareout());
defparam \Add33~49 .extended_lut = "off";
defparam \Add33~49 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~49 .shared_arith = "off";

cyclonev_lcell_comb \Add33~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~25_sumout ),
	.datae(gnd),
	.dataf(!\Add31~45_sumout ),
	.datag(gnd),
	.cin(\Add33~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~45_sumout ),
	.cout(\Add33~46 ),
	.shareout());
defparam \Add33~45 .extended_lut = "off";
defparam \Add33~45 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~45 .shared_arith = "off";

cyclonev_lcell_comb \Add33~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~29_sumout ),
	.datae(gnd),
	.dataf(!\Add31~41_sumout ),
	.datag(gnd),
	.cin(\Add33~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~41_sumout ),
	.cout(\Add33~42 ),
	.shareout());
defparam \Add33~41 .extended_lut = "off";
defparam \Add33~41 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~41 .shared_arith = "off";

cyclonev_lcell_comb \Add33~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~33_sumout ),
	.datae(gnd),
	.dataf(!\Add31~37_sumout ),
	.datag(gnd),
	.cin(\Add33~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~37_sumout ),
	.cout(\Add33~38 ),
	.shareout());
defparam \Add33~37 .extended_lut = "off";
defparam \Add33~37 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~37 .shared_arith = "off";

cyclonev_lcell_comb \Add33~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~5_sumout ),
	.datae(gnd),
	.dataf(!\Add31~5_sumout ),
	.datag(gnd),
	.cin(\Add33~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~1_sumout ),
	.cout(\Add33~2 ),
	.shareout());
defparam \Add33~1 .extended_lut = "off";
defparam \Add33~1 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~1 .shared_arith = "off";

cyclonev_lcell_comb \Add34~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~73_sumout ),
	.datad(!\Add29~53_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add34~73_sumout ),
	.cout(\Add34~74 ),
	.shareout(\Add34~75 ));
defparam \Add34~73 .extended_lut = "off";
defparam \Add34~73 .lut_mask = 64'h0000FF0F00000FF0;
defparam \Add34~73 .shared_arith = "on";

cyclonev_lcell_comb \Add34~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~69_sumout ),
	.datad(!\Add29~49_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~74 ),
	.sharein(\Add34~75 ),
	.combout(),
	.sumout(\Add34~69_sumout ),
	.cout(\Add34~70 ),
	.shareout(\Add34~71 ));
defparam \Add34~69 .extended_lut = "off";
defparam \Add34~69 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~69 .shared_arith = "on";

cyclonev_lcell_comb \Add34~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~65_sumout ),
	.datad(!\Add29~45_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~70 ),
	.sharein(\Add34~71 ),
	.combout(),
	.sumout(\Add34~65_sumout ),
	.cout(\Add34~66 ),
	.shareout(\Add34~67 ));
defparam \Add34~65 .extended_lut = "off";
defparam \Add34~65 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~65 .shared_arith = "on";

cyclonev_lcell_comb \Add34~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~61_sumout ),
	.datad(!\Add29~41_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~66 ),
	.sharein(\Add34~67 ),
	.combout(),
	.sumout(\Add34~61_sumout ),
	.cout(\Add34~62 ),
	.shareout(\Add34~63 ));
defparam \Add34~61 .extended_lut = "off";
defparam \Add34~61 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~61 .shared_arith = "on";

cyclonev_lcell_comb \Add34~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~57_sumout ),
	.datad(!\Add29~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~62 ),
	.sharein(\Add34~63 ),
	.combout(),
	.sumout(\Add34~57_sumout ),
	.cout(\Add34~58 ),
	.shareout(\Add34~59 ));
defparam \Add34~57 .extended_lut = "off";
defparam \Add34~57 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~57 .shared_arith = "on";

cyclonev_lcell_comb \Add34~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~53_sumout ),
	.datad(!\Add29~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~58 ),
	.sharein(\Add34~59 ),
	.combout(),
	.sumout(\Add34~53_sumout ),
	.cout(\Add34~54 ),
	.shareout(\Add34~55 ));
defparam \Add34~53 .extended_lut = "off";
defparam \Add34~53 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~53 .shared_arith = "on";

cyclonev_lcell_comb \Add34~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~49_sumout ),
	.datad(!\Add29~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~54 ),
	.sharein(\Add34~55 ),
	.combout(),
	.sumout(\Add34~49_sumout ),
	.cout(\Add34~50 ),
	.shareout(\Add34~51 ));
defparam \Add34~49 .extended_lut = "off";
defparam \Add34~49 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~49 .shared_arith = "on";

cyclonev_lcell_comb \Add34~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~45_sumout ),
	.datad(!\Add29~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~50 ),
	.sharein(\Add34~51 ),
	.combout(),
	.sumout(\Add34~45_sumout ),
	.cout(\Add34~46 ),
	.shareout(\Add34~47 ));
defparam \Add34~45 .extended_lut = "off";
defparam \Add34~45 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~45 .shared_arith = "on";

cyclonev_lcell_comb \Add34~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~41_sumout ),
	.datad(!\Add29~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~46 ),
	.sharein(\Add34~47 ),
	.combout(),
	.sumout(\Add34~41_sumout ),
	.cout(\Add34~42 ),
	.shareout(\Add34~43 ));
defparam \Add34~41 .extended_lut = "off";
defparam \Add34~41 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~41 .shared_arith = "on";

cyclonev_lcell_comb \Add34~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~37_sumout ),
	.datad(!\Add29~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~42 ),
	.sharein(\Add34~43 ),
	.combout(),
	.sumout(\Add34~37_sumout ),
	.cout(\Add34~38 ),
	.shareout(\Add34~39 ));
defparam \Add34~37 .extended_lut = "off";
defparam \Add34~37 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~37 .shared_arith = "on";

cyclonev_lcell_comb \Add34~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~5_sumout ),
	.datad(!\Add29~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~38 ),
	.sharein(\Add34~39 ),
	.combout(),
	.sumout(\Add34~1_sumout ),
	.cout(\Add34~2 ),
	.shareout(\Add34~3 ));
defparam \Add34~1 .extended_lut = "off";
defparam \Add34~1 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~1 .shared_arith = "on";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[10]~0 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~1_sumout ),
	.datac(!\Add34~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[10]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[10]~0 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[10]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[10]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[9]~4 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~33_sumout ),
	.datac(!\Add35~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[9]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[9]~4 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[9]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[9]~4 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[9]~4 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~37_sumout ),
	.datac(!\Add34~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[9]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[9]~4 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[9]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[9]~4 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[8]~6 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~29_sumout ),
	.datac(!\Add35~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[8]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[8]~6 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[8]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[8]~6 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[8]~6 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~41_sumout ),
	.datac(!\Add34~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[8]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[8]~6 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[8]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[8]~6 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[7]~8 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~25_sumout ),
	.datac(!\Add35~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[7]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[7]~8 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[7]~8 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[7]~8 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[7]~8 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~45_sumout ),
	.datac(!\Add34~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[7]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[7]~8 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[7]~8 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[7]~8 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[6]~10 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~21_sumout ),
	.datac(!\Add35~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[6]~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[6]~10 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[6]~10 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[6]~10 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[6]~10 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~49_sumout ),
	.datac(!\Add34~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[6]~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[6]~10 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[6]~10 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[6]~10 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[5]~3 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~13_sumout ),
	.datac(!\Add35~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[5]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[5]~3 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[5]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[5]~3 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_6_uid124_sincosTest_o[5]~0 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~53_sumout ),
	.datac(!\Add34~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_6_uid124_sincosTest_o[5]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_6_uid124_sincosTest_o[5]~0 .extended_lut = "off";
defparam \xip1E_6_uid124_sincosTest_o[5]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_6_uid124_sincosTest_o[5]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[4]~2 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~9_sumout ),
	.datac(!\Add35~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[4]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[4]~2 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[4]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[4]~2 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_6_uid124_sincosTest_o[4]~1 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~57_sumout ),
	.datac(!\Add34~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_6_uid124_sincosTest_o[4]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_6_uid124_sincosTest_o[4]~1 .extended_lut = "off";
defparam \xip1E_6_uid124_sincosTest_o[4]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_6_uid124_sincosTest_o[4]~1 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[3]~5 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~37_sumout ),
	.datac(!\Add35~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[3]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[3]~5 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[3]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[3]~5 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_6_uid124_sincosTest_o[3]~2 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~61_sumout ),
	.datac(!\Add34~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_6_uid124_sincosTest_o[3]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_6_uid124_sincosTest_o[3]~2 .extended_lut = "off";
defparam \xip1E_6_uid124_sincosTest_o[3]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_6_uid124_sincosTest_o[3]~2 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[2]~7 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~41_sumout ),
	.datac(!\Add35~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[2]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[2]~7 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[2]~7 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[2]~7 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_6_uid124_sincosTest_o[2]~3 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~65_sumout ),
	.datac(!\Add34~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_6_uid124_sincosTest_o[2]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_6_uid124_sincosTest_o[2]~3 .extended_lut = "off";
defparam \xip1E_6_uid124_sincosTest_o[2]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_6_uid124_sincosTest_o[2]~3 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[1]~9 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~45_sumout ),
	.datac(!\Add35~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[1]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[1]~9 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[1]~9 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[1]~9 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_6_uid124_sincosTest_o[1]~4 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~69_sumout ),
	.datac(!\Add34~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_6_uid124_sincosTest_o[1]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_6_uid124_sincosTest_o[1]~4 .extended_lut = "off";
defparam \xip1E_6_uid124_sincosTest_o[1]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_6_uid124_sincosTest_o[1]~4 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[0]~11 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~49_sumout ),
	.datac(!\Add35~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[0]~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[0]~11 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[0]~11 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[0]~11 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_6_uid124_sincosTest_o[0]~5 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~73_sumout ),
	.datac(!\Add34~73_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_6_uid124_sincosTest_o[0]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_6_uid124_sincosTest_o[0]~5 .extended_lut = "off";
defparam \xip1E_6_uid124_sincosTest_o[0]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_6_uid124_sincosTest_o[0]~5 .shared_arith = "off";

cyclonev_lcell_comb \Add42~75 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(gnd),
	.datad(!\Add13~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~75_cout ),
	.shareout());
defparam \Add42~75 .extended_lut = "off";
defparam \Add42~75 .lut_mask = 64'h000000000000DD88;
defparam \Add42~75 .shared_arith = "off";

cyclonev_lcell_comb \Add42~71 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[0]~11_combout ),
	.datae(gnd),
	.dataf(!\xip1E_6_uid124_sincosTest_o[0]~5_combout ),
	.datag(gnd),
	.cin(\Add42~75_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~71_cout ),
	.shareout());
defparam \Add42~71 .extended_lut = "off";
defparam \Add42~71 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~71 .shared_arith = "off";

cyclonev_lcell_comb \Add42~67 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[1]~9_combout ),
	.datae(gnd),
	.dataf(!\xip1E_6_uid124_sincosTest_o[1]~4_combout ),
	.datag(gnd),
	.cin(\Add42~71_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~67_cout ),
	.shareout());
defparam \Add42~67 .extended_lut = "off";
defparam \Add42~67 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~67 .shared_arith = "off";

cyclonev_lcell_comb \Add42~63 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[2]~7_combout ),
	.datae(gnd),
	.dataf(!\xip1E_6_uid124_sincosTest_o[2]~3_combout ),
	.datag(gnd),
	.cin(\Add42~67_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~63_cout ),
	.shareout());
defparam \Add42~63 .extended_lut = "off";
defparam \Add42~63 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~63 .shared_arith = "off";

cyclonev_lcell_comb \Add42~59 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[3]~5_combout ),
	.datae(gnd),
	.dataf(!\xip1E_6_uid124_sincosTest_o[3]~2_combout ),
	.datag(gnd),
	.cin(\Add42~63_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~59_cout ),
	.shareout());
defparam \Add42~59 .extended_lut = "off";
defparam \Add42~59 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~59 .shared_arith = "off";

cyclonev_lcell_comb \Add42~55 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[4]~2_combout ),
	.datae(gnd),
	.dataf(!\xip1E_6_uid124_sincosTest_o[4]~1_combout ),
	.datag(gnd),
	.cin(\Add42~59_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~55_cout ),
	.shareout());
defparam \Add42~55 .extended_lut = "off";
defparam \Add42~55 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~55 .shared_arith = "off";

cyclonev_lcell_comb \Add42~51 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[5]~3_combout ),
	.datae(gnd),
	.dataf(!\xip1E_6_uid124_sincosTest_o[5]~0_combout ),
	.datag(gnd),
	.cin(\Add42~55_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~51_cout ),
	.shareout());
defparam \Add42~51 .extended_lut = "off";
defparam \Add42~51 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~51 .shared_arith = "off";

cyclonev_lcell_comb \Add42~47 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[6]~10_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_a[6]~10_combout ),
	.datag(gnd),
	.cin(\Add42~51_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~47_cout ),
	.shareout());
defparam \Add42~47 .extended_lut = "off";
defparam \Add42~47 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~47 .shared_arith = "off";

cyclonev_lcell_comb \Add42~43 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[7]~8_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_a[7]~8_combout ),
	.datag(gnd),
	.cin(\Add42~47_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~43_cout ),
	.shareout());
defparam \Add42~43 .extended_lut = "off";
defparam \Add42~43 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~43 .shared_arith = "off";

cyclonev_lcell_comb \Add42~39 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[8]~6_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_a[8]~6_combout ),
	.datag(gnd),
	.cin(\Add42~43_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~39_cout ),
	.shareout());
defparam \Add42~39 .extended_lut = "off";
defparam \Add42~39 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~39 .shared_arith = "off";

cyclonev_lcell_comb \Add42~34 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[9]~4_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_a[9]~4_combout ),
	.datag(gnd),
	.cin(\Add42~39_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add42~34_cout ),
	.shareout());
defparam \Add42~34 .extended_lut = "off";
defparam \Add42~34 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~34 .shared_arith = "off";

cyclonev_lcell_comb \Add42~1 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[10]~0_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_a[10]~0_combout ),
	.datag(gnd),
	.cin(\Add42~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~1_sumout ),
	.cout(\Add42~2 ),
	.shareout());
defparam \Add42~1 .extended_lut = "off";
defparam \Add42~1 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~1 .shared_arith = "off";

cyclonev_lcell_comb \Add29~9 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(gnd),
	.datad(!\Add26~1_sumout ),
	.datae(gnd),
	.dataf(!\Add28~1_sumout ),
	.datag(gnd),
	.cin(\Add29~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~9_sumout ),
	.cout(\Add29~10 ),
	.shareout());
defparam \Add29~9 .extended_lut = "off";
defparam \Add29~9 .lut_mask = 64'h0000FFCC00005599;
defparam \Add29~9 .shared_arith = "off";

cyclonev_lcell_comb \Add36~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~1_sumout ),
	.datad(!\Add29~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~2 ),
	.sharein(\Add36~3 ),
	.combout(),
	.sumout(\Add36~5_sumout ),
	.cout(\Add36~6 ),
	.shareout(\Add36~7 ));
defparam \Add36~5 .extended_lut = "off";
defparam \Add36~5 .lut_mask = 64'h000000F00000F00F;
defparam \Add36~5 .shared_arith = "on";

cyclonev_lcell_comb \Add35~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~9_sumout ),
	.datae(gnd),
	.dataf(!\Add31~1_sumout ),
	.datag(gnd),
	.cin(\Add35~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~5_sumout ),
	.cout(\Add35~6 ),
	.shareout());
defparam \Add35~5 .extended_lut = "off";
defparam \Add35~5 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~5 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_b[11]~1 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~5_sumout ),
	.datac(!\Add35~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_b[11]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_b[11]~1 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_b[11]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_b[11]~1 .shared_arith = "off";

cyclonev_lcell_comb \Add33~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~1_sumout ),
	.datae(gnd),
	.dataf(!\Add31~9_sumout ),
	.datag(gnd),
	.cin(\Add33~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~5_sumout ),
	.cout(\Add33~6 ),
	.shareout());
defparam \Add33~5 .extended_lut = "off";
defparam \Add33~5 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~5 .shared_arith = "off";

cyclonev_lcell_comb \Add34~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~9_sumout ),
	.datad(!\Add29~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~2 ),
	.sharein(\Add34~3 ),
	.combout(),
	.sumout(\Add34~5_sumout ),
	.cout(\Add34~6 ),
	.shareout(\Add34~7 ));
defparam \Add34~5 .extended_lut = "off";
defparam \Add34~5 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~5 .shared_arith = "on";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[11]~1 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~5_sumout ),
	.datac(!\Add34~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[11]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[11]~1 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[11]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[11]~1 .shared_arith = "off";

cyclonev_lcell_comb \Add42~5 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_b[11]~1_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_a[11]~1_combout ),
	.datag(gnd),
	.cin(\Add42~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~5_sumout ),
	.cout(\Add42~6 ),
	.shareout());
defparam \Add42~5 .extended_lut = "off";
defparam \Add42~5 .lut_mask = 64'h0000FF000000D827;
defparam \Add42~5 .shared_arith = "off";

cyclonev_lcell_comb \Add44~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add42~1_sumout ),
	.datae(gnd),
	.dataf(!\Add42~5_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~1_sumout ),
	.cout(\Add44~2 ),
	.shareout());
defparam \Add44~1 .extended_lut = "off";
defparam \Add44~1 .lut_mask = 64'h0000FF00000000FF;
defparam \Add44~1 .shared_arith = "off";

cyclonev_lcell_comb \Add46~1 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add44~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add46~1_sumout ),
	.cout(\Add46~2 ),
	.shareout());
defparam \Add46~1 .extended_lut = "off";
defparam \Add46~1 .lut_mask = 64'h0000BBBB000044BB;
defparam \Add46~1 .shared_arith = "off";

cyclonev_lcell_comb \Add29~13 (
	.dataa(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][12]~q ),
	.datab(!\redist0_aip1E_uid98_sincosTest_b_1|delay_signals[0][1]~q ),
	.datac(gnd),
	.datad(!\Add26~1_sumout ),
	.datae(gnd),
	.dataf(!\Add28~1_sumout ),
	.datag(gnd),
	.cin(\Add29~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add29~13_sumout ),
	.cout(),
	.shareout());
defparam \Add29~13 .extended_lut = "off";
defparam \Add29~13 .lut_mask = 64'h0000FFCC00005599;
defparam \Add29~13 .shared_arith = "off";

cyclonev_lcell_comb \Add33~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~9_sumout ),
	.datae(gnd),
	.dataf(!\Add31~25_sumout ),
	.datag(gnd),
	.cin(\Add33~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~17_sumout ),
	.cout(\Add33~18 ),
	.shareout());
defparam \Add33~17 .extended_lut = "off";
defparam \Add33~17 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~17 .shared_arith = "off";

cyclonev_lcell_comb \Add33~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(!\Add31~29_sumout ),
	.datag(gnd),
	.cin(\Add33~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~25_sumout ),
	.cout(\Add33~26 ),
	.shareout());
defparam \Add33~25 .extended_lut = "off";
defparam \Add33~25 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~25 .shared_arith = "off";

cyclonev_lcell_comb \Add33~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(!\Add31~33_sumout ),
	.datag(gnd),
	.cin(\Add33~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~29_sumout ),
	.cout(\Add33~30 ),
	.shareout());
defparam \Add33~29 .extended_lut = "off";
defparam \Add33~29 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~29 .shared_arith = "off";

cyclonev_lcell_comb \Add33~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(!\Add31~17_sumout ),
	.datag(gnd),
	.cin(\Add33~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~33_sumout ),
	.cout(\Add33~34 ),
	.shareout());
defparam \Add33~33 .extended_lut = "off";
defparam \Add33~33 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~33 .shared_arith = "off";

cyclonev_lcell_comb \Add33~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(!\Add31~13_sumout ),
	.datag(gnd),
	.cin(\Add33~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~9_sumout ),
	.cout(\Add33~10 ),
	.shareout());
defparam \Add33~9 .extended_lut = "off";
defparam \Add33~9 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~9 .shared_arith = "off";

cyclonev_lcell_comb \Add34~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~25_sumout ),
	.datad(!\Add29~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~6 ),
	.sharein(\Add34~7 ),
	.combout(),
	.sumout(\Add34~17_sumout ),
	.cout(\Add34~18 ),
	.shareout(\Add34~19 ));
defparam \Add34~17 .extended_lut = "off";
defparam \Add34~17 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~17 .shared_arith = "on";

cyclonev_lcell_comb \Add34~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~29_sumout ),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~18 ),
	.sharein(\Add34~19 ),
	.combout(),
	.sumout(\Add34~25_sumout ),
	.cout(\Add34~26 ),
	.shareout(\Add34~27 ));
defparam \Add34~25 .extended_lut = "off";
defparam \Add34~25 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~25 .shared_arith = "on";

cyclonev_lcell_comb \Add34~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~33_sumout ),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~26 ),
	.sharein(\Add34~27 ),
	.combout(),
	.sumout(\Add34~29_sumout ),
	.cout(\Add34~30 ),
	.shareout(\Add34~31 ));
defparam \Add34~29 .extended_lut = "off";
defparam \Add34~29 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~29 .shared_arith = "on";

cyclonev_lcell_comb \Add34~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~17_sumout ),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~30 ),
	.sharein(\Add34~31 ),
	.combout(),
	.sumout(\Add34~33_sumout ),
	.cout(\Add34~34 ),
	.shareout(\Add34~35 ));
defparam \Add34~33 .extended_lut = "off";
defparam \Add34~33 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~33 .shared_arith = "on";

cyclonev_lcell_comb \Add34~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~13_sumout ),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~34 ),
	.sharein(\Add34~35 ),
	.combout(),
	.sumout(\Add34~9_sumout ),
	.cout(\Add34~10 ),
	.shareout(\Add34~11 ));
defparam \Add34~9 .extended_lut = "off";
defparam \Add34~9 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~9 .shared_arith = "on";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[16]~2 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~9_sumout ),
	.datac(!\Add34~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[16]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[16]~2 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[16]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[16]~2 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[15]~5 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~33_sumout ),
	.datac(!\Add34~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[15]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[15]~5 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[15]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[15]~5 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[14]~7 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~29_sumout ),
	.datac(!\Add34~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[14]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[14]~7 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[14]~7 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[14]~7 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[13]~9 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~25_sumout ),
	.datac(!\Add34~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[13]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[13]~9 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[13]~9 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[13]~9 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[12]~11 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~17_sumout ),
	.datac(!\Add34~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[12]~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[12]~11 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[12]~11 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[12]~11 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_6_uid125_sincosTest_o[5]~0 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~53_sumout ),
	.datac(!\Add35~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_6_uid125_sincosTest_o[5]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_6_uid125_sincosTest_o[5]~0 .extended_lut = "off";
defparam \yip1E_6_uid125_sincosTest_o[5]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_6_uid125_sincosTest_o[5]~0 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_6_uid125_sincosTest_o[4]~1 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~57_sumout ),
	.datac(!\Add35~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_6_uid125_sincosTest_o[4]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_6_uid125_sincosTest_o[4]~1 .extended_lut = "off";
defparam \yip1E_6_uid125_sincosTest_o[4]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_6_uid125_sincosTest_o[4]~1 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_6_uid125_sincosTest_o[3]~2 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~61_sumout ),
	.datac(!\Add35~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_6_uid125_sincosTest_o[3]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_6_uid125_sincosTest_o[3]~2 .extended_lut = "off";
defparam \yip1E_6_uid125_sincosTest_o[3]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_6_uid125_sincosTest_o[3]~2 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_6_uid125_sincosTest_o[2]~3 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~65_sumout ),
	.datac(!\Add35~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_6_uid125_sincosTest_o[2]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_6_uid125_sincosTest_o[2]~3 .extended_lut = "off";
defparam \yip1E_6_uid125_sincosTest_o[2]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_6_uid125_sincosTest_o[2]~3 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_6_uid125_sincosTest_o[1]~4 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~69_sumout ),
	.datac(!\Add35~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_6_uid125_sincosTest_o[1]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_6_uid125_sincosTest_o[1]~4 .extended_lut = "off";
defparam \yip1E_6_uid125_sincosTest_o[1]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_6_uid125_sincosTest_o[1]~4 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_6_uid125_sincosTest_o[0]~5 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~73_sumout ),
	.datac(!\Add35~73_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_6_uid125_sincosTest_o[0]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_6_uid125_sincosTest_o[0]~5 .extended_lut = "off";
defparam \yip1E_6_uid125_sincosTest_o[0]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_6_uid125_sincosTest_o[0]~5 .shared_arith = "off";

cyclonev_lcell_comb \Add37~75 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add13~1_sumout ),
	.datac(gnd),
	.datad(!\Add14~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~75_cout ),
	.shareout());
defparam \Add37~75 .extended_lut = "off";
defparam \Add37~75 .lut_mask = 64'h00000000000011BB;
defparam \Add37~75 .shared_arith = "off";

cyclonev_lcell_comb \Add37~71 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add13~1_sumout ),
	.datac(!\xip1E_7_uid143_sincosTest_a[6]~10_combout ),
	.datad(!\Add14~1_sumout ),
	.datae(gnd),
	.dataf(!\yip1E_6_uid125_sincosTest_o[0]~5_combout ),
	.datag(gnd),
	.cin(\Add37~75_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~71_cout ),
	.shareout());
defparam \Add37~71 .extended_lut = "off";
defparam \Add37~71 .lut_mask = 64'h0000FF0000001EB4;
defparam \Add37~71 .shared_arith = "off";

cyclonev_lcell_comb \Add37~67 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[7]~8_combout ),
	.datae(gnd),
	.dataf(!\yip1E_6_uid125_sincosTest_o[1]~4_combout ),
	.datag(gnd),
	.cin(\Add37~71_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~67_cout ),
	.shareout());
defparam \Add37~67 .extended_lut = "off";
defparam \Add37~67 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~67 .shared_arith = "off";

cyclonev_lcell_comb \Add37~63 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[8]~6_combout ),
	.datae(gnd),
	.dataf(!\yip1E_6_uid125_sincosTest_o[2]~3_combout ),
	.datag(gnd),
	.cin(\Add37~67_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~63_cout ),
	.shareout());
defparam \Add37~63 .extended_lut = "off";
defparam \Add37~63 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~63 .shared_arith = "off";

cyclonev_lcell_comb \Add37~59 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[9]~4_combout ),
	.datae(gnd),
	.dataf(!\yip1E_6_uid125_sincosTest_o[3]~2_combout ),
	.datag(gnd),
	.cin(\Add37~63_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~59_cout ),
	.shareout());
defparam \Add37~59 .extended_lut = "off";
defparam \Add37~59 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~59 .shared_arith = "off";

cyclonev_lcell_comb \Add37~55 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[10]~0_combout ),
	.datae(gnd),
	.dataf(!\yip1E_6_uid125_sincosTest_o[4]~1_combout ),
	.datag(gnd),
	.cin(\Add37~59_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~55_cout ),
	.shareout());
defparam \Add37~55 .extended_lut = "off";
defparam \Add37~55 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~55 .shared_arith = "off";

cyclonev_lcell_comb \Add37~51 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[11]~1_combout ),
	.datae(gnd),
	.dataf(!\yip1E_6_uid125_sincosTest_o[5]~0_combout ),
	.datag(gnd),
	.cin(\Add37~55_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~51_cout ),
	.shareout());
defparam \Add37~51 .extended_lut = "off";
defparam \Add37~51 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~51 .shared_arith = "off";

cyclonev_lcell_comb \Add37~47 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[12]~11_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_b[0]~11_combout ),
	.datag(gnd),
	.cin(\Add37~51_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~47_cout ),
	.shareout());
defparam \Add37~47 .extended_lut = "off";
defparam \Add37~47 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~47 .shared_arith = "off";

cyclonev_lcell_comb \Add37~43 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[13]~9_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_b[1]~9_combout ),
	.datag(gnd),
	.cin(\Add37~47_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~43_cout ),
	.shareout());
defparam \Add37~43 .extended_lut = "off";
defparam \Add37~43 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~43 .shared_arith = "off";

cyclonev_lcell_comb \Add37~39 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[14]~7_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_b[2]~7_combout ),
	.datag(gnd),
	.cin(\Add37~43_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~39_cout ),
	.shareout());
defparam \Add37~39 .extended_lut = "off";
defparam \Add37~39 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~39 .shared_arith = "off";

cyclonev_lcell_comb \Add37~34 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[15]~5_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_b[3]~5_combout ),
	.datag(gnd),
	.cin(\Add37~39_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add37~34_cout ),
	.shareout());
defparam \Add37~34 .extended_lut = "off";
defparam \Add37~34 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~34 .shared_arith = "off";

cyclonev_lcell_comb \Add37~1 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[16]~2_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_b[4]~2_combout ),
	.datag(gnd),
	.cin(\Add37~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add37~1_sumout ),
	.cout(\Add37~2 ),
	.shareout());
defparam \Add37~1 .extended_lut = "off";
defparam \Add37~1 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~1 .shared_arith = "off";

cyclonev_lcell_comb \Add33~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(!\Add31~21_sumout ),
	.datag(gnd),
	.cin(\Add33~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~13_sumout ),
	.cout(\Add33~14 ),
	.shareout());
defparam \Add33~13 .extended_lut = "off";
defparam \Add33~13 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~13 .shared_arith = "off";

cyclonev_lcell_comb \Add34~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~21_sumout ),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~10 ),
	.sharein(\Add34~11 ),
	.combout(),
	.sumout(\Add34~13_sumout ),
	.cout(\Add34~14 ),
	.shareout(\Add34~15 ));
defparam \Add34~13 .extended_lut = "off";
defparam \Add34~13 .lut_mask = 64'h00000F000000F00F;
defparam \Add34~13 .shared_arith = "on";

cyclonev_lcell_comb \xip1E_7_uid143_sincosTest_a[17]~3 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~13_sumout ),
	.datac(!\Add34~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_7_uid143_sincosTest_a[17]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_7_uid143_sincosTest_a[17]~3 .extended_lut = "off";
defparam \xip1E_7_uid143_sincosTest_a[17]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_7_uid143_sincosTest_a[17]~3 .shared_arith = "off";

cyclonev_lcell_comb \Add37~5 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\xip1E_7_uid143_sincosTest_a[17]~3_combout ),
	.datae(gnd),
	.dataf(!\xip1E_7_uid143_sincosTest_b[5]~3_combout ),
	.datag(gnd),
	.cin(\Add37~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add37~5_sumout ),
	.cout(\Add37~6 ),
	.shareout());
defparam \Add37~5 .extended_lut = "off";
defparam \Add37~5 .lut_mask = 64'h0000FF00000027D8;
defparam \Add37~5 .shared_arith = "off";

cyclonev_lcell_comb \Add39~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add37~1_sumout ),
	.datae(gnd),
	.dataf(!\Add37~5_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add39~1_sumout ),
	.cout(\Add39~2 ),
	.shareout());
defparam \Add39~1 .extended_lut = "off";
defparam \Add39~1 .lut_mask = 64'h0000FF00000000FF;
defparam \Add39~1 .shared_arith = "off";

cyclonev_lcell_comb \Add41~1 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.datac(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\Add39~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~1_sumout ),
	.cout(\Add41~2 ),
	.shareout());
defparam \Add41~1 .extended_lut = "off";
defparam \Add41~1 .lut_mask = 64'h00008A8A0000758A;
defparam \Add41~1 .shared_arith = "off";

cyclonev_lcell_comb \Add35~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(!\Add31~1_sumout ),
	.datag(gnd),
	.cin(\Add35~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add35~17_sumout ),
	.cout(),
	.shareout());
defparam \Add35~17 .extended_lut = "off";
defparam \Add35~17 .lut_mask = 64'h0000FF00000000FF;
defparam \Add35~17 .shared_arith = "off";

cyclonev_lcell_comb \Add36~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~1_sumout ),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add36~6 ),
	.sharein(\Add36~7 ),
	.combout(),
	.sumout(\Add36~17_sumout ),
	.cout(),
	.shareout());
defparam \Add36~17 .extended_lut = "off";
defparam \Add36~17 .lut_mask = 64'h000000000000F00F;
defparam \Add36~17 .shared_arith = "on";

cyclonev_lcell_comb \Add42~36 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\Add35~17_sumout ),
	.datae(!\Add36~17_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add42~36_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add42~36 .extended_lut = "off";
defparam \Add42~36 .lut_mask = 64'hD8728D27D8728D27;
defparam \Add42~36 .shared_arith = "off";

cyclonev_lcell_comb \Add42~9 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(gnd),
	.datac(!\Add33~17_sumout ),
	.datad(!\Add42~36_combout ),
	.datae(gnd),
	.dataf(!\Add34~17_sumout ),
	.datag(gnd),
	.cin(\Add42~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~9_sumout ),
	.cout(\Add42~10 ),
	.shareout());
defparam \Add42~9 .extended_lut = "off";
defparam \Add42~9 .lut_mask = 64'h0000FA50000000FF;
defparam \Add42~9 .shared_arith = "off";

cyclonev_lcell_comb \Add44~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add42~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~5_sumout ),
	.cout(\Add44~6 ),
	.shareout());
defparam \Add44~5 .extended_lut = "off";
defparam \Add44~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add44~5 .shared_arith = "off";

cyclonev_lcell_comb \Add46~5 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add44~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add46~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add46~5_sumout ),
	.cout(\Add46~6 ),
	.shareout());
defparam \Add46~5 .extended_lut = "off";
defparam \Add46~5 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add46~5 .shared_arith = "off";

cyclonev_lcell_comb \Add34~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!\Add31~1_sumout ),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add34~14 ),
	.sharein(\Add34~15 ),
	.combout(),
	.sumout(\Add34~21_sumout ),
	.cout(),
	.shareout());
defparam \Add34~21 .extended_lut = "off";
defparam \Add34~21 .lut_mask = 64'h000000000000F00F;
defparam \Add34~21 .shared_arith = "on";

cyclonev_lcell_comb \Add33~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add29~13_sumout ),
	.datae(gnd),
	.dataf(!\Add31~1_sumout ),
	.datag(gnd),
	.cin(\Add33~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add33~21_sumout ),
	.cout(),
	.shareout());
defparam \Add33~21 .extended_lut = "off";
defparam \Add33~21 .lut_mask = 64'h0000FF00000000FF;
defparam \Add33~21 .shared_arith = "off";

cyclonev_lcell_comb \Add37~36 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add14~1_sumout ),
	.datac(!\Add13~1_sumout ),
	.datad(!\Add34~21_sumout ),
	.datae(!\Add33~21_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add37~36_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add37~36 .extended_lut = "off";
defparam \Add37~36 .lut_mask = 64'h278D72D8278D72D8;
defparam \Add37~36 .shared_arith = "off";

cyclonev_lcell_comb \Add37~9 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(gnd),
	.datac(!\Add36~21_sumout ),
	.datad(!\Add37~36_combout ),
	.datae(gnd),
	.dataf(!\Add35~21_sumout ),
	.datag(gnd),
	.cin(\Add37~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add37~9_sumout ),
	.cout(\Add37~10 ),
	.shareout());
defparam \Add37~9 .extended_lut = "off";
defparam \Add37~9 .lut_mask = 64'h0000FA50000000FF;
defparam \Add37~9 .shared_arith = "off";

cyclonev_lcell_comb \Add39~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add37~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add39~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add39~5_sumout ),
	.cout(\Add39~6 ),
	.shareout());
defparam \Add39~5 .extended_lut = "off";
defparam \Add39~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add39~5 .shared_arith = "off";

cyclonev_lcell_comb \Add41~5 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.datac(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\Add39~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~5_sumout ),
	.cout(\Add41~6 ),
	.shareout());
defparam \Add41~5 .extended_lut = "off";
defparam \Add41~5 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add41~5 .shared_arith = "off";

cyclonev_lcell_comb \Add42~13 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(gnd),
	.datac(!\Add33~25_sumout ),
	.datad(!\Add42~36_combout ),
	.datae(gnd),
	.dataf(!\Add34~25_sumout ),
	.datag(gnd),
	.cin(\Add42~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~13_sumout ),
	.cout(\Add42~14 ),
	.shareout());
defparam \Add42~13 .extended_lut = "off";
defparam \Add42~13 .lut_mask = 64'h0000FA50000000FF;
defparam \Add42~13 .shared_arith = "off";

cyclonev_lcell_comb \Add44~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add42~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~9_sumout ),
	.cout(\Add44~10 ),
	.shareout());
defparam \Add44~9 .extended_lut = "off";
defparam \Add44~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add44~9 .shared_arith = "off";

cyclonev_lcell_comb \Add46~9 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add44~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add46~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add46~9_sumout ),
	.cout(\Add46~10 ),
	.shareout());
defparam \Add46~9 .extended_lut = "off";
defparam \Add46~9 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add46~9 .shared_arith = "off";

cyclonev_lcell_comb \Add37~13 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(gnd),
	.datac(!\Add36~25_sumout ),
	.datad(!\Add37~36_combout ),
	.datae(gnd),
	.dataf(!\Add35~25_sumout ),
	.datag(gnd),
	.cin(\Add37~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add37~13_sumout ),
	.cout(\Add37~14 ),
	.shareout());
defparam \Add37~13 .extended_lut = "off";
defparam \Add37~13 .lut_mask = 64'h0000FA50000000FF;
defparam \Add37~13 .shared_arith = "off";

cyclonev_lcell_comb \Add39~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add37~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add39~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add39~9_sumout ),
	.cout(\Add39~10 ),
	.shareout());
defparam \Add39~9 .extended_lut = "off";
defparam \Add39~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add39~9 .shared_arith = "off";

cyclonev_lcell_comb \Add41~9 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.datac(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\Add39~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~9_sumout ),
	.cout(\Add41~10 ),
	.shareout());
defparam \Add41~9 .extended_lut = "off";
defparam \Add41~9 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add41~9 .shared_arith = "off";

cyclonev_lcell_comb \Add42~17 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(gnd),
	.datac(!\Add33~29_sumout ),
	.datad(!\Add42~36_combout ),
	.datae(gnd),
	.dataf(!\Add34~29_sumout ),
	.datag(gnd),
	.cin(\Add42~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~17_sumout ),
	.cout(\Add42~18 ),
	.shareout());
defparam \Add42~17 .extended_lut = "off";
defparam \Add42~17 .lut_mask = 64'h0000FA50000000FF;
defparam \Add42~17 .shared_arith = "off";

cyclonev_lcell_comb \Add44~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add42~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~13_sumout ),
	.cout(\Add44~14 ),
	.shareout());
defparam \Add44~13 .extended_lut = "off";
defparam \Add44~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add44~13 .shared_arith = "off";

cyclonev_lcell_comb \Add46~13 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add44~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add46~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add46~13_sumout ),
	.cout(\Add46~14 ),
	.shareout());
defparam \Add46~13 .extended_lut = "off";
defparam \Add46~13 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add46~13 .shared_arith = "off";

cyclonev_lcell_comb \Add37~17 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(gnd),
	.datac(!\Add36~29_sumout ),
	.datad(!\Add37~36_combout ),
	.datae(gnd),
	.dataf(!\Add35~29_sumout ),
	.datag(gnd),
	.cin(\Add37~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add37~17_sumout ),
	.cout(\Add37~18 ),
	.shareout());
defparam \Add37~17 .extended_lut = "off";
defparam \Add37~17 .lut_mask = 64'h0000FA50000000FF;
defparam \Add37~17 .shared_arith = "off";

cyclonev_lcell_comb \Add39~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add37~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add39~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add39~13_sumout ),
	.cout(\Add39~14 ),
	.shareout());
defparam \Add39~13 .extended_lut = "off";
defparam \Add39~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add39~13 .shared_arith = "off";

cyclonev_lcell_comb \Add41~13 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.datac(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\Add39~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~13_sumout ),
	.cout(\Add41~14 ),
	.shareout());
defparam \Add41~13 .extended_lut = "off";
defparam \Add41~13 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add41~13 .shared_arith = "off";

cyclonev_lcell_comb \Add42~21 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(gnd),
	.datac(!\Add33~33_sumout ),
	.datad(!\Add42~36_combout ),
	.datae(gnd),
	.dataf(!\Add34~33_sumout ),
	.datag(gnd),
	.cin(\Add42~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~21_sumout ),
	.cout(\Add42~22 ),
	.shareout());
defparam \Add42~21 .extended_lut = "off";
defparam \Add42~21 .lut_mask = 64'h0000FA50000000FF;
defparam \Add42~21 .shared_arith = "off";

cyclonev_lcell_comb \Add44~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add42~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~17_sumout ),
	.cout(\Add44~18 ),
	.shareout());
defparam \Add44~17 .extended_lut = "off";
defparam \Add44~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add44~17 .shared_arith = "off";

cyclonev_lcell_comb \Add46~17 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add44~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add46~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add46~17_sumout ),
	.cout(\Add46~18 ),
	.shareout());
defparam \Add46~17 .extended_lut = "off";
defparam \Add46~17 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add46~17 .shared_arith = "off";

cyclonev_lcell_comb \Add37~21 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(gnd),
	.datac(!\Add36~33_sumout ),
	.datad(!\Add37~36_combout ),
	.datae(gnd),
	.dataf(!\Add35~33_sumout ),
	.datag(gnd),
	.cin(\Add37~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add37~21_sumout ),
	.cout(\Add37~22 ),
	.shareout());
defparam \Add37~21 .extended_lut = "off";
defparam \Add37~21 .lut_mask = 64'h0000FA50000000FF;
defparam \Add37~21 .shared_arith = "off";

cyclonev_lcell_comb \Add39~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add37~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add39~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add39~17_sumout ),
	.cout(\Add39~18 ),
	.shareout());
defparam \Add39~17 .extended_lut = "off";
defparam \Add39~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add39~17 .shared_arith = "off";

cyclonev_lcell_comb \Add41~17 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.datac(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\Add39~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~17_sumout ),
	.cout(\Add41~18 ),
	.shareout());
defparam \Add41~17 .extended_lut = "off";
defparam \Add41~17 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add41~17 .shared_arith = "off";

cyclonev_lcell_comb \Add42~25 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(gnd),
	.datac(!\Add33~9_sumout ),
	.datad(!\Add42~36_combout ),
	.datae(gnd),
	.dataf(!\Add34~9_sumout ),
	.datag(gnd),
	.cin(\Add42~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~25_sumout ),
	.cout(\Add42~26 ),
	.shareout());
defparam \Add42~25 .extended_lut = "off";
defparam \Add42~25 .lut_mask = 64'h0000FA50000000FF;
defparam \Add42~25 .shared_arith = "off";

cyclonev_lcell_comb \Add44~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add42~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~21_sumout ),
	.cout(\Add44~22 ),
	.shareout());
defparam \Add44~21 .extended_lut = "off";
defparam \Add44~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add44~21 .shared_arith = "off";

cyclonev_lcell_comb \Add46~21 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add44~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add46~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add46~21_sumout ),
	.cout(\Add46~22 ),
	.shareout());
defparam \Add46~21 .extended_lut = "off";
defparam \Add46~21 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add46~21 .shared_arith = "off";

cyclonev_lcell_comb \Add37~25 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(gnd),
	.datac(!\Add36~1_sumout ),
	.datad(!\Add37~36_combout ),
	.datae(gnd),
	.dataf(!\Add35~1_sumout ),
	.datag(gnd),
	.cin(\Add37~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add37~25_sumout ),
	.cout(\Add37~26 ),
	.shareout());
defparam \Add37~25 .extended_lut = "off";
defparam \Add37~25 .lut_mask = 64'h0000FA50000000FF;
defparam \Add37~25 .shared_arith = "off";

cyclonev_lcell_comb \Add39~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add37~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add39~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add39~21_sumout ),
	.cout(\Add39~22 ),
	.shareout());
defparam \Add39~21 .extended_lut = "off";
defparam \Add39~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add39~21 .shared_arith = "off";

cyclonev_lcell_comb \Add41~21 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.datac(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\Add39~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~21_sumout ),
	.cout(\Add41~22 ),
	.shareout());
defparam \Add41~21 .extended_lut = "off";
defparam \Add41~21 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add41~21 .shared_arith = "off";

cyclonev_lcell_comb \Add42~29 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add33~13_sumout ),
	.datac(gnd),
	.datad(!\Add42~36_combout ),
	.datae(gnd),
	.dataf(!\Add34~13_sumout ),
	.datag(gnd),
	.cin(\Add42~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add42~29_sumout ),
	.cout(),
	.shareout());
defparam \Add42~29 .extended_lut = "off";
defparam \Add42~29 .lut_mask = 64'h0000EE44000000FF;
defparam \Add42~29 .shared_arith = "off";

cyclonev_lcell_comb \Add44~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add42~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add44~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add44~25_sumout ),
	.cout(),
	.shareout());
defparam \Add44~25 .extended_lut = "off";
defparam \Add44~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add44~25 .shared_arith = "off";

cyclonev_lcell_comb \Add46~25 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(!\Add44~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add46~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add46~25_sumout ),
	.cout(),
	.shareout());
defparam \Add46~25 .extended_lut = "off";
defparam \Add46~25 .lut_mask = 64'h0000FFFF000044BB;
defparam \Add46~25 .shared_arith = "off";

cyclonev_lcell_comb \Add37~29 (
	.dataa(!\aip1E_6high_uid129_sincosTest_a[10]~0_combout ),
	.datab(!\Add36~5_sumout ),
	.datac(gnd),
	.datad(!\Add37~36_combout ),
	.datae(gnd),
	.dataf(!\Add35~5_sumout ),
	.datag(gnd),
	.cin(\Add37~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add37~29_sumout ),
	.cout(),
	.shareout());
defparam \Add37~29 .extended_lut = "off";
defparam \Add37~29 .lut_mask = 64'h0000EE44000000FF;
defparam \Add37~29 .shared_arith = "off";

cyclonev_lcell_comb \Add39~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add37~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add39~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add39~25_sumout ),
	.cout(),
	.shareout());
defparam \Add39~25 .extended_lut = "off";
defparam \Add39~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add39~25 .shared_arith = "off";

cyclonev_lcell_comb \Add41~25 (
	.dataa(!\redist6_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.datac(!\redist4_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\Add39~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add41~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add41~25_sumout ),
	.cout(),
	.shareout());
defparam \Add41~25 .extended_lut = "off";
defparam \Add41~25 .lut_mask = 64'h0000FFFF0000758A;
defparam \Add41~25 .shared_arith = "off";

endmodule

module sincos_dspba_delay (
	xin,
	delay_signals_12_0,
	delay_signals_11_0,
	delay_signals_10_0,
	delay_signals_1_0,
	delay_signals_9_0,
	delay_signals_8_0,
	delay_signals_7_0,
	delay_signals_6_0,
	delay_signals_5_0,
	delay_signals_4_0,
	delay_signals_3_0,
	delay_signals_2_0,
	delay_signals_0_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[18:0] xin;
output 	delay_signals_12_0;
output 	delay_signals_11_0;
output 	delay_signals_10_0;
output 	delay_signals_1_0;
output 	delay_signals_9_0;
output 	delay_signals_8_0;
output 	delay_signals_7_0;
output 	delay_signals_6_0;
output 	delay_signals_5_0;
output 	delay_signals_4_0;
output 	delay_signals_3_0;
output 	delay_signals_2_0;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][12] (
	.clk(clk),
	.d(xin[12]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_12_0),
	.prn(vcc));
defparam \delay_signals[0][12] .is_wysiwyg = "true";
defparam \delay_signals[0][12] .power_up = "low";

dffeas \delay_signals[0][11] (
	.clk(clk),
	.d(xin[11]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_11_0),
	.prn(vcc));
defparam \delay_signals[0][11] .is_wysiwyg = "true";
defparam \delay_signals[0][11] .power_up = "low";

dffeas \delay_signals[0][10] (
	.clk(clk),
	.d(xin[10]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_10_0),
	.prn(vcc));
defparam \delay_signals[0][10] .is_wysiwyg = "true";
defparam \delay_signals[0][10] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(xin[1]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

dffeas \delay_signals[0][9] (
	.clk(clk),
	.d(xin[9]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_9_0),
	.prn(vcc));
defparam \delay_signals[0][9] .is_wysiwyg = "true";
defparam \delay_signals[0][9] .power_up = "low";

dffeas \delay_signals[0][8] (
	.clk(clk),
	.d(xin[8]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_8_0),
	.prn(vcc));
defparam \delay_signals[0][8] .is_wysiwyg = "true";
defparam \delay_signals[0][8] .power_up = "low";

dffeas \delay_signals[0][7] (
	.clk(clk),
	.d(xin[7]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_7_0),
	.prn(vcc));
defparam \delay_signals[0][7] .is_wysiwyg = "true";
defparam \delay_signals[0][7] .power_up = "low";

dffeas \delay_signals[0][6] (
	.clk(clk),
	.d(xin[6]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_6_0),
	.prn(vcc));
defparam \delay_signals[0][6] .is_wysiwyg = "true";
defparam \delay_signals[0][6] .power_up = "low";

dffeas \delay_signals[0][5] (
	.clk(clk),
	.d(xin[5]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_5_0),
	.prn(vcc));
defparam \delay_signals[0][5] .is_wysiwyg = "true";
defparam \delay_signals[0][5] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(xin[4]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

dffeas \delay_signals[0][3] (
	.clk(clk),
	.d(xin[3]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_3_0),
	.prn(vcc));
defparam \delay_signals[0][3] .is_wysiwyg = "true";
defparam \delay_signals[0][3] .power_up = "low";

dffeas \delay_signals[0][2] (
	.clk(clk),
	.d(xin[2]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_2_0),
	.prn(vcc));
defparam \delay_signals[0][2] .is_wysiwyg = "true";
defparam \delay_signals[0][2] .power_up = "low";

dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(vcc),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos_dspba_delay_2 (
	Add4,
	xin,
	delay_signals_15_0,
	delay_signals_0_0,
	delay_signals_13_0,
	delay_signals_6_0,
	delay_signals_5_0,
	delay_signals_11_0,
	delay_signals_12_0,
	aip1E_3_uid79_sincosTest_o_3,
	delay_signals_4_0,
	delay_signals_1_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	Add4;
input 	[18:0] xin;
output 	delay_signals_15_0;
output 	delay_signals_0_0;
output 	delay_signals_13_0;
output 	delay_signals_6_0;
output 	delay_signals_5_0;
output 	delay_signals_11_0;
output 	delay_signals_12_0;
input 	aip1E_3_uid79_sincosTest_o_3;
output 	delay_signals_4_0;
output 	delay_signals_1_0;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[0][15]~0_combout ;
wire \delay_signals[0][0]~1_combout ;
wire \delay_signals[0][13]~2_combout ;
wire \delay_signals[0][11]~3_combout ;
wire \delay_signals[0][1]~4_combout ;


dffeas \delay_signals[0][15] (
	.clk(clk),
	.d(\delay_signals[0][15]~0_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_15_0),
	.prn(vcc));
defparam \delay_signals[0][15] .is_wysiwyg = "true";
defparam \delay_signals[0][15] .power_up = "low";

dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(\delay_signals[0][0]~1_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

dffeas \delay_signals[0][13] (
	.clk(clk),
	.d(\delay_signals[0][13]~2_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_13_0),
	.prn(vcc));
defparam \delay_signals[0][13] .is_wysiwyg = "true";
defparam \delay_signals[0][13] .power_up = "low";

dffeas \delay_signals[0][6] (
	.clk(clk),
	.d(xin[6]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_6_0),
	.prn(vcc));
defparam \delay_signals[0][6] .is_wysiwyg = "true";
defparam \delay_signals[0][6] .power_up = "low";

dffeas \delay_signals[0][5] (
	.clk(clk),
	.d(xin[5]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_5_0),
	.prn(vcc));
defparam \delay_signals[0][5] .is_wysiwyg = "true";
defparam \delay_signals[0][5] .power_up = "low";

dffeas \delay_signals[0][11] (
	.clk(clk),
	.d(\delay_signals[0][11]~3_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_11_0),
	.prn(vcc));
defparam \delay_signals[0][11] .is_wysiwyg = "true";
defparam \delay_signals[0][11] .power_up = "low";

dffeas \delay_signals[0][12] (
	.clk(clk),
	.d(xin[12]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_12_0),
	.prn(vcc));
defparam \delay_signals[0][12] .is_wysiwyg = "true";
defparam \delay_signals[0][12] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(xin[4]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(\delay_signals[0][1]~4_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

cyclonev_lcell_comb \delay_signals[0][15]~0 (
	.dataa(!xin[5]),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\delay_signals[0][15]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \delay_signals[0][15]~0 .extended_lut = "off";
defparam \delay_signals[0][15]~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \delay_signals[0][15]~0 .shared_arith = "off";

cyclonev_lcell_comb \delay_signals[0][0]~1 (
	.dataa(!Add4),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\delay_signals[0][0]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \delay_signals[0][0]~1 .extended_lut = "off";
defparam \delay_signals[0][0]~1 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \delay_signals[0][0]~1 .shared_arith = "off";

cyclonev_lcell_comb \delay_signals[0][13]~2 (
	.dataa(!aip1E_3_uid79_sincosTest_o_3),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\delay_signals[0][13]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \delay_signals[0][13]~2 .extended_lut = "off";
defparam \delay_signals[0][13]~2 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \delay_signals[0][13]~2 .shared_arith = "off";

cyclonev_lcell_comb \delay_signals[0][11]~3 (
	.dataa(!xin[6]),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\delay_signals[0][11]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \delay_signals[0][11]~3 .extended_lut = "off";
defparam \delay_signals[0][11]~3 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \delay_signals[0][11]~3 .shared_arith = "off";

cyclonev_lcell_comb \delay_signals[0][1]~4 (
	.dataa(!xin[12]),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\delay_signals[0][1]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \delay_signals[0][1]~4 .extended_lut = "off";
defparam \delay_signals[0][1]~4 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \delay_signals[0][1]~4 .shared_arith = "off";

endmodule

module sincos_dspba_delay_3 (
	xin,
	delay_signals_0_0,
	delay_signals_15_0,
	delay_signals_12_0,
	delay_signals_1_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[18:0] xin;
output 	delay_signals_0_0;
output 	delay_signals_15_0;
output 	delay_signals_12_0;
output 	delay_signals_1_0;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[0][1]~0_combout ;


dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

dffeas \delay_signals[0][15] (
	.clk(clk),
	.d(xin[15]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_15_0),
	.prn(vcc));
defparam \delay_signals[0][15] .is_wysiwyg = "true";
defparam \delay_signals[0][15] .power_up = "low";

dffeas \delay_signals[0][12] (
	.clk(clk),
	.d(xin[12]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_12_0),
	.prn(vcc));
defparam \delay_signals[0][12] .is_wysiwyg = "true";
defparam \delay_signals[0][12] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(\delay_signals[0][1]~0_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

cyclonev_lcell_comb \delay_signals[0][1]~0 (
	.dataa(!xin[12]),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\delay_signals[0][1]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \delay_signals[0][1]~0 .extended_lut = "off";
defparam \delay_signals[0][1]~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \delay_signals[0][1]~0 .shared_arith = "off";

endmodule

module sincos_dspba_delay_4 (
	xin,
	delay_signals_0_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[18:0] xin;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos_dspba_delay_5 (
	delay_signals_0_0,
	clk,
	aclr,
	a_9)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	a_9;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[0][0]~0_combout ;


dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(\delay_signals[0][0]~0_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

cyclonev_lcell_comb \delay_signals[0][0]~0 (
	.dataa(!a_9),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\delay_signals[0][0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \delay_signals[0][0]~0 .extended_lut = "off";
defparam \delay_signals[0][0]~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \delay_signals[0][0]~0 .shared_arith = "off";

endmodule

module sincos_dspba_delay_6 (
	delay_signals_0_0,
	clk,
	aclr,
	xin)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	[18:0] xin;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule
