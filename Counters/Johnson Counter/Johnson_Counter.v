module Johnson_Counter(clk,rstn,out);    
input clk;              
input rstn;
output reg [WIDTH-1:0] out;
parameter WIDTH=4;
integer i;
 
  always @ (posedge clk) begin
      if (!rstn)
         out <= 1;
      else begin
        out[WIDTH-1] <= ~out[0];
        for (i = 0; i < WIDTH-1; i=i+1) begin
          out[i] <= out[i+1];
        end
      end
  end
endmodule
