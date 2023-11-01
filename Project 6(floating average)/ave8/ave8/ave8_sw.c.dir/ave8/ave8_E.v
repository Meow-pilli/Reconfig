// verilog_out version 6.89.1
// options:  veriloggen -EE ave8_E.IFF
// bdlpars options:  -EE -I../.. -I/proj/cad/cwb-6.1/linux_x86_64/include -info_base_name ave8_sw ../../ave8_sw.c -process=ave8
// bdltran options:  -EE -c1000 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Zdup_reset=YES -Zfolding_sharing=inter_stage -EE -lb /proj/cad/cwb-6.1/packages/cycloneV.BLIB -lfl /proj/cad/cwb-6.1/packages/cycloneV.FLIB +lfl ave8-amacro-auto.FLIB +lfl ave8-auto.FLIB -lfc ave8-auto.FCNT +lfc ave8-amacro-auto.FCNT -lml ave8-auto.MLIB -lmc ave8-auto.MCNT ave8.IFF 
// timestamp_0: 20231030011647_09682_98903
// timestamp_5: 20231030011652_10003_86532
// timestamp_9: 20231030011653_10003_94121
// timestamp_C: 20231030011653_10003_49122
// timestamp_E: 20231030011653_10003_70023
// timestamp_V: 20231030011655_10246_83962

module ave8 ( in0 ,enable ,ave8_ret ,CLOCK ,RESET );
input	[0:7]	in0 ;	// line#=../../ave8_sw.c:22
input		enable ;	// line#=../../ave8_sw.c:22
output	[0:7]	ave8_ret ;	// line#=../../ave8_sw.c:22
input		CLOCK ;
input		RESET ;
wire		ST1_01d ;
wire		ST1_02d ;
wire		ST1_03d ;

ave8_fsm INST_fsm ( .CLOCK(CLOCK) ,.RESET(RESET) ,.ST1_03d(ST1_03d) ,.ST1_02d(ST1_02d) ,
	.ST1_01d(ST1_01d) ,.enable(enable) );
ave8_dat INST_dat ( .in0(in0) ,.enable(enable) ,.ave8_ret(ave8_ret) ,.CLOCK(CLOCK) ,
	.RESET(RESET) ,.ST1_03d(ST1_03d) ,.ST1_02d(ST1_02d) ,.ST1_01d(ST1_01d) );

endmodule

