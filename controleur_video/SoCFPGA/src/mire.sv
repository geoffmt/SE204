module mire (
            wshb_if.master wshb_ifm
            );

parameter HDISP = 800;
parameter VDISP = 480;


logic [$clog2(HDISP)-1:0] pixel_cpt;
logic [$clog2(VDISP)-1:0] line_cpt;


//Calcul des valeurs des compteurs
always_ff @(posedge wshb_ifm.clk or posedge wshb_ifm.rst)begin
   if (wshb_ifm.rst) begin
      line_cpt <= 0;
      pixel_cpt <= 0;
   end
   else begin
      if (wshb_ifm.ack)begin
         if (pixel_cpt == HDISP - 1)begin
            pixel_cpt <= 0;

            if (line_cpt == VDISP - 1)
               line_cpt <= 0;
            else
               line_cpt <= line_cpt + 1;
         end
         else
            pixel_cpt <= pixel_cpt + 1;                  
      end
   end         
end

always_ff @(posedge wshb_ifm.clk or posedge wshb_ifm.rst)
   if (wshb_ifm.rst)
      wshb_ifm.cyc <= 1;
   else
      if (pixel_cpt%64 == 0)
         wshb_ifm.cyc <= 0;
         wshb_ifm.stb <= 0;

assign wshb_ifm.adr = (HDISP * line_cpt + pixel_cpt) * 4;

always_comb begin 
   if (pixel_cpt%16 == 0 || line_cpt%16 == 0)
      wshb_ifm.dat_ms = 32'hffffff;
   else
      wshb_ifm.dat_ms = 32'h000000;
   
end
 

assign wshb_ifm.sel = 4'b1111; //DATA_BYTES = 4
assign wshb_ifm.we = 1'b1;
assign wshb_ifm.cti = 3'b0;
assign wshb_ifm.bte = 2'b0;

endmodule