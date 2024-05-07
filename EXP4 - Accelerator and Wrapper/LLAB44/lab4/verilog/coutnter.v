module coutnter(clk,rst,cnt_num,inc_cnt);
  input clk,rst,inc_cnt;
  output reg [3:0] cnt_num;
  always @(posedge clk) begin
    if(rst) cnt_num <= 4'b0;
    else begin
      if(inc_cnt) cnt_num <= cnt_num+1;
    end
    
    
  end
endmodule