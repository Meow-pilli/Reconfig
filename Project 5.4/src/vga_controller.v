module vga_controller (
  input pixel_clk,
  input reset_n,
  output reg h_sync,
  output reg v_sync,
  output reg disp_ena,
  output reg [31:0] column,
  output reg [31:0] row,
  output n_blank,
  output n_sync
);

 

  parameter h_pulse  = 208;  
  parameter h_bp     = 336;   
  parameter h_pixels = 1920;  
  parameter h_fp     = 128;   
  parameter h_pol    = 0;   
  parameter v_pulse  = 3;     
  parameter v_bp     = 38;    
  parameter v_pixels = 1080;  
  parameter v_fp     = 1;     
  parameter v_pol    = 1;

 

  reg [31:0] h_count = 0;
  reg [31:0] v_count = 0;

 

  always @(posedge pixel_clk or negedge reset_n) begin
    if (!reset_n) begin
      h_count <= 0;
      v_count <= 0;
      h_sync <= ~h_pol;
      v_sync <= ~v_pol;
      disp_ena <= 0;
      column <= 0;
      row <= 0;
    end else begin
      // Horizontal counter
      if (h_count < (h_pulse + h_bp + h_pixels + h_fp) - 1) begin
        h_count <= h_count + 1;
      end else begin
        h_count <= 0;

 

        // Vertical counter
        if (v_count < (v_pulse + v_bp + v_pixels + v_fp) - 1) begin
          v_count <= v_count + 1;
        end else begin
          v_count <= 0;
        end
      end

 

      // Horizontal sync signal
      if (h_count < h_pixels + h_fp || h_count > h_pixels + h_fp + h_pulse) begin
        h_sync <= ~h_pol;
      end else begin
        h_sync <= h_pol;
      end

 

      // Vertical sync signal
      if (v_count < v_pixels + v_fp || v_count > v_pixels + v_fp + v_pulse) begin
        v_sync <= ~v_pol;
      end else begin
        v_sync <= v_pol;
      end

 

      // Set pixel coordinates
      if (h_count < h_pixels) begin
        column <= h_count;
      end

 

      if (v_count < v_pixels) begin
        row <= v_count;
      end

 

      // Set display enable output
      if (h_count < h_pixels && v_count < v_pixels) begin
        disp_ena <= 1;
      end else begin
        disp_ena <= 0;
      end
    end
  end

 

  assign n_blank = 1;
  assign n_sync = 0;

 

endmodule