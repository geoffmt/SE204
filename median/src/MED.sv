`include "MCE.sv"

module MED #(parameter width = 8, parameter number = 9)
  (input logic [width-1:0] DI,
  input logic DSI,
  input logic BYP,
  input logic CLK,
  output logic [width-1:0] DO);

  logic [width-1:0] R [number-1:0];
  MCE mce0(.A(DO),.B(R[7]),.MAX(MAX),.MIN(MIN));


  always @(posedge CLK)
    begin
      begin
         if(DSI) R[0] = DI;
         else R[0] = MIN;
      end
      for(int i=6;i>=0;i--)
        begin
          R[i+1]=R[i];
        end
      begin
        if(BYP) R[8] = R[7];
        else R[8] = MAX;
      end
    end



endmodule
