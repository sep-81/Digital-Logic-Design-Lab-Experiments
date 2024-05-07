`timescale 1ns/1ns

module ExpAcc_TB();
  
  reg rst = 0;
  reg clk = 0;
  reg start = 0;
  reg read = 0;
  
  wire calc_done;
  wire [17:0] q;
  wire [3:0] usedw;
  
  ExpAcc UUT (calc_done, rst, clk, start, read, q, usedw);
  
  initial begin 
    #37 rst = 1;
    #43 start = 1;
    #30000 read = 1;
    #60 read = 0;
    #60 read = 1;
    #60 read = 0;
    #60 read = 1;
    #60 read = 0;
    #60 read = 1;
    #60 read = 0;
    #60 read = 1;
    #60 read = 0;
    #60 read = 1;
  end
  
  always #25 clk = ~clk;
  
endmodule