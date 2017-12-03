// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Fri Sep 29 14:05:55 2017
// Host        : Daniel running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/VivadoProjects/ECE524_PRELAB4/ECE524_PRELAB4.srcs/sources_1/ip/c_shift_ram_0/c_shift_ram_0_sim_netlist.v
// Design      : c_shift_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_0,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module c_shift_ram_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [7:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [7:0]Q;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00000000" *) 
  (* c_default_data = "00000000" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "00000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "8" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_shift_ram_0_c_shift_ram_v12_0_10 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "00000000" *) (* C_DEFAULT_DATA = "00000000" *) 
(* C_DEPTH = "64" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00000000" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_shift_ram_0_c_shift_ram_v12_0_10
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [7:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [7:0]Q;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00000000" *) 
  (* c_default_data = "00000000" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "00000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "8" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_shift_ram_0_c_shift_ram_v12_0_10_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
jbAfnJ0v1+WyXFyoA4HPEEFIjct7HgnI0mu4TSa25NsNE/pLj2WtLSLh+MgbV27MIMC9UvROBVjP
gqB0QczG1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iArFgKcNA28U2Eexs8OyquuJbt26oJGHI2dVz82DefbgkIzwBZqRgMwV9QYXm3aSgPselv0tTo5n
g01rsqZEeGqnYZbTBqWQoIg7HHNsAobFWltw26z04KJTen3TN34K5FEB8uoz2RWkigJqGWtmFPf5
0LfPAPn1r0GZJF2V37Y=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Fn+SZPTjAfffsgcrEnynRmIKdcysZiMgAm4t45a80RTQO/upKBokh7+MXzpbDkyg0TPtzn06JI7W
PAM0XFAkpOgjpT4f3CGMfDqNVk15KN4lgWq+YFoni+IwUxQe1pdFYvR6mA9pXmIe2yqiRnhO/VZi
GIL+pupoQnmFpmpCErQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j2RoUfZbcSXmNIzxefei/9VueCswS9iqM6vR0gy30/l0lsabB1PnK8/EGfqhLHWuljQj/btb8BxZ
iJUWbspySxj2874/wZAqKfeErsEKhr35DuI3pSf4rZSOjyLWEaUsgwUy7Z+RaiU8xGRrv01+HBOb
1FaZei3Kf57I3zGcircXpwkHdwkW3h5c/ZNQ1AvaH5okCT1Ca5AH3+b+cLpc+m0TTgWWZuRY4cAc
9r4kxh7LsaspJoAkbkIlkJeWcuzQP2uuUn1THyZB8bz7LwrljiZ4KVd1rMDA7u2kd1vVW/YZNUhk
B7lpBrnHngJ+C8XLe9Ld6pgZaWouuy6YPEn5Uw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pw1TRZ/vl3ANpl2F4u8LQ5ifhzF0xWd/IGtqFEz6kU+lVygFOiabJ0QxeiyiyIQ1polveGf1HnVu
QthLjsqYV+jh8HigpspBEPPrp9iKqON4iNNnTW55BkbEX/8wUAQKcrx3/GaUIyYeXBkM7XXzbMTw
13gppUFc9YfWn2ORjNaHgk6333CMd8CBXXvYs191nisVBSnZRBu26nhpKUPegoovXe6lszRLfcqg
gJJUywmOKg9v1mbPIj9DFIRfJPAZ7gTQ5ICFVApYL+qzyTGl2ZgQNnWms9NSILbKwUyMQ++bepJc
u1fPdlRL55RchnK9cii6NJwsNKLkkaE5yHbZYw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bliYkWBfAu5u7gMOkHFrEDyrD602ES2dC5b2Mp6Ja0IFKckKKXk7Bgw1utw617aNUpPh4s08Ttfx
xRSnsQO0XXdGm7SgNrPaiqIkwg8w5ZjdBFsx/symDCtR2CjTXWcyYeqqRv3BbWZTAQ4qRjPg0B7J
YuVZ53jL2vbNn7z4opAiMZ7C4uXnVveIG8flQoOdhfZBvELa0kSGgz/3DGz4fmoTUz5+MJQlVtQL
7dcffYHAt84qk6zzPtSwshrkJbh5k6Vkc6qYRqqHuix7G1hj0/+oMAd4aZtYIYQKl0R8RXunIuu1
sms1PFkGFS9jsZu1EAtYAzTT8Qvra3RyX5jTSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
bnd8o/heejLlLzSnhvqpaYaTunNuB0Ujl689Q4vnmv0DRrQCNjWFWdxAOYAOD8zVVGcqapytgjUj
Kralt0ACFVAPnYF2rxT91VbBRaB2h2lhYVkVjYZb/gRAngB3s3VHSH6dlur4vzeNCJS6Vw6cRaBC
uKEKG6RNdksnNRX9XpTweT+1CFfdbMi4gfJqhJbLCFPVurcjmzTxdyBEVpi6GNdjMD5fzvEDK3Z4
mhfpbhNNfOq06l61Hlj74yexoBcsNiKMWuBjwmb2GaEcOlNcM7jCM8iPfvfE4Itw2hvb2kJj44la
6aPUM/zRU9phl6Lu2+ByPM7ehXD1lVccBpCGZA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
PJlxoCGiYcRTYDh33vq+h9NbOCP83Jf5wdGN1kUklFmGsqyW5pof098JB/7jGsfJBOI9YKsCYaBn
aUdgP+j6C/yDqfcnbqLgZTn7YpC36aNgYCZDxyHsrEKk1XsTchekYGhA5zR4rXWLn6p+VQiuznE+
swX6Kai1CSw1zd0p1AJ2unjSFrk9sGhu46mgECiChzMpp+h0kdgDAiSZztmohrS5A+MI4Upa1jcE
MSGocO4+xSOVvh/RJMW8ccdNcr072h57qgSwfOXMnpFHo08ubZCzGaM4umJ1oqCL5lx/O4u1OyDc
UUnKtKPSGgRl0ZqfZywQvSj/9cFboezNyDdyVg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17536)
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
