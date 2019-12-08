`include "MED.sv"

module MEDIAN #(parameter width = 8)
  (input logic [width-1:0] DI,
  input logic DSI,
  input logic nRST,
  input logic CLK,
  output wire [width-1:0] DO,
  output logic DSO);

  logic BYP;
  logic [3:0] cpt;


  MED #(.width(width))med0(.DI(DI),.DSI(DSI),.CLK(CLK),.DO(DO));
  enum logic [2:0] {S0, S1, S2, S3, S4} state;


  always @(posedge CLK or negedge nRST)begin
    if (!nRST) begin
      state <= S0;
      cpt <= 0;
      BYP <= 0;
      DSO <= 0;
    end
    else begin
      case (state)
        S0: begin
          if (cpt<8) begin
            BYP <= 0;
            cpt <= cpt+1;
          end
          if (cpt==8) begin
            BYP <=1 ;
            cpt <= 0;
            state <= S1;
          end
        end
        S1: begin
          if (cpt <7)begin
            BYP <=0;
            cpt <= cpt+1;
          end
          else begin
            if (cpt<8) begin
              BYP <= 1;
              cpt <= cpt + 1;
            end
            else begin
              BYP <= 1;
              cpt <= 0;
              state <= S2;
            end
          end
        end
        S2: begin
          if (cpt <6)begin
            BYP <=0;
            cpt <= cpt+1;
          end
          else begin
            if (cpt<8) begin
              BYP <= 1;
              cpt <= cpt + 1;
            end
            else begin
              BYP <= 1;
              cpt <= 0;
              state <= S3;
            end
          end
        end
        S3: begin
          if (cpt <5)begin
            BYP <=0;
            cpt <= cpt+1;
          end
          else begin
            if (cpt<8) begin
              BYP <= 1;
              cpt <= cpt + 1;
            end
            else begin
              BYP <= 1;
              cpt <= 0;
              state <= S4;
            end
          end
        end
        S4: begin
          if (cpt <5)begin
            BYP <=0;
            cpt <= cpt+1;
          end
          else begin
            if (cpt<8) begin
              BYP <= 1;
              cpt <= cpt + 1;
            end
            else begin
              BYP <= 1;
              cpt <= 0;
              DSO <=1;
            end
          end
        end           
      endcase
    end
  end
endmodule