

module MED #(parameter width = 8, parameter number = 9)
  (input logic [width-1:0] DI,
  input logic DSI,
  input logic BYP,
  input logic CLK,
  output wire [width-1:0] DO);


  logic [width-1:0] R [number-1:0];
  logic [width-1:0] MAX;
  logic [width-1:0] MIN;
  MCE #(.width(width))mce0(.A(R[number-2]),.B(R[number-1]),.MAX(MAX),.MIN(MIN));


  always @(posedge CLK)
    begin
      R[0] <= DSI? DI:MIN;
      for(int i=number-3;i>=0;i--)
        begin
          R[i+1] <= R[i];
        end
      R[number-1] <= BYP?R[number-2]:MAX;
    end



endmodule
