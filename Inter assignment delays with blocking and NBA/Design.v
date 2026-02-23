//for Blocking
module Inter_delay(
  input signed [31:0] a, 
  output integer b);
always @ (a) #3 b = a;
endmodule

//(OR) same output

//for non-blocking
module Inter_delay(
  input signed [31:0] a, 
  output integer b);
always @ (a) #3 b <= a;
endmodule
