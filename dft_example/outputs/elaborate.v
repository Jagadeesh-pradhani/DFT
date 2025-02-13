
// Generated by Cadence Genus(TM) Synthesis Solution 21.14-s082_1
// Generated on: Feb 13 2025 11:18:43 IST (Feb 13 2025 05:48:43 UTC)

// Verification Directory fv/dft_example 

module add_unsigned(A, B, Z);
  input [1:0] A, B;
  output [1:0] Z;
  wire [1:0] A, B;
  wire [1:0] Z;
  wire n_7, n_9, n_10, n_11, n_12, n_14;
  xor g1 (Z[0], A[0], B[0]);
  nand g2 (n_7, A[0], B[0]);
  nor g6 (n_9, A[1], B[1]);
  nand g7 (n_12, A[1], B[1]);
  not g8 (n_11, n_9);
  nand g11 (n_14, n_11, n_12);
  xnor g12 (Z[1], n_10, n_14);
  not g14 (n_10, n_7);
endmodule

module dft_example(clk, rst_n, scan_en, scan_in, scan_out, a, b, y);
  input clk, rst_n, scan_en, scan_in;
  input [1:0] a, b;
  output scan_out;
  output [1:0] y;
  wire clk, rst_n, scan_en, scan_in;
  wire [1:0] a, b;
  wire scan_out;
  wire [1:0] y;
  wire [1:0] reg_a;
  wire [1:0] reg_b;
  wire [1:0] comb_logic;
  wire n_8;
  add_unsigned add_29_31(.A (reg_a), .B (reg_b), .Z (comb_logic));
  not g1 (n_8, rst_n);
  CDN_flop \reg_a_reg[0] (.clk (clk), .d (a[0]), .sena (1'b1), .aclr
       (n_8), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (reg_a[0]));
  CDN_flop \reg_a_reg[1] (.clk (clk), .d (a[1]), .sena (1'b1), .aclr
       (n_8), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (reg_a[1]));
  CDN_flop \reg_b_reg[0] (.clk (clk), .d (b[0]), .sena (1'b1), .aclr
       (n_8), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (reg_b[0]));
  CDN_flop \reg_b_reg[1] (.clk (clk), .d (b[1]), .sena (1'b1), .aclr
       (n_8), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (reg_b[1]));
  CDN_flop \y_reg[0] (.clk (clk), .d (comb_logic[0]), .sena (1'b1),
       .aclr (n_8), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (y[0]));
  CDN_flop \y_reg[1] (.clk (clk), .d (comb_logic[1]), .sena (1'b1),
       .aclr (n_8), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (y[1]));
  CDN_flop scan_ff_reg(.clk (clk), .d (scan_in), .sena (scan_en), .aclr
       (n_8), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (scan_out));
endmodule

`ifdef RC_CDN_GENERIC_GATE
`else
module CDN_flop(clk, d, sena, aclr, apre, srl, srd, q);
  input clk, d, sena, aclr, apre, srl, srd;
  output q;
  wire clk, d, sena, aclr, apre, srl, srd;
  wire q;
  reg  qi;
  assign #1 q = qi;
  always 
    @(posedge clk or posedge apre or posedge aclr) 
      if (aclr) 
        qi <= 0;
      else if (apre) 
          qi <= 1;
        else if (srl) 
            qi <= srd;
          else begin
            if (sena) 
              qi <= d;
          end
  initial 
    qi <= 1'b0;
endmodule
`endif
