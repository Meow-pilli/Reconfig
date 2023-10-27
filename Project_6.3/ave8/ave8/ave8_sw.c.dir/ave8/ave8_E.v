// verilog_out version 6.89.1
// options:  veriloggen -EE ave8_E.IFF
// bdlpars options:  -EE -I../.. -I/proj/cad/cwb-6.1/linux_x86_64/include -info_base_name ave8_sw ../../ave8_sw.c -process=ave8
// bdltran options:  -EE -c200 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Zdup_reset=YES -Zfolding_sharing=inter_stage -EE -lb /proj/cad/cwb-6.1/packages/cycloneV.BLIB -lfl /proj/cad/cwb-6.1/packages/cycloneV.FLIB +lfl ave8-amacro-auto.FLIB +lfl ave8-auto.FLIB -lfc ave8-auto.FCNT +lfc ave8-amacro-auto.FCNT -lml ave8-auto.MLIB -lmc ave8-auto.MCNT ave8.IFF 
// timestamp_0: 20231027161710_10159_04444
// timestamp_5: 20231027161727_10679_98701
// timestamp_9: 20231027161728_10679_72362
// timestamp_C: 20231027161728_10679_89656
// timestamp_E: 20231027161728_10679_27809
// timestamp_V: 20231027161729_10871_34861

module ave8 ( in0 ,ave8_ret ,CLOCK ,RESET );
input	[0:7]	in0 ;	// line#=../../ave8_sw.c:20
output	[0:7]	ave8_ret ;	// line#=../../ave8_sw.c:20
input		CLOCK ;
input		RESET ;
wire		ST1_01d ;
wire		ST1_02d ;
wire		ST1_03d ;

ave8_fsm INST_fsm ( .CLOCK(CLOCK) ,.RESET(RESET) ,.ST1_03d(ST1_03d) ,.ST1_02d(ST1_02d) ,
	.ST1_01d(ST1_01d) );
ave8_dat INST_dat ( .in0(in0) ,.ave8_ret(ave8_ret) ,.CLOCK(CLOCK) ,.RESET(RESET) ,
	.ST1_03d(ST1_03d) ,.ST1_02d(ST1_02d) ,.ST1_01d(ST1_01d) );

endmodule

module ave8_fsm ( CLOCK ,RESET ,ST1_03d ,ST1_02d ,ST1_01d );
input		CLOCK ;
input		RESET ;
output		ST1_03d ;
output		ST1_02d ;
output		ST1_01d ;
reg	[0:1]	B01_streg ;

parameter	ST1_01 = 2'h0 ;
parameter	ST1_02 = 2'h1 ;
parameter	ST1_03 = 2'h2 ;

