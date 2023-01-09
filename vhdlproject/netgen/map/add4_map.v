////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: add4_map.v
// /___/   /\     Timestamp: Wed Jan  4 01:49:00 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf add4.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim add4_map.ncd add4_map.v 
// Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
// Input file	: add4_map.ncd
// Output file	: /home/qc/School/2022-2023/Selected-Topics-On-Hardware-Security/Assignments/2/subterranean2digital/vhdlproject/netgen/map/add4_map.v
// # of Modules	: 1
// Design Name	: add4
// Xilinx        : /home/qc/Builds/Xilinx/14.7/ISE_DS/ISE/
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

module add4 (
a, b, sum
);
  input [3 : 0] a;
  input [3 : 0] b;
  output [4 : 0] sum;
  wire sum_0_OBUF_74;
  wire a_1_IBUF_75;
  wire b_1_IBUF_76;
  wire a_0_IBUF_77;
  wire b_0_IBUF_78;
  wire sum_1_OBUF_0;
  wire sum_2_OBUF_81;
  wire sum_3_OBUF_0;
  wire a_2_IBUF_84;
  wire a_3_IBUF_85;
  wire b_2_IBUF_86;
  wire b_3_IBUF_87;
  wire \ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \a<1>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \a<2>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \a<3>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \b<0>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \b<1>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \b<2>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \b<3>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire sum_3_OBUF_42;
  wire sum_1_OBUF_55;
  wire [3 : 2] Madd_sum_cy;
  initial $sdf_annotate("netgen/map/add4_map.sdf");
  X_OPAD #(
    .LOC ( "IOB_X0Y145" ))
  \sum<0>  (
    .PAD(sum[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y145" ))
  sum_0_OBUF (
    .I(sum_0_OBUF_74),
    .O(sum[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y144" ))
  \sum<1>  (
    .PAD(sum[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y144" ))
  sum_1_OBUF (
    .I(sum_1_OBUF_0),
    .O(sum[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y143" ))
  \sum<2>  (
    .PAD(sum[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y143" ))
  sum_2_OBUF (
    .I(sum_2_OBUF_81),
    .O(sum[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y142" ))
  \sum<3>  (
    .PAD(sum[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y142" ))
  sum_3_OBUF (
    .I(sum_3_OBUF_0),
    .O(sum[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y141" ))
  \sum<4>  (
    .PAD(sum[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y141" ))
  sum_4_OBUF (
    .I(Madd_sum_cy[3]),
    .O(sum[4])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y149" ))
  \a<0>  (
    .PAD(a[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y149" ))
  \ProtoComp2.INTERMDISABLE_GND  (
    .O(\ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y149" ))
  a_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(a_0_IBUF_77),
    .I(a[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y148" ))
  \a<1>  (
    .PAD(a[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y148" ))
  \ProtoComp2.INTERMDISABLE_GND.1  (
    .O(\a<1>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y148" ))
  a_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<1>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(a_1_IBUF_75),
    .I(a[1]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y147" ))
  \a<2>  (
    .PAD(a[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y147" ))
  \ProtoComp2.INTERMDISABLE_GND.2  (
    .O(\a<2>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y147" ))
  a_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<2>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(a_2_IBUF_84),
    .I(a[2]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y139" ))
  \a<3>  (
    .PAD(a[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y139" ))
  \ProtoComp2.INTERMDISABLE_GND.3  (
    .O(\a<3>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y139" ))
  a_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<3>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(a_3_IBUF_85),
    .I(a[3]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y140" ))
  \b<0>  (
    .PAD(b[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y140" ))
  \ProtoComp2.INTERMDISABLE_GND.4  (
    .O(\b<0>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y140" ))
  b_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<0>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(b_0_IBUF_78),
    .I(b[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y146" ))
  \b<1>  (
    .PAD(b[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y146" ))
  \ProtoComp2.INTERMDISABLE_GND.5  (
    .O(\b<1>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y146" ))
  b_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<1>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(b_1_IBUF_76),
    .I(b[1]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y138" ))
  \b<2>  (
    .PAD(b[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y138" ))
  \ProtoComp2.INTERMDISABLE_GND.6  (
    .O(\b<2>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y138" ))
  b_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<2>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(b_2_IBUF_86),
    .I(b[2]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y137" ))
  \b<3>  (
    .PAD(b[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y137" ))
  \ProtoComp2.INTERMDISABLE_GND.7  (
    .O(\b<3>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y137" ))
  b_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<3>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(b_3_IBUF_87),
    .I(b[3]),
    .TPWRGT(1'b1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y143" ),
    .INIT ( 64'h9996966696669666 ))
  \Madd_sum_xor<2>11  (
    .ADR0(a_2_IBUF_84),
    .ADR1(b_2_IBUF_86),
    .ADR2(b_1_IBUF_76),
    .ADR3(a_1_IBUF_75),
    .ADR4(a_0_IBUF_77),
    .ADR5(b_0_IBUF_78),
    .O(sum_2_OBUF_81)
  );
  X_BUF   \Madd_sum_cy<3>/Madd_sum_cy<3>_BMUX_Delay  (
    .I(sum_3_OBUF_42),
    .O(sum_3_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y142" ),
    .INIT ( 64'hFFF0F000FFF0F000 ))
  \Madd_sum_cy<3>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(a_3_IBUF_85),
    .ADR3(b_3_IBUF_87),
    .ADR4(Madd_sum_cy[2]),
    .ADR5(1'b1),
    .O(Madd_sum_cy[3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y142" ),
    .INIT ( 32'hF00F0FF0 ))
  \Madd_sum_xor<3>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(a_3_IBUF_85),
    .ADR3(b_3_IBUF_87),
    .ADR4(Madd_sum_cy[2]),
    .O(sum_3_OBUF_42)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y142" ),
    .INIT ( 64'hEEE8E888E888E888 ))
  \Madd_sum_cy<2>11  (
    .ADR0(a_2_IBUF_84),
    .ADR1(b_2_IBUF_86),
    .ADR2(a_1_IBUF_75),
    .ADR3(b_1_IBUF_76),
    .ADR4(a_0_IBUF_77),
    .ADR5(b_0_IBUF_78),
    .O(Madd_sum_cy[2])
  );
  X_BUF   \sum_0_OBUF/sum_0_OBUF_AMUX_Delay  (
    .I(sum_1_OBUF_55),
    .O(sum_1_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y143" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \Madd_sum_lut<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(a_0_IBUF_77),
    .ADR4(b_0_IBUF_78),
    .ADR5(1'b1),
    .O(sum_0_OBUF_74)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y143" ),
    .INIT ( 32'hC33C3C3C ))
  \Madd_sum_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(a_1_IBUF_75),
    .ADR2(b_1_IBUF_76),
    .ADR3(a_0_IBUF_77),
    .ADR4(b_0_IBUF_78),
    .O(sum_1_OBUF_55)
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

