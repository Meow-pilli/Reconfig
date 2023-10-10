// FileName:         hw_image_generator.v
// Dependencies:     none
// Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
//
// HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
// WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
// PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
// BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
// DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
// PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
// BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
// ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
//
// Version History
//   Initial Public Release

 

module hw_image_generator #( 
    parameter pixels_y = 478,  // row that first color will persist until
    parameter pixels_x = 600   // column that first color will persist until
    )(
    input disp_ena,             // display enable (1 = display time, 0 = blanking time)
    input [31:0] row,           // row pixel coordinate
    input [31:0] column,        // column pixel coordinate
    output reg [7:0] red,       // red magnitude output to DAC
    output reg [7:0] green,     // green magnitude output to DAC
    output reg [7:0] blue       // blue magnitude output to DAC
);

 

always @ (disp_ena, row, column) begin
    if (disp_ena) begin          // display time
        if ((row < pixels_y) && (column < pixels_x)) begin
            red = 8'b0;
            green = 8'b0;
            blue = 8'b1;
        end
        else begin
            red = 8'b1;
            green = 8'b1;
            blue = 8'b0;
        end
    end
    else begin                   // blanking time
        red = 8'b0;
        green = 8'b0;
        blue = 8'b0;
    end
end

 

endmodule