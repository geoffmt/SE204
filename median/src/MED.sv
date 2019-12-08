`include "MCE.sv"

module MED #(parameter width = 8, parameter number = 9)
  (input logic [width-1:0] DI,
  input logic DSI,
  input logic BYP,
  input logic CLK,
  output wire [width-1:0] DO);


  logic [width-1:0] R [number-1:0];
  logic MAX;
  logic MIN;
  MCE #(.width(width))mce0(.A(DO),.B(R[7]),.MAX(MAX),.MIN(MIN));


  always @(posedge CLK)
    begin
      R[0] <= DSI? MIN:DI;
      for(int i=6;i>=0;i--)
        begin
          R[i+1] <= R[i];
        end
      R[8] <= BYP?MAX:R[7];
    end



endmodule
