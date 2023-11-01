// verilog_out version 6.89.1
// options:  veriloggen -EE ave8_E.IFF
// bdlpars options:  -EE -I../.. -I/proj/cad/cwb-6.1/linux_x86_64/include -info_base_name ave8_7seg ../../ave8_7seg.c -process=ave8
// bdltran options:  -EE -c2000 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Fr- -Zsync -Zdup_reset=YES -Zfolding_sharing=inter_stage -Zcdfgdraw -EE -lb /proj/cad/cwb-6.1/packages/cycloneV.BLIB -lfl /proj/cad/cwb-6.1/packages/cycloneV.FLIB +lfl ave8-amacro-auto.FLIB +lfl ave8-auto.FLIB -lfc ave8-auto.FCNT +lfc ave8-amacro-auto.FCNT -lml ave8-auto.MLIB -lmc ave8-auto.MCNT ave8.IFF 
// timestamp_0: 20231029223719_17970_69083
// timestamp_5: 20231029224110_27524_73210
// timestamp_9: 20231029224113_27524_95371
// timestamp_C: 20231029224111_27524_51449
// timestamp_E: 20231029224113_27524_70172
// timestamp_V: 20231029224114_27765_35951

module ave8 ( in0 ,hold ,ave8_ret ,CLOCK ,RESET );
input	[0:7]	in0 ;	// line#=../../ave8_7seg.c:20
input		hold ;	// line#=../../ave8_7seg.c:20
output	[0:31]	ave8_ret ;	// line#=../../ave8_7seg.c:20
input		CLOCK ;
input		RESET ;
wire		ST1_01d ;
wire		ST1_02d ;
wire		ST1_03d ;
wire		ST1_04d ;
wire		ST1_05d ;
wire		ST1_06d ;
wire		ST1_07d ;
wire		ST1_08d ;
wire		ST1_09d ;
wire		lop24u_11ot ;

ave8_fsm INST_fsm ( .CLOCK(CLOCK) ,.RESET(RESET) ,.ST1_09d(ST1_09d) ,.ST1_08d(ST1_08d) ,
	.ST1_07d(ST1_07d) ,.ST1_06d(ST1_06d) ,.ST1_05d(ST1_05d) ,.ST1_04d(ST1_04d) ,
	.ST1_03d(ST1_03d) ,.ST1_02d(ST1_02d) ,.ST1_01d(ST1_01d) ,.hold(hold) ,.lop24u_11ot(lop24u_11ot) );
ave8_dat INST_dat ( .in0(in0) ,.hold(hold) ,.ave8_ret(ave8_ret) ,.CLOCK(CLOCK) ,
	.RESET(RESET) ,.ST1_09d(ST1_09d) ,.ST1_08d(ST1_08d) ,.ST1_07d(ST1_07d) ,
	.ST1_06d(ST1_06d) ,.ST1_05d(ST1_05d) ,.ST1_04d(ST1_04d) ,.ST1_03d(ST1_03d) ,
	.ST1_02d(ST1_02d) ,.ST1_01d(ST1_01d) ,.lop24u_11ot_port(lop24u_11ot) );

endmodule

module ave8_fsm ( CLOCK ,RESET ,ST1_09d ,ST1_08d ,ST1_07d ,ST1_06d ,ST1_05d ,ST1_04d ,
	ST1_03d ,ST1_02d ,ST1_01d ,hold ,lop24u_11ot );
input		CLOCK ;
input		RESET ;
output		ST1_09d ;
output		ST1_08d ;
output		ST1_07d ;
output		ST1_06d ;
output		ST1_05d ;
output		ST1_04d ;
output		ST1_03d ;
output		ST1_02d ;
output		ST1_01d ;
input		hold ;	// line#=../../ave8_7seg.c:20
input		lop24u_11ot ;
reg	[0:3]	B01_streg ;

parameter	ST1_01 = 4'h0 ;
parameter	ST1_02 = 4'h1 ;
parameter	ST1_03 = 4'h2 ;
parameter	ST1_04 = 4'h3 ;
parameter	ST1_05 = 4'h4 ;
parameter	ST1_06 = 4'h5 ;
parameter	ST1_07 = 4'h6 ;
parameter	ST1_08 = 4'h7 ;
parameter	ST1_09 = 4'h8 ;

