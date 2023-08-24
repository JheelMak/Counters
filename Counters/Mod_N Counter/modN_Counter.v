`timescale 1ns / 1ps
module modN_Counter(clk,rst,out);

input clk,rst;
output reg [width-1:0]out;
parameter N=8;
parameter width=3;

always @ (posedge clk)
begin
	if(rst)
       out=0;
	else
   begin
	    if(out==N-1)
			out=0;
		 else
			out=out+1;
	end
end
endmodule