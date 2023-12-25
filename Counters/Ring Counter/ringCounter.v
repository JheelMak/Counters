`timescale 1ns / 1ps
module ringCounter(
input clk,rst,
output reg[7:0] out
);
	always@(posedge clk)
begin
	if(rst)
		out<=8'b10000000;
	else
	begin
		out<=out<<1;
		out[0]<=out[7];
	end
end
endmodule
