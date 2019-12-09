//
// Verilog description for cell MEDIAN, 
// Sun Dec  8 23:15:39 2019
//
// Precision RTL Synthesis, 64-bit 2017.1.0.15//


module MEDIAN ( DI, DSI, nRST, CLK, DO, DSO ) ;

    input [7:0]DI ;
    input DSI ;
    input nRST ;
    input CLK ;
    output [7:0]DO ;
    output DSO ;

    wire [3:0]cpt;
    wire state_4_, state_0_, nx23427z1, nx24424z1, nx25421z1, not_nRST, GND, 
         nx22430z2, nx49729z2, nx22430z1, nx33079z1, nx49729z1, nx50726z1, 
         nx51723z1, nx52720z1, nx50726z2, nx51723z2, nx52720z3, nx52720z2, 
         nx29521z1;
    wire [80:0] xmplr_dummy ;




    assign not_nRST = ~nRST ;
    assign GND = 1'b0 ;
    TRI med0_DO_triBus1_0_ (.out (DO[0]), .in (GND), .oe (GND)) ;
    TRI med0_DO_triBus1_1_ (.out (DO[1]), .in (GND), .oe (GND)) ;
    TRI med0_DO_triBus1_2_ (.out (DO[2]), .in (GND), .oe (GND)) ;
    TRI med0_DO_triBus1_3_ (.out (DO[3]), .in (GND), .oe (GND)) ;
    TRI med0_DO_triBus1_4_ (.out (DO[4]), .in (GND), .oe (GND)) ;
    TRI med0_DO_triBus1_5_ (.out (DO[5]), .in (GND), .oe (GND)) ;
    TRI med0_DO_triBus1_6_ (.out (DO[6]), .in (GND), .oe (GND)) ;
    TRI med0_DO_triBus1_7_ (.out (DO[7]), .in (GND), .oe (GND)) ;
    assign state_0_ = ~nx52720z2 ;
    cycloneii_lcell_ff reg_state_0_ (.regout (nx52720z2), .datain (nx29521z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_DSO (.regout (DSO), .datain (nx33079z1), .sdata (1'b0
                       ), .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_cpt_reg_q_3_ (.regout (cpt[3]), .datain (
                       nx52720z1), .sdata (1'b0), .clk (CLK), .ena (nx49729z2), 
                       .aclr (not_nRST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_cpt_reg_q_2_ (.regout (cpt[2]), .datain (
                       nx51723z1), .sdata (1'b0), .clk (CLK), .ena (nx49729z2), 
                       .aclr (not_nRST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_cpt_reg_q_1_ (.regout (cpt[1]), .datain (
                       nx50726z1), .sdata (1'b0), .clk (CLK), .ena (nx49729z2), 
                       .aclr (not_nRST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_cpt_reg_q_0_ (.regout (cpt[0]), .datain (
                       nx49729z1), .sdata (1'b0), .clk (CLK), .ena (nx49729z2), 
                       .aclr (not_nRST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff 
                       MEDIAN_sr_tap_0_shiftregister_with_taps_1_4_1_sr_tap_0_reg_state_4_
                        (.regout (state_4_), .datain (nx25421z1), .sdata (1'b0)
                       , .clk (CLK), .ena (nx22430z1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff 
                       MEDIAN_sr_tap_0_shiftregister_with_taps_1_4_1_sr_tap_0_reg_state_3_
                        (.regout (nx25421z1), .datain (nx24424z1), .sdata (1'b0)
                       , .clk (CLK), .ena (nx22430z1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff 
                       MEDIAN_sr_tap_0_shiftregister_with_taps_1_4_1_sr_tap_0_reg_state_2_
                        (.regout (nx24424z1), .datain (nx23427z1), .sdata (1'b0)
                       , .clk (CLK), .ena (nx22430z1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff 
                       MEDIAN_sr_tap_0_shiftregister_with_taps_1_4_1_sr_tap_0_reg_state_1_
                        (.regout (nx23427z1), .datain (state_0_), .sdata (1'b0)
                       , .clk (CLK), .ena (nx22430z1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix52720z52924 (.combout (nx52720z3), .dataa (cpt[3]), .datab (
                         cpt[2]), .datac (cpt[1]), .datad (cpt[0])) ;
                         defparam ix52720z52924.lut_mask = 16'h6aaa;
    cycloneii_lcell_comb ix51723z52924 (.combout (nx51723z2), .dataa (cpt[2]), .datab (
                         cpt[1]), .datac (cpt[0]), .datad (1'b1)) ;
                         defparam ix51723z52924.lut_mask = 16'h6a6a;
    cycloneii_lcell_comb ix50726z52924 (.combout (nx50726z2), .dataa (cpt[1]), .datab (
                         cpt[0]), .datac (1'b1), .datad (1'b1)) ;
                         defparam ix50726z52924.lut_mask = 16'h6666;
    cycloneii_lcell_comb ix52720z52923 (.combout (nx52720z1), .dataa (cpt[3]), .datab (
                         nx52720z2), .datac (nx22430z2), .datad (nx52720z3)) ;
                         defparam ix52720z52923.lut_mask = 16'h5700;
    cycloneii_lcell_comb ix51723z52923 (.combout (nx51723z1), .dataa (cpt[3]), .datab (
                         nx52720z2), .datac (nx22430z2), .datad (nx51723z2)) ;
                         defparam ix51723z52923.lut_mask = 16'h5700;
    cycloneii_lcell_comb ix50726z52923 (.combout (nx50726z1), .dataa (cpt[3]), .datab (
                         nx52720z2), .datac (nx22430z2), .datad (nx50726z2)) ;
                         defparam ix50726z52923.lut_mask = 16'h5700;
    cycloneii_lcell_comb ix49729z52923 (.combout (nx49729z1), .dataa (cpt[3]), .datab (
                         cpt[0]), .datac (nx52720z2), .datad (nx22430z2)) ;
                         defparam ix49729z52923.lut_mask = 16'h1113;
    cycloneii_lcell_comb ix29521z52923 (.combout (nx29521z1), .dataa (cpt[3]), .datab (
                         state_4_), .datac (nx52720z2), .datad (nx22430z2)) ;
                         defparam ix29521z52923.lut_mask = 16'hf2f0;
    cycloneii_lcell_comb ix33079z52923 (.combout (nx33079z1), .dataa (DSO), .datab (
                         cpt[3]), .datac (state_4_), .datad (1'b1)) ;
                         defparam ix33079z52923.lut_mask = 16'heaea;
    cycloneii_lcell_comb ix22430z52924 (.combout (nx22430z1), .dataa (cpt[3]), .datab (
                         state_4_), .datac (nx52720z2), .datad (nx22430z2)) ;
                         defparam ix22430z52924.lut_mask = 16'h2220;
    cycloneii_lcell_comb ix49729z52924 (.combout (nx49729z2), .dataa (cpt[3]), .datab (
                         nx52720z2), .datac (nx22430z2), .datad (1'b1)) ;
                         defparam ix49729z52924.lut_mask = 16'hfdfd;
    cycloneii_lcell_comb ix22430z52925 (.combout (nx22430z2), .dataa (cpt[3]), .datab (
                         cpt[2]), .datac (cpt[1]), .datad (cpt[0])) ;
                         defparam ix22430z52925.lut_mask = 16'h0002;
endmodule

