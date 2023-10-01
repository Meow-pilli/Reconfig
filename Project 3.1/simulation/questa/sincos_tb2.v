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

initial                                                
begin
areset = 1;
clk = 0;                                                                                              
$display("Running testbench");                      
end  