
module ha_tb;
  reg a, b;
  wire s, c;
  ha dut (a,b,s,c);

  initial begin
    $display("A B | S C");
    $display("---------");
    
    #10; a = 0; b = 0; 
    $display("%b %b | %b %b", a, b, s, c);

   #10; a = 0; b = 1;
    $display("%b %b | %b %b", a, b, s, c);

   #10; a = 1; b = 0; 
    $display("%b %b | %b %b", a, b, s, c);

   #10; a = 1; b = 1; 
    $display("%b %b | %b %b", a, b, s, c);

    $finish;
  end
endmodule

