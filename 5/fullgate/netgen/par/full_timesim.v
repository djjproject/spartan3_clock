////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: full_timesim.v
// /___/   /\     Timestamp: Mon Sep 29 03:47:39 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf full.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim full.ncd full_timesim.v 
// Device	: 3s200pq208-4 (PRODUCTION 1.39 2012-07-09)
// Input file	: full.ncd
// Output file	: D:\xilinx\5\fullgate\netgen\par\full_timesim.v
// # of Modules	: 1
// Design Name	: full
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

module full (
  cout, a, b, sum, cin
);
  output cout;
  input a;
  input b;
  output sum;
  input cin;
  wire cin_IBUF_23;
  wire a_IBUF_26;
  wire b_IBUF_27;
  wire \cin/INBUF ;
  wire \cout/O ;
  wire \sum/O ;
  wire \a/INBUF ;
  wire \b/INBUF ;
  wire cout_OBUF_83;
  wire sum_OBUF_75;
  wire VCC;
  initial $sdf_annotate("netgen/par/full_timesim.sdf");
  X_IPAD #(
    .LOC ( "PAD137" ))
  \cin/PAD  (
    .PAD(cin)
  );
  X_BUF #(
    .LOC ( "PAD137" ))
  cin_IBUF (
    .I(cin),
    .O(\cin/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD12" ))
  \cout/PAD  (
    .PAD(cout)
  );
  X_OBUF #(
    .LOC ( "PAD12" ))
  cout_OBUF (
    .I(\cout/O ),
    .O(cout)
  );
  X_OPAD #(
    .LOC ( "PAD19" ))
  \sum/PAD  (
    .PAD(sum)
  );
  X_OBUF #(
    .LOC ( "PAD19" ))
  sum_OBUF (
    .I(\sum/O ),
    .O(sum)
  );
  X_IPAD #(
    .LOC ( "PAD139" ))
  \a/PAD  (
    .PAD(a)
  );
  X_BUF #(
    .LOC ( "PAD139" ))
  a_IBUF (
    .I(a),
    .O(\a/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD136" ))
  \b/PAD  (
    .PAD(b)
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  b_IBUF (
    .I(b),
    .O(\b/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD137" ))
  \cin/IFF/IMUX  (
    .I(\cin/INBUF ),
    .O(cin_IBUF_23)
  );
  X_BUF #(
    .LOC ( "PAD139" ))
  \a/IFF/IMUX  (
    .I(\a/INBUF ),
    .O(a_IBUF_26)
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  \b/IFF/IMUX  (
    .I(\b/INBUF ),
    .O(b_IBUF_27)
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X8Y11" ))
  Mxor_sum_Result1 (
    .ADR0(a_IBUF_26),
    .ADR1(b_IBUF_27),
    .ADR2(cin_IBUF_23),
    .ADR3(VCC),
    .O(sum_OBUF_75)
  );
  X_LUT4 #(
    .INIT ( 16'hE8E8 ),
    .LOC ( "SLICE_X8Y11" ))
  cout1 (
    .ADR0(a_IBUF_26),
    .ADR1(b_IBUF_27),
    .ADR2(cin_IBUF_23),
    .ADR3(VCC),
    .O(cout_OBUF_83)
  );
  X_BUF #(
    .LOC ( "PAD12" ))
  \cout/OUTPUT/OFF/OMUX  (
    .I(cout_OBUF_83),
    .O(\cout/O )
  );
  X_BUF #(
    .LOC ( "PAD19" ))
  \sum/OUTPUT/OFF/OMUX  (
    .I(sum_OBUF_75),
    .O(\sum/O )
  );
  X_ONE   NlwBlock_full_VCC (
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

