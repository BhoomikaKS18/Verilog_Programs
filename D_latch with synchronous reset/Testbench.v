TESTBENCH

`timescale 1ns/1ps

module d_latch_sync_tb;

  reg d,clk,rst;
  wire q;
 
  d_latch_sync DUT (d,clk,rst,q);

  always #5 clk = ~clk;   
  initial begin
    
    clk = 0;
    d   = 0;
    rst = 0;

    
    #10 rst = 1;   
    #10 rst = 0;

    
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;

   
    #10 clk = 0;
          d = 0;
    
    #30 $finish;
  end
  initial begin
    $dumpfile("d_latch_sync.vcd");
    $dumpvars(0,d_latch_sync_tb);
  end
endmodule
