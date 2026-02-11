DESIGN

//Data flow Modelling

module mux4x1_dataflow (I,S,Y);
    input  [3:0] I;   
    input  [1:0] S;  
    output Y;
  assign Y = (~S[1] & ~S[0] & I[0]) +(~S[1] &  S[0] & I[1])+( S[1] & ~S[0] & I[2])+( S[1] &  S[0] & I[3]);
endmodule

//Using Conditional operator 

module mux4x1_dataflow (I,S,Y);
  input  [3:0] I;
  input  [1:0] S;
   output Y;
assign Y = (S == 2'b00) ? I[0]:
           (S == 2'b01) ? I[1]:
           (S == 2'b10) ? I[2]:
                          I[3];
endmodule

