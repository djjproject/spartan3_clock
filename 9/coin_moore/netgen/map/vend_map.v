////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: vend_map.v
// /___/   /\     Timestamp: Sun Nov 02 18:36:28 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf vend.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim vend_map.ncd vend_map.v 
// Device	: 3s200pq208-4 (PRODUCTION 1.39 2012-07-09)
// Input file	: vend_map.ncd
// Output file	: D:\xilinx\9\coin_moore\netgen\map\vend_map.v
// # of Modules	: 1
// Design Name	: vend
// Xilinx        : C:\Xilinx\14.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module vend (
  clk, dim, ch, nic, obj1, obj2, coin
);
  input clk;
  input dim;
  input ch;
  input nic;
  input obj1;
  input obj2;
  output [3 : 0] coin;
  wire dim_IBUF_105;
  wire \clk_BUFGP/IBUFG_106 ;
  wire obj1_IBUF_111;
  wire obj2_IBUF_112;
  wire nic_IBUF_113;
  wire ch_IBUF_114;
  wire clk_BUFGP;
  wire en_117;
  wire \state_not0001_SW0/O ;
  wire state_FSM_FFd1_119;
  wire state_FSM_FFd2_120;
  wire state_not0001_0;
  wire state_and0000_0;
  wire \state_FSM_FFd1-In37/O ;
  wire N12_0;
  wire \state_FSM_FFd2-In13/O ;
  wire \state_FSM_FFd2-In41_0 ;
  wire \dim/INBUF ;
  wire \clk/INBUF ;
  wire \coin<0>/O ;
  wire \coin<1>/O ;
  wire \coin<2>/O ;
  wire \coin<3>/O ;
  wire \obj1/INBUF ;
  wire \obj2/INBUF ;
  wire \nic/INBUF ;
  wire \ch/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire state_not0001_221;
  wire \state_not0001_SW0/O_pack_1 ;
  wire \state_FSM_FFd1/DXMUX_254 ;
  wire \state_FSM_FFd1-In ;
  wire \state_FSM_FFd1-In37/O_pack_3 ;
  wire \state_FSM_FFd1/SRINV_239 ;
  wire \state_FSM_FFd1/CLKINV_238 ;
  wire \state_FSM_FFd1/CEINV_237 ;
  wire \state_FSM_FFd2/DXMUX_290 ;
  wire \state_FSM_FFd2-In ;
  wire \state_FSM_FFd2-In13/O_pack_2 ;
  wire \state_FSM_FFd2/SRINV_275 ;
  wire \state_FSM_FFd2/CLKINV_274 ;
  wire \state_FSM_FFd2/CEINV_273 ;
  wire N12;
  wire \en/DYMUX_317 ;
  wire en_or00001_314;
  wire \en/SRINV_309 ;
  wire \en/CLKINV_308 ;
  wire coin_2_OBUF_350;
  wire coin_3_OBUF_341;
  wire coin_1_OBUF_374;
  wire \state_FSM_FFd2-In41_365 ;
  wire coin_0_OBUF_386;
  wire state_and0000;
  wire GND;
  wire VCC;
  initial $sdf_annotate("netgen/map/vend_map.sdf");
  X_IPAD   \dim/PAD  (
    .PAD(dim)
  );
  X_BUF   dim_IBUF (
    .I(dim),
    .O(\dim/INBUF )
  );
  X_IPAD   \clk/PAD  (
    .PAD(clk)
  );
  X_BUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_OPAD   \coin<0>/PAD  (
    .PAD(coin[0])
  );
  X_OBUF   coin_0_OBUF (
    .I(\coin<0>/O ),
    .O(coin[0])
  );
  X_OPAD   \coin<1>/PAD  (
    .PAD(coin[1])
  );
  X_OBUF   coin_1_OBUF (
    .I(\coin<1>/O ),
    .O(coin[1])
  );
  X_OPAD   \coin<2>/PAD  (
    .PAD(coin[2])
  );
  X_OBUF   coin_2_OBUF (
    .I(\coin<2>/O ),
    .O(coin[2])
  );
  X_OPAD   \coin<3>/PAD  (
    .PAD(coin[3])
  );
  X_OBUF   coin_3_OBUF (
    .I(\coin<3>/O ),
    .O(coin[3])
  );
  X_IPAD   \obj1/PAD  (
    .PAD(obj1)
  );
  X_BUF   obj1_IBUF (
    .I(obj1),
    .O(\obj1/INBUF )
  );
  X_IPAD   \obj2/PAD  (
    .PAD(obj2)
  );
  X_BUF   obj2_IBUF (
    .I(obj2),
    .O(\obj2/INBUF )
  );
  X_IPAD   \nic/PAD  (
    .PAD(nic)
  );
  X_BUF   nic_IBUF (
    .I(nic),
    .O(\nic/INBUF )
  );
  X_IPAD   \ch/PAD  (
    .PAD(ch)
  );
  X_BUF   ch_IBUF (
    .I(ch),
    .O(\ch/INBUF )
  );
  X_BUF   \ch/IFF/IMUX  (
    .I(\ch/INBUF ),
    .O(ch_IBUF_114)
  );
  X_BUFGMUX   \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/IBUFG_106 ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV   \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h5554 ))
  state_not0001 (
    .ADR0(en_117),
    .ADR1(obj1_IBUF_111),
    .ADR2(nic_IBUF_113),
    .ADR3(\state_not0001_SW0/O ),
    .O(state_not0001_221)
  );
  X_BUF   \state_not0001/XUSED  (
    .I(state_not0001_221),
    .O(state_not0001_0)
  );
  X_BUF   \state_not0001/YUSED  (
    .I(\state_not0001_SW0/O_pack_1 ),
    .O(\state_not0001_SW0/O )
  );
  X_LUT4 #(
    .INIT ( 16'hECCC ))
  state_not0001_SW0 (
    .ADR0(obj2_IBUF_112),
    .ADR1(dim_IBUF_105),
    .ADR2(state_FSM_FFd1_119),
    .ADR3(state_FSM_FFd2_120),
    .O(\state_not0001_SW0/O_pack_1 )
  );
  X_BUF   \state_FSM_FFd1/DXMUX  (
    .I(\state_FSM_FFd1-In ),
    .O(\state_FSM_FFd1/DXMUX_254 )
  );
  X_BUF   \state_FSM_FFd1/YUSED  (
    .I(\state_FSM_FFd1-In37/O_pack_3 ),
    .O(\state_FSM_FFd1-In37/O )
  );
  X_BUF   \state_FSM_FFd1/SRINV  (
    .I(state_and0000_0),
    .O(\state_FSM_FFd1/SRINV_239 )
  );
  X_BUF   \state_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\state_FSM_FFd1/CLKINV_238 )
  );
  X_BUF   \state_FSM_FFd1/CEINV  (
    .I(state_not0001_0),
    .O(\state_FSM_FFd1/CEINV_237 )
  );
  X_BUF   \state_FSM_FFd2/DXMUX  (
    .I(\state_FSM_FFd2-In ),
    .O(\state_FSM_FFd2/DXMUX_290 )
  );
  X_BUF   \state_FSM_FFd2/YUSED  (
    .I(\state_FSM_FFd2-In13/O_pack_2 ),
    .O(\state_FSM_FFd2-In13/O )
  );
  X_BUF   \state_FSM_FFd2/SRINV  (
    .I(state_and0000_0),
    .O(\state_FSM_FFd2/SRINV_275 )
  );
  X_BUF   \state_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\state_FSM_FFd2/CLKINV_274 )
  );
  X_BUF   \state_FSM_FFd2/CEINV  (
    .I(state_not0001_0),
    .O(\state_FSM_FFd2/CEINV_273 )
  );
  X_BUF   \en/XUSED  (
    .I(N12),
    .O(N12_0)
  );
  X_BUF   \en/DYMUX  (
    .I(en_or00001_314),
    .O(\en/DYMUX_317 )
  );
  X_BUF   \en/SRINV  (
    .I(obj2_IBUF_112),
    .O(\en/SRINV_309 )
  );
  X_BUF   \en/CLKINV  (
    .I(clk_BUFGP),
    .O(\en/CLKINV_308 )
  );
  X_BUF   \coin_1_OBUF/YUSED  (
    .I(\state_FSM_FFd2-In41_365 ),
    .O(\state_FSM_FFd2-In41_0 )
  );
  X_BUF   \state_and0000/YUSED  (
    .I(state_and0000),
    .O(state_and0000_0)
  );
  X_BUF   \dim/IFF/IMUX  (
    .I(\dim/INBUF ),
    .O(dim_IBUF_105)
  );
  X_BUF   \clk/IFF/IMUX  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/IBUFG_106 )
  );
  X_BUF   \obj1/IFF/IMUX  (
    .I(\obj1/INBUF ),
    .O(obj1_IBUF_111)
  );
  X_BUF   \obj2/IFF/IMUX  (
    .I(\obj2/INBUF ),
    .O(obj2_IBUF_112)
  );
  X_BUF   \nic/IFF/IMUX  (
    .I(\nic/INBUF ),
    .O(nic_IBUF_113)
  );
  X_LUT4 #(
    .INIT ( 16'h0E04 ))
  \state_FSM_FFd1-In37  (
    .ADR0(nic_IBUF_113),
    .ADR1(dim_IBUF_105),
    .ADR2(en_117),
    .ADR3(state_FSM_FFd2_120),
    .O(\state_FSM_FFd1-In37/O_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \state_FSM_FFd1-In40  (
    .ADR0(state_FSM_FFd1_119),
    .ADR1(en_117),
    .ADR2(\state_FSM_FFd1-In37/O ),
    .ADR3(N12_0),
    .O(\state_FSM_FFd1-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd1 (
    .I(\state_FSM_FFd1/DXMUX_254 ),
    .CE(\state_FSM_FFd1/CEINV_237 ),
    .CLK(\state_FSM_FFd1/CLKINV_238 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd1/SRINV_239 ),
    .O(state_FSM_FFd1_119)
  );
  X_LUT4 #(
    .INIT ( 16'h0B0F ))
  \state_FSM_FFd2-In13  (
    .ADR0(obj1_IBUF_111),
    .ADR1(obj2_IBUF_112),
    .ADR2(nic_IBUF_113),
    .ADR3(state_FSM_FFd1_119),
    .O(\state_FSM_FFd2-In13/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hDDC8 ))
  \state_FSM_FFd2-In54  (
    .ADR0(en_117),
    .ADR1(state_FSM_FFd2_120),
    .ADR2(\state_FSM_FFd2-In13/O ),
    .ADR3(\state_FSM_FFd2-In41_0 ),
    .O(\state_FSM_FFd2-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd2 (
    .I(\state_FSM_FFd2/DXMUX_290 ),
    .CE(\state_FSM_FFd2/CEINV_273 ),
    .CLK(\state_FSM_FFd2/CLKINV_274 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd2/SRINV_275 ),
    .O(state_FSM_FFd2_120)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  en_or00001 (
    .ADR0(obj1_IBUF_111),
    .ADR1(nic_IBUF_113),
    .ADR2(dim_IBUF_105),
    .ADR3(ch_IBUF_114),
    .O(en_or00001_314)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  en (
    .I(\en/DYMUX_317 ),
    .CE(VCC),
    .CLK(\en/CLKINV_308 ),
    .SET(GND),
    .RST(GND),
    .SSET(\en/SRINV_309 ),
    .SRST(GND),
    .O(en_117)
  );
  X_LUT4 #(
    .INIT ( 16'hFF13 ))
  \state_FSM_FFd1-In40_SW0  (
    .ADR0(obj2_IBUF_112),
    .ADR1(obj1_IBUF_111),
    .ADR2(state_FSM_FFd2_120),
    .ADR3(nic_IBUF_113),
    .O(N12)
  );
  X_LUT4 #(
    .INIT ( 16'h1111 ))
  state_FSM_Out01 (
    .ADR0(state_FSM_FFd2_120),
    .ADR1(state_FSM_FFd1_119),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(coin_3_OBUF_341)
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ))
  state_FSM_Out11 (
    .ADR0(state_FSM_FFd1_119),
    .ADR1(state_FSM_FFd2_120),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(coin_2_OBUF_350)
  );
  X_LUT4 #(
    .INIT ( 16'hE0EC ))
  \state_FSM_FFd2-In41  (
    .ADR0(dim_IBUF_105),
    .ADR1(nic_IBUF_113),
    .ADR2(state_FSM_FFd1_119),
    .ADR3(state_FSM_FFd2_120),
    .O(\state_FSM_FFd2-In41_365 )
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ))
  state_FSM_Out21 (
    .ADR0(state_FSM_FFd2_120),
    .ADR1(state_FSM_FFd1_119),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(coin_1_OBUF_374)
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  state_FSM_Out31 (
    .ADR0(state_FSM_FFd2_120),
    .ADR1(state_FSM_FFd1_119),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(coin_0_OBUF_386)
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  state_and00001 (
    .ADR0(ch_IBUF_114),
    .ADR1(en_117),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(state_and0000)
  );
  X_BUF   \coin<0>/OUTPUT/OFF/OMUX  (
    .I(coin_0_OBUF_386),
    .O(\coin<0>/O )
  );
  X_BUF   \coin<1>/OUTPUT/OFF/OMUX  (
    .I(coin_1_OBUF_374),
    .O(\coin<1>/O )
  );
  X_BUF   \coin<2>/OUTPUT/OFF/OMUX  (
    .I(coin_2_OBUF_350),
    .O(\coin<2>/O )
  );
  X_BUF   \coin<3>/OUTPUT/OFF/OMUX  (
    .I(coin_3_OBUF_341),
    .O(\coin<3>/O )
  );
  X_ZERO   NlwBlock_vend_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_vend_VCC (
    .O(VCC)
  );
endmodule


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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

