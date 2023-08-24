`timescale 1ns / 1ps

module TestBench;

	reg clk, rstn;
	parameter WIDTH = 4;
	wire [WIDTH-1:0] out;
	
	Johnson_Counter uut (.clk(clk), .rstn(rstn), .out(out));
	
	always #5 clk=~clk;

	initial begin
		clk = 0;
		rstn = 0;
		
		#10 rstn = 1;
		
	end
      
endmodule

