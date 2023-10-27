// verilog_out version 6.89.1
// options:  veriloggen -EE ave8_E.IFF
// bdlpars options:  -EE -I../.. -I/proj/cad/cwb-6.1/linux_x86_64/include -info_base_name ave8_sw ../../ave8_sw.c -process=ave8
// bdltran options:  -EE -c1000 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Zdup_reset=YES -Zfolding_sharing=inter_stage -EE -lb /proj/cad/cwb-6.1/packages/cycloneV.BLIB -lfl /proj/cad/cwb-6.1/packages/cycloneV.FLIB +lfl ave8-amacro-auto.FLIB +lfl ave8-auto.FLIB -lfc ave8-auto.FCNT +lfc ave8-amacro-auto.FCNT -lml ave8-auto.MLIB -lmc ave8-auto.MCNT ave8.IFF 
// timestamp_0: 20231026203506_13708_36161
// timestamp_5: 20231026211200_11744_36370
// timestamp_9: 20231026211201_11744_30706
// timestamp_C: 20231026211201_11744_26189
// timestamp_E: 20231026211201_11744_94977
// timestamp_V: 20231026211202_11847_99114

module ave8(in0 ,seven_display_units, seven_display_tens, seven_display_hun ,CLOCK ,RESET );
	input	[0:7]	in0 ;	// line#=../../ave8_sw.c:20
	output	[0:6]	seven_display_units ;
	output [0:6] seven_display_tens;
	output [0:6] seven_display_hun;	// line#=../../ave8_sw.c:20
	input		CLOCK ;
	input		RESET ;

	wire [0:7]temp; // STORED ave8_ret in temp

	ave8_old u0(.in0(in0), .ave8_ret(temp), .CLOCK(CLOCK), .RESET(RESET));
	seven_display_decoder u1(.in(temp[0:2]), .out(seven_display_units));
	seven_display_decoder u2(.in(temp[3:5]), .out(seven_display_tens));
	seven_display_decoder u3(.in(temp[6:7]), .out(seven_display_hun));

endmodule

module ave8_old ( in0 ,ave8_ret ,CLOCK ,RESET );
input	[0:7]	in0 ;	// line#=../../ave8_sw.c:20
output	[0:7]	ave8_ret ;	// line#=../../ave8_sw.c:20
input		CLOCK ;
input		RESET ;
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
reg	[0:7]	ave8_ret_r ;	// line#=../../ave8_sw.c:20

ave8_add12u_11_10 INST_add12u_11_10_1 ( .i1(add12u_11_101i1) ,.i2(add12u_11_101i2) ,
	.o1(add12u_11_101ot) );	// line#=../../ave8_sw.c:39
ave8_add12u_11_11 INST_add12u_11_11_1 ( .i1(add12u_11_111i1) ,.i2(add12u_11_111i2) ,
	.o1(add12u_11_111ot) );	// line#=../../ave8_sw.c:39
ave8_add12u_11 INST_add12u_11_1 ( .i1(add12u_111i1) ,.i2(add12u_111i2) ,.o1(add12u_111ot) );	// line#=../../ave8_sw.c:28,35,39
ave8_add8u INST_add8u_1 ( .i1(add8u1i1) ,.i2(add8u1i2) ,.o1(add8u1ot) );	// line#=../../ave8_sw.c:28,35,39
ave8_add8u INST_add8u_2 ( .i1(add8u2i1) ,.i2(add8u2i2) ,.o1(add8u2ot) );	// line#=../../ave8_sw.c:39
ave8_add8u INST_add8u_3 ( .i1(add8u3i1) ,.i2(add8u3i2) ,.o1(add8u3ot) );	// line#=../../ave8_sw.c:39
ave8_add8u INST_add8u_4 ( .i1(add8u4i1) ,.i2(add8u4i2) ,.o1(add8u4ot) );	// line#=../../ave8_sw.c:39
assign	ave8_ret = ave8_ret_r ;	// line#=../../ave8_sw.c:20
assign	add8u2i1 = RG_buffer_4 ;	// line#=../../ave8_sw.c:28,39
assign	add8u2i2 = RG_buffer_5 ;	// line#=../../ave8_sw.c:28,39
assign	add12u_11_111i1 = add12u_11_101ot ;	// line#=../../ave8_sw.c:39
assign	add12u_11_111i2 = add8u2ot ;	// line#=../../ave8_sw.c:39
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28,35,39,43,46
	if ( RESET )
		ave8_ret_r <= 8'h00 ;
	else
		ave8_ret_r <= add12u_111ot [0:7] ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:32
	if ( RESET )
		RG_buffer <= 8'h00 ;
	else
		RG_buffer <= in0 ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_1 <= 8'h00 ;
	else
		RG_buffer_1 <= RG_buffer ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_2 <= 8'h00 ;
	else
		RG_buffer_2 <= RG_buffer_1 ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_3 <= 8'h00 ;
	else
		RG_buffer_3 <= RG_buffer_2 ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_4 <= 8'h00 ;
	else
		RG_buffer_4 <= RG_buffer_3 ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_5 <= 8'h00 ;
	else
		RG_buffer_5 <= RG_buffer_4 ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:28
	if ( RESET )
		RG_buffer_6 <= 8'h00 ;
	else
		RG_buffer_6 <= RG_buffer_5 ;
assign	add8u1i1 = RG_buffer_6 ;	// line#=../../ave8_sw.c:28,35,39
assign	add8u1i2 = in0 ;	// line#=../../ave8_sw.c:28,35,39
assign	add12u_111i1 = add12u_11_111ot ;	// line#=../../ave8_sw.c:28,35,39
assign	add12u_111i2 = add8u1ot ;	// line#=../../ave8_sw.c:28,35,39
assign	add8u3i1 = RG_buffer_2 ;	// line#=../../ave8_sw.c:28,39
assign	add8u3i2 = RG_buffer_3 ;	// line#=../../ave8_sw.c:28,39
assign	add8u4i1 = RG_buffer ;	// line#=../../ave8_sw.c:28,39
assign	add8u4i2 = RG_buffer_1 ;	// line#=../../ave8_sw.c:28,39
assign	add12u_11_101i1 = add8u4ot ;	// line#=../../ave8_sw.c:39
assign	add12u_11_101i2 = add8u3ot ;	// line#=../../ave8_sw.c:39

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

module seven_display_decoder(
	input wire [0:2]in,
	output reg [0:6]out
);
always @(*) begin
    case(in)
        3'b000: out = 7'b1000000; // Display 0
        3'b001: out = 7'b1111001; // Display 1
        3'b010: out = 7'b0100100; // Display 2
        3'b011: out = 7'b0110000; // Display 3
        3'b100: out = 7'b0011001; // Display 4
        3'b101: out = 7'b0010010; // Display 5
        3'b110: out = 7'b0000010; // Display 6
        3'b111: out = 7'b1111000; // Display 7
        default: out = 7'b1111111; // Turn off all segments for unknown input
    endcase
end
endmodule
