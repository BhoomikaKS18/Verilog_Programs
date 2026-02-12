module down_counter_3bit_async_tb;
    reg clk, rst;
    wire [2:0] count;

    down_counter_3bit_async DUT (clk,rst,count);
       
    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;

        #12 rst = 0;  

        #200 $finish;
    end
endmodule
