//It has a single clock input and a 32-bit output port
module simple_counter (
		input				clk,
		output reg	[31:0]	counter_out
); 

                       
always @ (posedge clk)		// on positive clock edge
begin
	counter_out <= #1 counter_out + 1;		// increment counter
end
	
endmodule					// end of module counter