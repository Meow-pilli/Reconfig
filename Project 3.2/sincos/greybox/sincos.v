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

// DATE "09/29/2023 17:55:15"

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
output 	[2:0] c;
input 	clk;
output 	[2:0] s;

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
wire \cordic_0|s[0]~0_combout ;
wire \cordic_0|s[1]~1_combout ;
wire \cordic_0|s[2]~2_combout ;
wire \clk~input_o ;
wire \areset~input_o ;
wire \a[9]~input_o ;
wire \a[5]~input_o ;
wire \a[6]~input_o ;
wire \a[7]~input_o ;
wire \a[4]~input_o ;
wire \a[3]~input_o ;
wire \a[2]~input_o ;
wire \a[8]~input_o ;
wire \a[1]~input_o ;
wire \a[0]~input_o ;


sincos_sincos_CORDIC_0 cordic_0(
	.c_0(\cordic_0|c[0]~0_combout ),
	.c_1(\cordic_0|c[1]~1_combout ),
	.c_2(\cordic_0|c[2]~2_combout ),
	.s_0(\cordic_0|s[0]~0_combout ),
	.s_1(\cordic_0|s[1]~1_combout ),
	.s_2(\cordic_0|s[2]~2_combout ),
	.clk(\clk~input_o ),
	.areset(\areset~input_o ),
	.a({\a[9]~input_o ,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.a_5(\a[5]~input_o ),
	.a_6(\a[6]~input_o ),
	.a_7(\a[7]~input_o ),
	.a_4(\a[4]~input_o ),
	.a_3(\a[3]~input_o ),
	.a_2(\a[2]~input_o ),
	.a_8(\a[8]~input_o ),
	.a_1(\a[1]~input_o ),
	.a_0(\a[0]~input_o ));

assign \clk~input_o  = clk;

assign \areset~input_o  = areset;

assign \a[9]~input_o  = a[9];

assign \a[5]~input_o  = a[5];

assign \a[6]~input_o  = a[6];

assign \a[7]~input_o  = a[7];

assign \a[4]~input_o  = a[4];

assign \a[3]~input_o  = a[3];

assign \a[2]~input_o  = a[2];

assign \a[8]~input_o  = a[8];

assign \a[1]~input_o  = a[1];

assign \a[0]~input_o  = a[0];

assign c[0] = \cordic_0|c[0]~0_combout ;

assign c[1] = \cordic_0|c[1]~1_combout ;

assign c[2] = \cordic_0|c[2]~2_combout ;

assign s[0] = \cordic_0|s[0]~0_combout ;

assign s[1] = \cordic_0|s[1]~1_combout ;

assign s[2] = \cordic_0|s[2]~2_combout ;

endmodule

module sincos_sincos_CORDIC_0 (
	c_0,
	c_1,
	c_2,
	s_0,
	s_1,
	s_2,
	clk,
	areset,
	a,
	a_5,
	a_6,
	a_7,
	a_4,
	a_3,
	a_2,
	a_8,
	a_1,
	a_0)/* synthesis synthesis_greybox=0 */;
output 	c_0;
output 	c_1;
output 	c_2;
output 	s_0;
output 	s_1;
output 	s_2;
input 	clk;
input 	areset;
input 	[9:0] a;
input 	a_5;
input 	a_6;
input 	a_7;
input 	a_4;
input 	a_3;
input 	a_2;
input 	a_8;
input 	a_1;
input 	a_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \firstQuadrant_uid15_sincosTest_b[0]~1_sumout ;
wire \Add1~1_sumout ;
wire \Add1~2 ;
wire \argMPiO2_uid14_sincosTest_o[5]~1_sumout ;
wire \argMPiO2_uid14_sincosTest_o[5]~2 ;
wire \argMPiO2_uid14_sincosTest_o[5]~3 ;
wire \Add1~5_sumout ;
wire \Add1~6 ;
wire \argMPiO2_uid14_sincosTest_o[6]~5_sumout ;
wire \argMPiO2_uid14_sincosTest_o[6]~6 ;
wire \argMPiO2_uid14_sincosTest_o[6]~7 ;
wire \Add1~9_sumout ;
wire \Add1~10 ;
wire \argMPiO2_uid14_sincosTest_o[7]~9_sumout ;
wire \argMPiO2_uid14_sincosTest_o[7]~10 ;
wire \argMPiO2_uid14_sincosTest_o[7]~11 ;
wire \Add1~13_sumout ;
wire \Add1~14 ;
wire \Add1~17_sumout ;
wire \Add1~18 ;
wire \argMPiO2_uid14_sincosTest_o[3]~13_sumout ;
wire \argMPiO2_uid14_sincosTest_o[3]~14 ;
wire \argMPiO2_uid14_sincosTest_o[3]~15 ;
wire \argMPiO2_uid14_sincosTest_o[4]~17_sumout ;
wire \argMPiO2_uid14_sincosTest_o[4]~18 ;
wire \argMPiO2_uid14_sincosTest_o[4]~19 ;
wire \Add5~1_sumout ;
wire \Add2~2_cout ;
wire \Add2~3 ;
wire \Add1~21_sumout ;
wire \Add1~22 ;
wire \Add2~6_cout ;
wire \Add2~7 ;
wire \Add5~6_cout ;
wire \Add1~25_sumout ;
wire \Add1~29_sumout ;
wire \Add1~30 ;
wire \Add2~10_cout ;
wire \Add2~11 ;
wire \Add5~10_cout ;
wire \Add1~33_sumout ;
wire \Add1~34 ;
wire \Add2~14_cout ;
wire \Add2~15 ;
wire \Add5~14_cout ;
wire \Add5~18_cout ;
wire \Add5~22_cout ;
wire \Add5~26_cout ;
wire \Add5~30_cout ;
wire \redist2_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist1_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist0_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist4_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist3_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ;
wire \absA_uid18_sincosTest_q[2]~0_combout ;
wire \absA_uid18_sincosTest_q[3]~1_combout ;
wire \absA_uid18_sincosTest_q[4]~2_combout ;
wire \Add4~0_combout ;
wire \Add4~1_combout ;
wire \Add4~2_combout ;
wire \absA_uid18_sincosTest_q[1]~3_combout ;


sincos_dspba_delay_2 redist2_firstQuadrant_uid15_sincosTest_b_1(
	.xin({\firstQuadrant_uid15_sincosTest_b[0]~1_sumout }),
	.delay_signals_0_0(\redist2_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset));

sincos_dspba_delay_1 redist1_xMSB_uid48_sincosTest_b_1(
	.delay_signals_0_0(\redist1_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.Add4(\Add4~1_combout ),
	.clk(clk),
	.aclr(areset));

sincos_dspba_delay redist0_xMSB_uid64_sincosTest_b_1(
	.xin({\Add5~1_sumout }),
	.delay_signals_0_0(\redist0_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset));

sincos_dspba_delay_3 redist3_invSignA_uid8_sincosTest_q_1(
	.delay_signals_0_0(\redist3_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.a_9(a[9]));

sincos_dspba_delay_4 redist4_signA_uid7_sincosTest_b_1(
	.delay_signals_0_0(\redist4_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.xin({a[9]}));

cyclonev_lcell_comb \firstQuadrant_uid15_sincosTest_b[0]~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~2_cout ),
	.sharein(\Add2~3 ),
	.combout(),
	.sumout(\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.cout(),
	.shareout());
defparam \firstQuadrant_uid15_sincosTest_b[0]~1 .extended_lut = "off";
defparam \firstQuadrant_uid15_sincosTest_b[0]~1 .lut_mask = 64'h000000000000FFFF;
defparam \firstQuadrant_uid15_sincosTest_b[0]~1 .shared_arith = "on";

cyclonev_lcell_comb \Add1~1 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~1_sumout ),
	.cout(\Add1~2 ),
	.shareout());
defparam \Add1~1 .extended_lut = "off";
defparam \Add1~1 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~1 .shared_arith = "off";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[5]~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[4]~18 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[4]~19 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[5]~1_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[5]~2 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[5]~3 ));
defparam \argMPiO2_uid14_sincosTest_o[5]~1 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[5]~1 .lut_mask = 64'h000000FF0000FF00;
defparam \argMPiO2_uid14_sincosTest_o[5]~1 .shared_arith = "on";

