// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Wed Dec  6 22:54:40 2017
// Host        : Daniel running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/VivadoProjects/FFT_Test/FFT_Test.srcs/sources_1/ip/dds_compiler_0/dds_compiler_0_sim_netlist.v
// Design      : dds_compiler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_13,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module dds_compiler_0
   (aclk,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [7:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [31:0]m_axis_phase_tdata;

  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [31:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "28" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "1100111111111111110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_compiler_0_dds_compiler_v6_0_13 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[27:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[27:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[27:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule

(* C_ACCUMULATOR_WIDTH = "28" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "1" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "1" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "0" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "3" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "8" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "32" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "0" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "8" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "1100111111111111110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "1" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_compiler_0_dds_compiler_v6_0_13
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [0:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [7:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [31:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [27:0]debug_axi_pinc_in;
  output [27:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [27:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire [27:0]\^m_axis_phase_tdata ;
  wire m_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [30:27]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[27] = \<const0> ;
  assign debug_axi_pinc_in[26] = \<const0> ;
  assign debug_axi_pinc_in[25] = \<const0> ;
  assign debug_axi_pinc_in[24] = \<const0> ;
  assign debug_axi_pinc_in[23] = \<const0> ;
  assign debug_axi_pinc_in[22] = \<const0> ;
  assign debug_axi_pinc_in[21] = \<const0> ;
  assign debug_axi_pinc_in[20] = \<const0> ;
  assign debug_axi_pinc_in[19] = \<const0> ;
  assign debug_axi_pinc_in[18] = \<const0> ;
  assign debug_axi_pinc_in[17] = \<const0> ;
  assign debug_axi_pinc_in[16] = \<const0> ;
  assign debug_axi_pinc_in[15] = \<const0> ;
  assign debug_axi_pinc_in[14] = \<const0> ;
  assign debug_axi_pinc_in[13] = \<const0> ;
  assign debug_axi_pinc_in[12] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[27] = \<const0> ;
  assign debug_axi_poff_in[26] = \<const0> ;
  assign debug_axi_poff_in[25] = \<const0> ;
  assign debug_axi_poff_in[24] = \<const0> ;
  assign debug_axi_poff_in[23] = \<const0> ;
  assign debug_axi_poff_in[22] = \<const0> ;
  assign debug_axi_poff_in[21] = \<const0> ;
  assign debug_axi_poff_in[20] = \<const0> ;
  assign debug_axi_poff_in[19] = \<const0> ;
  assign debug_axi_poff_in[18] = \<const0> ;
  assign debug_axi_poff_in[17] = \<const0> ;
  assign debug_axi_poff_in[16] = \<const0> ;
  assign debug_axi_poff_in[15] = \<const0> ;
  assign debug_axi_poff_in[14] = \<const0> ;
  assign debug_axi_poff_in[13] = \<const0> ;
  assign debug_axi_poff_in[12] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[27] = \<const0> ;
  assign debug_phase[26] = \<const0> ;
  assign debug_phase[25] = \<const0> ;
  assign debug_phase[24] = \<const0> ;
  assign debug_phase[23] = \<const0> ;
  assign debug_phase[22] = \<const0> ;
  assign debug_phase[21] = \<const0> ;
  assign debug_phase[20] = \<const0> ;
  assign debug_phase[19] = \<const0> ;
  assign debug_phase[18] = \<const0> ;
  assign debug_phase[17] = \<const0> ;
  assign debug_phase[16] = \<const0> ;
  assign debug_phase[15] = \<const0> ;
  assign debug_phase[14] = \<const0> ;
  assign debug_phase[13] = \<const0> ;
  assign debug_phase[12] = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_missing = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_data_tvalid = m_axis_phase_tvalid;
  assign m_axis_phase_tdata[31] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[30] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[29] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[28] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[27:0] = \^m_axis_phase_tdata [27:0];
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign s_axis_config_tready = \<const1> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUMULATOR_WIDTH = "28" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "1100111111111111110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_compiler_0_dds_compiler_v6_0_13_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[27:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[27:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[27:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_phase_tvalid),
        .m_axis_phase_tdata({\^m_axis_phase_tdata [27],NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[30:27],\^m_axis_phase_tdata [26:0]}),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
TvtROpMaL0roOEiaTPPT4e5ER2Ano/2IHL04+lqpHIOhml7R99jfOiKc+8n39dhWyMrL9iYdiswb
RLtUPexkEg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MoNeIm5zXlcK6vCWZG4JoC8J0DfK0StuXObGlmRG73BGxVD6jsKoxkOnL4oOgb86LUy5HhoE+kEs
bDZr+ycOTTNcQtASTjXy15ERW+Eef/oyTaN/K6ymUtU1TYZOvbv3HQ1ru1AdwnaMWANvopqb7JbX
rd9tDL2u0oM/3rzQvTI=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Emm30NBOUyBb85ubeWM1z/RHe1w2/2MZseQLJuAwAwvLNnMgZVVQf6+IQPiWX3S/rVi6pgYzu5hJ
VJVYTysTNqafPBdpXdKFmjLp6DJ0lIPEAuc4i8Tyq0tImFbZwsHbZXav6+rqKqD4t0FJrbtSecns
uVs65JY4k+d7e/C+r5Q=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tq7bslAbb0X/m/qKbZMPqkV1cnoSeoQNJlBMUIv0dUQdS0rhCvMSHltY+6hAC7fl8t4wWslEx9It
VSDLszVDR+BezhCsvgA7fqoFb/Cz0ERu67YA3IGPC7Tdjo0Gc2AIPqoxc4y/kLUc0YUqBdy+6f7M
knhffqD3iV1G/87RTM5KZnCQ7UyMpByDJXTJqSU8vjewM0z0+C11DYrHfXCPYT+KlhCIaR/cNpy1
kNUuHUSgsS2wDP7nZu0zanzcxrR3P+T/8/vWoptfezwsCIuC/72xvaO1U2arD89DXkoDLIQ2Q0VZ
hQzQWU/U7deibHHBMpKy1R1pIWXRD6/R7/IQKA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lwQggcP1KhGEom/t13hx9HFFHfk9JCocFP9fu7x6DpsxQj46vD1yfwamy+saiGWvPQRNN2yzSN1/
86rvv7o/Uxwkp4qQ/eaRO+nlInsOh1TrGkpvNdqR4R2fooFM06QOj8JTMFD75aOAV0WeXDkydomf
xzyHxoZkFRdE9wJkVYxZTcYpfwLMzpwWoGxcIz89xPeVLDGwPvEUfHfwxWHSP/wkg5DXj5j6uqYg
u+bcbOHgZPkf5JN9JkPEMPrLrQbCSYuZfcBVkTHWQ5dm0AWb36DwJqzN14BZwcMdh7QnVsA9hSHh
ofCVW1BCuvYhVkfmFEGx/FUhfimRh7nDMcOkwA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aP2VOS4n48LuE3oNxGlcexBtKWwcJ/16g4KxzeNnilOKiTYF+tptAquAlS97Xrb0YSnua5Zo+htQ
pNjpXhpg5MDG0YVhNyAmRlWWgOmgWUGshrGHwoPhJkaCqTi6VPFXjUruu7p5UdzSXBBnaCm0ctoV
dxvf2SVsSpyLXoPdCNfb/u1ROxdAMzBp/bEZ5Rc8m3lRyTqj3B3JOkktmT0eWxERviASB0buZlQh
Wxc860aiKwbeXzGIUmwtIdIOhcrW/hzzAqMpi0eJ3rpd3uGl90sTkWgAaTwpCnq8qJO9ZG8HOS43
5ZvY+wmotkWyu1ewXRN84PDvKdhA0ojiZnCpmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
I1VphJ9NHIQdJXfLiFLMDpYYzCKg3DtiRuaVcMh30NFKUMZokVkZOCZC6kNAN2c6LK85HfAxpC1q
yqPop0ECC71VDuO4AOTMEgHA5AH80n4OvXhjk7tGutrKvv4hFFqmpyrcypVs0US9fr+tpHSYLaHf
KeSDGssbqL6kcDNBMzvjXLulMsI4CECxZ+tVdOWDTELY30we19WB1Gi8Lq87WNdjos1BOKibrAVk
TMfCAxvX4Mm3OmBlO2vf7k9ojvVxCLlCFYClnt90AsHoj9Snu41akf7B1pG9rnEPOmjsjBHb8x1g
f4GpV0K5vzSTUvTCq8h0I2eMw5Hm1fXtWmpXIg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
ZxOmBjlZHCqnl/IOJcJmpwnRdIxAzXxfrlmuDtezcjynIssumLRo1IsawpL6KkMAUJeVoMGAsok/
t4xJcHLDIkafLudOjR4jlApIg2/jPvX1S5mvM3BNtojwb4BeN0KqfOb1r+zJ+T1IXA5VMJEALlaX
x87U36lu1rIixUbd02NN7OKvEtItMiuw8EOyK2GDqQw1eCIlXETQf91eGO3hKDbEwBLns2NTWZg5
hJbJIpvxrugZnmFz5MlLOQjg02emTv+PcxFgmVjJaubufrCtAGkbhVF1Cx9iyvUo2GJzrQcEH8/T
XHKaBmLB9oAcfKl+hHxO3wwAjr9jMJeCH1SJNw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 49248)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
