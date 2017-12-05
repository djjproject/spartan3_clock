////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: vend_translate.v
// /___/   /\     Timestamp: Sun Nov 02 18:38:26 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim vend.ngd vend_translate.v 
// Device	: 3s200pq208-4
// Input file	: vend.ngd
// Output file	: D:\xilinx\9\coin_moore\netgen\translate\vend_translate.v
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
  wire N10;
  wire N12;
  wire ch_IBUF_6;
  wire clk_BUFGP;
  wire coin_0_OBUF_13;
  wire coin_1_OBUF_14;
  wire coin_2_OBUF_15;
  wire coin_3_OBUF_16;
  wire dim_IBUF_18;
  wire en_19;
  wire en_or00001_20;
  wire nic_IBUF_22;
  wire obj1_IBUF_24;
  wire obj2_IBUF_26;
  wire state_FSM_FFd1_27;
  wire \state_FSM_FFd1-In ;
  wire \state_FSM_FFd1-In37_29 ;
  wire state_FSM_FFd2_30;
  wire \state_FSM_FFd2-In ;
  wire \state_FSM_FFd2-In13_32 ;
  wire \state_FSM_FFd2-In41_33 ;
  wire state_and0000;
  wire state_not0001_35;
  wire \state_not0001_SW0/O ;
  wire \state_FSM_FFd1-In37/O ;
  wire \state_FSM_FFd2-In13/O ;
  wire \clk_BUFGP/IBUFG_2 ;
  wire GND;
  wire VCC;
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd1 (
    .CLK(clk_BUFGP),
    .CE(state_not0001_35),
    .I(\state_FSM_FFd1-In ),
    .SRST(state_and0000),
    .O(state_FSM_FFd1_27),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd2 (
    .CLK(clk_BUFGP),
    .CE(state_not0001_35),
    .I(\state_FSM_FFd2-In ),
    .SRST(state_and0000),
    .O(state_FSM_FFd2_30),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  state_FSM_Out31 (
    .ADR0(state_FSM_FFd2_30),
    .ADR1(state_FSM_FFd1_27),
    .O(coin_0_OBUF_13)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  state_FSM_Out21 (
    .ADR0(state_FSM_FFd2_30),
    .ADR1(state_FSM_FFd1_27),
    .O(coin_1_OBUF_14)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  state_FSM_Out11 (
    .ADR0(state_FSM_FFd1_27),
    .ADR1(state_FSM_FFd2_30),
    .O(coin_2_OBUF_15)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  state_FSM_Out01 (
    .ADR0(state_FSM_FFd2_30),
    .ADR1(state_FSM_FFd1_27),
    .O(coin_3_OBUF_16)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  state_and00001 (
    .ADR0(ch_IBUF_6),
    .ADR1(en_19),
    .O(state_and0000)
  );
  X_LUT4 #(
    .INIT ( 16'h5554 ))
  state_not0001 (
    .ADR0(en_19),
    .ADR1(obj1_IBUF_24),
    .ADR2(nic_IBUF_22),
    .ADR3(N10),
    .O(state_not0001_35)
  );
  X_LUT4 #(
    .INIT ( 16'hE0EC ))
  \state_FSM_FFd2-In41  (
    .ADR0(dim_IBUF_18),
    .ADR1(nic_IBUF_22),
    .ADR2(state_FSM_FFd1_27),
    .ADR3(state_FSM_FFd2_30),
    .O(\state_FSM_FFd2-In41_33 )
  );
  X_LUT4 #(
    .INIT ( 16'hDDC8 ))
  \state_FSM_FFd2-In54  (
    .ADR0(en_19),
    .ADR1(state_FSM_FFd2_30),
    .ADR2(\state_FSM_FFd2-In13_32 ),
    .ADR3(\state_FSM_FFd2-In41_33 ),
    .O(\state_FSM_FFd2-In )
  );
  X_BUF   dim_IBUF (
    .I(dim),
    .O(dim_IBUF_18)
  );
  X_BUF   ch_IBUF (
    .I(ch),
    .O(ch_IBUF_6)
  );
  X_BUF   nic_IBUF (
    .I(nic),
    .O(nic_IBUF_22)
  );
  X_BUF   obj1_IBUF (
    .I(obj1),
    .O(obj1_IBUF_24)
  );
  X_BUF   obj2_IBUF (
    .I(obj2),
    .O(obj2_IBUF_26)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  en (
    .CLK(clk_BUFGP),
    .I(en_or00001_20),
    .SSET(obj2_IBUF_26),
    .O(en_19),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'hFF13 ))
  \state_FSM_FFd1-In40_SW0  (
    .ADR0(obj2_IBUF_26),
    .ADR1(obj1_IBUF_24),
    .ADR2(state_FSM_FFd2_30),
    .ADR3(nic_IBUF_22),
    .O(N12)
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \state_FSM_FFd1-In40  (
    .ADR0(state_FSM_FFd1_27),
    .ADR1(en_19),
    .ADR2(\state_FSM_FFd1-In37_29 ),
    .ADR3(N12),
    .O(\state_FSM_FFd1-In )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  en_or00001 (
    .ADR0(obj1_IBUF_24),
    .ADR1(nic_IBUF_22),
    .ADR2(dim_IBUF_18),
    .ADR3(ch_IBUF_6),
    .O(en_or00001_20)
  );
  X_BUF   \state_not0001_SW0/LUT4_L_BUF  (
    .I(\state_not0001_SW0/O ),
    .O(N10)
  );
  X_LUT4 #(
    .INIT ( 16'hECCC ))
  state_not0001_SW0 (
    .ADR0(obj2_IBUF_26),
    .ADR1(dim_IBUF_18),
    .ADR2(state_FSM_FFd1_27),
    .ADR3(state_FSM_FFd2_30),
    .O(\state_not0001_SW0/O )
  );
  X_BUF   \state_FSM_FFd1-In37/LUT4_L_BUF  (
    .I(\state_FSM_FFd1-In37/O ),
    .O(\state_FSM_FFd1-In37_29 )
  );
  X_LUT4 #(
    .INIT ( 16'h0E04 ))
  \state_FSM_FFd1-In37  (
    .ADR0(nic_IBUF_22),
    .ADR1(dim_IBUF_18),
    .ADR2(en_19),
    .ADR3(state_FSM_FFd2_30),
    .O(\state_FSM_FFd1-In37/O )
  );
  X_BUF   \state_FSM_FFd2-In13/LUT4_L_BUF  (
    .I(\state_FSM_FFd2-In13/O ),
    .O(\state_FSM_FFd2-In13_32 )
  );
  X_LUT4 #(
    .INIT ( 16'h0B0F ))
  \state_FSM_FFd2-In13  (
    .ADR0(obj1_IBUF_24),
    .ADR1(obj2_IBUF_26),
    .ADR2(nic_IBUF_22),
    .ADR3(state_FSM_FFd1_27),
    .O(\state_FSM_FFd2-In13/O )
  );
  X_IPAD #(
    .LOC ( "P68" ))
  ch_33 (
    .PAD(ch)
  );
  X_IPAD #(
    .LOC ( "P79" ))
  clk_34 (
    .PAD(clk)
  );
  X_OPAD #(
    .LOC ( "P200" ))
  \coin<0>  (
    .PAD(coin[0])
  );
  X_OPAD #(
    .LOC ( "P198" ))
  \coin<1>  (
    .PAD(coin[1])
  );
  X_OPAD #(
    .LOC ( "P196" ))
  \coin<2>  (
    .PAD(coin[2])
  );
  X_OPAD #(
    .LOC ( "P191" ))
  \coin<3>  (
    .PAD(coin[3])
  );
  X_IPAD #(
    .LOC ( "P67" ))
  dim_39 (
    .PAD(dim)
  );
  X_IPAD #(
    .LOC ( "P63" ))
  nic_40 (
    .PAD(nic)
  );
  X_IPAD #(
    .LOC ( "P65" ))
  obj1_41 (
    .PAD(obj1)
  );
  X_IPAD #(
    .LOC ( "P71" ))
  obj2_42 (
    .PAD(obj2)
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   coin_0_OBUF (
    .I(coin_0_OBUF_13),
    .O(coin[0])
  );
  X_OBUF   coin_1_OBUF (
    .I(coin_1_OBUF_14),
    .O(coin[1])
  );
  X_OBUF   coin_2_OBUF (
    .I(coin_2_OBUF_15),
    .O(coin[2])
  );
  X_OBUF   coin_3_OBUF (
    .I(coin_3_OBUF_16),
    .O(coin[3])
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

