// verilog_out version 6.89.1
// options:  veriloggen -EE ave8_E.IFF
// bdlpars options:  -EE -I../.. -I/proj/cad/cwb-6.1/linux_x86_64/include -info_base_name ave8_sw ../../ave8_sw.c -process=ave8
// bdltran options:  -EE -c2000 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Zdup_reset=YES -Zfolding_sharing=inter_stage -EE -lb /proj/cad/cwb-6.1/packages/cycloneV.BLIB -lfl /proj/cad/cwb-6.1/packages/cycloneV.FLIB +lfl ave8-amacro-auto.FLIB +lfl ave8-auto.FLIB -lfc ave8-auto.FCNT +lfc ave8-amacro-auto.FCNT -lml ave8-auto.MLIB -lmc ave8-auto.MCNT ave8.IFF 
// timestamp_0: 20231029122957_10451_77966
// timestamp_5: 20231029123023_14779_95800
// timestamp_9: 20231029123024_14779_61590
// timestamp_C: 20231029123024_14779_12385
// timestamp_E: 20231029123024_14779_49739
// timestamp_V: 20231029123026_15051_13721

module ave8 ( in0 ,enable ,ave8_ret ,CLOCK ,RESET );
input	[0:7]	in0 ;	// line#=../../ave8_sw.c:20
input	[0:7]	enable ;	// line#=../../ave8_sw.c:20
output	[0:7]	ave8_ret ;	// line#=../../ave8_sw.c:20
input		CLOCK ;
input		RESET ;
wire		C_01 ;
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
reg	[0:7]	RG_buffer ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_1 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_2 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_3 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_4 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_5 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_6 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	RG_buffer_7 ;	// line#=../../ave8_sw.c:16
reg	[0:7]	ave8_ret_r ;	// line#=../../ave8_sw.c:20
reg	[0:7]	buffer_a00_t1 ;
reg	buffer_a00_t1_c1 ;
reg	[0:7]	buffer_a03_t1 ;
reg	buffer_a03_t1_c1 ;
reg	[0:7]	buffer_a04_t1 ;
reg	buffer_a04_t1_c1 ;
reg	[0:7]	buffer_a01_t1 ;
reg	buffer_a01_t1_c1 ;
reg	[0:7]	buffer_a02_t1 ;
reg	buffer_a02_t1_c1 ;
reg	[0:7]	buffer_a07_t1 ;
reg	buffer_a07_t1_c1 ;
reg	[0:7]	buffer_a05_t1 ;
reg	buffer_a05_t1_c1 ;
reg	[0:7]	buffer_a06_t1 ;
reg	buffer_a06_t1_c1 ;

ave8_add12u_11_10 INST_add12u_11_10_1 ( .i1(add12u_11_101i1) ,.i2(add12u_11_101i2) ,
	.o1(add12u_11_101ot) );	// line#=../../ave8_sw.c:40
ave8_add12u_11_11 INST_add12u_11_11_1 ( .i1(add12u_11_111i1) ,.i2(add12u_11_111i2) ,
	.o1(add12u_11_111ot) );	// line#=../../ave8_sw.c:40
ave8_add12u_11 INST_add12u_11_1 ( .i1(add12u_111i1) ,.i2(add12u_111i2) ,.o1(add12u_111ot) );	// line#=../../ave8_sw.c:36,40
ave8_add8u INST_add8u_1 ( .i1(add8u1i1) ,.i2(add8u1i2) ,.o1(add8u1ot) );	// line#=../../ave8_sw.c:36,40
ave8_add8u INST_add8u_2 ( .i1(add8u2i1) ,.i2(add8u2i2) ,.o1(add8u2ot) );	// line#=../../ave8_sw.c:40
ave8_add8u INST_add8u_3 ( .i1(add8u3i1) ,.i2(add8u3i2) ,.o1(add8u3ot) );	// line#=../../ave8_sw.c:40
ave8_add8u INST_add8u_4 ( .i1(add8u4i1) ,.i2(add8u4i2) ,.o1(add8u4ot) );	// line#=../../ave8_sw.c:40
assign	ave8_ret = ave8_ret_r ;	// line#=../../ave8_sw.c:20
assign	C_01 = ~|enable ;	// line#=../../ave8_sw.c:27
always @ ( RG_buffer or C_01 or in0 )	// line#=../../ave8_sw.c:27
	begin
	buffer_a00_t1_c1 = ~C_01 ;
	case ( { C_01 , buffer_a00_t1_c1 } )
	2'b10 :
		buffer_a00_t1 = in0 ;	// line#=../../ave8_sw.c:33
	2'b01 :
		buffer_a00_t1 = RG_buffer ;
	default :
		buffer_a00_t1 = 8'hx ;
	endcase
	end
always @ ( RG_buffer_3 or C_01 or RG_buffer_2 )	// line#=../../ave8_sw.c:27
	begin
	buffer_a03_t1_c1 = ~C_01 ;
	case ( { C_01 , buffer_a03_t1_c1 } )
	2'b10 :
		buffer_a03_t1 = RG_buffer_2 ;	// line#=../../ave8_sw.c:29
	2'b01 :
		buffer_a03_t1 = RG_buffer_3 ;
	default :
		buffer_a03_t1 = 8'hx ;
	endcase
	end
