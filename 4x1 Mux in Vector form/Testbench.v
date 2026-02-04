TESTBENCH

module mux4x1_tb;
reg [3:0] I;
reg [1:0] S;
wire Y;

mux4x1_dataflow dut (I,S,Y);

initial begin
    I = 4'b1010;

  #10;  S = 2'b00; 
  #10;  S = 2'b01; 
  #10;  S = 2'b10; 
  #10;  S = 2'b11; 
end

initial
  $monitor("Time=%0t,I=%b, S=%b, Y=%b", $time, I, S, Y);
endmodule
