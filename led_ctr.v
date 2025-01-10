`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/10 11:57:52
// Design Name: 
// Module Name: led_ctr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_ctr(
    input clk_in,
    output clk_out1,
    output clk_out2,
    output [3:0] led
    );
    clk_div uut01(
      .clk_in(clk_in), //125,000,000 Hz
	  .clk_out1(clk_out1), //5,000,000 Hz
      .clk_out2(clk_out2) //1Hz
    );
    reg [3:0] led;
    initial begin
        led <= 4'b0001;
    end
    
    always @(posedge clk_out2) begin
        led <= {led[2:0],led[3]};
    end
endmodule
