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
    Sum[0] = A[0] ^ B[0] ^ Cin;
    Sum[1] = A[1] ^ B[1] ^ Sum[0];
    Sum[2] = A[2] ^ B[2] ^ Sum[1];
    Sum[3] = A[3] ^ B[3] ^ Sum[2];
    
    Cout = (A[3] & B[3]) | (A[2] & B[2]) | (A[1] & B[1]) | (A[0] & B[0]) |
           (B[3] & Sum[2]) | (B[3] & Sum[1]) | (B[2] & Sum[1]) |
           (B[3] & B[2] & Sum[0]) | (B[3] & B[1] & B[0]) | (B[2] & B[1] & B[0]);
end

endmodule