cyclonev_lcell_comb \Add1~5 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~5_sumout ),
	.cout(\Add1~6 ),
	.shareout());
defparam \Add1~5 .extended_lut = "off";
defparam \Add1~5 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~5 .shared_arith = "off";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[6]~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[5]~2 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[5]~3 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[6]~5_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[6]~6 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[6]~7 ));
defparam \argMPiO2_uid14_sincosTest_o[6]~5 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[6]~5 .lut_mask = 64'h00000000000000FF;
defparam \argMPiO2_uid14_sincosTest_o[6]~5 .shared_arith = "on";

cyclonev_lcell_comb \Add1~9 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~9_sumout ),
	.cout(\Add1~10 ),
	.shareout());
defparam \Add1~9 .extended_lut = "off";
defparam \Add1~9 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~9 .shared_arith = "off";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[7]~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[6]~6 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[6]~7 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[7]~9_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[7]~10 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[7]~11 ));
defparam \argMPiO2_uid14_sincosTest_o[7]~9 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[7]~9 .lut_mask = 64'h00000000000000FF;
defparam \argMPiO2_uid14_sincosTest_o[7]~9 .shared_arith = "on";

cyclonev_lcell_comb \Add1~13 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_4),
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

cyclonev_lcell_comb \Add1~17 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_3),
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

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[3]~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~6_cout ),
	.sharein(\Add2~7 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[3]~13_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[3]~14 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[3]~15 ));
