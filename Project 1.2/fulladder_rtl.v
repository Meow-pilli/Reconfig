module fulladder_rtl (
    input a,   // inputs
    input b,
    input cin,
    output sum,  // outputs
    output cout
);

    assign sum = a ^ b ^ cin;  // Sum output: XOR of A, B, and Cin
    assign cout = (a & b) | (b & cin) | (a & cin); // Carry output

endmodule
