
`timescale 1 ps/ 1 ps
module sincos_vlg_tst();
reg [9:0] a;	// test vector input registers
reg areset;
reg clk;                             
wire [4:0]  c;	// wires           
wire [4:0]  s;
                          
sincos i1 (				 // port map - connection between master ports and signals/registers   
	.a(a),
	.areset(areset),
	.c(c),
	.clk(clk),
	.s(s)
);

//integer i;

initial                                                
begin
areset = 1;
clk = 0;                                                                                              

$display("Running testbench");                      
end  

always #5 clk = ~clk;


always @(negedge clk) begin
	a = 0;
	#10;
	a = 0110001110;
	#10;
	a = 1110010000;
	#10;
	a =0110010000;
	#10;

/*
  for(i=0;i<=511;i=i+1)
	begin 
		a[8] <= i[8];
		a[7] <= i[7];
		a[6] <= i[6];
		a[5] <= i[5];
		a[4] <= i[4];
		a[3] <= i[3];
		a[2] <= i[2];
		a[1] <= i[1];
		a[0] <= i[0];
		#5;
	end
*/
end

endmodule

