module fulladder_behav_four (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output reg [3:0] Sum,
    output reg Cout
);


always @(*) begin
    {Cout, Sum}= A + B + Cin;
end

endmodule
