module full_adder (
    input A,
    input B,  // inputs for 1-bit fulladder
    input Cin,
    output Sum,
    output Cout  // outputs for 1-bit fulladder
);

assign Sum = A ^ B ^ Cin;               // assigning sum
assign Cout = (A & B) | (B & Cin) | (A & Cin);  // assigning Cout

endmodule

module fulladder_struct_four (
    input [3:0] A,    // inputs for 4-bit fulladder
    input [3:0] B,
    input Cin,
    output [3:0] Sum,    // outputs for 4-bit fulladder
    output Cout
);

wire c1, c2, c3;
full_adder fa0(A[0], B[0], Cin, Sum[0], c1);      // connecting four 1-bit fulladders as 4-bit fulladder
full_adder fa1(A[1], B[1], c1, Sum[1], c2);
full_adder fa2(A[2], B[2], c2, Sum[2], c3);
full_adder fa3(A[3], B[3], c3, Sum[3], Cout);

endmodule
