// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Fri Sep 29 08:59:23 2017
// Host        : Daniel running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/VivadoProjects/ECE524_PRELAB4/ECE524_PRELAB4.srcs/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,xbip_dsp48_macro_v3_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_14,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module xbip_dsp48_macro_0
   (CLK,
    CE,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) input [15:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [16:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire [15:0]C;
  wire CE;
  wire CLK;
  wire [16:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "8" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "16" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "16" *) 
  (* C_REG_CONFIG = "00000011000011000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_14 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(CE),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "8" *) (* C_B_WIDTH = "8" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "16" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "1" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "1" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000000000011010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "16" *) (* C_REG_CONFIG = "00000011000011000000000001000000" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_14
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [7:0]A;
  input [7:0]B;
  input [15:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [16:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [7:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [7:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [15:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYOUT;
  wire CE;
  wire CLK;
  wire [16:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "8" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "16" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "16" *) 
  (* C_REG_CONFIG = "00000011000011000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_14_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(1'b0),
        .CARRYOUT(CARRYOUT),
        .CE(CE),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
OMrdsrRpEttWODluC0AG3g/S5UKDr70bMwdgbqGF2RcL3xQFKYSyWp8fy2bHCB0EwAyCuxzOK/Q4
6r+SZfIUdA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
k2s7EWMhwIf9qGlEYH6Z9DmMZaK4vgWvIZZQxDcKCuHnkjHbD4/U7j76EMOamepLlmmJnKhUAdRO
dc+uAzJqa3NzMdAPJFre2fJTMQMEWzu/4dgityBiSUTOj+K+5pEFBnHCWSnQ5UzqFIY1yOb2/YZD
IG6YTCJbciIYaWhqK9s=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aILjgC2GmUyiU4AsUQ07DWXQjEHi3V5qONJrWxkXz62EwqxUiX7OkROoeH9DhNSRuL+w/JovcdHp
AnOkZd9mV20DGVARKPB0eQfKRK0AWUhYPWUtiiWeRu8Z+7BUxCklK5emK5hmSewVxkSJFo0so5mo
/3ixidv16V3WOQkjFJ0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
f+rdl3qbw8Vh2sCsDZzrVbRhJv2vRjOjuOu9zad0VWeE/e0Kmt5X3+pZuwP1ihdaCNr0JAv3T12B
BeKSWuge5Jn1lRRnMDmqWo3VK/WtHWjPLg77Ld95Cw/UnVXF1nR8KwOwf1TsfRJJ90g2LFlsFCsO
htIB5UnYmtD/jtJQ7rqrR0vF5Ld08rcqInLs3GGqZDfE0y6HY1xbFDFdv2mHJmwV2wNo5H6ajr92
oLgFQJdGC14cOlecPHiyWr5oN06TlRrVu09xv57BRAuANqqr01cY4Hi1738LtV5zMIVnYvAgn7C1
n2jLIBA/dB+md2J//8MNc6k4rbbYTPpAbsJtvg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HIRSbdFYfaAF5GWQP4bTR1MpBjfvtA2Z+pbC6p3lNvvLlskzokTZ36tImVNUOW1pfCk899YaeKwq
TTiJDjb4JbOTrC9mCN1hx8O6tnLsEAYOGznzptkEtOSTHT9CyvXvtK11ZA5BmUsjolGm8yaYHIEo
UOS5B+SJRFWTGrho8hQ1WIDzGNytXdeuN+o4EUgHODMSlLFJSNdTZ0ne2PNM0dHMuiaGZQ9fsQo+
Y37J7Y+G9kPvZqUMJ9UyOGHZKySEPKY01qYx50ZsDjRXMKAI+B9AxUEB0IAl23nhNntbxobSir3F
rxd22+M0inY3utkXvyZJIFPfywY8ztrZOCDPlw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ltl0Tbg4fzfpcs5GkvjMeLedXpUr19ejb9G7kWMD8rRS1iPgypVcWiB2sDOnc2uWRfwgbvUtcLc6
QKoNQ7c7VYrt28FZQhVBJuhX8D6ipRuXrRhdRnNcY4d2SovB/6tZxv2U9LOTtPhivmr5egDbBE6Y
E3IkK7PsH1klzQySamoislPGqjg/NSgSWMDtjcSofaE7bKNbmUozSGqkROvv4uMmWcGd0wXrSd/1
YYlP/rPsSMe+OTsGDGElMp3uovABUt2G5v2eUUr586WGPnynPC4UYifriLnU7cAuyNfM/OI+oOe4
BBF66x/+pBsG0h2FnbXpUvNTUnqAl+APQ8CA7Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
OdjEWL4FOqhvEeYMxleeakiDMHdTc5X+HzwBqoxqxQPCde0MVzm5iEfa0Z7gTCx2Q7pGoT6Vaeei
PNkxREWHUhX6WiIzkZIyz9HmanZUV6YtW3D8pMks1AxxZeHSn1//3eKr2s5NgWcV7lutwaeYPQiQ
5/55hTibvjrcPYtLDf9fkDfX/uHbFrzqU/eFzulx6Wg+mmBK7LDnTQpvMjj9SdYp2WhGgcDWrxGZ
FtHwkelvq8bd1tLYuSosODueXoCNPCuFEGPEFFpMoWfA+ouvmxCfZcwDZsRxgfUPNinfS4jbvd7n
qSpvQM1LBLlc6I8wCWLCokqRrp4yVmnYN3Df0Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
kiSmYqeSzJau1wvN5eKnDqxm32q4AoUTVebnbO1+nodlE/+vWXApfWgaM6oL7grxQrp2oTwF9dU6
FdB8NTAkdQeHuEs+02N7DzqZ3IeHFcauaCNT8i8lIJTGnzxPSl888ntDFkinjMNde64ch48ws1ie
jXgvVZNhF07N9Ls6Wokx+zoZDYIC02K/kwpwb0KvmvkCucjMwcq+jQ9DRp9HopzztlSR8YY7pjih
y+mX21Nplkm9Ls77dhR4VkevSOyWw+TurAXHQdFlpXwY0iS0YgxnT0m61zDyoKcl7kA9dnHEsodZ
ZO/UZw29LhCd5hLK2nnnszqvb/SxA/zpUjSskA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14752)
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