assign	ST1_01d = ( ( B01_streg == ST1_01 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_02d = ( ( B01_streg == ST1_02 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_03d = ( ( B01_streg == ST1_03 ) ? 1'h1 : 1'h0 ) ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		B01_streg <= ST1_01 ;
	else
		case ( B01_streg )
		ST1_01 :
			B01_streg <= ST1_02 ;
		ST1_02 :
			B01_streg <= ST1_03 ;
		ST1_03 :
			B01_streg <= ST1_01 ;
		default :
			B01_streg <= ST1_01 ;
		endcase

endmodule

module ave8_dat ( in0 ,ave8_ret ,CLOCK ,RESET ,ST1_03d ,ST1_02d ,ST1_01d );
input	[0:7]	in0 ;	// line#=../../ave8_sw.c:20
output	[0:7]	ave8_ret ;	// line#=../../ave8_sw.c:20
input		CLOCK ;
input		RESET ;
input		ST1_03d ;
input		ST1_02d ;
input		ST1_01d ;
wire	[0:8]	add12u_11_101i2 ;
wire	[0:8]	add12u_11_101i1 ;
wire	[0:9]	add12u_11_101ot ;
wire	[0:8]	add12u_11_111i2 ;
wire	[0:9]	add12u_11_111i1 ;
wire	[0:10]	add12u_11_111ot ;
wire	[0:8]	add12u_111i2 ;
wire	[0:10]	add12u_111i1 ;
wire	[0:10]	add12u_111ot ;
wire	[0:7]	add8u4i2 ;
wire	[0:7]	add8u4i1 ;
wire	[0:8]	add8u4ot ;
wire	[0:7]	add8u3i2 ;
wire	[0:7]	add8u3i1 ;
wire	[0:8]	add8u3ot ;
wire	[0:7]	add8u2i2 ;
wire	[0:7]	add8u2i1 ;
wire	[0:8]	add8u2ot ;
wire	[0:7]	add8u1i2 ;
wire	[0:7]	add8u1i1 ;
wire	[0:8]	add8u1ot ;
wire		RG_buffer_en ;
wire		RG_buffer_1_en ;
wire		RG_buffer_2_en ;
wire		RG_buffer_3_en ;
wire		RG_buffer_4_en ;
wire		RG_buffer_5_en ;
wire		RG_buffer_6_en ;
wire		RG_buffer_7_en ;
wire		ave8_ret_r_en ;
reg	[0:7]	RG_buffer ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_1 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_2 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_3 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_4 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_5 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_6 ;	// line#=../../ave8_sw.c:16
reg	[0:9]	RG_07 ;
reg	[0:8]	RG_08 ;
reg	[0:7]	RG_buffer_7 ;	// line#=../../ave8_sw.c:16,20
reg	[0:10]	RG_10 ;
reg	[0:7]	ave8_ret_r ;	// line#=../../ave8_sw.c:20
reg	[0:8]	RG_08_t ;

ave8_add12u_11_10 INST_add12u_11_10_1 ( .i1(add12u_11_101i1) ,.i2(add12u_11_101i2) ,
	.o1(add12u_11_101ot) );	// line#=../../ave8_sw.c:39
ave8_add12u_11_11 INST_add12u_11_11_1 ( .i1(add12u_11_111i1) ,.i2(add12u_11_111i2) ,
	.o1(add12u_11_111ot) );	// line#=../../ave8_sw.c:39
ave8_add12u_11 INST_add12u_11_1 ( .i1(add12u_111i1) ,.i2(add12u_111i2) ,.o1(add12u_111ot) );	// line#=../../ave8_sw.c:39
ave8_add8u INST_add8u_1 ( .i1(add8u1i1) ,.i2(add8u1i2) ,.o1(add8u1ot) );	// line#=../../ave8_sw.c:39
ave8_add8u INST_add8u_2 ( .i1(add8u2i1) ,.i2(add8u2i2) ,.o1(add8u2ot) );	// line#=../../ave8_sw.c:39
ave8_add8u INST_add8u_3 ( .i1(add8u3i1) ,.i2(add8u3i2) ,.o1(add8u3ot) );	// line#=../../ave8_sw.c:39
ave8_add8u INST_add8u_4 ( .i1(add8u4i1) ,.i2(add8u4i2) ,.o1(add8u4ot) );	// line#=../../ave8_sw.c:35,39
assign	ave8_ret = ave8_ret_r ;	// line#=../../ave8_sw.c:20
always @ ( posedge CLOCK )	// line#=../../ave8_sw.c:39
	RG_07 <= add12u_11_101ot ;
always @ ( posedge CLOCK )	// line#=../../ave8_sw.c:39
	RG_10 <= add12u_11_111ot ;
assign	add8u1i1 = RG_buffer_4 ;	// line#=../../ave8_sw.c:28,39
assign	add8u1i2 = RG_buffer_5 ;	// line#=../../ave8_sw.c:28,39
assign	add8u2i1 = RG_buffer_2 ;	// line#=../../ave8_sw.c:28,39
assign	add8u2i2 = RG_buffer_3 ;	// line#=../../ave8_sw.c:28,39
assign	add8u3i1 = RG_buffer ;	// line#=../../ave8_sw.c:28,39
assign	add8u3i2 = RG_buffer_1 ;	// line#=../../ave8_sw.c:28,39
assign	add8u4i1 = RG_buffer_6 ;	// line#=../../ave8_sw.c:35,39
assign	add8u4i2 = RG_buffer_7 ;	// line#=../../ave8_sw.c:35,39
assign	add12u_111i1 = RG_10 ;	// line#=../../ave8_sw.c:39
assign	add12u_111i2 = RG_08 ;	// line#=../../ave8_sw.c:39
assign	add12u_11_111i1 = RG_07 ;	// line#=../../ave8_sw.c:39
assign	add12u_11_111i2 = RG_08 ;	// line#=../../ave8_sw.c:39
assign	add12u_11_101i1 = add8u3ot ;	// line#=../../ave8_sw.c:39
assign	add12u_11_101i2 = add8u2ot ;	// line#=../../ave8_sw.c:39
assign	RG_buffer_en = ST1_03d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:32
	if ( RESET )
		RG_buffer <= 8'h00 ;
	else if ( RG_buffer_en )
		RG_buffer <= RG_buffer_7 ;
assign	RG_buffer_1_en = ST1_03d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_1 <= 8'h00 ;
	else if ( RG_buffer_1_en )
		RG_buffer_1 <= RG_buffer ;
assign	RG_buffer_2_en = ST1_03d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_2 <= 8'h00 ;
	else if ( RG_buffer_2_en )
		RG_buffer_2 <= RG_buffer_1 ;
assign	RG_buffer_3_en = ST1_03d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_3 <= 8'h00 ;
	else if ( RG_buffer_3_en )
		RG_buffer_3 <= RG_buffer_2 ;
assign	RG_buffer_4_en = ST1_03d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_4 <= 8'h00 ;
	else if ( RG_buffer_4_en )
		RG_buffer_4 <= RG_buffer_3 ;
assign	RG_buffer_5_en = ST1_03d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_5 <= 8'h00 ;
	else if ( RG_buffer_5_en )
		RG_buffer_5 <= RG_buffer_4 ;
assign	RG_buffer_6_en = ST1_03d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_6 <= 8'h00 ;
	else if ( RG_buffer_6_en )
		RG_buffer_6 <= RG_buffer_5 ;
always @ ( ST1_02d or add8u4ot or ST1_01d or add8u1ot )
	case ( { ST1_01d , ST1_02d } )
	2'b10 :
		RG_08_t = add8u1ot ;	// line#=../../ave8_sw.c:39
	2'b01 :
		RG_08_t = add8u4ot ;	// line#=../../ave8_sw.c:35,39
	default :
		RG_08_t = 9'hx ;
	endcase
always @ ( posedge CLOCK )
	RG_08 <= RG_08_t ;	// line#=../../ave8_sw.c:35,39
assign	RG_buffer_7_en = ST1_01d ;
always @ ( posedge CLOCK )
	if ( RG_buffer_7_en )
		RG_buffer_7 <= in0 ;
assign	ave8_ret_r_en = ST1_03d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:39,43,46
	if ( RESET )
		ave8_ret_r <= 8'h00 ;
	else if ( ave8_ret_r_en )
		ave8_ret_r <= add12u_111ot [0:7] ;

endmodule

module ave8_add12u_11_10 ( i1 ,i2 ,o1 );
input	[0:8]	i1 ;
input	[0:8]	i2 ;
output	[0:9]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 1'h0 , i2 } ) ;

endmodule

module ave8_add12u_11_11 ( i1 ,i2 ,o1 );
input	[0:9]	i1 ;
input	[0:8]	i2 ;
output	[0:10]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 2'h0 , i2 } ) ;

endmodule

module ave8_add12u_11 ( i1 ,i2 ,o1 );
input	[0:10]	i1 ;
input	[0:8]	i2 ;
output	[0:10]	o1 ;

assign	o1 = ( i1 + { 2'h0 , i2 } ) ;

endmodule

module ave8_add8u ( i1 ,i2 ,o1 );
input	[0:7]	i1 ;
input	[0:7]	i2 ;
output	[0:8]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 1'h0 , i2 } ) ;

endmodule
