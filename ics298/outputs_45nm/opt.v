
// Generated by Cadence Genus(TM) Synthesis Solution 21.14-s082_1
// Generated on: Feb 13 2025 10:11:16 IST (Feb 13 2025 04:41:16 UTC)

// Verification Directory fv/s298 

module s298(GND, VDD, CK, G0, G1, G117, G118, G132, G133, G2, G66, G67);
  input GND, VDD, CK, G0, G1, G2;
  output G117, G118, G132, G133, G66, G67;
  wire GND, VDD, CK, G0, G1, G2;
  wire G117, G118, G132, G133, G66, G67;
  wire G10, G11, G12, G13, G14, G15, G22, G23;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54;
  DFFHQX1 DFF_10_q_reg(.CK (CK), .D (n_54), .Q (G132));
  OAI221X1 g1101__2398(.A0 (G10), .A1 (n_52), .B0 (n_1), .B1 (n_41),
       .C0 (n_39), .Y (n_54));
  DFFHQX1 DFF_6_q_reg(.CK (CK), .D (n_51), .Q (G66));
  DFFHQX1 DFF_9_q_reg(.CK (CK), .D (n_50), .Q (G118));
  DFFHQX1 DFF_5_q_reg(.CK (CK), .D (n_53), .Q (G15));
  DFFHQX1 DFF_4_q_reg(.CK (CK), .D (n_48), .Q (G14));
  NOR2X1 g1105__5107(.A (G0), .B (n_52), .Y (n_53));
  DFFHQX1 DFF_3_q_reg(.CK (CK), .D (n_47), .Q (G13));
  AO21X1 g1106__6260(.A0 (G66), .A1 (n_45), .B0 (n_49), .Y (n_51));
  NAND2BX1 g1107__4319(.AN (n_49), .B (n_46), .Y (n_50));
  NOR2BX1 g1103__8428(.AN (n_44), .B (G0), .Y (n_48));
  DFFHQX1 DFF_7_q_reg(.CK (CK), .D (n_42), .Q (G67));
  DFFHQX1 DFF_11_q_reg(.CK (CK), .D (n_43), .Q (G133));
  OAI22X1 g1100__5526(.A0 (G0), .A1 (n_33), .B0 (n_35), .B1 (n_27), .Y
       (n_47));
  AOI21X1 g1109__6783(.A0 (G15), .A1 (n_38), .B0 (n_21), .Y (n_52));
  OAI21X1 g1117__3680(.A0 (n_37), .A1 (n_36), .B0 (n_22), .Y (n_49));
  DFFHQX1 DFF_8_q_reg(.CK (CK), .D (n_32), .Q (G117));
  AOI21X1 g1113__1617(.A0 (G118), .A1 (n_45), .B0 (n_40), .Y (n_46));
  XNOR2X1 g1115__2802(.A (G14), .B (n_26), .Y (n_44));
  OAI2BB1X1 g1122__1705(.A0N (G133), .A1N (n_45), .B0 (n_23), .Y
       (n_43));
  DFFHQX1 DFF_2_q_reg(.CK (CK), .D (n_24), .Q (G12));
  OAI221X1 g1114__5122(.A0 (n_0), .A1 (n_41), .B0 (G11), .B1 (n_31),
       .C0 (n_30), .Y (n_42));
  OAI21X1 g1123__8246(.A0 (G10), .A1 (n_13), .B0 (n_39), .Y (n_40));
  NAND2BX1 g1125__7098(.AN (n_37), .B (n_34), .Y (n_38));
  AOI2BB1X1 g1128__6131(.A0N (n_35), .A1N (G15), .B0 (n_34), .Y (n_36));
  AOI22X1 g1116__1881(.A0 (G12), .A1 (n_15), .B0 (G11), .B1 (n_28), .Y
       (n_33));
  OAI211X1 g1121__5115(.A0 (n_2), .A1 (n_41), .B0 (n_31), .C0 (n_30),
       .Y (n_32));
  DFFHQX1 DFF_13_q_reg(.CK (CK), .D (n_16), .Q (G23));
  DFFHQX1 DFF_12_q_reg(.CK (CK), .D (n_17), .Q (G22));
  OAI32X1 g1124__7482(.A0 (G0), .A1 (n_28), .A2 (n_25), .B0 (n_20), .B1
       (n_27), .Y (n_29));
  AOI2BB1X1 g1129__4733(.A0N (n_19), .A1N (n_25), .B0 (G23), .Y (n_26));
  NOR2BX1 g1118__6161(.AN (n_18), .B (G0), .Y (n_24));
  NAND3BXL g1130__9315(.AN (n_37), .B (G12), .C (n_10), .Y (n_23));
  OAI211X1 g1131__9945(.A0 (G12), .A1 (n_3), .B0 (n_4), .C0 (n_12), .Y
       (n_22));
  AND4X1 g1132__2883(.A (G22), .B (n_20), .C (n_11), .D (n_28), .Y
       (n_21));
  NOR2X1 g1138__2346(.A (G22), .B (n_19), .Y (n_34));
  INVX1 g1140(.A (n_41), .Y (n_45));
  XNOR2X1 g1133__1666(.A (G12), .B (n_14), .Y (n_18));
  NOR2X1 g1127__7410(.A (G0), .B (n_8), .Y (n_17));
  NOR2X1 g1126__6417(.A (G0), .B (n_7), .Y (n_16));
  MXI2XL g1134__5477(.A (n_14), .B (G11), .S0 (G13), .Y (n_15));
  NOR2X1 g1136__2398(.A (G15), .B (n_12), .Y (n_13));
  NAND2X1 g1137__5107(.A (n_11), .B (n_10), .Y (n_31));
  OR4X1 g1135__6260(.A (G12), .B (G11), .C (n_11), .D (n_9), .Y (n_39));
  OR3X1 g1143__4319(.A (G12), .B (n_20), .C (n_9), .Y (n_30));
  OR3X1 g1144__8428(.A (G15), .B (n_11), .C (n_5), .Y (n_41));
  DFFHQX1 DFF_0_q_reg(.CK (CK), .D (n_6), .Q (G10));
  INVX1 g1151(.A (n_28), .Y (n_19));
  XNOR2X1 g1142__5526(.A (G2), .B (G22), .Y (n_8));
  XNOR2X1 g1141__6783(.A (G1), .B (G23), .Y (n_7));
  INVX1 g1145(.A (n_9), .Y (n_10));
  NAND2X1 g1147__3680(.A (G10), .B (n_20), .Y (n_25));
  NOR2X1 g1152__1617(.A (n_35), .B (G14), .Y (n_12));
  INVX1 g1150(.A (n_6), .Y (n_27));
  NAND2X1 g1148__2802(.A (G11), .B (n_11), .Y (n_37));
  NOR2X1 g1155__1705(.A (G12), .B (n_35), .Y (n_28));
  NOR2X1 g1146__5122(.A (G12), .B (G13), .Y (n_5));
  NAND2X1 g1153__8246(.A (G10), .B (G11), .Y (n_14));
  NOR2X1 g1154__7098(.A (G0), .B (G10), .Y (n_6));
  OR2X1 g1149__6131(.A (G13), .B (G15), .Y (n_9));
  INVX1 g1159(.A (G15), .Y (n_4));
  INVX1 g1158(.A (G22), .Y (n_3));
  INVX1 g1161(.A (G13), .Y (n_35));
  INVX1 g1160(.A (G14), .Y (n_11));
  INVX1 g1157(.A (G117), .Y (n_2));
  INVX1 g1156(.A (G132), .Y (n_1));
  INVX1 g1163(.A (G67), .Y (n_0));
  DFFX1 DFF_1_q_reg(.CK (CK), .D (n_29), .Q (G11), .QN (n_20));
endmodule

