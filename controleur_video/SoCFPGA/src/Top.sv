`default_nettype none

module Top (
    // Les signaux externes de la partie FPGA
	input  wire         FPGA_CLK1_50,
	input  wire  [1:0]	KEY,
	output logic [7:0]	LED,
	input  wire	 [3:0]	SW,
    // Les signaux du support matériel sont regroupés dans une interface
    hws_if.master       hws_ifm
);

//====================================
//  Déclarations des signaux internes
//====================================
  wire        sys_rst;   // Le signal de reset du système
  wire        sys_clk;   // L'horloge système a 100Mhz
  wire        pixel_clk; // L'horloge de la video 32 Mhz

//=======================================================
//  La PLL pour la génération des horloges
//=======================================================

sys_pll  sys_pll_inst(
		   .refclk(FPGA_CLK1_50),   // refclk.clk
		   .rst(1'b0),              // pas de reset
		   .outclk_0(pixel_clk),    // horloge pixels a 32 Mhz
		   .outclk_1(sys_clk)       // horloge systeme a 100MHz
);

//=============================
//  Les bus Wishbone internes
//=============================
wshb_if #( .DATA_BYTES(4)) wshb_if_sdram  (sys_clk, sys_rst);
wshb_if #( .DATA_BYTES(4)) wshb_if_stream (sys_clk, sys_rst);

//=============================
//  Le support matériel
//=============================
hw_support hw_support_inst (
    .wshb_ifs (wshb_if_sdram),
    .wshb_ifm (wshb_if_stream),
    .hws_ifm  (hws_ifm),
	.sys_rst  (sys_rst), // output
    .SW_0     ( SW[0] ),
    .KEY      ( KEY )
 );

//=============================
// On neutralise l'interface
// du flux video pour l'instant
// A SUPPRIMER PLUS TARD
//=============================
assign wshb_if_stream.ack = 1'b1;
assign wshb_if_stream.dat_sm = '0 ;
assign wshb_if_stream.err =  1'b0 ;
assign wshb_if_stream.rty =  1'b0 ;

//=============================
// On neutralise l'interface SDRAM
// pour l'instant
// A SUPPRIMER PLUS TARD
//=============================-
assign wshb_if_sdram.stb  = 1'b0;-
assign wshb_if_sdram.cyc  = 1'b0;-
assign wshb_if_sdram.we   = 1'b0;-
assign wshb_if_sdram.adr  = '0  ;-
assign wshb-_if_sdram.dat_ms = '0 ;-
assign wshb_if_sdram.sel = '0 ;-
assign wshb_if_sdram.cti = '0 ;-
assign wshb_if_sdram.bte = '0 ;

//--------------------------
//------- Code Eleves ------
//--------------------------

`ifdef SIMULATION
  localparam hcmpt=50 ;
  localparam hcmpt2=16;
`else
  localparam hcmpt=50000000;
  localparam hcmpt2=16000000;
`endif

logic [hcmpt:0] compteur;
always_ff@(posedge sys_clk or sys_rst)begin
    LED[0]<=KEY[0];
    if (!sys_rst)begin
        compteur <= (compteur + 1)%hcmpt;
        if (compteur == 0)
            LED[1] <= ~LED[1];
        
    end
    else begin
        LED[1] <= 0;
        compteur <= 0;
    end
end


logic pixel_rst;
logic bascule;

always_ff@(posedge sys_rst)begin
    if (sys_rst)begin
        bascule <= 1;
        pixel_rst <= 1;
    end
    else begin
        bascule <= 0;
        pixel_rst <= bascule;
    end
end

always_ff@(posedge pixel_clk or pixel_rst)begin

    if (!pixel_rst)begin
        compteur <= compteur + 1;
        if (compteur == hcmpt2)
            LED[2] <= ~LED[2];
        
    end
    else begin
        LED[1] <= 0;
        compteur <= 0;
    end // A FINNIR
end

endmodule
