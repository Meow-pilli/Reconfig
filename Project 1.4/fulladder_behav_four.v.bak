module fulladder_behav_four (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

reg [3:0] Sum;
reg Cout;

always @(*) begin
    {Cout, Sum}= A + B + Cin;
end

endmodule
