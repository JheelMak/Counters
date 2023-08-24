`timescale 1ns / 1ps

module UpDown_counterTb;

	reg clk, rst, up;

	wire [2:0] count;

	up_down_counter uut (.clk(clk), .rst(rst), .up(up), .count(count));
	
	always #5 clk=~clk;

	initial begin
	
		clk = 0; rst = 1; up = 1;
		#10 rst = 0;
		#85 up = 0;
		#200 $finish;

	end
      
endmodule

