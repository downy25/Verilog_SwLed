module tb_led_ctr_5hz;
   reg clk_in;
   wire [3:0] led;
  
  led_ctr_5hz dut(
    .clk_in(clk_in),
	.led(led));
	
  initial begin
    clk_in = 1'b0;
	#100000 $stop;
  end
  
  always #20 clk_in <= ~clk_in;
  
endmodule