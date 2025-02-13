
// Generated by Cadence Genus(TM) Synthesis Solution 21.14-s082_1
// Generated on: Feb 14 2025 16:38:16 IST (Feb 14 2025 11:08:16 UTC)

// Verification Directory fv/mcrb 

module mcrb(mc_rb_ef1_svld_i, gctl_rclk_orst_n_i, skew_addr_cntr_o,
     mc_rb_fuse_vld_i, mc_rb_ef1_sclk_i);
  input mc_rb_ef1_svld_i, gctl_rclk_orst_n_i, mc_rb_fuse_vld_i,
       mc_rb_ef1_sclk_i;
  output [4:0] skew_addr_cntr_o;
  wire mc_rb_ef1_svld_i, gctl_rclk_orst_n_i, mc_rb_fuse_vld_i,
       mc_rb_ef1_sclk_i;
  wire [4:0] skew_addr_cntr_o;
  wire UNCONNECTED, mc_rb_fuse_vld_q, n_0, n_1, n_2, n_3, n_4, n_5;
  wire n_6, n_7, n_8, n_9, n_10, n_11, n_12, n_13;
  wire n_14, n_15, n_16;
  DFFRHQX1 \skew_addr_cntr_reg[4] (.RN (gctl_rclk_orst_n_i), .CK
       (mc_rb_ef1_sclk_i), .D (n_16), .Q (skew_addr_cntr_o[4]));
  NOR2XL g481__2398(.A (n_13), .B (n_15), .Y (n_16));
  DFFRHQX1 \skew_addr_cntr_reg[3] (.RN (gctl_rclk_orst_n_i), .CK
       (mc_rb_ef1_sclk_i), .D (n_14), .Q (skew_addr_cntr_o[3]));
  XNOR2X1 g483__5107(.A (skew_addr_cntr_o[4]), .B (n_11), .Y (n_15));
  NOR2BXL g486__6260(.AN (n_12), .B (n_13), .Y (n_14));
  ADDHXL g488__4319(.A (skew_addr_cntr_o[3]), .B (n_6), .CO (n_11), .S
       (n_12));
  DFFRHQX1 \skew_addr_cntr_reg[1] (.RN (gctl_rclk_orst_n_i), .CK
       (mc_rb_ef1_sclk_i), .D (n_9), .Q (skew_addr_cntr_o[1]));
  DFFRHQX1 \skew_addr_cntr_reg[2] (.RN (gctl_rclk_orst_n_i), .CK
       (mc_rb_ef1_sclk_i), .D (n_8), .Q (skew_addr_cntr_o[2]));
  DFFRHQX1 \skew_addr_cntr_reg[0] (.RN (gctl_rclk_orst_n_i), .CK
       (mc_rb_ef1_sclk_i), .D (n_10), .Q (skew_addr_cntr_o[0]));
  NOR2XL g489__8428(.A (skew_addr_cntr_o[0]), .B (n_13), .Y (n_10));
  NOR2BXL g490__5526(.AN (n_4), .B (n_13), .Y (n_9));
  NOR2BXL g491__6783(.AN (n_7), .B (n_13), .Y (n_8));
  ADDHXL g494__3680(.A (skew_addr_cntr_o[2]), .B (n_3), .CO (n_6), .S
       (n_7));
  AOI31XL g492__1617(.A0 (n_1), .A1 (n_0), .A2 (skew_addr_cntr_o[4]),
       .B0 (n_5), .Y (n_13));
  OAI22XL g493__2802(.A0 (n_2), .A1 (skew_addr_cntr_o[4]), .B0
       (mc_rb_fuse_vld_q), .B1 (mc_rb_ef1_svld_i), .Y (n_5));
  ADDHXL g496__1705(.A (skew_addr_cntr_o[1]), .B (skew_addr_cntr_o[0]),
       .CO (n_3), .S (n_4));
  NOR4XL g495__5122(.A (skew_addr_cntr_o[3]), .B (skew_addr_cntr_o[2]),
       .C (skew_addr_cntr_o[0]), .D (skew_addr_cntr_o[1]), .Y (n_2));
  DFFRX1 mc_rb_fuse_vld_q_reg(.RN (gctl_rclk_orst_n_i), .CK
       (mc_rb_ef1_sclk_i), .D (mc_rb_fuse_vld_i), .Q (UNCONNECTED), .QN
       (mc_rb_fuse_vld_q));
  INVXL g498(.A (skew_addr_cntr_o[2]), .Y (n_1));
  INVXL g499(.A (skew_addr_cntr_o[3]), .Y (n_0));
endmodule

