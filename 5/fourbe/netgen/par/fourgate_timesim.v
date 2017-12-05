////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: fourgate_timesim.v
// /___/   /\     Timestamp: Sat Sep 27 18:46:05 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf fourgate.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim fourgate.ncd fourgate_timesim.v 
// Device	: 3s200pq208-4 (PRODUCTION 1.39 2012-07-09)
// Input file	: fourgate.ncd
// Output file	: D:\xilinx\5\fourbe\netgen\par\fourgate_timesim.v
// # of Modules	: 1
// Design Name	: fourgate
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

module fourgate (
  cout, cin, sum, a, b
);
  output cout;
  input cin;
  output [3 : 0] sum;
  input [3 : 0] a;
  input [3 : 0] b;
  wire a_0_IBUF_65;
  wire b_0_IBUF_66;
  wire a_1_IBUF_67;
  wire b_1_IBUF_68;
  wire a_2_IBUF_72;
  wire b_2_IBUF_73;
  wire a_3_IBUF_74;
  wire b_3_IBUF_75;
  wire \sum_0_OBUF/XORF_113 ;
  wire \sum_0_OBUF/CYINIT_112 ;
  wire \sum_0_OBUF/CY0F_111 ;
  wire \sum_0_OBUF/CYSELF_103 ;
  wire \sum_0_OBUF/XORG_99 ;
  wire \sum_0_OBUF/CYMUXG_98 ;
  wire \sum_0_OBUF/CY0G_96 ;
  wire \sum_0_OBUF/CYSELG_88 ;
  wire \sum_2_OBUF/XORF_152 ;
  wire \sum_2_OBUF/CYINIT_151 ;
  wire \sum_2_OBUF/CY0F_150 ;
  wire \sum_2_OBUF/XORG_140 ;
  wire \sum_2_OBUF/CYSELF_138 ;
  wire \sum_2_OBUF/CYMUXFAST_137 ;
  wire \sum_2_OBUF/CYAND_136 ;
  wire \sum_2_OBUF/FASTCARRY_135 ;
  wire \sum_2_OBUF/CYMUXG2_134 ;
  wire \sum_2_OBUF/CYMUXF2_133 ;
  wire \sum_2_OBUF/CY0G_132 ;
  wire \sum_2_OBUF/CYSELG_124 ;
  wire \cin/INBUF ;
  wire \sum<0>/O ;
  wire \sum<1>/O ;
  wire \sum<2>/O ;
  wire \sum<3>/O ;
  wire \a<0>/INBUF ;
  wire \a<1>/INBUF ;
  wire \a<2>/INBUF ;
  wire \a<3>/INBUF ;
  wire \cout/O ;
  wire \b<0>/INBUF ;
  wire \b<1>/INBUF ;
  wire \b<2>/INBUF ;
  wire \b<3>/INBUF ;
  wire VCC;
  wire [2 : 0] Madd_AUX_1_addsub0000_cy;
  wire [3 : 0] Madd_AUX_1_addsub0000_lut;
  initial $sdf_annotate("netgen/par/fourgate_timesim.sdf");
  X_XOR2 #(
    .LOC ( "SLICE_X3Y14" ))
  \sum_0_OBUF/XORF  (
    .I0(\sum_0_OBUF/CYINIT_112 ),
    .I1(Madd_AUX_1_addsub0000_lut[0]),
    .O(\sum_0_OBUF/XORF_113 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y14" ))
  \sum_0_OBUF/CYMUXF  (
    .IA(\sum_0_OBUF/CY0F_111 ),
    .IB(\sum_0_OBUF/CYINIT_112 ),
    .SEL(\sum_0_OBUF/CYSELF_103 ),
    .O(Madd_AUX_1_addsub0000_cy[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \sum_0_OBUF/CYINIT  (
    .I(\cin/INBUF ),
    .O(\sum_0_OBUF/CYINIT_112 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \sum_0_OBUF/CY0F  (
    .I(a_0_IBUF_65),
    .O(\sum_0_OBUF/CY0F_111 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \sum_0_OBUF/CYSELF  (
    .I(Madd_AUX_1_addsub0000_lut[0]),
    .O(\sum_0_OBUF/CYSELF_103 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y14" ))
  \sum_0_OBUF/XORG  (
    .I0(Madd_AUX_1_addsub0000_cy[0]),
    .I1(Madd_AUX_1_addsub0000_lut[1]),
    .O(\sum_0_OBUF/XORG_99 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \sum_0_OBUF/COUTUSED  (
    .I(\sum_0_OBUF/CYMUXG_98 ),
    .O(Madd_AUX_1_addsub0000_cy[1])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y14" ))
  \sum_0_OBUF/CYMUXG  (
    .IA(\sum_0_OBUF/CY0G_96 ),
    .IB(Madd_AUX_1_addsub0000_cy[0]),
    .SEL(\sum_0_OBUF/CYSELG_88 ),
    .O(\sum_0_OBUF/CYMUXG_98 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \sum_0_OBUF/CY0G  (
    .I(a_1_IBUF_67),
    .O(\sum_0_OBUF/CY0G_96 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \sum_0_OBUF/CYSELG  (
    .I(Madd_AUX_1_addsub0000_lut[1]),
    .O(\sum_0_OBUF/CYSELG_88 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/XORF  (
    .I0(\sum_2_OBUF/CYINIT_151 ),
    .I1(Madd_AUX_1_addsub0000_lut[2]),
    .O(\sum_2_OBUF/XORF_152 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/CYMUXF  (
    .IA(\sum_2_OBUF/CY0F_150 ),
    .IB(\sum_2_OBUF/CYINIT_151 ),
    .SEL(\sum_2_OBUF/CYSELF_138 ),
    .O(Madd_AUX_1_addsub0000_cy[2])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/CYMUXF2  (
    .IA(\sum_2_OBUF/CY0F_150 ),
    .IB(\sum_2_OBUF/CY0F_150 ),
    .SEL(\sum_2_OBUF/CYSELF_138 ),
    .O(\sum_2_OBUF/CYMUXF2_133 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/CYINIT  (
    .I(Madd_AUX_1_addsub0000_cy[1]),
    .O(\sum_2_OBUF/CYINIT_151 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/CY0F  (
    .I(a_2_IBUF_72),
    .O(\sum_2_OBUF/CY0F_150 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/CYSELF  (
    .I(Madd_AUX_1_addsub0000_lut[2]),
    .O(\sum_2_OBUF/CYSELF_138 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/XORG  (
    .I0(Madd_AUX_1_addsub0000_cy[2]),
    .I1(Madd_AUX_1_addsub0000_lut[3]),
    .O(\sum_2_OBUF/XORG_140 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/FASTCARRY  (
    .I(Madd_AUX_1_addsub0000_cy[1]),
    .O(\sum_2_OBUF/FASTCARRY_135 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/CYAND  (
    .I0(\sum_2_OBUF/CYSELG_124 ),
    .I1(\sum_2_OBUF/CYSELF_138 ),
    .O(\sum_2_OBUF/CYAND_136 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/CYMUXFAST  (
    .IA(\sum_2_OBUF/CYMUXG2_134 ),
    .IB(\sum_2_OBUF/FASTCARRY_135 ),
    .SEL(\sum_2_OBUF/CYAND_136 ),
    .O(\sum_2_OBUF/CYMUXFAST_137 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/CYMUXG2  (
    .IA(\sum_2_OBUF/CY0G_132 ),
    .IB(\sum_2_OBUF/CYMUXF2_133 ),
    .SEL(\sum_2_OBUF/CYSELG_124 ),
    .O(\sum_2_OBUF/CYMUXG2_134 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/CY0G  (
    .I(a_3_IBUF_74),
    .O(\sum_2_OBUF/CY0G_132 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y15" ))
  \sum_2_OBUF/CYSELG  (
    .I(Madd_AUX_1_addsub0000_lut[3]),
    .O(\sum_2_OBUF/CYSELG_124 )
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X3Y15" ))
  \Madd_AUX_1_addsub0000_lut<3>  (
    .ADR0(a_3_IBUF_74),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(b_3_IBUF_75),
    .O(Madd_AUX_1_addsub0000_lut[3])
  );
  X_IPAD #(
    .LOC ( "PAD139" ))
  \cin/PAD  (
    .PAD(cin)
  );
  X_BUF #(
    .LOC ( "PAD139" ))
  cin_IBUF (
    .I(cin),
    .O(\cin/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD2" ))
  \sum<0>/PAD  (
    .PAD(sum[0])
  );
  X_OBUF #(
    .LOC ( "PAD2" ))
  sum_0_OBUF (
    .I(\sum<0>/O ),
    .O(sum[0])
  );
  X_OPAD #(
    .LOC ( "PAD6" ))
  \sum<1>/PAD  (
    .PAD(sum[1])
  );
  X_OBUF #(
    .LOC ( "PAD6" ))
  sum_1_OBUF (
    .I(\sum<1>/O ),
    .O(sum[1])
  );
  X_OPAD #(
    .LOC ( "PAD10" ))
  \sum<2>/PAD  (
    .PAD(sum[2])
  );
  X_OBUF #(
    .LOC ( "PAD10" ))
  sum_2_OBUF (
    .I(\sum<2>/O ),
    .O(sum[2])
  );
  X_OPAD #(
    .LOC ( "PAD12" ))
  \sum<3>/PAD  (
    .PAD(sum[3])
  );
  X_OBUF #(
    .LOC ( "PAD12" ))
  sum_3_OBUF (
    .I(\sum<3>/O ),
    .O(sum[3])
  );
  X_IPAD #(
    .LOC ( "PAD164" ))
  \a<0>/PAD  (
    .PAD(a[0])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  a_0_IBUF (
    .I(a[0]),
    .O(\a<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD163" ))
  \a<1>/PAD  (
    .PAD(a[1])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  a_1_IBUF (
    .I(a[1]),
    .O(\a<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD165" ))
  \a<2>/PAD  (
    .PAD(a[2])
  );
  X_BUF #(
    .LOC ( "PAD165" ))
  a_2_IBUF (
    .I(a[2]),
    .O(\a<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD166" ))
  \a<3>/PAD  (
    .PAD(a[3])
  );
  X_BUF #(
    .LOC ( "PAD166" ))
  a_3_IBUF (
    .I(a[3]),
    .O(\a<3>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD19" ))
  \cout/PAD  (
    .PAD(cout)
  );
  X_OBUF #(
    .LOC ( "PAD19" ))
  cout_OBUF (
    .I(\cout/O ),
    .O(cout)
  );
  X_IPAD #(
    .LOC ( "PAD160" ))
  \b<0>/PAD  (
    .PAD(b[0])
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  b_0_IBUF (
    .I(b[0]),
    .O(\b<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD159" ))
  \b<1>/PAD  (
    .PAD(b[1])
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  b_1_IBUF (
    .I(b[1]),
    .O(\b<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD162" ))
  \b<2>/PAD  (
    .PAD(b[2])
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  b_2_IBUF (
    .I(b[2]),
    .O(\b<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD161" ))
  \b<3>/PAD  (
    .PAD(b[3])
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  b_3_IBUF (
    .I(b[3]),
    .O(\b<3>/INBUF )
  );
  X_LUT4 #(
    .INIT ( 16'h3C3C ),
    .LOC ( "SLICE_X3Y14" ))
  \Madd_AUX_1_addsub0000_lut<1>  (
    .ADR0(VCC),
    .ADR1(a_1_IBUF_67),
    .ADR2(b_1_IBUF_68),
    .ADR3(VCC),
    .O(Madd_AUX_1_addsub0000_lut[1])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ),
    .LOC ( "SLICE_X3Y14" ))
  \Madd_AUX_1_addsub0000_lut<0>  (
    .ADR0(a_0_IBUF_65),
    .ADR1(b_0_IBUF_66),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_AUX_1_addsub0000_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'h3C3C ),
    .LOC ( "SLICE_X3Y15" ))
  \Madd_AUX_1_addsub0000_lut<2>  (
    .ADR0(VCC),
    .ADR1(a_2_IBUF_72),
    .ADR2(b_2_IBUF_73),
    .ADR3(VCC),
    .O(Madd_AUX_1_addsub0000_lut[2])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \a<0>/IFF/IMUX  (
    .I(\a<0>/INBUF ),
    .O(a_0_IBUF_65)
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \a<1>/IFF/IMUX  (
    .I(\a<1>/INBUF ),
    .O(a_1_IBUF_67)
  );
  X_BUF #(
    .LOC ( "PAD165" ))
  \a<2>/IFF/IMUX  (
    .I(\a<2>/INBUF ),
    .O(a_2_IBUF_72)
  );
  X_BUF #(
    .LOC ( "PAD166" ))
  \a<3>/IFF/IMUX  (
    .I(\a<3>/INBUF ),
    .O(a_3_IBUF_74)
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  \b<0>/IFF/IMUX  (
    .I(\b<0>/INBUF ),
    .O(b_0_IBUF_66)
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  \b<1>/IFF/IMUX  (
    .I(\b<1>/INBUF ),
    .O(b_1_IBUF_68)
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  \b<2>/IFF/IMUX  (
    .I(\b<2>/INBUF ),
    .O(b_2_IBUF_73)
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  \b<3>/IFF/IMUX  (
    .I(\b<3>/INBUF ),
    .O(b_3_IBUF_75)
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  \sum<0>/OUTPUT/OFF/OMUX  (
    .I(\sum_0_OBUF/XORF_113 ),
    .O(\sum<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD6" ))
  \sum<1>/OUTPUT/OFF/OMUX  (
    .I(\sum_0_OBUF/XORG_99 ),
    .O(\sum<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD10" ))
  \sum<2>/OUTPUT/OFF/OMUX  (
    .I(\sum_2_OBUF/XORF_152 ),
    .O(\sum<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD12" ))
  \sum<3>/OUTPUT/OFF/OMUX  (
    .I(\sum_2_OBUF/XORG_140 ),
    .O(\sum<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD19" ))
  \cout/OUTPUT/OFF/OMUX  (
    .I(\sum_2_OBUF/CYMUXFAST_137 ),
    .O(\cout/O )
  );
  X_ONE   NlwBlock_fourgate_VCC (
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

