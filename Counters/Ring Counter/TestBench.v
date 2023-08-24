`timescale 1ns / 1ps

module TestBench;

	reg clk, rst;

	wire [7:0] out;
	
	ringCounter uut (.clk(clk), .rst(rst), .out(out));
	
	always #5 clk=~clk;

	initial begin
		clk = 0;
		rst = 1;
		
		#10 rst = 0;
		
	end
      
endmodule

