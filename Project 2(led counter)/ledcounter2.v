module ledcounter2 (
    input wire clk,
    input wire reset,
    input wire direction,
    output reg [9:0] count
);
    reg [31:0] pre_count;

 

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            pre_count <= 32'b0;
        end else begin
            if (direction) begin
                pre_count <= pre_count + 1;
            end else begin
                pre_count <= pre_count - 1;
            end
        end
        count <= pre_count[31:22]; // assign the 10 most significant bits to the output
    end
endmodule