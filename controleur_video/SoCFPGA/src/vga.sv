module vga (
    input wire pixel_clk,
    input wire pixel_rst,
    video_if.master video_ifm
);

parameter HDISP = 800;
parameter VDISP = 480;
localparam HFP = 40;
localparam HPULSE = 48;
localparam HBP = 40;
localparam VFP = 13;
localparam VPULSE = 3;
localparam VBP = 29;

assign video_ifm.CLK = pixel_clk;

logic [$clog2(HFP+HPULSE+HBP+HDISP)-1:0] pixel_cpt;
logic [$clog2(VFP+VPULSE+VBP+VDISP)-1:0] line_cpt;

//Calcul des valeurs des compteurs
always_ff @(posedge pixel_clk or posedge pixel_rst)
if (pixel_rst)
begin
  line_cpt <= 0;
  pixel_cpt <= 0;
end
else
begin
  if (pixel_cpt == HFP+HPULSE+HBP + HDISP - 1)
  begin
    pixel_cpt <= 0;

    if (line_cpt == VFP+VPULSE+VBP + VDISP - 1)
      line_cpt <= 0;
    else
      line_cpt <= line_cpt + 1;

  end
  else
    pixel_cpt <= pixel_cpt + 1;

end

//Utilisation des compteurs pour la synchronisation
always_ff @(posedge pixel_clk or posedge pixel_rst) begin
	if(pixel_rst) begin
		video_ifm.BLANK <= 0;
  		video_ifm.VS <= 1;
  		video_ifm.HS <= 1;
  		video_ifm.RGB <= {24{1'b0}};
	end
	else begin 
		
		//Mise à jour de RGB
		if (pixel_cpt%16 == 0 || line_cpt%16 == 0) 
			video_ifm.RGB <= {24{1'b1}};
		if (pixel_cpt%16 != 0 && line_cpt%16 != 0)
			video_ifm.RGB <= {24{1'b0}};

		//Mise à jour de HS et VS
		if (pixel_cpt<HFP || pixel_cpt >= HFP+HPULSE)
			video_ifm.HS <= 1;
		if (pixel_cpt>=HFP && pixel_cpt < HFP + HPULSE)
			video_ifm.HS <= 0;
		if (line_cpt<VFP || line_cpt >= VFP+VPULSE)
			video_ifm.VS <= 1;
		if (line_cpt >= VFP && line_cpt < VFP+VPULSE)
			video_ifm.VS <= 0;

		// Mise à jour de BLANK
		video_ifm.BLANK <= line_cpt >= VFP+VPULSE+VBP && pixel_cpt >= HFP+HPULSE+HBP;
	end 
end

endmodule 
