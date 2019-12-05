module MCE #(parameter width = 8)
  (input logic [width-1:0] A,
  input logic [width-1:0] B,
  output logic [width-1:0] MAX,
  output logic [width-1:0] MIN);

  assign MAX = (A>=B) ? A:B ;
  assign MIN = (A<B) ? A:B ;

endmodule
