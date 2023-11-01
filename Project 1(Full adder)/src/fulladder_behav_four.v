module fulladder_behav_four (
    input [3:0] A,   // inputs for 4-bit fulladder
    input [3:0] B,
    input Cin,
    output reg [3:0] Sum,  // outputs for 4-bit fulladder
    output reg Cout
);


always @(*) begin  // with any change in input
    {Cout, Sum}= A + B + Cin;  // Cout and Sum equation
end

endmodule
