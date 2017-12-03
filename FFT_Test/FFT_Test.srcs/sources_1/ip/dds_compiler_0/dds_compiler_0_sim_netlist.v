// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Fri Dec  1 15:45:30 2017
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
  (* C_PHASE_INCREMENT_VALUE = "1000011000110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "1000011000110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
  (* C_PHASE_INCREMENT_VALUE = "1000011000110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
NZR8j+egCESU+iodvBX6w/ltfg6v2V24d20eSzJsQjiONWskJ5XWGH7er+DjkHAswiAWO41AsNaZ
RfEZV+BQ6/7p5ciXoCxv+5l0Ewy6+9ia29Gdeoq5au92uUgGzeWrSNmlSDXWVIYzWu5HHn+YX2FB
Bx5VN0gpFn8ndxxq5fTupg1+vO8VjFdG78zNepDTbIedRsjd6WqQdgLxrfUM++3O141Pa3FUJe+A
HXzDdO6Pe0j/Ryz5Z6eqizV4asluC41Yjhk/0QC4NPSQ8HSejFJNXfN3AjeeQqWRtKcIvQRxW6Kh
bm6NxRN4jsNusyndmDXvZ+LKOBd1YUptK1NAXw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
ZJkFiWIAjxw3lFbk3P2SdvHj/xDfxY7m43xiPeHgiVojW3Ri2Tl3yOvHdDpTeULRVtkjAZfAIAya
F5Czk5qsnr9UPSIhzcwq8DW5q/+YZtSmVnlQOPWzBPgRRBRgpHOKsIS5YUBq0iD5ER53aEWAsN2Z
ovWQZXPkKrpG3DT7FbRAp+oWuKSmP7l4BL9rjWK11ZpJ0y9oYvE6+0LmrEM2N0vJgmdAT8Swb+Pa
2gy2sgitFpNXgCNpRNugW+3BRoXt9es6HNGCj7brvDaWvAl2LVvKRg3+rHoXpzDthaDF6trPMWje
/JPJNUKMxdWefdEsgAMjHXEc8QnJCcYaoM0opw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 49504)
`pragma protect data_block
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
eYBihmivfIjhwCeRMW4cbGvu9Y+0lRnULmDO5w==
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