defparam \argMPiO2_uid14_sincosTest_o[3]~13 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[3]~13 .lut_mask = 64'h00000000000000FF;
defparam \argMPiO2_uid14_sincosTest_o[3]~13 .shared_arith = "on";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[4]~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[3]~14 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[3]~15 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[4]~17_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[4]~18 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[4]~19 ));
defparam \argMPiO2_uid14_sincosTest_o[4]~17 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[4]~17 .lut_mask = 64'h000000FF0000FF00;
defparam \argMPiO2_uid14_sincosTest_o[4]~17 .shared_arith = "on";

cyclonev_lcell_comb \Add5~1 (
	.dataa(!\absA_uid18_sincosTest_q[3]~1_combout ),
	.datab(!\Add4~0_combout ),
	.datac(!\absA_uid18_sincosTest_q[2]~0_combout ),
	.datad(!\Add4~1_combout ),
	.datae(gnd),
	.dataf(!\absA_uid18_sincosTest_q[4]~2_combout ),
	.datag(gnd),
	.cin(\Add5~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add5~1_sumout ),
	.cout(),
	.shareout());
defparam \Add5~1 .extended_lut = "off";
defparam \Add5~1 .lut_mask = 64'h000001FE000000FF;
defparam \Add5~1 .shared_arith = "off";

cyclonev_lcell_comb \Add2~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[7]~10 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[7]~11 ),
	.combout(),
	.sumout(),
	.cout(\Add2~2_cout ),
	.shareout(\Add2~3 ));
defparam \Add2~2 .extended_lut = "off";
defparam \Add2~2 .lut_mask = 64'h000000FF0000FF00;
defparam \Add2~2 .shared_arith = "on";

cyclonev_lcell_comb \Add1~21 (
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
	.sumout(\Add1~21_sumout ),
	.cout(\Add1~22 ),
	.shareout());
defparam \Add1~21 .extended_lut = "off";
defparam \Add1~21 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~21 .shared_arith = "off";

cyclonev_lcell_comb \Add2~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~10_cout ),
	.sharein(\Add2~11 ),
	.combout(),
	.sumout(),
	.cout(\Add2~6_cout ),
	.shareout(\Add2~7 ));
defparam \Add2~6 .extended_lut = "off";
defparam \Add2~6 .lut_mask = 64'h000000FF0000FF00;
defparam \Add2~6 .shared_arith = "on";

cyclonev_lcell_comb \Add5~6 (
	.dataa(!\absA_uid18_sincosTest_q[3]~1_combout ),
	.datab(!\Add4~0_combout ),
	.datac(!\absA_uid18_sincosTest_q[2]~0_combout ),
	.datad(!\Add4~1_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~10_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add5~6_cout ),
	.shareout());
defparam \Add5~6 .extended_lut = "off";
defparam \Add5~6 .lut_mask = 64'h0000A9A9000000FF;
defparam \Add5~6 .shared_arith = "off";

