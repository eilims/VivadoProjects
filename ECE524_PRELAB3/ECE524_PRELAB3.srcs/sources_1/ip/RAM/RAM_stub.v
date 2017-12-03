// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Fri Sep 22 13:17:39 2017
// Host        : Daniel running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/VivadoProjects/ECE524_PRELAB3/ECE524_PRELAB3.srcs/sources_1/ip/RAM/RAM_stub.v
// Design      : RAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2017.1" *)
module RAM(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],d[3:0],clk,we,spo[3:0]" */;
  input [3:0]a;
  input [3:0]d;
  input clk;
  input we;
  output [3:0]spo;
endmodule
