module gray_counter (out,count,clk,rst);
  input clk, rst; 
  output reg [3:0] out;
  output reg [3:0] count;
  always @(posedge clk) 
  begin
  if (rst) 
  begin
    count = 0; 
	 out = 0;
	end
  else  
  begin
	count = count + 1; 
   out = {count[3], (count[3] ^ count[2]), (count[2] ^ count[1]),(count[1] ^ count[0])};
   end
  end
endmodule
