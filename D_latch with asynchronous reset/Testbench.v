`timescale 1ns/1ps
module tb_d_latch_async;

  reg d,clk,rst;
  wire q;


  d_latch_async DUT (d,clk,rst,q);
  always #5 clk = ~clk;   

  initial begin
    // Initial values
    clk = 0;
    d   = 0;
    rst = 0;

    // Apply asynchronous reset
    #7 rst = 1;    // Reset asserted
    #8 rst = 0;    // Reset released

    // Apply data
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;

    // Reset in middle of operation
    #6 rst = 1;
    #4 rst = 0;

    #30 $finish;
  end
  initial begin
    $dumpfile("d_latch_async.vcd");
    $dumpvars(0, tb_d_latch_async);
  end
endmodule
