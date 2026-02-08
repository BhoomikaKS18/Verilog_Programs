module d_latch_async (
  input  d,clk,rst,   
  output reg q);

always @(clk or d or rst)
begin
  if (rst)
    q <= 1'b0;       
  else if (clk)
    q <= d;          
end
endmodule
