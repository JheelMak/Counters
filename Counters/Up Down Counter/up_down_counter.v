`timescale 1ns / 1ps
module up_down_counter(clk, rst, up, count);
input clk, rst, up; 
parameter N=3;
output reg[N-1:0]count;					// 8 bit counter

always @(posedge clk or posedge rst)
begin
	if(rst)
		count <= 3'b000;
	else
	begin
		if(up)							// if up=1, then counts up
			count <= count+1;
		else								// if up=0, then counts down
			count <= count-1;
	end
end
endmodule
