`timescale 1ns/1ns

module expTB();
  
  reg rst = 0;
  reg clk = 0;
  reg start = 0;
  reg read = 0;
  
  wire calc_done;
  wire [3:0] cnt_num;
  wire [17:0] q;
  wire [3:0] usedw;
 // module exp1 (	pin_name1,clk,	rst,	start,	read,	pin_name2,	out,	usedW);
   exp1 UUT(calc_done, clk,rst, start, read, cnt_num,q, usedw);
  
  initial begin 
    #37 rst = 1;start=0;
    #43 start = 1;rst=0;
    #60 start = 0;
    #30000 read = 1;
    #120 read = 0;
    #120 read = 1;
    #120 read = 0;
    #120 read = 1;
    #120 read = 0;
    #120 read = 1;
    #120 read = 0;
    #120 read = 1;
    #120 read = 0;
    #120 read = 1;
    #1000 $stop;
  end
  
  always #25 clk = ~clk;
  
endmodule