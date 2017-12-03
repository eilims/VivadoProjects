// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Fri Sep 29 08:59:22 2017
// Host        : Daniel running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/VivadoProjects/ECE524_PRELAB4/ECE524_PRELAB4.srcs/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_stub.v
// Design      : xbip_dsp48_macro_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_14,Vivado 2017.1" *)
module xbip_dsp48_macro_0(CLK, CE, A, B, C, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,A[7:0],B[7:0],C[15:0],P[16:0]" */;
  input CLK;
  input CE;
  input [7:0]A;
  input [7:0]B;
  input [15:0]C;
  output [16:0]P;
endmodule
