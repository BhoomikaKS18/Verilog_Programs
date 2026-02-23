//for blocking
module Intra_delay(
 input signed [31:0] a, 
 output integer b);
always @ (a)
 b <= #3 a;
endmodule

//for Non-blocking
module Intra_delay(
 input signed [31:0] a, 
 output integer b);
always @ (a)
 b = #3 a;
endmodule
