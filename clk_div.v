`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/10 09:56:11
// Design Name: 
// Module Name: clk_div
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


module clk_div(
    input clk_in, //125,000,000 Hz
	output wire clk_out1, //5,000,000 Hz
    output wire clk_out2 //1Hz
    );
    clk_div_5mhz uut01  //jb1
    (
      // Clock out ports
      .clk_out1(clk_out1),     // output clk_out1
      // Clock in ports
      .clk_in1(clk_in)      // input clk_in1
    );

    clk_div_1hz uut02 //jb2
    (
      .clk_in(clk_out1),
      .clk_out(clk_out2)
    );
    
endmodule