cyclonev_lcell_comb \Add1~25 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_8),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~25_sumout ),
	.cout(),
	.shareout());
defparam \Add1~25 .extended_lut = "off";
defparam \Add1~25 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~25 .shared_arith = "off";

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

cyclonev_lcell_comb \Add2~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~14_cout ),
	.sharein(\Add2~15 ),
	.combout(),
	.sumout(),
	.cout(\Add2~10_cout ),
	.shareout(\Add2~11 ));
defparam \Add2~10 .extended_lut = "off";
defparam \Add2~10 .lut_mask = 64'h000000FF0000FF00;
defparam \Add2~10 .shared_arith = "on";

cyclonev_lcell_comb \Add5~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_combout ),
	.datae(gnd),
	.dataf(!\Add4~2_combout ),
	.datag(gnd),
	.cin(\Add5~14_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add5~10_cout ),
	.shareout());
defparam \Add5~10 .extended_lut = "off";
defparam \Add5~10 .lut_mask = 64'h0000FF000000FF00;
defparam \Add5~10 .shared_arith = "off";

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

cyclonev_lcell_comb \Add2~14 (
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
	.sumout(),
	.cout(\Add2~14_cout ),
	.shareout(\Add2~15 ));
defparam \Add2~14 .extended_lut = "off";
defparam \Add2~14 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add2~14 .shared_arith = "on";

cyclonev_lcell_comb \Add5~14 (
	.dataa(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datab(!\argMPiO2_uid14_sincosTest_o[3]~13_sumout ),
	.datac(!\Add1~17_sumout ),
	.datad(!\Add4~1_combout ),
	.datae(gnd),
	.dataf(!\absA_uid18_sincosTest_q[1]~3_combout ),
	.datag(gnd),
	.cin(\Add5~18_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add5~14_cout ),
	.shareout());
defparam \Add5~14 .extended_lut = "off";
defparam \Add5~14 .lut_mask = 64'h000027D80000FFD8;
defparam \Add5~14 .shared_arith = "off";

cyclonev_lcell_comb \Add5~18 (
	.dataa(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datab(!\Add1~17_sumout ),
	.datac(!\Add4~1_combout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[3]~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~22_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add5~18_cout ),
	.shareout());
defparam \Add5~18 .extended_lut = "off";
defparam \Add5~18 .lut_mask = 64'h00000F0F0000E040;
defparam \Add5~18 .shared_arith = "off";

cyclonev_lcell_comb \Add5~22 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add5~22_cout ),
	.shareout());
defparam \Add5~22 .extended_lut = "off";
defparam \Add5~22 .lut_mask = 64'h0000FFFF00000000;
defparam \Add5~22 .shared_arith = "off";

cyclonev_lcell_comb \Add5~26 (
	.dataa(!\Add4~1_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add5~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add5~26_cout ),
	.shareout());
defparam \Add5~26 .extended_lut = "off";
defparam \Add5~26 .lut_mask = 64'h000055550000AAAA;
defparam \Add5~26 .shared_arith = "off";

cyclonev_lcell_comb \Add5~30 (
	.dataa(!\Add4~1_combout ),
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
	.cout(\Add5~30_cout ),
	.shareout());
