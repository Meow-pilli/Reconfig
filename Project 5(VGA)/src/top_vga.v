module top_vga (
  input sys_clk_in,
  input reset_n,
  output [7:0] red,
  output [7:0] green,
  output [7:0] blue,
  output pixel_clk_out,
  output n_sync,
  output n_blank,
  output h_sync,
  output v_sync
);

// Internal signals
wire disp_ena;
wire [10:0] row;
wire [10:0] column;
wire pixel_clk;
reg reset_inv; // Change to reg

// DCM Altera component
dcm_altera uut1 (
  .refclk(sys_clk_in),
  .rst(reset_inv), // Assign reset_inv to DCM
  .outclk_0(pixel_clk)
);

// VGA Controller component
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

// HW Image Generator component
hw_image_generator uut3 (
  .disp_ena(disp_ena),
  .row(row),
  .column(column),
  .red(red),
  .green(green),
  .blue(blue)
);

always @(posedge pixel_clk or negedge reset_n) begin
  if (!reset_n) begin
    reset_inv <= 1'b1;
  end else begin
    reset_inv <= 1'b0;
  end
end

assign pixel_clk_out = pixel_clk;

endmodule
