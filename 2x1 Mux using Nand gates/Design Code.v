DESIGN

//Gate level Modelling
module mux2x1_nand(S,I0,I1,Y);
  input I0,I1,S;
  output Y;
  wire w1,w2,w3;
  nand n1(w1,S,I0);
  nand n2(w2,w1,I0);
  nand n3(w3,S,I1);
  nand n4(Y,w2,w3);
endmodule


//Dataflow Modelling
module mux2x1_nand(S,I0,I1,Y);
  input I0,I1,S;
  output Y;
  wire w1,w2,w3;
  assign w1=~(S&I0);
  assign w2=~(w1&I0);
  assign w3=~(S&I1);
  assign Y=~(w2&w3);
endmodule
  

