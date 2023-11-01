module hw_image_generator (
  input disp_ena,           // display enable ('1' = display time, '0' = blanking time)
  input [10:0] row,         // row pixel coordinate
  input [10:0] column,      // column pixel coordinate
  output reg [7:0] red,     // red magnitude output to DAC
  output reg [7:0] green,   // green magnitude output to DAC
  output reg [7:0] blue     // blue magnitude output to DAC
);

// Generic constants
parameter pixels_y = 478;    // row that first color will persist until
parameter pixels_x = 600;    // column that first color will persist until

always @(*) begin
  if (disp_ena == 1'b1) begin  // display time
    if ((row < pixels_y) && (column < pixels_x)) begin
      red   = 8'b00000000;
      green = 8'b00000000;
      blue  = 8'b00000001;
    end else begin
      red   = 8'b00000001;
      green = 8'b00000001;
      blue  = 8'b00000000;
    end
  end else begin  // blanking time
    red   = 8'b00000000;
    green = 8'b00000000;
    blue  = 8'b00000000;
  end
end

endmodule
