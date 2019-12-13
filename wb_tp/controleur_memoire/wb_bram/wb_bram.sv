//-----------------------------------------------------------------
// Wishbone BlockRAM
//-----------------------------------------------------------------
//
// Le paramètre mem_adr_width doit permettre de déterminer le nombre
// de mots de la mémoire : (2048 pour mem_adr_width=11)

module wb_bram #(parameter mem_adr_width = 11) (
      // Wishbone interface
      wshb_if.slave wb_s
      );

logic [3:0][7:0] ram [2**mem_adr_width-1];
//on ignore les deux bits de poids faible pour se déplacer de 32 bits en 32 bits
wire [mem_adr_width-1:0] memory_slave = wb_s.adr[mem_adr_width+1:2];

//BLOCK READ
always_ff@ (posedge wb_s.clk) begin
  if (wb_s.stb && !wb_s.we)begin

  end
end

//BLOCK WRITE
always_ff@ (posedge wb_s.clk) begin
  if (wb_s.stb && wb_s.we)begin
    for (int i = 0;  i< 4; i++) begin
      if(wb_s.sel[i])
        ram[memory_slave][i]<=wb_s.dat_ms[(i+1)*8-1:i*8-1];
    end
  end
end

endmodule