module ave8_fsm ( CLOCK ,RESET ,ST1_03d ,ST1_02d ,ST1_01d ,enable );
input		CLOCK ;
input		RESET ;
output		ST1_03d ;
output		ST1_02d ;
output		ST1_01d ;
input		enable ;	// line#=../../ave8_sw.c:22
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
			if ( ( ( ~enable ) != 1'h0 ) )
				B01_streg <= ST1_02 ;
			else
				B01_streg <= ST1_03 ;
		ST1_02 :
			B01_streg <= ST1_02 ;
		ST1_03 :
			B01_streg <= ST1_01 ;
		default :
			B01_streg <= ST1_01 ;
		endcase

endmodule

module ave8_dat ( in0 ,enable ,ave8_ret ,CLOCK ,RESET ,ST1_03d ,ST1_02d ,ST1_01d );
input	[0:7]	in0 ;	// line#=../../ave8_sw.c:22
input		enable ;	// line#=../../ave8_sw.c:22
output	[0:7]	ave8_ret ;	// line#=../../ave8_sw.c:22
input		CLOCK ;
input		RESET ;
input		ST1_03d ;
input		ST1_02d ;
input		ST1_01d ;
wire		U_06 ;
wire		U_02 ;
wire		U_01 ;
wire	[0:7]	add12u_11_10_11i2 ;
wire	[0:8]	add12u_11_10_11i1 ;
wire	[0:9]	add12u_11_10_11ot ;
wire	[0:8]	add12u_11_101i2 ;
wire	[0:8]	add12u_11_101i1 ;
wire	[0:9]	add12u_11_101ot ;
wire	[0:9]	add12u_11_111i2 ;
wire	[0:9]	add12u_11_111i1 ;
wire	[0:10]	add12u_11_111ot ;
wire	[0:24]	decr28u_241i1 ;
wire	[0:23]	decr28u_241ot ;
wire	[0:2]	decr3s1i1 ;
wire	[0:2]	decr3s1ot ;
wire	[0:23]	incr24u1i1 ;
wire	[0:24]	incr24u1ot ;
wire	[0:23]	lop28u_11i2 ;
wire	[0:24]	lop28u_11i1 ;
wire		lop28u_11ot ;
wire	[0:7]	add12u_111i2 ;
wire	[0:10]	add12u_111i1 ;
wire	[0:10]	add12u_111ot ;
wire	[0:7]	add8u3i2 ;
wire	[0:7]	add8u3i1 ;
wire	[0:8]	add8u3ot ;
wire	[0:7]	add8u2i2 ;
wire	[0:7]	add8u2i1 ;
wire	[0:8]	add8u2ot ;
wire	[0:7]	add8u1i2 ;
wire	[0:7]	add8u1i1 ;
wire	[0:8]	add8u1ot ;
wire		buffer_WE8 ;
wire	[0:7]	buffer_RD3 ;
wire	[0:7]	buffer_RD1 ;
wire		ave8_ret_r_en ;
reg	[0:23]	RG_i ;	// line#=../../ave8_sw.c:26
reg	[0:7]	RG_out0_v ;	// line#=../../ave8_sw.c:26
reg	[0:7]	ave8_ret_r ;	// line#=../../ave8_sw.c:22
reg	[0:23]	RG_i_t ;
reg	RG_i_t_c1 ;
reg	RG_i_t_c2 ;
reg	[0:2]	buffer_RA1 ;
reg	[0:2]	buffer_WA8 ;
reg	[0:7]	buffer_WD8 ;

ave8_add12u_11_10_1 INST_add12u_11_10_1_1 ( .i1(add12u_11_10_11i1) ,.i2(add12u_11_10_11i2) ,
	.o1(add12u_11_10_11ot) );	// line#=../../ave8_sw.c:41,47,51
ave8_add12u_11_10 INST_add12u_11_10_1 ( .i1(add12u_11_101i1) ,.i2(add12u_11_101i2) ,
	.o1(add12u_11_101ot) );	// line#=../../ave8_sw.c:51
ave8_add12u_11_11 INST_add12u_11_11_1 ( .i1(add12u_11_111i1) ,.i2(add12u_11_111i2) ,
	.o1(add12u_11_111ot) );	// line#=../../ave8_sw.c:41,47,51
ave8_decr28u_24 INST_decr28u_24_1 ( .i1(decr28u_241i1) ,.o1(decr28u_241ot) );	// line#=../../ave8_sw.c:31
ave8_decr3s INST_decr3s_1 ( .i1(decr3s1i1) ,.o1(decr3s1ot) );	// line#=../../ave8_sw.c:32
ave8_incr24u INST_incr24u_1 ( .i1(incr24u1i1) ,.o1(incr24u1ot) );	// line#=../../ave8_sw.c:34
ave8_lop28u_1 INST_lop28u_1_1 ( .i1(lop28u_11i1) ,.i2(lop28u_11i2) ,.o1(lop28u_11ot) );	// line#=../../ave8_sw.c:34
ave8_add12u_11 INST_add12u_11_1 ( .i1(add12u_111i1) ,.i2(add12u_111i2) ,.o1(add12u_111ot) );	// line#=../../ave8_sw.c:51
ave8_add8u INST_add8u_1 ( .i1(add8u1i1) ,.i2(add8u1i2) ,.o1(add8u1ot) );	// line#=../../ave8_sw.c:51
ave8_add8u INST_add8u_2 ( .i1(add8u2i1) ,.i2(add8u2i2) ,.o1(add8u2ot) );	// line#=../../ave8_sw.c:51
ave8_add8u INST_add8u_3 ( .i1(add8u3i1) ,.i2(add8u3i2) ,.o1(add8u3ot) );	// line#=../../ave8_sw.c:41,47,51
assign	ave8_ret = ave8_ret_r ;	// line#=../../ave8_sw.c:22
always @ ( posedge CLOCK )	// line#=../../ave8_sw.c:51,56
	RG_out0_v <= add12u_111ot [0:7] ;
ave8_MEM_buffer buffer ( .RA1(buffer_RA1) ,.RD1(buffer_RD1) ,.RA2(3'h7) ,.RD2(add12u_11_10_11i2) ,
	.RA3(3'h6) ,.RD3(buffer_RD3) ,.RA4(3'h3) ,.RD4(add8u1i1) ,.RA5(3'h4) ,.RD5(add8u1i2) ,
	.RA6(3'h1) ,.RD6(add8u2i1) ,.RA7(3'h2) ,.RD7(add8u2i2) ,.WA8(buffer_WA8) ,
	.WD8(buffer_WD8) ,.WE8(buffer_WE8) ,.WCLK8(CLOCK) );	// line#=../../ave8_sw.c:18
assign	add8u3i1 = buffer_RD1 ;	// line#=../../ave8_sw.c:41,47,51
assign	add8u3i2 = buffer_RD3 ;	// line#=../../ave8_sw.c:41,47,51
assign	add12u_111i1 = add12u_11_111ot ;	// line#=../../ave8_sw.c:41,47,51
assign	add12u_111i2 = in0 ;	// line#=../../ave8_sw.c:51
assign	lop28u_11i1 = incr24u1ot ;	// line#=../../ave8_sw.c:34
assign	lop28u_11i2 = 24'h895440 ;	// line#=../../ave8_sw.c:34
assign	incr24u1i1 = RG_i ;	// line#=../../ave8_sw.c:34
assign	decr3s1i1 = decr28u_241ot [21:23] ;	// line#=../../ave8_sw.c:31,32
assign	decr28u_241i1 = incr24u1ot ;	// line#=../../ave8_sw.c:31,34
assign	add12u_11_111i1 = add12u_11_101ot ;	// line#=../../ave8_sw.c:41,47,51
assign	add12u_11_111i2 = add12u_11_10_11ot ;	// line#=../../ave8_sw.c:41,47,51
assign	add12u_11_101i1 = add8u2ot ;	// line#=../../ave8_sw.c:51
assign	add12u_11_101i2 = add8u1ot ;	// line#=../../ave8_sw.c:51
assign	add12u_11_10_11i1 = add8u3ot ;	// line#=../../ave8_sw.c:41,47,51
assign	U_01 = ( ST1_01d & ( ~enable ) ) ;	// line#=../../ave8_sw.c:30
assign	U_02 = ( ST1_01d & enable ) ;	// line#=../../ave8_sw.c:30
assign	U_06 = ( ST1_02d & ( ~lop28u_11ot ) ) ;	// line#=../../ave8_sw.c:34
always @ ( lop28u_11ot or ST1_02d or incr24u1ot or U_06 or ST1_01d )	// line#=../../ave8_sw.c:34
	begin
	RG_i_t_c1 = ( ST1_01d | U_06 ) ;	// line#=../../ave8_sw.c:34
	RG_i_t_c2 = ( ST1_02d & lop28u_11ot ) ;	// line#=../../ave8_sw.c:34
	case ( { RG_i_t_c1 , RG_i_t_c2 } )
	2'b10 :
		RG_i_t = 24'h000000 ;	// line#=../../ave8_sw.c:34
	2'b01 :
		RG_i_t = incr24u1ot [1:24] ;	// line#=../../ave8_sw.c:34
	default :
		RG_i_t = 24'hx ;
	endcase
	end
always @ ( posedge CLOCK )	// line#=../../ave8_sw.c:34
	RG_i <= RG_i_t ;	// line#=../../ave8_sw.c:34
assign	ave8_ret_r_en = ST1_03d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:64
	if ( RESET )
		ave8_ret_r <= 8'h00 ;
	else if ( ave8_ret_r_en )
		ave8_ret_r <= RG_out0_v ;
always @ ( U_06 or decr3s1ot or U_02 )
	case ( { U_02 , U_06 } )
	2'b10 :
		buffer_RA1 = 3'h5 ;
	2'b01 :
		buffer_RA1 = decr3s1ot ;	// line#=../../ave8_sw.c:32
	default :
		buffer_RA1 = 3'hx ;
	endcase
always @ ( U_06 or decr28u_241ot or U_01 or U_02 )
	case ( { U_02 , U_01 , U_06 } )
	3'b100 :
		buffer_WA8 = 3'h0 ;	// line#=../../ave8_sw.c:41
	3'b010 :
		buffer_WA8 = 3'h7 ;	// line#=../../ave8_sw.c:32
	3'b001 :
		buffer_WA8 = decr28u_241ot [21:23] ;	// line#=../../ave8_sw.c:31,32
	default :
		buffer_WA8 = 3'hx ;
	endcase
always @ ( U_06 or buffer_RD1 or U_01 or buffer_RD3 or U_02 or in0 )
	case ( { U_02 , U_01 , U_06 } )
	3'b100 :
		buffer_WD8 = in0 ;	// line#=../../ave8_sw.c:41
	3'b010 :
		buffer_WD8 = buffer_RD3 ;	// line#=../../ave8_sw.c:32
	3'b001 :
		buffer_WD8 = buffer_RD1 ;	// line#=../../ave8_sw.c:32
	default :
		buffer_WD8 = 8'hx ;
	endcase
assign	buffer_WE8 = ( ST1_01d | U_06 ) ;

endmodule

module ave8_add12u_11_10_1 ( i1 ,i2 ,o1 );
input	[0:8]	i1 ;
input	[0:7]	i2 ;
output	[0:9]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 2'h0 , i2 } ) ;

endmodule

module ave8_add12u_11_10 ( i1 ,i2 ,o1 );
input	[0:8]	i1 ;
input	[0:8]	i2 ;
output	[0:9]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 1'h0 , i2 } ) ;

endmodule

module ave8_add12u_11_11 ( i1 ,i2 ,o1 );
input	[0:9]	i1 ;
input	[0:9]	i2 ;
output	[0:10]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 1'h0 , i2 } ) ;

endmodule

module ave8_decr28u_24 ( i1 ,o1 );
input	[0:24]	i1 ;
output	[0:23]	o1 ;

assign	o1 = ( i1 - 1'h1 ) ;

endmodule

module ave8_decr3s ( i1 ,o1 );
input	[0:2]	i1 ;
output	[0:2]	o1 ;

assign	o1 = ( i1 - 1'h1 ) ;

endmodule

module ave8_incr24u ( i1 ,o1 );
input	[0:23]	i1 ;
output	[0:24]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + 1'h1 ) ;

endmodule

module ave8_lop28u_1 ( i1 ,i2 ,o1 );
input	[0:24]	i1 ;
input	[0:23]	i2 ;
output		o1 ;
wire		M_01 ;

assign	M_01 = ( i1 < i2 ) ;
assign	o1 = M_01 ;

endmodule

module ave8_add12u_11 ( i1 ,i2 ,o1 );
input	[0:10]	i1 ;
input	[0:7]	i2 ;
output	[0:10]	o1 ;

assign	o1 = ( i1 + { 3'h0 , i2 } ) ;

endmodule

module ave8_add8u ( i1 ,i2 ,o1 );
input	[0:7]	i1 ;
input	[0:7]	i2 ;
output	[0:8]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 1'h0 , i2 } ) ;

endmodule

module ave8_MEM_buffer ( RA1 ,RD1 ,RA2 ,RD2 ,RA3 ,RD3 ,RA4 ,RD4 ,RA5 ,RD5 ,RA6 ,
	RD6 ,RA7 ,RD7 ,WA8 ,WD8 ,WE8 ,WCLK8 );
input	[0:2]	RA1 ;
output	[0:7]	RD1 ;
input	[0:2]	RA2 ;
output	[0:7]	RD2 ;
input	[0:2]	RA3 ;
output	[0:7]	RD3 ;
input	[0:2]	RA4 ;
output	[0:7]	RD4 ;
input	[0:2]	RA5 ;
output	[0:7]	RD5 ;
input	[0:2]	RA6 ;
output	[0:7]	RD6 ;
input	[0:2]	RA7 ;
output	[0:7]	RD7 ;
input	[0:2]	WA8 ;
input	[0:7]	WD8 ;
input		WE8 ;
input		WCLK8 ;

ave8_MEM_buffer_sub INST_MEM_buffer_sub_1 ( .RD1(RD1) ,.WE8(WE8) ,.WD8(WD8) ,.RA1(RA1) ,
	.WA8(WA8) ,.WCLK8(WCLK8) );
ave8_MEM_buffer_sub INST_MEM_buffer_sub_2 ( .RD1(RD2) ,.WE8(WE8) ,.WD8(WD8) ,.RA1(RA2) ,
	.WA8(WA8) ,.WCLK8(WCLK8) );
ave8_MEM_buffer_sub INST_MEM_buffer_sub_3 ( .RD1(RD3) ,.WE8(WE8) ,.WD8(WD8) ,.RA1(RA3) ,
	.WA8(WA8) ,.WCLK8(WCLK8) );
ave8_MEM_buffer_sub INST_MEM_buffer_sub_4 ( .RD1(RD4) ,.WE8(WE8) ,.WD8(WD8) ,.RA1(RA4) ,
	.WA8(WA8) ,.WCLK8(WCLK8) );
ave8_MEM_buffer_sub INST_MEM_buffer_sub_5 ( .RD1(RD5) ,.WE8(WE8) ,.WD8(WD8) ,.RA1(RA5) ,
	.WA8(WA8) ,.WCLK8(WCLK8) );
ave8_MEM_buffer_sub INST_MEM_buffer_sub_6 ( .RD1(RD6) ,.WE8(WE8) ,.WD8(WD8) ,.RA1(RA6) ,
	.WA8(WA8) ,.WCLK8(WCLK8) );
ave8_MEM_buffer_sub INST_MEM_buffer_sub_7 ( .RD1(RD7) ,.WE8(WE8) ,.WD8(WD8) ,.RA1(RA7) ,
	.WA8(WA8) ,.WCLK8(WCLK8) );

endmodule

module ave8_MEM_buffer_sub ( RD1 ,WE8 ,WD8 ,RA1 ,WA8 ,WCLK8 );
output	[0:7]	RD1 ;
input		WE8 ;
input	[0:7]	WD8 ;
input	[0:2]	RA1 ;
input	[0:2]	WA8 ;
input		WCLK8 ;
(* ramstyle = "no_rw_check, mlab" *)
reg	[0:7]	buffer_r	[0:7] ;

initial begin
	buffer_r[0] = 8'h00;
	buffer_r[1] = 8'h00;
	buffer_r[2] = 8'h00;
	buffer_r[3] = 8'h00;
	buffer_r[4] = 8'h00;
	buffer_r[5] = 8'h00;
	buffer_r[6] = 8'h00;
	buffer_r[7] = 8'h00;
end

assign	RD1 = buffer_r[RA1] ;

always @ ( posedge WCLK8 )
	begin
	if ( WE8 )
		buffer_r [WA8] = WD8 ;
	end

endmodule
