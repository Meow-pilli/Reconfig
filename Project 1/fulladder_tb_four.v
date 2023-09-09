`include "fulladder_behav_four.v"
`include "fulladder_struct_four.v"
module testbench_four;

    // Inputs
    reg [3:0] A, B;
    reg Cin;
    
    // Outputs
    wire [3:0] Sum;
    wire Cout;
    
    // Instantiate the 4-bit full adder
    fulladder_struct_four dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );
    
    // Clock generation
    reg clk = 0;
    always #5 clk = ~clk;
    
    // Stimulus
    initial begin
        //$display("Time\tA\tB\tCin\tSum\tCout");
        $dumpfile("testbench_four_struct.vcd");  
        $dumpvars(0, testbench_four);
        
        A = 4'b0000; B = 4'b0000; Cin = 0; // 0 0 0
        #10;
        
        A = 4'b0110; B = 4'b0110; Cin = 0; // 0
        #10;
        
        A = 4'b0111; B = 4'b0111; Cin = 0;
        #10;
        
        A = 4'b1011; B = 4'b1011; Cin = 0;
        #10;

        A = 4'b1100; B = 4'b1100; Cin = 0;
        #10;

        A = 4'b1111; B = 4'b1111; Cin = 1;
        #10;
        
        $finish;
    end

endmodule
