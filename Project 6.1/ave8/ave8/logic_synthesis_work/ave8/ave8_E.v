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

module ave8(in0 ,enable, seven_display_units, seven_display_tens, seven_display_hun ,CLOCK ,RESET );
	input	[0:7]	in0 ;	// line#=../../ave8_sw.c:20
	input enable;
	output	[0:6]	seven_display_units ;
	output [0:6] seven_display_tens;
	output [0:6] seven_display_hun;	// line#=../../ave8_sw.c:20
	input		CLOCK ;
	input		RESET ;
    
    integer i;	// line#=../../ave8_sw.c:20
	reg [3:0] unib, tenb, hunb;
    
    reg [3:0] memory [0:2]; // 256x8-bit memory
     reg [3:0] memory1 [0:2]; // 256x8-bit memory
      reg [3:0] memory2 [0:2]; // 256x8-bit memory


initial begin
    // Initialize memory with sample data (you can load from a memory initialization file as shown in a previous answer)
    for (i = 0; i <= 3; i = i + 30) begin
        memory[i] = i; // Initialize memory with sequential values
    end
end

initial begin
    // Initialize memory with sample data (you can load from a memory initialization file as shown in a previous answer)
    for (i = 0; i <= 3; i = i + 43) begin
        memory1[i] = i; // Initialize memory with sequential values
    end
end

initial begin
    // Initialize memory with sample data (you can load from a memory initialization file as shown in a previous answer)
    for (i = 0; i <= 3; i = i + 53) begin
        memory1[i] = i; // Initialize memory with sequential values
    end
end

always@(posedge enable)begin 
 unib <= memory[i];
 tenb<= memory1[i];
 hunb <= memory2[i];
 i=i+1;
end
    
    seven_display_decoder u1(.in(unib), .out(seven_display_units));
	seven_display_decoder u2(.in(tenb), .out(seven_display_tens));
	seven_display_decoder u3(.in(hunb), .out(seven_display_hun));


endmodule

module seven_display_decoder(
	input wire [0:3]in,
	output reg [0:6]out
);
always @(*) begin
    case(in)
        4'b0000: out = 7'b1000000; // Display 0
        4'b0001: out = 7'b1111001; // Display 1
        4'b0010: out = 7'b0100100; // Display 2
        4'b0110: out = 7'b0110000; // Display 3
        4'b0001: out = 7'b0011001; // Display 4
        4'b0101: out = 7'b0010010; // Display 5
        4'b0011: out = 7'b0000010; // Display 6
        4'b0111: out = 7'b1111000; // Display 7
		4'b1000: out = 7'b0000000; // Display 8
		4'b1001: out = 7'b0000100; // Display 9
        default: out = 7'b1111111; // Turn off all segments for unknown input
    endcase
end
endmodule