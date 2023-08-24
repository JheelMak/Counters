`timescale 1ns / 1ps
module modN_tb();
	reg clk, rst;
	wire [width-1:0]out;
	parameter N=8;
	parameter width=3;

	modN_Counter count(.clk(clk), .rst(rst), .out(out));
	
	always #5 clk=~clk;
	
	initial begin
	
	clk=0; rst=1;
	
	#10 rst=0;
	
	end
	
endmodule
