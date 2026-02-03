TESTBENCH

module mux2x1_nand_tb;
  reg I0, I1, S;
  wire Y;
  mux2x1_nand dut (I0,I1,S,Y);
  initial begin
            I0=0; I1=0; S=0; 
   #10; I0=0; I1=1; S=0; 
   #10; I0=1; I1=0; S=0; 
   #10; I0=1; I1=1; S=0; 

   #10; I0=0; I1=0; S=1; 
   #10; I0=0; I1=1; S=1; 
   #10; I0=1; I1=0; S=1; 
   #10; I0=1; I1=1; S=1; 
  end

  initial begin
   $monitor("simtime=%0t I0=%b I1=%b S=%b Y=%b",$time, I0, I1, S,Y);
end
endmodule
