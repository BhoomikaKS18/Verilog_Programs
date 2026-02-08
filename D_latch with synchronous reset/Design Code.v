DESIGN

module d_latch_sync (
  input  d,clk,rst,
  output reg q);

always @(clk or d)
begin
  if (clk) begin
    if (rst)
      q <= 1'b0;   
    else
      q <= d;     
  end
end
endmodule