defparam \Add5~30 .extended_lut = "off";
defparam \Add5~30 .lut_mask = 64'h000000000000AAAA;
defparam \Add5~30 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid18_sincosTest_q[2]~0 (
	.dataa(!\Add1~1_sumout ),
	.datab(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datac(!\argMPiO2_uid14_sincosTest_o[5]~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid18_sincosTest_q[2]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid18_sincosTest_q[2]~0 .extended_lut = "off";
defparam \absA_uid18_sincosTest_q[2]~0 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid18_sincosTest_q[2]~0 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid18_sincosTest_q[3]~1 (
	.dataa(!\Add1~5_sumout ),
	.datab(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datac(!\argMPiO2_uid14_sincosTest_o[6]~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid18_sincosTest_q[3]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid18_sincosTest_q[3]~1 .extended_lut = "off";
defparam \absA_uid18_sincosTest_q[3]~1 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid18_sincosTest_q[3]~1 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid18_sincosTest_q[4]~2 (
	.dataa(!\Add1~9_sumout ),
	.datab(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datac(!\argMPiO2_uid14_sincosTest_o[7]~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid18_sincosTest_q[4]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid18_sincosTest_q[4]~2 .extended_lut = "off";
defparam \absA_uid18_sincosTest_q[4]~2 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid18_sincosTest_q[4]~2 .shared_arith = "off";

cyclonev_lcell_comb \Add4~0 (
	.dataa(!\Add1~13_sumout ),
	.datab(!\Add1~17_sumout ),
	.datac(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[3]~13_sumout ),
	.datae(!\argMPiO2_uid14_sincosTest_o[4]~17_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add4~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add4~0 .extended_lut = "off";
defparam \Add4~0 .lut_mask = 64'h07F7F7F707F7F7F7;
defparam \Add4~0 .shared_arith = "off";

cyclonev_lcell_comb \Add4~1 (
	.dataa(!\absA_uid18_sincosTest_q[2]~0_combout ),
	.datab(!\absA_uid18_sincosTest_q[3]~1_combout ),
	.datac(!\absA_uid18_sincosTest_q[4]~2_combout ),
	.datad(!\Add4~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add4~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add4~1 .extended_lut = "off";
defparam \Add4~1 .lut_mask = 64'h0F1F0F1F0F1F0F1F;
defparam \Add4~1 .shared_arith = "off";

cyclonev_lcell_comb \Add4~2 (
	.dataa(!\absA_uid18_sincosTest_q[2]~0_combout ),
	.datab(!\Add4~0_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add4~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add4~2 .extended_lut = "off";
defparam \Add4~2 .lut_mask = 64'h6666666666666666;
defparam \Add4~2 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid18_sincosTest_q[1]~3 (
	.dataa(!\Add1~13_sumout ),
	.datab(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datac(!\argMPiO2_uid14_sincosTest_o[4]~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid18_sincosTest_q[1]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid18_sincosTest_q[1]~3 .extended_lut = "off";
defparam \absA_uid18_sincosTest_q[1]~3 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid18_sincosTest_q[1]~3 .shared_arith = "off";

cyclonev_lcell_comb \c[0]~0 (
	.dataa(!\redist2_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\redist0_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
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
defparam \c[0]~0 .lut_mask = 64'h2424242424242424;
defparam \c[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \c[1]~1 (
	.dataa(!\redist2_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\redist0_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\redist4_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(!\redist3_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[1]~1 .extended_lut = "off";
defparam \c[1]~1 .lut_mask = 64'h99B9B9B999B9B9B9;
defparam \c[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \c[2]~2 (
	.dataa(!\redist2_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\redist0_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\redist4_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(!\redist3_invSignA_uid8_sincosTest_q_1|delay_signals[0][0]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[2]~2 .extended_lut = "off";
defparam \c[2]~2 .lut_mask = 64'h00A8A8A800A8A8A8;
defparam \c[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \s[0]~0 (
	.dataa(!\redist2_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\redist0_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
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
defparam \s[0]~0 .lut_mask = 64'h1818181818181818;
defparam \s[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \s[1]~1 (
	.dataa(!\redist2_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\redist0_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\redist4_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
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
defparam \s[1]~1 .lut_mask = 64'h667E667E667E667E;
defparam \s[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \s[2]~2 (
	.dataa(!\redist2_firstQuadrant_uid15_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist1_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\redist0_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(!\redist4_signA_uid7_sincosTest_b_1|delay_signals[0][0]~q ),
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
defparam \s[2]~2 .lut_mask = 64'h007E007E007E007E;
defparam \s[2]~2 .shared_arith = "off";

endmodule

module sincos_dspba_delay (
	xin,
	delay_signals_0_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[0:0] xin;
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

module sincos_dspba_delay_1 (
	delay_signals_0_0,
	Add4,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	Add4;
input 	clk;
input 	aclr;

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
	.dataa(!Add4),
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

module sincos_dspba_delay_2 (
	xin,
	delay_signals_0_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[0:0] xin;
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

module sincos_dspba_delay_3 (
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

module sincos_dspba_delay_4 (
	delay_signals_0_0,
	clk,
	aclr,
	xin)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	[0:0] xin;

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
