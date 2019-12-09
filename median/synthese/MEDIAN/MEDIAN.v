//
// Verilog description for cell MEDIAN, 
// Mon Dec  9 12:22:47 2019
//
// Precision RTL Synthesis, 64-bit 2017.1.0.15//


module MEDIAN ( DI, DSI, nRST, CLK, DO, DSO ) ;

    input [7:0]DI ;
    input DSI ;
    input nRST ;
    input CLK ;
    output [7:0]DO ;
    output DSO ;

    wire DSI_S;
    wire [7:0]DI_S;
    wire [4:0]cpt;
    wire [6:0]state;
    wire [7:0]med0_R_7_;
    wire nx60131z2, inc_d_0_, nx53265z2, inc_d_1_, nx53265z1, inc_d_2_, 
         nx55259z2, inc_d_3_, nx55259z1, inc_d_4_, nx60131z9, nx60131z8, 
         nx60131z7, nx60131z6, nx60131z5, nx60131z4, nx60131z3, not_nRST, GND, 
         nx54262z1, nx29521z1, nx54262z2, nx54262z4, nx61128z2, nx61128z3, 
         nx61128z6, nx61128z4;
    wire [7:0]med0_R_0n1s1;
    wire nx54262z3, nx29521z4, nx51271z1, nx61128z1, nx29521z2, nx61128z7, 
         nx29521z3, nx61128z5, nx61128z8, nx54262z6, nx54262z5, nx60131z1, 
         nx60131z10, nx60131z11, nx60131z12, nx60131z13, nx60131z14, nx60131z15, 
         nx60131z16, nx28524z1, NOT_state_6_, nx_MEDIAN_vcc_net;
    wire [292:0] xmplr_dummy ;




    altshift_taps ix60131z49990 (.shiftin ({med0_R_0n1s1[7],med0_R_0n1s1[0],
                  med0_R_0n1s1[1],med0_R_0n1s1[2],med0_R_0n1s1[3],
                  med0_R_0n1s1[4],med0_R_0n1s1[5],med0_R_0n1s1[6]}), .clock (CLK
                  ), .aclr (GND), .shiftout ({med0_R_7_[7],med0_R_7_[0],
                  med0_R_7_[1],med0_R_7_[2],med0_R_7_[3],med0_R_7_[4],
                  med0_R_7_[5],med0_R_7_[6]})) ;
                  defparam ix60131z49990.tap_distance = 8;
                  defparam ix60131z49990.number_of_taps = 1;
                  defparam ix60131z49990.width = 8;
                  defparam ix60131z49990.lpm_type = "altshift_taps";
                  defparam ix60131z49990.power_up_state = "DONT_CARE";
    assign not_nRST = ~nRST ;
    assign GND = 1'b0 ;
    assign state[0] = ~nx28524z1 ;
    assign NOT_state_6_ = ~state[6] ;
    cycloneii_lcell_ff reg_state_6_ (.regout (state[6]), .datain (state[5]), .sdata (
                       1'b0), .clk (CLK), .ena (nx29521z1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_5_ (.regout (state[5]), .datain (state[4]), .sdata (
                       1'b0), .clk (CLK), .ena (nx29521z1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_4_ (.regout (state[4]), .datain (state[3]), .sdata (
                       1'b0), .clk (CLK), .ena (nx29521z1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_3_ (.regout (state[3]), .datain (state[2]), .sdata (
                       1'b0), .clk (CLK), .ena (nx29521z1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_2_ (.regout (state[2]), .datain (state[1]), .sdata (
                       1'b0), .clk (CLK), .ena (nx29521z1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_1_ (.regout (state[1]), .datain (state[0]), .sdata (
                       1'b0), .clk (CLK), .ena (nx29521z1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_state_0_ (.regout (nx28524z1), .datain (NOT_state_6_)
                       , .sdata (1'b0), .clk (CLK), .ena (nx29521z1), .aclr (
                       not_nRST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (cpt[4]), .datain (inc_d_4_), .sdata (
                       1'b0), .clk (CLK), .ena (nx54262z1), .aclr (not_nRST), .sclr (
                       nx51271z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (cpt[3]), .datain (inc_d_3_), .sdata (
                       1'b0), .clk (CLK), .ena (nx54262z1), .aclr (not_nRST), .sclr (
                       nx51271z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (cpt[2]), .datain (inc_d_2_), .sdata (
                       1'b0), .clk (CLK), .ena (nx54262z1), .aclr (not_nRST), .sclr (
                       nx51271z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (cpt[1]), .datain (inc_d_1_), .sdata (
                       1'b0), .clk (CLK), .ena (nx54262z1), .aclr (not_nRST), .sclr (
                       nx51271z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (cpt[0]), .datain (inc_d_0_), .sdata (
                       1'b0), .clk (CLK), .ena (nx54262z1), .aclr (not_nRST), .sclr (
                       nx51271z1), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_DSI_S (.regout (DSI_S), .datain (DSI), .sdata (1'b0)
                       , .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_DI_S_7_ (.regout (DI_S[7]), .datain (DI[7]), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_DI_S_6_ (.regout (DI_S[6]), .datain (DI[6]), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_DI_S_5_ (.regout (DI_S[5]), .datain (DI[5]), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_DI_S_4_ (.regout (DI_S[4]), .datain (DI[4]), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_DI_S_3_ (.regout (DI_S[3]), .datain (DI[3]), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_DI_S_2_ (.regout (DI_S[2]), .datain (DI[2]), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_DI_S_1_ (.regout (DI_S[1]), .datain (DI[1]), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_DI_S_0_ (.regout (DI_S[0]), .datain (DI[0]), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (not_nRST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff med0_reg_R_8__7_ (.regout (DO[7]), .datain (med0_R_7_[7])
                       , .sdata (1'b0), .clk (CLK), .ena (nx61128z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff med0_reg_R_8__6_ (.regout (DO[6]), .datain (med0_R_7_[6])
                       , .sdata (1'b0), .clk (CLK), .ena (nx61128z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff med0_reg_R_8__5_ (.regout (DO[5]), .datain (med0_R_7_[5])
                       , .sdata (1'b0), .clk (CLK), .ena (nx61128z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff med0_reg_R_8__4_ (.regout (DO[4]), .datain (med0_R_7_[4])
                       , .sdata (1'b0), .clk (CLK), .ena (nx61128z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff med0_reg_R_8__3_ (.regout (DO[3]), .datain (med0_R_7_[3])
                       , .sdata (1'b0), .clk (CLK), .ena (nx61128z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff med0_reg_R_8__2_ (.regout (DO[2]), .datain (med0_R_7_[2])
                       , .sdata (1'b0), .clk (CLK), .ena (nx61128z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff med0_reg_R_8__1_ (.regout (DO[1]), .datain (med0_R_7_[1])
                       , .sdata (1'b0), .clk (CLK), .ena (nx61128z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff med0_reg_R_8__0_ (.regout (DO[0]), .datain (med0_R_7_[0])
                       , .sdata (1'b0), .clk (CLK), .ena (nx61128z1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb med0_mce0_rtlc0_27_gt_0_ix60131z52926 (.combout (
                         nx60131z2), .dataa (med0_R_7_[7]), .datab (DO[7]), .datac (
                         1'b1), .datad (nx_MEDIAN_vcc_net), .cin (nx60131z3)) ;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52926.lut_mask = 16'hd4d4;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52926.sum_lutc_input = "cin";
    assign nx_MEDIAN_vcc_net = 1'b1 ;
    cycloneii_lcell_comb med0_mce0_rtlc0_27_gt_0_ix60131z52928 (.cout (nx60131z3
                         ), .dataa (med0_R_7_[6]), .datab (DO[6]), .datac (1'b1)
                         , .datad (nx_MEDIAN_vcc_net), .cin (nx60131z4)) ;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52928.lut_mask = 16'h00d4;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb med0_mce0_rtlc0_27_gt_0_ix60131z52929 (.cout (nx60131z4
                         ), .dataa (med0_R_7_[5]), .datab (DO[5]), .datac (1'b1)
                         , .datad (nx_MEDIAN_vcc_net), .cin (nx60131z5)) ;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52929.lut_mask = 16'h00d4;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb med0_mce0_rtlc0_27_gt_0_ix60131z52930 (.cout (nx60131z5
                         ), .dataa (med0_R_7_[4]), .datab (DO[4]), .datac (1'b1)
                         , .datad (nx_MEDIAN_vcc_net), .cin (nx60131z6)) ;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52930.lut_mask = 16'h00d4;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb med0_mce0_rtlc0_27_gt_0_ix60131z52931 (.cout (nx60131z6
                         ), .dataa (med0_R_7_[3]), .datab (DO[3]), .datac (1'b1)
                         , .datad (nx_MEDIAN_vcc_net), .cin (nx60131z7)) ;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52931.lut_mask = 16'h00d4;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb med0_mce0_rtlc0_27_gt_0_ix60131z52932 (.cout (nx60131z7
                         ), .dataa (med0_R_7_[2]), .datab (DO[2]), .datac (1'b1)
                         , .datad (nx_MEDIAN_vcc_net), .cin (nx60131z8)) ;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52932.lut_mask = 16'h00d4;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb med0_mce0_rtlc0_27_gt_0_ix60131z52933 (.cout (nx60131z8
                         ), .dataa (med0_R_7_[1]), .datab (DO[1]), .datac (1'b1)
                         , .datad (nx_MEDIAN_vcc_net), .cin (nx60131z9)) ;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52933.lut_mask = 16'h00d4;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb med0_mce0_rtlc0_27_gt_0_ix60131z52934 (.cout (nx60131z9
                         ), .dataa (DO[0]), .datab (med0_R_7_[0]), .datac (1'b1)
                         , .datad (nx_MEDIAN_vcc_net)) ;
                         defparam med0_mce0_rtlc0_27_gt_0_ix60131z52934.lut_mask = 16'h0022;
    cycloneii_lcell_comb ix53265z52923 (.combout (inc_d_2_), .cout (nx55259z2), 
                         .dataa (cpt[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_MEDIAN_vcc_net), .cin (nx53265z1)) ;
                         defparam ix53265z52923.lut_mask = 16'h5aa0;
                         defparam ix53265z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix53265z52924 (.combout (inc_d_1_), .cout (nx53265z1), 
                         .dataa (cpt[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_MEDIAN_vcc_net), .cin (nx53265z2)) ;
                         defparam ix53265z52924.lut_mask = 16'h5aa0;
                         defparam ix53265z52924.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix53265z52925 (.cout (nx53265z2), .dataa (cpt[0]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_MEDIAN_vcc_net)) ;
                         defparam ix53265z52925.lut_mask = 16'h00aa;
    cycloneii_lcell_comb ix55259z52923 (.combout (inc_d_4_), .dataa (cpt[4]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_MEDIAN_vcc_net), .cin (
                         nx55259z1)) ;
                         defparam ix55259z52923.lut_mask = 16'h5a5a;
                         defparam ix55259z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix55259z52924 (.combout (inc_d_3_), .cout (nx55259z1), 
                         .dataa (cpt[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_MEDIAN_vcc_net), .cin (nx55259z2)) ;
                         defparam ix55259z52924.lut_mask = 16'h5aa0;
                         defparam ix55259z52924.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix51271z52923 (.combout (inc_d_0_), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (cpt[0])) ;
                         defparam ix51271z52923.lut_mask = 16'h00ff;
    cycloneii_lcell_comb ix60131z52948 (.combout (nx60131z16), .dataa (DO[6]), .datab (
                         DSI_S), .datac (med0_R_7_[6]), .datad (nx60131z2)) ;
                         defparam ix60131z52948.lut_mask = 16'hfcee;
    cycloneii_lcell_comb ix60131z52946 (.combout (nx60131z15), .dataa (DO[5]), .datab (
                         DSI_S), .datac (med0_R_7_[5]), .datad (nx60131z2)) ;
                         defparam ix60131z52946.lut_mask = 16'hfcee;
    cycloneii_lcell_comb ix60131z52944 (.combout (nx60131z14), .dataa (DO[4]), .datab (
                         DSI_S), .datac (med0_R_7_[4]), .datad (nx60131z2)) ;
                         defparam ix60131z52944.lut_mask = 16'hfcee;
    cycloneii_lcell_comb ix60131z52942 (.combout (nx60131z13), .dataa (DO[3]), .datab (
                         DSI_S), .datac (med0_R_7_[3]), .datad (nx60131z2)) ;
                         defparam ix60131z52942.lut_mask = 16'hfcee;
    cycloneii_lcell_comb ix60131z52940 (.combout (nx60131z12), .dataa (DO[2]), .datab (
                         DSI_S), .datac (med0_R_7_[2]), .datad (nx60131z2)) ;
                         defparam ix60131z52940.lut_mask = 16'hfcee;
    cycloneii_lcell_comb ix60131z52938 (.combout (nx60131z11), .dataa (DO[1]), .datab (
                         DSI_S), .datac (med0_R_7_[1]), .datad (nx60131z2)) ;
                         defparam ix60131z52938.lut_mask = 16'hfcee;
    cycloneii_lcell_comb ix60131z52936 (.combout (nx60131z10), .dataa (DO[0]), .datab (
                         DSI_S), .datac (med0_R_7_[0]), .datad (nx60131z2)) ;
                         defparam ix60131z52936.lut_mask = 16'hfcee;
    cycloneii_lcell_comb ix60131z52925 (.combout (nx60131z1), .dataa (DO[7]), .datab (
                         DSI_S), .datac (med0_R_7_[7]), .datad (nx60131z2)) ;
                         defparam ix60131z52925.lut_mask = 16'hfcee;
    cycloneii_lcell_comb ix54262z52927 (.combout (nx54262z5), .dataa (cpt[2]), .datab (
                         cpt[1]), .datac (cpt[0]), .datad (1'b1)) ;
                         defparam ix54262z52927.lut_mask = 16'h0101;
    cycloneii_lcell_comb ix54262z52929 (.combout (nx54262z6), .dataa (DSI), .datab (
                         state[1]), .datac (nx28524z1), .datad (1'b1)) ;
                         defparam ix54262z52929.lut_mask = 16'h7070;
    cycloneii_lcell_comb ix61128z52930 (.combout (nx61128z8), .dataa (cpt[2]), .datab (
                         cpt[1]), .datac (state[4]), .datad (nx54262z2)) ;
                         defparam ix61128z52930.lut_mask = 16'h0070;
    cycloneii_lcell_comb ix61128z52927 (.combout (nx61128z5), .dataa (state[6])
                         , .datab (nx28524z1), .datac (nx61128z6), .datad (
                         nx61128z8)) ;
                         defparam ix61128z52927.lut_mask = 16'hfffb;
    cycloneii_lcell_comb ix29521z52926 (.combout (nx29521z3), .dataa (cpt[0]), .datab (
                         nx29521z4), .datac (1'b1), .datad (1'b1)) ;
                         defparam ix29521z52926.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix61128z52929 (.combout (nx61128z7), .dataa (cpt[2]), .datab (
                         cpt[1]), .datac (cpt[0]), .datad (1'b1)) ;
                         defparam ix61128z52929.lut_mask = 16'h5757;
    cycloneii_lcell_comb ix29521z52925 (.combout (nx29521z2), .dataa (DSI), .datab (
                         state[1]), .datac (nx28524z1), .datad (1'b1)) ;
                         defparam ix29521z52925.lut_mask = 16'h7272;
    cycloneii_lcell_comb ix61128z52923 (.combout (nx61128z1), .dataa (nx61128z2)
                         , .datab (nx61128z3), .datac (nx60131z2), .datad (
                         nx61128z5)) ;
                         defparam ix61128z52923.lut_mask = 16'h0f1f;
    cycloneii_lcell_comb ix51271z52924 (.combout (nx51271z1), .dataa (cpt[3]), .datab (
                         state[6]), .datac (state[1]), .datad (1'b1)) ;
                         defparam ix51271z52924.lut_mask = 16'h3232;
    cycloneii_lcell_comb ix29521z52927 (.combout (nx29521z4), .dataa (cpt[4]), .datab (
                         cpt[3]), .datac (cpt[2]), .datad (cpt[1])) ;
                         defparam ix29521z52927.lut_mask = 16'h0010;
    cycloneii_lcell_comb ix54262z52928 (.combout (DSO), .dataa (cpt[0]), .datab (
                         state[6]), .datac (nx29521z4), .datad (1'b1)) ;
                         defparam ix54262z52928.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix54262z52925 (.combout (nx54262z3), .dataa (cpt[4]), .datab (
                         cpt[3]), .datac (nx54262z4), .datad (nx54262z5)) ;
                         defparam ix54262z52925.lut_mask = 16'hb0f0;
    cycloneii_lcell_comb ix60131z52935 (.combout (med0_R_0n1s1[0]), .dataa (
                         DSI_S), .datab (DI_S[0]), .datac (nx60131z10), .datad (
                         1'b1)) ;
                         defparam ix60131z52935.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix60131z52937 (.combout (med0_R_0n1s1[1]), .dataa (
                         DSI_S), .datab (DI_S[1]), .datac (nx60131z11), .datad (
                         1'b1)) ;
                         defparam ix60131z52937.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix60131z52939 (.combout (med0_R_0n1s1[2]), .dataa (
                         DSI_S), .datab (DI_S[2]), .datac (nx60131z12), .datad (
                         1'b1)) ;
                         defparam ix60131z52939.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix60131z52941 (.combout (med0_R_0n1s1[3]), .dataa (
                         DSI_S), .datab (DI_S[3]), .datac (nx60131z13), .datad (
                         1'b1)) ;
                         defparam ix60131z52941.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix60131z52943 (.combout (med0_R_0n1s1[4]), .dataa (
                         DSI_S), .datab (DI_S[4]), .datac (nx60131z14), .datad (
                         1'b1)) ;
                         defparam ix60131z52943.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix60131z52945 (.combout (med0_R_0n1s1[5]), .dataa (
                         DSI_S), .datab (DI_S[5]), .datac (nx60131z15), .datad (
                         1'b1)) ;
                         defparam ix60131z52945.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix60131z52947 (.combout (med0_R_0n1s1[6]), .dataa (
                         DSI_S), .datab (DI_S[6]), .datac (nx60131z16), .datad (
                         1'b1)) ;
                         defparam ix60131z52947.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix60131z52924 (.combout (med0_R_0n1s1[7]), .dataa (
                         DSI_S), .datab (DI_S[7]), .datac (nx60131z1), .datad (
                         1'b1)) ;
                         defparam ix60131z52924.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix61128z52926 (.combout (nx61128z4), .dataa (cpt[2]), .datab (
                         cpt[1]), .datac (1'b1), .datad (1'b1)) ;
                         defparam ix61128z52926.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix61128z52928 (.combout (nx61128z6), .dataa (cpt[4]), .datab (
                         cpt[3]), .datac (state[5]), .datad (nx61128z7)) ;
                         defparam ix61128z52928.lut_mask = 16'h1000;
    cycloneii_lcell_comb ix61128z52925 (.combout (nx61128z3), .dataa (cpt[0]), .datab (
                         state[3]), .datac (nx54262z2), .datad (nx61128z4)) ;
                         defparam ix61128z52925.lut_mask = 16'h040c;
    cycloneii_lcell_comb ix61128z52924 (.combout (nx61128z2), .dataa (cpt[4]), .datab (
                         cpt[3]), .datac (state[2]), .datad (nx54262z5)) ;
                         defparam ix61128z52924.lut_mask = 16'hb0f0;
    cycloneii_lcell_comb ix54262z52926 (.combout (nx54262z4), .dataa (state[6])
                         , .datab (state[1]), .datac (nx28524z1), .datad (1'b1)
                         ) ;
                         defparam ix54262z52926.lut_mask = 16'h1010;
    cycloneii_lcell_comb ix54262z52924 (.combout (nx54262z2), .dataa (cpt[4]), .datab (
                         cpt[3]), .datac (1'b1), .datad (1'b1)) ;
                         defparam ix54262z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix29521z52924 (.combout (nx29521z1), .dataa (state[6])
                         , .datab (nx54262z3), .datac (nx29521z2), .datad (
                         nx29521z3)) ;
                         defparam ix29521z52924.lut_mask = 16'h1030;
    cycloneii_lcell_comb ix54262z52923 (.combout (nx54262z1), .dataa (nx54262z2)
                         , .datab (nx54262z3), .datac (DSO), .datad (nx54262z6)
                         ) ;
                         defparam ix54262z52923.lut_mask = 16'h0700;
endmodule

