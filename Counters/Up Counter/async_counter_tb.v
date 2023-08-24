`timescale 1ns / 1ps
module async_counter_tb();
	reg clk, rst;
	wire [31:0]count;
	
	async_counter counter (.clk(clk), .rst(rst), .count(count));
	
	always #5 clk=~clk;
	
	initial begin
	
	clk = 0;
	rst = 1;
	
	#10 rst = 0;
	
	end
	
endmodule
