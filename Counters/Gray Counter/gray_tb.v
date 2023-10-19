`timescale 1ns / 1ps
module gray_tb;

	reg clk;
	reg rst;

	wire [3:0] out;

	gray_counter uut (.out(out), .count(count), .clk(clk), .rst(rst));
	
	initial begin
	forever #5 clk=~clk;
	end

	initial begin
   clk = 0; rst=0;
			$monitor($time," clk=%b, out=%b, count=%b",clk,out,count);
	#10;
    rst = 1'b1;
   #50;
    rst = 1'b0;
  #500 $finish;


	end
      
endmodule