assign	ST1_01d = ( ( B01_streg == ST1_01 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_02d = ( ( B01_streg == ST1_02 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_03d = ( ( B01_streg == ST1_03 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_04d = ( ( B01_streg == ST1_04 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_05d = ( ( B01_streg == ST1_05 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_06d = ( ( B01_streg == ST1_06 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_07d = ( ( B01_streg == ST1_07 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_08d = ( ( B01_streg == ST1_08 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_09d = ( ( B01_streg == ST1_09 ) ? 1'h1 : 1'h0 ) ;
always @ ( posedge CLOCK )
	if ( !RESET )
		B01_streg <= ST1_01 ;
	else
		case ( B01_streg )
		ST1_01 :
			if ( ( ( ~hold ) != 1'h0 ) )
				B01_streg <= ST1_02 ;
			else
				B01_streg <= ST1_09 ;
		ST1_02 :
			if ( ( lop24u_11ot != 1'h0 ) )
				B01_streg <= ST1_02 ;
			else
				B01_streg <= ST1_03 ;
		ST1_03 :
			if ( ( lop24u_11ot != 1'h0 ) )
				B01_streg <= ST1_03 ;
			else
				B01_streg <= ST1_04 ;
		ST1_04 :
			if ( ( lop24u_11ot != 1'h0 ) )
				B01_streg <= ST1_04 ;
			else
				B01_streg <= ST1_05 ;
		ST1_05 :
			if ( ( lop24u_11ot != 1'h0 ) )
				B01_streg <= ST1_05 ;
			else
				B01_streg <= ST1_06 ;
		ST1_06 :
			if ( ( lop24u_11ot != 1'h0 ) )
				B01_streg <= ST1_06 ;
			else
				B01_streg <= ST1_07 ;
		ST1_07 :
			if ( ( lop24u_11ot != 1'h0 ) )
				B01_streg <= ST1_07 ;
			else
				B01_streg <= ST1_08 ;
		ST1_08 :
			if ( ( lop24u_11ot != 1'h0 ) )
				B01_streg <= ST1_08 ;
			else
				B01_streg <= ST1_09 ;
		ST1_09 :
			B01_streg <= ST1_01 ;
		default :
			B01_streg <= ST1_01 ;
		endcase

endmodule

module ave8_dat ( in0 ,hold ,ave8_ret ,CLOCK ,RESET ,ST1_09d ,ST1_08d ,ST1_07d ,
	ST1_06d ,ST1_05d ,ST1_04d ,ST1_03d ,ST1_02d ,ST1_01d ,lop24u_11ot_port );
input	[0:7]	in0 ;	// line#=../../ave8_7seg.c:20
input		hold ;	// line#=../../ave8_7seg.c:20
output	[0:31]	ave8_ret ;	// line#=../../ave8_7seg.c:20
input		CLOCK ;
input		RESET ;
input		ST1_09d ;
input		ST1_08d ;
input		ST1_07d ;
input		ST1_06d ;
input		ST1_05d ;
input		ST1_04d ;
input		ST1_03d ;
input		ST1_02d ;
input		ST1_01d ;
output		lop24u_11ot_port ;
wire		U_30 ;
wire	[0:8]	add12u_11_101i2 ;
wire	[0:8]	add12u_11_101i1 ;
wire	[0:9]	add12u_11_101ot ;
wire	[0:8]	add12u_11_111i2 ;
wire	[0:9]	add12u_11_111i1 ;
wire	[0:10]	add12u_11_111ot ;
wire	[0:23]	incr24u1i1 ;
wire	[0:23]	incr24u1ot ;
wire	[0:23]	lop24u_11i2 ;
wire	[0:23]	lop24u_11i1 ;
wire		lop24u_11ot ;
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
wire		ave8_ret_r_en ;
wire		RG_buffer_7_en ;
reg	[0:7]	RG_buffer ;	// line#=../../ave8_7seg.c:16
reg	[0:7]	RG_buffer_1 ;	// line#=../../ave8_7seg.c:16
reg	[0:7]	RG_buffer_2 ;	// line#=../../ave8_7seg.c:16
reg	[0:7]	RG_buffer_3 ;	// line#=../../ave8_7seg.c:16
reg	[0:7]	RG_buffer_4 ;	// line#=../../ave8_7seg.c:16
reg	[0:7]	RG_buffer_5 ;	// line#=../../ave8_7seg.c:16
reg	[0:7]	RG_buffer_6 ;	// line#=../../ave8_7seg.c:16
reg	[0:7]	RG_buffer_7 ;	// line#=../../ave8_7seg.c:16,20
reg	[0:23]	RG_r ;	// line#=../../ave8_7seg.c:25
reg	[0:31]	ave8_ret_r ;	// line#=../../ave8_7seg.c:20
reg	[0:19]	M_14_t ;
reg	[0:5]	M_15_t ;
reg	[0:7]	RG_buffer_7_t ;
reg	RG_buffer_7_t_c1 ;
reg	[0:23]	RG_r_t ;
reg	RG_r_t_c1 ;
reg	RG_r_t_c2 ;

ave8_add12u_11_10 INST_add12u_11_10_1 ( .i1(add12u_11_101i1) ,.i2(add12u_11_101i2) ,
	.o1(add12u_11_101ot) );	// line#=../../ave8_7seg.c:47
ave8_add12u_11_11 INST_add12u_11_11_1 ( .i1(add12u_11_111i1) ,.i2(add12u_11_111i2) ,
	.o1(add12u_11_111ot) );	// line#=../../ave8_7seg.c:47
ave8_incr24u INST_incr24u_1 ( .i1(incr24u1i1) ,.o1(incr24u1ot) );	// line#=../../ave8_7seg.c:34
ave8_lop24u_1 INST_lop24u_1_1 ( .i1(lop24u_11i1) ,.i2(lop24u_11i2) ,.o1(lop24u_11ot) );	// line#=../../ave8_7seg.c:34
assign	lop24u_11ot_port = lop24u_11ot ;
ave8_add12u_11 INST_add12u_11_1 ( .i1(add12u_111i1) ,.i2(add12u_111i2) ,.o1(add12u_111ot) );	// line#=../../ave8_7seg.c:43,47
ave8_add8u INST_add8u_1 ( .i1(add8u1i1) ,.i2(add8u1i2) ,.o1(add8u1ot) );	// line#=../../ave8_7seg.c:43,47
ave8_add8u INST_add8u_2 ( .i1(add8u2i1) ,.i2(add8u2i2) ,.o1(add8u2ot) );	// line#=../../ave8_7seg.c:47
ave8_add8u INST_add8u_3 ( .i1(add8u3i1) ,.i2(add8u3i2) ,.o1(add8u3ot) );	// line#=../../ave8_7seg.c:47
ave8_add8u INST_add8u_4 ( .i1(add8u4i1) ,.i2(add8u4i2) ,.o1(add8u4ot) );	// line#=../../ave8_7seg.c:47
assign	ave8_ret = ave8_ret_r ;	// line#=../../ave8_7seg.c:20
always @ ( add12u_111ot )	// line#=../../ave8_7seg.c:43,47,51,53
	case ( add12u_111ot [0:7] )
	8'h00 :
		M_14_t = 20'h02040 ;
	8'h01 :
		M_14_t = 20'h9e040 ;
	8'h02 :
		M_14_t = 20'h24040 ;
	8'h03 :
		M_14_t = 20'h0c040 ;
	8'h04 :
		M_14_t = 20'h98040 ;
	8'h05 :
		M_14_t = 20'h48040 ;
	8'h06 :
		M_14_t = 20'h40040 ;
	8'h07 :
		M_14_t = 20'h1e040 ;
	8'h08 :
		M_14_t = 20'h00040 ;
	8'h09 :
		M_14_t = 20'h08040 ;
	8'h0a :
		M_14_t = 20'h033c0 ;
	8'h0b :
		M_14_t = 20'h9f3c0 ;
	8'h0c :
		M_14_t = 20'h253c0 ;
	8'h0d :
		M_14_t = 20'h0d3c0 ;
	8'h0e :
		M_14_t = 20'h993c0 ;
	8'h0f :
		M_14_t = 20'h493c0 ;
	8'h10 :
		M_14_t = 20'h413c0 ;
	8'h11 :
		M_14_t = 20'h1f3c0 ;
	8'h12 :
		M_14_t = 20'h013c0 ;
	8'h13 :
		M_14_t = 20'h093c0 ;
	8'h14 :
		M_14_t = 20'h48480 ;
	default :
		M_14_t = 20'hfffff ;
	endcase
always @ ( add12u_111ot )	// line#=../../ave8_7seg.c:43,47,51,53
	case ( add12u_111ot [0:7] )
	8'h00 :
		M_15_t = 6'h00 ;
	8'h01 :
		M_15_t = 6'h00 ;
	8'h02 :
		M_15_t = 6'h00 ;
	8'h03 :
		M_15_t = 6'h00 ;
	8'h04 :
		M_15_t = 6'h00 ;
	8'h05 :
		M_15_t = 6'h00 ;
	8'h06 :
		M_15_t = 6'h00 ;
	8'h07 :
		M_15_t = 6'h00 ;
	8'h08 :
		M_15_t = 6'h00 ;
	8'h09 :
		M_15_t = 6'h00 ;
	8'h0a :
		M_15_t = 6'h00 ;
	8'h0b :
		M_15_t = 6'h00 ;
	8'h0c :
		M_15_t = 6'h00 ;
	8'h0d :
		M_15_t = 6'h00 ;
	8'h0e :
		M_15_t = 6'h00 ;
	8'h0f :
		M_15_t = 6'h00 ;
	8'h10 :
		M_15_t = 6'h00 ;
	8'h11 :
		M_15_t = 6'h00 ;
	8'h12 :
		M_15_t = 6'h00 ;
	8'h13 :
		M_15_t = 6'h00 ;
	8'h14 :
		M_15_t = 6'h00 ;
	default :
		M_15_t = 6'h3f ;
	endcase
assign	add8u1i1 = RG_buffer_7 ;	// line#=../../ave8_7seg.c:43,47
assign	add8u1i2 = RG_buffer ;	// line#=../../ave8_7seg.c:43,47
assign	add8u2i1 = RG_buffer_5 ;	// line#=../../ave8_7seg.c:47
assign	add8u2i2 = RG_buffer_6 ;	// line#=../../ave8_7seg.c:47
assign	add8u3i1 = RG_buffer_3 ;	// line#=../../ave8_7seg.c:47
assign	add8u3i2 = RG_buffer_4 ;	// line#=../../ave8_7seg.c:47
assign	add8u4i1 = RG_buffer_1 ;	// line#=../../ave8_7seg.c:47
assign	add8u4i2 = RG_buffer_2 ;	// line#=../../ave8_7seg.c:47
assign	add12u_111i1 = add12u_11_111ot ;	// line#=../../ave8_7seg.c:43,47
assign	add12u_111i2 = add8u1ot ;	// line#=../../ave8_7seg.c:43,47
assign	add12u_11_111i1 = add12u_11_101ot ;	// line#=../../ave8_7seg.c:47
assign	add12u_11_111i2 = add8u2ot ;	// line#=../../ave8_7seg.c:47
assign	add12u_11_101i1 = add8u4ot ;	// line#=../../ave8_7seg.c:47
assign	add12u_11_101i2 = add8u3ot ;	// line#=../../ave8_7seg.c:47
assign	U_30 = ( ST1_08d & ( ~lop24u_11ot ) ) ;	// line#=../../ave8_7seg.c:34
assign	RG_buffer_en = U_30 ;
always @ ( posedge CLOCK )	// line#=../../ave8_7seg.c:40
	if ( !RESET )
		RG_buffer <= 8'h00 ;
	else if ( RG_buffer_en )
		RG_buffer <= RG_buffer_7 ;
assign	RG_buffer_1_en = U_30 ;
always @ ( posedge CLOCK )
	if ( !RESET )
		RG_buffer_1 <= 8'h00 ;
	else if ( RG_buffer_1_en )
		RG_buffer_1 <= RG_buffer ;
assign	RG_buffer_2_en = U_30 ;
always @ ( posedge CLOCK )
	if ( !RESET )
		RG_buffer_2 <= 8'h00 ;
	else if ( RG_buffer_2_en )
		RG_buffer_2 <= RG_buffer_1 ;
assign	RG_buffer_3_en = U_30 ;
always @ ( posedge CLOCK )
	if ( !RESET )
		RG_buffer_3 <= 8'h00 ;
	else if ( RG_buffer_3_en )
		RG_buffer_3 <= RG_buffer_2 ;
assign	RG_buffer_4_en = U_30 ;
always @ ( posedge CLOCK )
	if ( !RESET )
		RG_buffer_4 <= 8'h00 ;
	else if ( RG_buffer_4_en )
		RG_buffer_4 <= RG_buffer_3 ;
assign	RG_buffer_5_en = U_30 ;
always @ ( posedge CLOCK )
	if ( !RESET )
		RG_buffer_5 <= 8'h00 ;
	else if ( RG_buffer_5_en )
		RG_buffer_5 <= RG_buffer_4 ;
assign	RG_buffer_6_en = U_30 ;
always @ ( posedge CLOCK )
	if ( !RESET )
		RG_buffer_6 <= 8'h00 ;
	else if ( RG_buffer_6_en )
		RG_buffer_6 <= RG_buffer_5 ;
always @ ( U_30 or RG_buffer_6 or hold or ST1_01d or in0 )	// line#=../../ave8_7seg.c:30
	begin
	RG_buffer_7_t_c1 = ( ST1_01d & ( ~hold ) ) ;
	case ( { RG_buffer_7_t_c1 , U_30 } )
	2'b10 :
		RG_buffer_7_t = in0 ;
	2'b01 :
		RG_buffer_7_t = RG_buffer_6 ;
	default :
		RG_buffer_7_t = 8'hx ;
	endcase
	end
assign	RG_buffer_7_en = ( RG_buffer_7_t_c1 | U_30 ) ;	// line#=../../ave8_7seg.c:30
always @ ( posedge CLOCK )	// line#=../../ave8_7seg.c:30
	if ( !RESET )
		RG_buffer_7 <= 8'h00 ;
	else if ( RG_buffer_7_en )
		RG_buffer_7 <= RG_buffer_7_t ;	// line#=../../ave8_7seg.c:30
always @ ( ST1_08d or incr24u1ot or ST1_07d or ST1_06d or ST1_05d or ST1_04d or 
	ST1_03d or lop24u_11ot or ST1_02d or ST1_01d )	// line#=../../ave8_7seg.c:34
	begin
	RG_r_t_c1 = ( ( ( ( ( ( ST1_01d | ( ST1_02d & ( ~lop24u_11ot ) ) ) | ( ST1_03d & ( 
		~lop24u_11ot ) ) ) | ( ST1_04d & ( ~lop24u_11ot ) ) ) | ( ST1_05d & ( 
		~lop24u_11ot ) ) ) | ( ST1_06d & ( ~lop24u_11ot ) ) ) | ( ST1_07d & ( 
		~lop24u_11ot ) ) ) ;	// line#=../../ave8_7seg.c:34
	RG_r_t_c2 = ( ( ( ( ( ( ( ST1_02d & lop24u_11ot ) | ( ST1_03d & lop24u_11ot ) ) | 
		( ST1_04d & lop24u_11ot ) ) | ( ST1_05d & lop24u_11ot ) ) | ( ST1_06d & 
		lop24u_11ot ) ) | ( ST1_07d & lop24u_11ot ) ) | ST1_08d ) ;	// line#=../../ave8_7seg.c:34
	case ( { RG_r_t_c1 , RG_r_t_c2 } )
	2'b10 :
		RG_r_t = 24'h000000 ;	// line#=../../ave8_7seg.c:34
	2'b01 :
		RG_r_t = incr24u1ot ;	// line#=../../ave8_7seg.c:34
	default :
		RG_r_t = 24'hx ;
	endcase
	end
always @ ( posedge CLOCK )	// line#=../../ave8_7seg.c:34
	RG_r <= RG_r_t ;	// line#=../../ave8_7seg.c:34
assign	ave8_ret_r_en = ST1_09d ;
always @ ( posedge CLOCK )	// line#=../../ave8_7seg.c:101
	if ( !RESET )
		ave8_ret_r <= 32'h00000000 ;
	else if ( ave8_ret_r_en )
		ave8_ret_r <= { M_14_t , 1'h1 , M_15_t , 5'h1f } ;
assign	lop24u_11i1 = incr24u1ot ;	// line#=../../ave8_7seg.c:34
assign	lop24u_11i2 = 24'ha98670 ;	// line#=../../ave8_7seg.c:34
assign	incr24u1i1 = RG_r ;	// line#=../../ave8_7seg.c:34

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

module ave8_incr24u ( i1 ,o1 );
input	[0:23]	i1 ;
output	[0:23]	o1 ;

assign	o1 = ( i1 + 1'h1 ) ;

endmodule

module ave8_lop24u_1 ( i1 ,i2 ,o1 );
input	[0:23]	i1 ;
input	[0:23]	i2 ;
output		o1 ;
wire		M_01 ;

assign	M_01 = ( i1 < i2 ) ;
assign	o1 = M_01 ;

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

assign o1 = ( { 1'h0 , i1 } + { 1'h0 , i2 });

endmodule 