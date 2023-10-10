// Create Date:    18:44:12 09/10/2013 
// Design Name:    top_vga
// Module Name:    top_vga
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// Revision: 
// Revision 0.01 - File Created
// Additional Comments:

 

module top_vga (
    // inputs
    input sys_clk_in,
    input reset_n,
    // outputs
    output [7:0] red,
    output [7:0] green,
    output [7:0] blue,
    output pixel_clk_out,
    output n_sync,
    output n_blank,
    output h_sync,
    output v_sync
);

 

// Signals declaration
wire disp_ena;
wire [31:0] row;
wire [31:0] column;
wire pixel_clk;
wire reset_inv;

 

assign reset_inv = ~reset_n;

 

// Component instances
dcm_altera uut1 (
    .refclk(sys_clk_in),
    .rst(reset_inv),
    .outclk_0(pixel_clk)
);

assign pixel_clk_out = pixel_clk;

 

vga_controller uut2 (
    .pixel_clk(pixel_clk),
    .reset_n(reset_n),
    .h_sync(h_sync),
    .v_sync(v_sync),
    .disp_ena(disp_ena),
    .column(column),
    .row(row),
    .n_blank(n_blank),
    .n_sync(n_sync)
);

 

hw_image_generator uut3 (
    .disp_ena(disp_ena),
    .row(row),
    .column(column),
    .red(red),
    .green(green),
    .blue(blue)
);

 

endmodule

 

// Note: The individual component modules (`dcm_altera`, `vga_controller`, and `hw_image_generator`) 
// have not been translated here. They should be translated and included separately.