always @ ( RG_buffer_4 or C_01 or RG_buffer_3 )	// line#=../../ave8_sw.c:27
	begin
	buffer_a04_t1_c1 = ~C_01 ;
	case ( { C_01 , buffer_a04_t1_c1 } )
	2'b10 :
		buffer_a04_t1 = RG_buffer_3 ;	// line#=../../ave8_sw.c:29
	2'b01 :
		buffer_a04_t1 = RG_buffer_4 ;
	default :
		buffer_a04_t1 = 8'hx ;
	endcase
	end
always @ ( RG_buffer_1 or C_01 or RG_buffer )	// line#=../../ave8_sw.c:27
	begin
	buffer_a01_t1_c1 = ~C_01 ;
	case ( { C_01 , buffer_a01_t1_c1 } )
	2'b10 :
		buffer_a01_t1 = RG_buffer ;	// line#=../../ave8_sw.c:29
	2'b01 :
		buffer_a01_t1 = RG_buffer_1 ;
	default :
		buffer_a01_t1 = 8'hx ;
	endcase
	end
always @ ( RG_buffer_2 or C_01 or RG_buffer_1 )	// line#=../../ave8_sw.c:27
	begin
	buffer_a02_t1_c1 = ~C_01 ;
	case ( { C_01 , buffer_a02_t1_c1 } )
	2'b10 :
		buffer_a02_t1 = RG_buffer_1 ;	// line#=../../ave8_sw.c:29
	2'b01 :
		buffer_a02_t1 = RG_buffer_2 ;
	default :
		buffer_a02_t1 = 8'hx ;
	endcase
	end
always @ ( RG_buffer_7 or C_01 or RG_buffer_6 )	// line#=../../ave8_sw.c:27
	begin
	buffer_a07_t1_c1 = ~C_01 ;
	case ( { C_01 , buffer_a07_t1_c1 } )
	2'b10 :
		buffer_a07_t1 = RG_buffer_6 ;	// line#=../../ave8_sw.c:29
	2'b01 :
		buffer_a07_t1 = RG_buffer_7 ;
	default :
		buffer_a07_t1 = 8'hx ;
	endcase
	end
always @ ( RG_buffer_5 or C_01 or RG_buffer_4 )	// line#=../../ave8_sw.c:27
	begin
	buffer_a05_t1_c1 = ~C_01 ;
	case ( { C_01 , buffer_a05_t1_c1 } )
	2'b10 :
		buffer_a05_t1 = RG_buffer_4 ;	// line#=../../ave8_sw.c:29
	2'b01 :
		buffer_a05_t1 = RG_buffer_5 ;
	default :
		buffer_a05_t1 = 8'hx ;
	endcase
	end
always @ ( RG_buffer_6 or C_01 or RG_buffer_5 )	// line#=../../ave8_sw.c:27
	begin
	buffer_a06_t1_c1 = ~C_01 ;
	case ( { C_01 , buffer_a06_t1_c1 } )
	2'b10 :
		buffer_a06_t1 = RG_buffer_5 ;	// line#=../../ave8_sw.c:29
	2'b01 :
		buffer_a06_t1 = RG_buffer_6 ;
	default :
		buffer_a06_t1 = 8'hx ;
	endcase
	end
assign	add8u2i1 = buffer_a05_t1 ;	// line#=../../ave8_sw.c:40
assign	add8u2i2 = buffer_a06_t1 ;	// line#=../../ave8_sw.c:40
assign	add12u_11_111i1 = add12u_11_101ot ;	// line#=../../ave8_sw.c:40
assign	add12u_11_111i2 = add8u2ot ;	// line#=../../ave8_sw.c:40
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:36,40,44,47
	if ( RESET )
		ave8_ret_r <= 8'h00 ;
	else
		ave8_ret_r <= add12u_111ot [0:7] ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		RG_buffer_6 <= 8'h00 ;
	else
		RG_buffer_6 <= buffer_a06_t1 ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		RG_buffer_5 <= 8'h00 ;
	else
		RG_buffer_5 <= buffer_a05_t1 ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		RG_buffer_7 <= 8'h00 ;
	else
		RG_buffer_7 <= buffer_a07_t1 ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		RG_buffer_2 <= 8'h00 ;
	else
		RG_buffer_2 <= buffer_a02_t1 ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		RG_buffer_1 <= 8'h00 ;
	else
		RG_buffer_1 <= buffer_a01_t1 ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		RG_buffer_4 <= 8'h00 ;
	else
		RG_buffer_4 <= buffer_a04_t1 ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		RG_buffer_3 <= 8'h00 ;
	else
		RG_buffer_3 <= buffer_a03_t1 ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		RG_buffer <= 8'h00 ;
	else
		RG_buffer <= buffer_a00_t1 ;
assign	add8u1i1 = buffer_a07_t1 ;	// line#=../../ave8_sw.c:36,40
assign	add8u1i2 = buffer_a00_t1 ;	// line#=../../ave8_sw.c:36,40
assign	add12u_111i1 = add12u_11_111ot ;	// line#=../../ave8_sw.c:36,40
assign	add12u_111i2 = add8u1ot ;	// line#=../../ave8_sw.c:36,40
assign	add8u3i1 = buffer_a03_t1 ;	// line#=../../ave8_sw.c:40
assign	add8u3i2 = buffer_a04_t1 ;	// line#=../../ave8_sw.c:40
assign	add8u4i1 = buffer_a01_t1 ;	// line#=../../ave8_sw.c:40
assign	add8u4i2 = buffer_a02_t1 ;	// line#=../../ave8_sw.c:40
assign	add12u_11_101i1 = add8u4ot ;	// line#=../../ave8_sw.c:40
assign	add12u_11_101i2 = add8u3ot ;	// line#=../../ave8_sw.c:40

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
