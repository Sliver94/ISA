/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Mon Nov 16 11:07:00 2020
/////////////////////////////////////////////////////////////


module myiir ( VIN, CLK, RST_n, an1, b0, bn1, bn2, DIN, VOUT, DOUT );
  input [7:0] an1;
  input [7:0] b0;
  input [7:0] bn1;
  input [7:0] bn2;
  input [7:0] DIN;
  output [7:0] DOUT;
  input VIN, CLK, RST_n;
  output VOUT;
  wire   RST_wire, En_iir_wire, En_out_wire, datapath_inst_iir_inst_n149,
         datapath_inst_iir_inst_n148, datapath_inst_iir_inst_n147,
         datapath_inst_iir_inst_n146, datapath_inst_iir_inst_n145,
         datapath_inst_iir_inst_n144, datapath_inst_iir_inst_n143,
         datapath_inst_iir_inst_n70, datapath_inst_iir_inst_n69,
         datapath_inst_iir_inst_n59, datapath_inst_iir_inst_n58,
         datapath_inst_iir_inst_n57, datapath_inst_iir_inst_n56,
         datapath_inst_iir_inst_n55, datapath_inst_iir_inst_n54,
         datapath_inst_iir_inst_n53, datapath_inst_iir_inst_n52,
         datapath_inst_iir_inst_n51, datapath_inst_iir_inst_n50,
         datapath_inst_iir_inst_n49, datapath_inst_iir_inst_n48,
         datapath_inst_iir_inst_n47, datapath_inst_iir_inst_n46,
         datapath_inst_iir_inst_n45, datapath_inst_iir_inst_n44,
         datapath_inst_iir_inst_n43, datapath_inst_iir_inst_n42,
         datapath_inst_iir_inst_n41, datapath_inst_iir_inst_n40,
         datapath_inst_iir_inst_n39, datapath_inst_iir_inst_n38,
         datapath_inst_iir_inst_n37, datapath_inst_iir_inst_n36,
         datapath_inst_iir_inst_n35, datapath_inst_iir_inst_n34,
         datapath_inst_iir_inst_n33, datapath_inst_iir_inst_n32,
         datapath_inst_iir_inst_n31, datapath_inst_iir_inst_n30,
         datapath_inst_iir_inst_n29, datapath_inst_iir_inst_n28,
         datapath_inst_iir_inst_n27, datapath_inst_iir_inst_n26,
         datapath_inst_iir_inst_n25, datapath_inst_iir_inst_n24,
         datapath_inst_iir_inst_n23, datapath_inst_iir_inst_n22,
         datapath_inst_iir_inst_n21, datapath_inst_iir_inst_n20,
         datapath_inst_iir_inst_n19, datapath_inst_iir_inst_n18,
         datapath_inst_iir_inst_n17, datapath_inst_iir_inst_n16,
         datapath_inst_iir_inst_n15, datapath_inst_iir_inst_n14,
         datapath_inst_iir_inst_n13, datapath_inst_iir_inst_n12,
         datapath_inst_iir_inst_n11, datapath_inst_iir_inst_n10,
         datapath_inst_iir_inst_n9, datapath_inst_iir_inst_n8,
         datapath_inst_iir_inst_n7, datapath_inst_iir_inst_n6,
         datapath_inst_iir_inst_n5, datapath_inst_iir_inst_n4,
         datapath_inst_iir_inst_n142, datapath_inst_iir_inst_n141,
         datapath_inst_iir_inst_n140, datapath_inst_iir_inst_n139,
         datapath_inst_iir_inst_n138, datapath_inst_iir_inst_n137,
         datapath_inst_iir_inst_n136, datapath_inst_iir_inst_n135,
         datapath_inst_iir_inst_n134, datapath_inst_iir_inst_n133,
         datapath_inst_iir_inst_n132, datapath_inst_iir_inst_n131,
         datapath_inst_iir_inst_n130, datapath_inst_iir_inst_n129,
         datapath_inst_iir_inst_n128, datapath_inst_iir_inst_n127,
         datapath_inst_iir_inst_n126, datapath_inst_iir_inst_n125,
         datapath_inst_iir_inst_n124, datapath_inst_iir_inst_n123,
         datapath_inst_iir_inst_n122, datapath_inst_iir_inst_n121,
         datapath_inst_iir_inst_n120, datapath_inst_iir_inst_n119,
         datapath_inst_iir_inst_n118, datapath_inst_iir_inst_n117,
         datapath_inst_iir_inst_n116, datapath_inst_iir_inst_n115,
         datapath_inst_iir_inst_n114, datapath_inst_iir_inst_n113,
         datapath_inst_iir_inst_n112, datapath_inst_iir_inst_n111,
         datapath_inst_iir_inst_n110, datapath_inst_iir_inst_n109,
         datapath_inst_iir_inst_n108, datapath_inst_iir_inst_n107,
         datapath_inst_iir_inst_n106, datapath_inst_iir_inst_n105,
         datapath_inst_iir_inst_n104, datapath_inst_iir_inst_n103,
         datapath_inst_iir_inst_n102, datapath_inst_iir_inst_n101,
         datapath_inst_iir_inst_n100, datapath_inst_iir_inst_n99,
         datapath_inst_iir_inst_n98, datapath_inst_iir_inst_n97,
         datapath_inst_iir_inst_n96, datapath_inst_iir_inst_n95,
         datapath_inst_iir_inst_n94, datapath_inst_iir_inst_n93,
         datapath_inst_iir_inst_n92, datapath_inst_iir_inst_n91,
         datapath_inst_iir_inst_n90, datapath_inst_iir_inst_n89,
         datapath_inst_iir_inst_n88, datapath_inst_iir_inst_n87,
         datapath_inst_iir_inst_n86, datapath_inst_iir_inst_n85,
         datapath_inst_iir_inst_n84, datapath_inst_iir_inst_n83,
         datapath_inst_iir_inst_n82, datapath_inst_iir_inst_n81,
         datapath_inst_iir_inst_n80, datapath_inst_iir_inst_n79,
         datapath_inst_iir_inst_n78, datapath_inst_iir_inst_n77,
         datapath_inst_iir_inst_n76, datapath_inst_iir_inst_n75,
         datapath_inst_iir_inst_n74, datapath_inst_iir_inst_n73,
         datapath_inst_iir_inst_n72, datapath_inst_iir_inst_n71,
         datapath_inst_iir_inst_n68, datapath_inst_iir_inst_n67,
         datapath_inst_iir_inst_n66, datapath_inst_iir_inst_n65,
         datapath_inst_iir_inst_n64, datapath_inst_iir_inst_n63,
         datapath_inst_iir_inst_n62, datapath_inst_iir_inst_n61,
         datapath_inst_iir_inst_n60, datapath_inst_iir_inst_add_96_n2,
         datapath_inst_iir_inst_add_94_n2, datapath_inst_iir_inst_add_82_n2,
         datapath_inst_iir_inst_mult_84_n295,
         datapath_inst_iir_inst_mult_84_n294,
         datapath_inst_iir_inst_mult_84_n293,
         datapath_inst_iir_inst_mult_84_n292,
         datapath_inst_iir_inst_mult_84_n291,
         datapath_inst_iir_inst_mult_84_n290,
         datapath_inst_iir_inst_mult_84_n289,
         datapath_inst_iir_inst_mult_84_n288,
         datapath_inst_iir_inst_mult_84_n287,
         datapath_inst_iir_inst_mult_84_n286,
         datapath_inst_iir_inst_mult_84_n285,
         datapath_inst_iir_inst_mult_84_n284,
         datapath_inst_iir_inst_mult_84_n283,
         datapath_inst_iir_inst_mult_84_n282,
         datapath_inst_iir_inst_mult_84_n281,
         datapath_inst_iir_inst_mult_84_n280,
         datapath_inst_iir_inst_mult_84_n279,
         datapath_inst_iir_inst_mult_84_n278,
         datapath_inst_iir_inst_mult_84_n277,
         datapath_inst_iir_inst_mult_84_n276,
         datapath_inst_iir_inst_mult_84_n275,
         datapath_inst_iir_inst_mult_84_n274,
         datapath_inst_iir_inst_mult_84_n273,
         datapath_inst_iir_inst_mult_84_n272,
         datapath_inst_iir_inst_mult_84_n271,
         datapath_inst_iir_inst_mult_84_n270,
         datapath_inst_iir_inst_mult_84_n269,
         datapath_inst_iir_inst_mult_84_n268,
         datapath_inst_iir_inst_mult_84_n267,
         datapath_inst_iir_inst_mult_84_n266,
         datapath_inst_iir_inst_mult_84_n265,
         datapath_inst_iir_inst_mult_84_n264,
         datapath_inst_iir_inst_mult_84_n263,
         datapath_inst_iir_inst_mult_84_n262,
         datapath_inst_iir_inst_mult_84_n261,
         datapath_inst_iir_inst_mult_84_n260,
         datapath_inst_iir_inst_mult_84_n259,
         datapath_inst_iir_inst_mult_84_n258,
         datapath_inst_iir_inst_mult_84_n257,
         datapath_inst_iir_inst_mult_84_n256,
         datapath_inst_iir_inst_mult_84_n255,
         datapath_inst_iir_inst_mult_84_n254,
         datapath_inst_iir_inst_mult_84_n253,
         datapath_inst_iir_inst_mult_84_n252,
         datapath_inst_iir_inst_mult_84_n251,
         datapath_inst_iir_inst_mult_84_n250,
         datapath_inst_iir_inst_mult_84_n249,
         datapath_inst_iir_inst_mult_84_n248,
         datapath_inst_iir_inst_mult_84_n247,
         datapath_inst_iir_inst_mult_84_n246,
         datapath_inst_iir_inst_mult_84_n245,
         datapath_inst_iir_inst_mult_84_n244,
         datapath_inst_iir_inst_mult_84_n243,
         datapath_inst_iir_inst_mult_84_n242,
         datapath_inst_iir_inst_mult_84_n241,
         datapath_inst_iir_inst_mult_84_n240,
         datapath_inst_iir_inst_mult_84_n239,
         datapath_inst_iir_inst_mult_84_n238,
         datapath_inst_iir_inst_mult_84_n237,
         datapath_inst_iir_inst_mult_84_n236,
         datapath_inst_iir_inst_mult_84_n235,
         datapath_inst_iir_inst_mult_84_n234,
         datapath_inst_iir_inst_mult_84_n233,
         datapath_inst_iir_inst_mult_84_n232,
         datapath_inst_iir_inst_mult_84_n231,
         datapath_inst_iir_inst_mult_84_n230,
         datapath_inst_iir_inst_mult_84_n229,
         datapath_inst_iir_inst_mult_84_n228,
         datapath_inst_iir_inst_mult_84_n227,
         datapath_inst_iir_inst_mult_84_n226,
         datapath_inst_iir_inst_mult_84_n225,
         datapath_inst_iir_inst_mult_84_n224,
         datapath_inst_iir_inst_mult_84_n223,
         datapath_inst_iir_inst_mult_84_n222,
         datapath_inst_iir_inst_mult_84_n221,
         datapath_inst_iir_inst_mult_84_n220,
         datapath_inst_iir_inst_mult_84_n219,
         datapath_inst_iir_inst_mult_84_n218,
         datapath_inst_iir_inst_mult_84_n217,
         datapath_inst_iir_inst_mult_84_n216,
         datapath_inst_iir_inst_mult_84_n215,
         datapath_inst_iir_inst_mult_84_n214,
         datapath_inst_iir_inst_mult_84_n112,
         datapath_inst_iir_inst_mult_84_n111,
         datapath_inst_iir_inst_mult_84_n110,
         datapath_inst_iir_inst_mult_84_n109,
         datapath_inst_iir_inst_mult_84_n108,
         datapath_inst_iir_inst_mult_84_n107,
         datapath_inst_iir_inst_mult_84_n104,
         datapath_inst_iir_inst_mult_84_n103,
         datapath_inst_iir_inst_mult_84_n102,
         datapath_inst_iir_inst_mult_84_n101,
         datapath_inst_iir_inst_mult_84_n100,
         datapath_inst_iir_inst_mult_84_n99,
         datapath_inst_iir_inst_mult_84_n96,
         datapath_inst_iir_inst_mult_84_n95,
         datapath_inst_iir_inst_mult_84_n94,
         datapath_inst_iir_inst_mult_84_n93,
         datapath_inst_iir_inst_mult_84_n92,
         datapath_inst_iir_inst_mult_84_n91,
         datapath_inst_iir_inst_mult_84_n90,
         datapath_inst_iir_inst_mult_84_n89,
         datapath_inst_iir_inst_mult_84_n87,
         datapath_inst_iir_inst_mult_84_n86,
         datapath_inst_iir_inst_mult_84_n85,
         datapath_inst_iir_inst_mult_84_n83,
         datapath_inst_iir_inst_mult_84_n82,
         datapath_inst_iir_inst_mult_84_n81,
         datapath_inst_iir_inst_mult_84_n80,
         datapath_inst_iir_inst_mult_84_n76,
         datapath_inst_iir_inst_mult_84_n75,
         datapath_inst_iir_inst_mult_84_n63,
         datapath_inst_iir_inst_mult_84_n62,
         datapath_inst_iir_inst_mult_84_n61,
         datapath_inst_iir_inst_mult_84_n60,
         datapath_inst_iir_inst_mult_84_n59,
         datapath_inst_iir_inst_mult_84_n58,
         datapath_inst_iir_inst_mult_84_n57,
         datapath_inst_iir_inst_mult_84_n56,
         datapath_inst_iir_inst_mult_84_n55,
         datapath_inst_iir_inst_mult_84_n54,
         datapath_inst_iir_inst_mult_84_n53,
         datapath_inst_iir_inst_mult_84_n52,
         datapath_inst_iir_inst_mult_84_n51,
         datapath_inst_iir_inst_mult_84_n50,
         datapath_inst_iir_inst_mult_84_n49,
         datapath_inst_iir_inst_mult_84_n48,
         datapath_inst_iir_inst_mult_84_n47,
         datapath_inst_iir_inst_mult_84_n46,
         datapath_inst_iir_inst_mult_84_n45,
         datapath_inst_iir_inst_mult_84_n44,
         datapath_inst_iir_inst_mult_84_n43,
         datapath_inst_iir_inst_mult_84_n42,
         datapath_inst_iir_inst_mult_84_n41,
         datapath_inst_iir_inst_mult_84_n40,
         datapath_inst_iir_inst_mult_84_n39,
         datapath_inst_iir_inst_mult_84_n38,
         datapath_inst_iir_inst_mult_84_n37,
         datapath_inst_iir_inst_mult_84_n36,
         datapath_inst_iir_inst_mult_84_n35,
         datapath_inst_iir_inst_mult_84_n34,
         datapath_inst_iir_inst_mult_84_n32,
         datapath_inst_iir_inst_mult_84_n31,
         datapath_inst_iir_inst_mult_84_n30,
         datapath_inst_iir_inst_mult_84_n29,
         datapath_inst_iir_inst_mult_84_n28,
         datapath_inst_iir_inst_mult_84_n27,
         datapath_inst_iir_inst_mult_84_n26,
         datapath_inst_iir_inst_mult_84_n25,
         datapath_inst_iir_inst_mult_84_n24,
         datapath_inst_iir_inst_mult_84_n22,
         datapath_inst_iir_inst_mult_84_n21,
         datapath_inst_iir_inst_mult_84_n20,
         datapath_inst_iir_inst_mult_84_n19,
         datapath_inst_iir_inst_mult_84_n18,
         datapath_inst_iir_inst_mult_84_n17,
         datapath_inst_iir_inst_mult_84_n10, datapath_inst_iir_inst_mult_84_n9,
         datapath_inst_iir_inst_mult_84_n8, datapath_inst_iir_inst_mult_84_n7,
         datapath_inst_iir_inst_mult_84_n6, datapath_inst_iir_inst_mult_84_n5,
         datapath_inst_iir_inst_mult_84_n4, datapath_inst_iir_inst_mult_84_n3,
         datapath_inst_iir_inst_mult_84_n2,
         datapath_inst_iir_inst_mult_85_n289,
         datapath_inst_iir_inst_mult_85_n288,
         datapath_inst_iir_inst_mult_85_n287,
         datapath_inst_iir_inst_mult_85_n286,
         datapath_inst_iir_inst_mult_85_n285,
         datapath_inst_iir_inst_mult_85_n284,
         datapath_inst_iir_inst_mult_85_n283,
         datapath_inst_iir_inst_mult_85_n282,
         datapath_inst_iir_inst_mult_85_n281,
         datapath_inst_iir_inst_mult_85_n280,
         datapath_inst_iir_inst_mult_85_n279,
         datapath_inst_iir_inst_mult_85_n278,
         datapath_inst_iir_inst_mult_85_n277,
         datapath_inst_iir_inst_mult_85_n276,
         datapath_inst_iir_inst_mult_85_n275,
         datapath_inst_iir_inst_mult_85_n274,
         datapath_inst_iir_inst_mult_85_n273,
         datapath_inst_iir_inst_mult_85_n272,
         datapath_inst_iir_inst_mult_85_n271,
         datapath_inst_iir_inst_mult_85_n270,
         datapath_inst_iir_inst_mult_85_n269,
         datapath_inst_iir_inst_mult_85_n268,
         datapath_inst_iir_inst_mult_85_n267,
         datapath_inst_iir_inst_mult_85_n266,
         datapath_inst_iir_inst_mult_85_n265,
         datapath_inst_iir_inst_mult_85_n264,
         datapath_inst_iir_inst_mult_85_n263,
         datapath_inst_iir_inst_mult_85_n262,
         datapath_inst_iir_inst_mult_85_n261,
         datapath_inst_iir_inst_mult_85_n260,
         datapath_inst_iir_inst_mult_85_n259,
         datapath_inst_iir_inst_mult_85_n258,
         datapath_inst_iir_inst_mult_85_n257,
         datapath_inst_iir_inst_mult_85_n256,
         datapath_inst_iir_inst_mult_85_n255,
         datapath_inst_iir_inst_mult_85_n254,
         datapath_inst_iir_inst_mult_85_n253,
         datapath_inst_iir_inst_mult_85_n252,
         datapath_inst_iir_inst_mult_85_n251,
         datapath_inst_iir_inst_mult_85_n250,
         datapath_inst_iir_inst_mult_85_n249,
         datapath_inst_iir_inst_mult_85_n248,
         datapath_inst_iir_inst_mult_85_n247,
         datapath_inst_iir_inst_mult_85_n246,
         datapath_inst_iir_inst_mult_85_n245,
         datapath_inst_iir_inst_mult_85_n244,
         datapath_inst_iir_inst_mult_85_n243,
         datapath_inst_iir_inst_mult_85_n242,
         datapath_inst_iir_inst_mult_85_n241,
         datapath_inst_iir_inst_mult_85_n240,
         datapath_inst_iir_inst_mult_85_n239,
         datapath_inst_iir_inst_mult_85_n238,
         datapath_inst_iir_inst_mult_85_n237,
         datapath_inst_iir_inst_mult_85_n236,
         datapath_inst_iir_inst_mult_85_n235,
         datapath_inst_iir_inst_mult_85_n234,
         datapath_inst_iir_inst_mult_85_n233,
         datapath_inst_iir_inst_mult_85_n232,
         datapath_inst_iir_inst_mult_85_n231,
         datapath_inst_iir_inst_mult_85_n230,
         datapath_inst_iir_inst_mult_85_n229,
         datapath_inst_iir_inst_mult_85_n228,
         datapath_inst_iir_inst_mult_85_n227,
         datapath_inst_iir_inst_mult_85_n226,
         datapath_inst_iir_inst_mult_85_n225,
         datapath_inst_iir_inst_mult_85_n224,
         datapath_inst_iir_inst_mult_85_n223,
         datapath_inst_iir_inst_mult_85_n222,
         datapath_inst_iir_inst_mult_85_n221,
         datapath_inst_iir_inst_mult_85_n220,
         datapath_inst_iir_inst_mult_85_n219,
         datapath_inst_iir_inst_mult_85_n218,
         datapath_inst_iir_inst_mult_85_n217,
         datapath_inst_iir_inst_mult_85_n216,
         datapath_inst_iir_inst_mult_85_n215,
         datapath_inst_iir_inst_mult_85_n214,
         datapath_inst_iir_inst_mult_85_n213,
         datapath_inst_iir_inst_mult_85_n212,
         datapath_inst_iir_inst_mult_85_n211,
         datapath_inst_iir_inst_mult_85_n210,
         datapath_inst_iir_inst_mult_85_n109,
         datapath_inst_iir_inst_mult_85_n108,
         datapath_inst_iir_inst_mult_85_n107,
         datapath_inst_iir_inst_mult_85_n106,
         datapath_inst_iir_inst_mult_85_n105,
         datapath_inst_iir_inst_mult_85_n104,
         datapath_inst_iir_inst_mult_85_n101,
         datapath_inst_iir_inst_mult_85_n100,
         datapath_inst_iir_inst_mult_85_n99,
         datapath_inst_iir_inst_mult_85_n98,
         datapath_inst_iir_inst_mult_85_n97,
         datapath_inst_iir_inst_mult_85_n96,
         datapath_inst_iir_inst_mult_85_n93,
         datapath_inst_iir_inst_mult_85_n92,
         datapath_inst_iir_inst_mult_85_n91,
         datapath_inst_iir_inst_mult_85_n90,
         datapath_inst_iir_inst_mult_85_n89,
         datapath_inst_iir_inst_mult_85_n88,
         datapath_inst_iir_inst_mult_85_n87,
         datapath_inst_iir_inst_mult_85_n86,
         datapath_inst_iir_inst_mult_85_n84,
         datapath_inst_iir_inst_mult_85_n83,
         datapath_inst_iir_inst_mult_85_n82,
         datapath_inst_iir_inst_mult_85_n80,
         datapath_inst_iir_inst_mult_85_n79,
         datapath_inst_iir_inst_mult_85_n78,
         datapath_inst_iir_inst_mult_85_n77,
         datapath_inst_iir_inst_mult_85_n73,
         datapath_inst_iir_inst_mult_85_n72,
         datapath_inst_iir_inst_mult_85_n61,
         datapath_inst_iir_inst_mult_85_n60,
         datapath_inst_iir_inst_mult_85_n59,
         datapath_inst_iir_inst_mult_85_n58,
         datapath_inst_iir_inst_mult_85_n57,
         datapath_inst_iir_inst_mult_85_n56,
         datapath_inst_iir_inst_mult_85_n55,
         datapath_inst_iir_inst_mult_85_n54,
         datapath_inst_iir_inst_mult_85_n53,
         datapath_inst_iir_inst_mult_85_n52,
         datapath_inst_iir_inst_mult_85_n51,
         datapath_inst_iir_inst_mult_85_n50,
         datapath_inst_iir_inst_mult_85_n49,
         datapath_inst_iir_inst_mult_85_n48,
         datapath_inst_iir_inst_mult_85_n47,
         datapath_inst_iir_inst_mult_85_n46,
         datapath_inst_iir_inst_mult_85_n45,
         datapath_inst_iir_inst_mult_85_n44,
         datapath_inst_iir_inst_mult_85_n43,
         datapath_inst_iir_inst_mult_85_n42,
         datapath_inst_iir_inst_mult_85_n41,
         datapath_inst_iir_inst_mult_85_n40,
         datapath_inst_iir_inst_mult_85_n39,
         datapath_inst_iir_inst_mult_85_n38,
         datapath_inst_iir_inst_mult_85_n37,
         datapath_inst_iir_inst_mult_85_n36,
         datapath_inst_iir_inst_mult_85_n35,
         datapath_inst_iir_inst_mult_85_n34,
         datapath_inst_iir_inst_mult_85_n33,
         datapath_inst_iir_inst_mult_85_n32,
         datapath_inst_iir_inst_mult_85_n30,
         datapath_inst_iir_inst_mult_85_n29,
         datapath_inst_iir_inst_mult_85_n28,
         datapath_inst_iir_inst_mult_85_n27,
         datapath_inst_iir_inst_mult_85_n26,
         datapath_inst_iir_inst_mult_85_n25,
         datapath_inst_iir_inst_mult_85_n24,
         datapath_inst_iir_inst_mult_85_n23,
         datapath_inst_iir_inst_mult_85_n22,
         datapath_inst_iir_inst_mult_85_n20,
         datapath_inst_iir_inst_mult_85_n19,
         datapath_inst_iir_inst_mult_85_n18,
         datapath_inst_iir_inst_mult_85_n17,
         datapath_inst_iir_inst_mult_85_n16, datapath_inst_iir_inst_mult_85_n8,
         datapath_inst_iir_inst_mult_85_n7, datapath_inst_iir_inst_mult_85_n6,
         datapath_inst_iir_inst_mult_85_n5, datapath_inst_iir_inst_mult_85_n4,
         datapath_inst_iir_inst_mult_85_n3, datapath_inst_iir_inst_mult_85_n2,
         datapath_inst_iir_inst_mult_86_n295,
         datapath_inst_iir_inst_mult_86_n294,
         datapath_inst_iir_inst_mult_86_n293,
         datapath_inst_iir_inst_mult_86_n292,
         datapath_inst_iir_inst_mult_86_n291,
         datapath_inst_iir_inst_mult_86_n290,
         datapath_inst_iir_inst_mult_86_n289,
         datapath_inst_iir_inst_mult_86_n288,
         datapath_inst_iir_inst_mult_86_n287,
         datapath_inst_iir_inst_mult_86_n286,
         datapath_inst_iir_inst_mult_86_n285,
         datapath_inst_iir_inst_mult_86_n284,
         datapath_inst_iir_inst_mult_86_n283,
         datapath_inst_iir_inst_mult_86_n282,
         datapath_inst_iir_inst_mult_86_n281,
         datapath_inst_iir_inst_mult_86_n280,
         datapath_inst_iir_inst_mult_86_n279,
         datapath_inst_iir_inst_mult_86_n278,
         datapath_inst_iir_inst_mult_86_n277,
         datapath_inst_iir_inst_mult_86_n276,
         datapath_inst_iir_inst_mult_86_n275,
         datapath_inst_iir_inst_mult_86_n274,
         datapath_inst_iir_inst_mult_86_n273,
         datapath_inst_iir_inst_mult_86_n272,
         datapath_inst_iir_inst_mult_86_n271,
         datapath_inst_iir_inst_mult_86_n270,
         datapath_inst_iir_inst_mult_86_n269,
         datapath_inst_iir_inst_mult_86_n268,
         datapath_inst_iir_inst_mult_86_n267,
         datapath_inst_iir_inst_mult_86_n266,
         datapath_inst_iir_inst_mult_86_n265,
         datapath_inst_iir_inst_mult_86_n264,
         datapath_inst_iir_inst_mult_86_n263,
         datapath_inst_iir_inst_mult_86_n262,
         datapath_inst_iir_inst_mult_86_n261,
         datapath_inst_iir_inst_mult_86_n260,
         datapath_inst_iir_inst_mult_86_n259,
         datapath_inst_iir_inst_mult_86_n258,
         datapath_inst_iir_inst_mult_86_n257,
         datapath_inst_iir_inst_mult_86_n256,
         datapath_inst_iir_inst_mult_86_n255,
         datapath_inst_iir_inst_mult_86_n254,
         datapath_inst_iir_inst_mult_86_n253,
         datapath_inst_iir_inst_mult_86_n252,
         datapath_inst_iir_inst_mult_86_n251,
         datapath_inst_iir_inst_mult_86_n250,
         datapath_inst_iir_inst_mult_86_n249,
         datapath_inst_iir_inst_mult_86_n248,
         datapath_inst_iir_inst_mult_86_n247,
         datapath_inst_iir_inst_mult_86_n246,
         datapath_inst_iir_inst_mult_86_n245,
         datapath_inst_iir_inst_mult_86_n244,
         datapath_inst_iir_inst_mult_86_n243,
         datapath_inst_iir_inst_mult_86_n242,
         datapath_inst_iir_inst_mult_86_n241,
         datapath_inst_iir_inst_mult_86_n240,
         datapath_inst_iir_inst_mult_86_n239,
         datapath_inst_iir_inst_mult_86_n238,
         datapath_inst_iir_inst_mult_86_n237,
         datapath_inst_iir_inst_mult_86_n236,
         datapath_inst_iir_inst_mult_86_n235,
         datapath_inst_iir_inst_mult_86_n234,
         datapath_inst_iir_inst_mult_86_n233,
         datapath_inst_iir_inst_mult_86_n232,
         datapath_inst_iir_inst_mult_86_n231,
         datapath_inst_iir_inst_mult_86_n230,
         datapath_inst_iir_inst_mult_86_n229,
         datapath_inst_iir_inst_mult_86_n228,
         datapath_inst_iir_inst_mult_86_n227,
         datapath_inst_iir_inst_mult_86_n226,
         datapath_inst_iir_inst_mult_86_n225,
         datapath_inst_iir_inst_mult_86_n224,
         datapath_inst_iir_inst_mult_86_n223,
         datapath_inst_iir_inst_mult_86_n222,
         datapath_inst_iir_inst_mult_86_n221,
         datapath_inst_iir_inst_mult_86_n220,
         datapath_inst_iir_inst_mult_86_n219,
         datapath_inst_iir_inst_mult_86_n218,
         datapath_inst_iir_inst_mult_86_n217,
         datapath_inst_iir_inst_mult_86_n216,
         datapath_inst_iir_inst_mult_86_n215,
         datapath_inst_iir_inst_mult_86_n214,
         datapath_inst_iir_inst_mult_86_n112,
         datapath_inst_iir_inst_mult_86_n111,
         datapath_inst_iir_inst_mult_86_n110,
         datapath_inst_iir_inst_mult_86_n109,
         datapath_inst_iir_inst_mult_86_n108,
         datapath_inst_iir_inst_mult_86_n107,
         datapath_inst_iir_inst_mult_86_n104,
         datapath_inst_iir_inst_mult_86_n103,
         datapath_inst_iir_inst_mult_86_n102,
         datapath_inst_iir_inst_mult_86_n101,
         datapath_inst_iir_inst_mult_86_n100,
         datapath_inst_iir_inst_mult_86_n99,
         datapath_inst_iir_inst_mult_86_n96,
         datapath_inst_iir_inst_mult_86_n95,
         datapath_inst_iir_inst_mult_86_n94,
         datapath_inst_iir_inst_mult_86_n93,
         datapath_inst_iir_inst_mult_86_n92,
         datapath_inst_iir_inst_mult_86_n91,
         datapath_inst_iir_inst_mult_86_n90,
         datapath_inst_iir_inst_mult_86_n89,
         datapath_inst_iir_inst_mult_86_n87,
         datapath_inst_iir_inst_mult_86_n86,
         datapath_inst_iir_inst_mult_86_n85,
         datapath_inst_iir_inst_mult_86_n83,
         datapath_inst_iir_inst_mult_86_n82,
         datapath_inst_iir_inst_mult_86_n81,
         datapath_inst_iir_inst_mult_86_n80,
         datapath_inst_iir_inst_mult_86_n76,
         datapath_inst_iir_inst_mult_86_n75,
         datapath_inst_iir_inst_mult_86_n63,
         datapath_inst_iir_inst_mult_86_n62,
         datapath_inst_iir_inst_mult_86_n61,
         datapath_inst_iir_inst_mult_86_n60,
         datapath_inst_iir_inst_mult_86_n59,
         datapath_inst_iir_inst_mult_86_n58,
         datapath_inst_iir_inst_mult_86_n57,
         datapath_inst_iir_inst_mult_86_n56,
         datapath_inst_iir_inst_mult_86_n55,
         datapath_inst_iir_inst_mult_86_n54,
         datapath_inst_iir_inst_mult_86_n53,
         datapath_inst_iir_inst_mult_86_n52,
         datapath_inst_iir_inst_mult_86_n51,
         datapath_inst_iir_inst_mult_86_n50,
         datapath_inst_iir_inst_mult_86_n49,
         datapath_inst_iir_inst_mult_86_n48,
         datapath_inst_iir_inst_mult_86_n47,
         datapath_inst_iir_inst_mult_86_n46,
         datapath_inst_iir_inst_mult_86_n45,
         datapath_inst_iir_inst_mult_86_n44,
         datapath_inst_iir_inst_mult_86_n43,
         datapath_inst_iir_inst_mult_86_n42,
         datapath_inst_iir_inst_mult_86_n41,
         datapath_inst_iir_inst_mult_86_n40,
         datapath_inst_iir_inst_mult_86_n39,
         datapath_inst_iir_inst_mult_86_n38,
         datapath_inst_iir_inst_mult_86_n37,
         datapath_inst_iir_inst_mult_86_n36,
         datapath_inst_iir_inst_mult_86_n35,
         datapath_inst_iir_inst_mult_86_n34,
         datapath_inst_iir_inst_mult_86_n32,
         datapath_inst_iir_inst_mult_86_n31,
         datapath_inst_iir_inst_mult_86_n30,
         datapath_inst_iir_inst_mult_86_n29,
         datapath_inst_iir_inst_mult_86_n28,
         datapath_inst_iir_inst_mult_86_n27,
         datapath_inst_iir_inst_mult_86_n26,
         datapath_inst_iir_inst_mult_86_n25,
         datapath_inst_iir_inst_mult_86_n24,
         datapath_inst_iir_inst_mult_86_n22,
         datapath_inst_iir_inst_mult_86_n21,
         datapath_inst_iir_inst_mult_86_n20,
         datapath_inst_iir_inst_mult_86_n19,
         datapath_inst_iir_inst_mult_86_n18,
         datapath_inst_iir_inst_mult_86_n17,
         datapath_inst_iir_inst_mult_86_n10, datapath_inst_iir_inst_mult_86_n9,
         datapath_inst_iir_inst_mult_86_n8, datapath_inst_iir_inst_mult_86_n7,
         datapath_inst_iir_inst_mult_86_n6, datapath_inst_iir_inst_mult_86_n5,
         datapath_inst_iir_inst_mult_86_n4, datapath_inst_iir_inst_mult_86_n3,
         datapath_inst_iir_inst_mult_86_n2,
         datapath_inst_iir_inst_mult_87_n295,
         datapath_inst_iir_inst_mult_87_n294,
         datapath_inst_iir_inst_mult_87_n293,
         datapath_inst_iir_inst_mult_87_n292,
         datapath_inst_iir_inst_mult_87_n291,
         datapath_inst_iir_inst_mult_87_n290,
         datapath_inst_iir_inst_mult_87_n289,
         datapath_inst_iir_inst_mult_87_n288,
         datapath_inst_iir_inst_mult_87_n287,
         datapath_inst_iir_inst_mult_87_n286,
         datapath_inst_iir_inst_mult_87_n285,
         datapath_inst_iir_inst_mult_87_n284,
         datapath_inst_iir_inst_mult_87_n283,
         datapath_inst_iir_inst_mult_87_n282,
         datapath_inst_iir_inst_mult_87_n281,
         datapath_inst_iir_inst_mult_87_n280,
         datapath_inst_iir_inst_mult_87_n279,
         datapath_inst_iir_inst_mult_87_n278,
         datapath_inst_iir_inst_mult_87_n277,
         datapath_inst_iir_inst_mult_87_n276,
         datapath_inst_iir_inst_mult_87_n275,
         datapath_inst_iir_inst_mult_87_n274,
         datapath_inst_iir_inst_mult_87_n273,
         datapath_inst_iir_inst_mult_87_n272,
         datapath_inst_iir_inst_mult_87_n271,
         datapath_inst_iir_inst_mult_87_n270,
         datapath_inst_iir_inst_mult_87_n269,
         datapath_inst_iir_inst_mult_87_n268,
         datapath_inst_iir_inst_mult_87_n267,
         datapath_inst_iir_inst_mult_87_n266,
         datapath_inst_iir_inst_mult_87_n265,
         datapath_inst_iir_inst_mult_87_n264,
         datapath_inst_iir_inst_mult_87_n263,
         datapath_inst_iir_inst_mult_87_n262,
         datapath_inst_iir_inst_mult_87_n261,
         datapath_inst_iir_inst_mult_87_n260,
         datapath_inst_iir_inst_mult_87_n259,
         datapath_inst_iir_inst_mult_87_n258,
         datapath_inst_iir_inst_mult_87_n257,
         datapath_inst_iir_inst_mult_87_n256,
         datapath_inst_iir_inst_mult_87_n255,
         datapath_inst_iir_inst_mult_87_n254,
         datapath_inst_iir_inst_mult_87_n253,
         datapath_inst_iir_inst_mult_87_n252,
         datapath_inst_iir_inst_mult_87_n251,
         datapath_inst_iir_inst_mult_87_n250,
         datapath_inst_iir_inst_mult_87_n249,
         datapath_inst_iir_inst_mult_87_n248,
         datapath_inst_iir_inst_mult_87_n247,
         datapath_inst_iir_inst_mult_87_n246,
         datapath_inst_iir_inst_mult_87_n245,
         datapath_inst_iir_inst_mult_87_n244,
         datapath_inst_iir_inst_mult_87_n243,
         datapath_inst_iir_inst_mult_87_n242,
         datapath_inst_iir_inst_mult_87_n241,
         datapath_inst_iir_inst_mult_87_n240,
         datapath_inst_iir_inst_mult_87_n239,
         datapath_inst_iir_inst_mult_87_n238,
         datapath_inst_iir_inst_mult_87_n237,
         datapath_inst_iir_inst_mult_87_n236,
         datapath_inst_iir_inst_mult_87_n235,
         datapath_inst_iir_inst_mult_87_n234,
         datapath_inst_iir_inst_mult_87_n233,
         datapath_inst_iir_inst_mult_87_n232,
         datapath_inst_iir_inst_mult_87_n231,
         datapath_inst_iir_inst_mult_87_n230,
         datapath_inst_iir_inst_mult_87_n229,
         datapath_inst_iir_inst_mult_87_n228,
         datapath_inst_iir_inst_mult_87_n227,
         datapath_inst_iir_inst_mult_87_n226,
         datapath_inst_iir_inst_mult_87_n225,
         datapath_inst_iir_inst_mult_87_n224,
         datapath_inst_iir_inst_mult_87_n223,
         datapath_inst_iir_inst_mult_87_n222,
         datapath_inst_iir_inst_mult_87_n221,
         datapath_inst_iir_inst_mult_87_n220,
         datapath_inst_iir_inst_mult_87_n219,
         datapath_inst_iir_inst_mult_87_n218,
         datapath_inst_iir_inst_mult_87_n217,
         datapath_inst_iir_inst_mult_87_n216,
         datapath_inst_iir_inst_mult_87_n215,
         datapath_inst_iir_inst_mult_87_n214,
         datapath_inst_iir_inst_mult_87_n112,
         datapath_inst_iir_inst_mult_87_n111,
         datapath_inst_iir_inst_mult_87_n110,
         datapath_inst_iir_inst_mult_87_n109,
         datapath_inst_iir_inst_mult_87_n108,
         datapath_inst_iir_inst_mult_87_n107,
         datapath_inst_iir_inst_mult_87_n104,
         datapath_inst_iir_inst_mult_87_n103,
         datapath_inst_iir_inst_mult_87_n102,
         datapath_inst_iir_inst_mult_87_n101,
         datapath_inst_iir_inst_mult_87_n100,
         datapath_inst_iir_inst_mult_87_n99,
         datapath_inst_iir_inst_mult_87_n96,
         datapath_inst_iir_inst_mult_87_n95,
         datapath_inst_iir_inst_mult_87_n94,
         datapath_inst_iir_inst_mult_87_n93,
         datapath_inst_iir_inst_mult_87_n92,
         datapath_inst_iir_inst_mult_87_n91,
         datapath_inst_iir_inst_mult_87_n90,
         datapath_inst_iir_inst_mult_87_n89,
         datapath_inst_iir_inst_mult_87_n87,
         datapath_inst_iir_inst_mult_87_n86,
         datapath_inst_iir_inst_mult_87_n85,
         datapath_inst_iir_inst_mult_87_n83,
         datapath_inst_iir_inst_mult_87_n82,
         datapath_inst_iir_inst_mult_87_n81,
         datapath_inst_iir_inst_mult_87_n80,
         datapath_inst_iir_inst_mult_87_n76,
         datapath_inst_iir_inst_mult_87_n75,
         datapath_inst_iir_inst_mult_87_n63,
         datapath_inst_iir_inst_mult_87_n62,
         datapath_inst_iir_inst_mult_87_n61,
         datapath_inst_iir_inst_mult_87_n60,
         datapath_inst_iir_inst_mult_87_n59,
         datapath_inst_iir_inst_mult_87_n58,
         datapath_inst_iir_inst_mult_87_n57,
         datapath_inst_iir_inst_mult_87_n56,
         datapath_inst_iir_inst_mult_87_n55,
         datapath_inst_iir_inst_mult_87_n54,
         datapath_inst_iir_inst_mult_87_n53,
         datapath_inst_iir_inst_mult_87_n52,
         datapath_inst_iir_inst_mult_87_n51,
         datapath_inst_iir_inst_mult_87_n50,
         datapath_inst_iir_inst_mult_87_n49,
         datapath_inst_iir_inst_mult_87_n48,
         datapath_inst_iir_inst_mult_87_n47,
         datapath_inst_iir_inst_mult_87_n46,
         datapath_inst_iir_inst_mult_87_n45,
         datapath_inst_iir_inst_mult_87_n44,
         datapath_inst_iir_inst_mult_87_n43,
         datapath_inst_iir_inst_mult_87_n42,
         datapath_inst_iir_inst_mult_87_n41,
         datapath_inst_iir_inst_mult_87_n40,
         datapath_inst_iir_inst_mult_87_n39,
         datapath_inst_iir_inst_mult_87_n38,
         datapath_inst_iir_inst_mult_87_n37,
         datapath_inst_iir_inst_mult_87_n36,
         datapath_inst_iir_inst_mult_87_n35,
         datapath_inst_iir_inst_mult_87_n34,
         datapath_inst_iir_inst_mult_87_n32,
         datapath_inst_iir_inst_mult_87_n31,
         datapath_inst_iir_inst_mult_87_n30,
         datapath_inst_iir_inst_mult_87_n29,
         datapath_inst_iir_inst_mult_87_n28,
         datapath_inst_iir_inst_mult_87_n27,
         datapath_inst_iir_inst_mult_87_n26,
         datapath_inst_iir_inst_mult_87_n25,
         datapath_inst_iir_inst_mult_87_n24,
         datapath_inst_iir_inst_mult_87_n22,
         datapath_inst_iir_inst_mult_87_n21,
         datapath_inst_iir_inst_mult_87_n20,
         datapath_inst_iir_inst_mult_87_n19,
         datapath_inst_iir_inst_mult_87_n18,
         datapath_inst_iir_inst_mult_87_n17,
         datapath_inst_iir_inst_mult_87_n10, datapath_inst_iir_inst_mult_87_n9,
         datapath_inst_iir_inst_mult_87_n8, datapath_inst_iir_inst_mult_87_n7,
         datapath_inst_iir_inst_mult_87_n6, datapath_inst_iir_inst_mult_87_n5,
         datapath_inst_iir_inst_mult_87_n4, datapath_inst_iir_inst_mult_87_n3,
         datapath_inst_iir_inst_mult_87_n2, datapath_inst_reg_file1_inst_n9,
         datapath_inst_reg_file1_inst_n8, datapath_inst_reg_file1_inst_n7,
         datapath_inst_reg_file1_inst_n6, datapath_inst_reg_file1_inst_n5,
         datapath_inst_reg_file1_inst_n4, datapath_inst_reg_file1_inst_n3,
         datapath_inst_reg_file1_inst_n2, datapath_inst_reg_file1_inst_n1,
         datapath_inst_reg_file1_inst_n19, datapath_inst_reg_file1_inst_n18,
         datapath_inst_reg_file1_inst_n17, datapath_inst_reg_file1_inst_n16,
         datapath_inst_reg_file1_inst_n15, datapath_inst_reg_file1_inst_n14,
         datapath_inst_reg_file1_inst_n13, datapath_inst_reg_file1_inst_n12,
         datapath_inst_reg_file1_inst_n11, datapath_inst_reg_file1_inst_n10,
         datapath_inst_reg_file2_inst_n29, datapath_inst_reg_file2_inst_n28,
         datapath_inst_reg_file2_inst_n27, datapath_inst_reg_file2_inst_n26,
         datapath_inst_reg_file2_inst_n25, datapath_inst_reg_file2_inst_n24,
         datapath_inst_reg_file2_inst_n23, datapath_inst_reg_file2_inst_n22,
         datapath_inst_reg_file2_inst_n21, datapath_inst_reg_file2_inst_n20,
         datapath_inst_reg_file2_inst_n9, datapath_inst_reg_file2_inst_n8,
         datapath_inst_reg_file2_inst_n7, datapath_inst_reg_file2_inst_n6,
         datapath_inst_reg_file2_inst_n5, datapath_inst_reg_file2_inst_n4,
         datapath_inst_reg_file2_inst_n3, datapath_inst_reg_file2_inst_n2,
         datapath_inst_reg_file2_inst_n1, datapath_inst_my_ff_inst_N2,
         control_unit_inst_n11, control_unit_inst_n10, control_unit_inst_n9,
         control_unit_inst_n8, control_unit_inst_n7, control_unit_inst_n1,
         control_unit_inst_n18, control_unit_inst_n17, control_unit_inst_n16,
         control_unit_inst_n15, control_unit_inst_n13, control_unit_inst_n6,
         control_unit_inst_n5, control_unit_inst_n4, control_unit_inst_n3,
         control_unit_inst_n2, control_unit_inst_N41, control_unit_inst_N40;
  wire   [7:0] datapath_inst_IIR_out;
  wire   [7:0] datapath_inst_IIR_in;
  wire   [15:7] datapath_inst_iir_inst_ff_temp2;
  wire   [15:7] datapath_inst_iir_inst_ff_temp1;
  wire   [14:7] datapath_inst_iir_inst_y_no_ff_temp;
  wire   [15:7] datapath_inst_iir_inst_fb_temp;
  wire   [7:0] datapath_inst_iir_inst_ff30;
  wire   [8:0] datapath_inst_iir_inst_w0;
  wire   [7:0] datapath_inst_iir_inst_ff31;
  wire   [8:0] datapath_inst_iir_inst_ff22;
  wire   [8:0] datapath_inst_iir_inst_ff21;
  wire   [8:0] datapath_inst_iir_inst_ff11;
  wire   [8:0] datapath_inst_iir_inst_fb1;
  wire   [7:0] datapath_inst_iir_inst_y_no_ff1;
  wire   [8:0] datapath_inst_iir_inst_w1;
  wire   [7:2] datapath_inst_iir_inst_add_96_carry;
  wire   [7:2] datapath_inst_iir_inst_add_94_carry;
  wire   [8:2] datapath_inst_iir_inst_add_82_carry;
  wire   [2:1] control_unit_inst_next_state;
  wire   [2:0] control_unit_inst_current_state;

  INV_X1 datapath_inst_iir_inst_U142 ( .A(datapath_inst_iir_inst_n9), .ZN(
        datapath_inst_iir_inst_n15) );
  INV_X1 datapath_inst_iir_inst_U141 ( .A(datapath_inst_iir_inst_n9), .ZN(
        datapath_inst_iir_inst_n14) );
  AOI22_X1 datapath_inst_iir_inst_U140 ( .A1(datapath_inst_iir_inst_ff30[1]), 
        .A2(datapath_inst_iir_inst_n11), .B1(datapath_inst_iir_inst_ff31[1]), 
        .B2(datapath_inst_iir_inst_n5), .ZN(datapath_inst_iir_inst_n79) );
  INV_X1 datapath_inst_iir_inst_U139 ( .A(datapath_inst_iir_inst_n79), .ZN(
        datapath_inst_iir_inst_n31) );
  AOI22_X1 datapath_inst_iir_inst_U138 ( .A1(datapath_inst_iir_inst_ff30[2]), 
        .A2(datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_ff31[2]), 
        .B2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n78) );
  INV_X1 datapath_inst_iir_inst_U137 ( .A(datapath_inst_iir_inst_n78), .ZN(
        datapath_inst_iir_inst_n30) );
  AOI22_X1 datapath_inst_iir_inst_U136 ( .A1(datapath_inst_iir_inst_ff30[3]), 
        .A2(datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_ff31[3]), 
        .B2(datapath_inst_iir_inst_n5), .ZN(datapath_inst_iir_inst_n77) );
  INV_X1 datapath_inst_iir_inst_U135 ( .A(datapath_inst_iir_inst_n77), .ZN(
        datapath_inst_iir_inst_n29) );
  AOI22_X1 datapath_inst_iir_inst_U134 ( .A1(datapath_inst_iir_inst_ff30[4]), 
        .A2(datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_ff31[4]), 
        .B2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n76) );
  INV_X1 datapath_inst_iir_inst_U133 ( .A(datapath_inst_iir_inst_n76), .ZN(
        datapath_inst_iir_inst_n28) );
  AOI22_X1 datapath_inst_iir_inst_U132 ( .A1(datapath_inst_iir_inst_ff30[5]), 
        .A2(datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_ff31[5]), 
        .B2(datapath_inst_iir_inst_n5), .ZN(datapath_inst_iir_inst_n75) );
  INV_X1 datapath_inst_iir_inst_U131 ( .A(datapath_inst_iir_inst_n75), .ZN(
        datapath_inst_iir_inst_n27) );
  AOI22_X1 datapath_inst_iir_inst_U130 ( .A1(datapath_inst_iir_inst_ff30[6]), 
        .A2(datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_ff31[6]), 
        .B2(datapath_inst_iir_inst_n5), .ZN(datapath_inst_iir_inst_n74) );
  INV_X1 datapath_inst_iir_inst_U129 ( .A(datapath_inst_iir_inst_n74), .ZN(
        datapath_inst_iir_inst_n26) );
  AOI22_X1 datapath_inst_iir_inst_U128 ( .A1(datapath_inst_iir_inst_ff30[7]), 
        .A2(datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_ff31[7]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n71) );
  INV_X1 datapath_inst_iir_inst_U127 ( .A(datapath_inst_iir_inst_n71), .ZN(
        datapath_inst_iir_inst_n25) );
  AOI22_X1 datapath_inst_iir_inst_U126 ( .A1(datapath_inst_iir_inst_ff30[0]), 
        .A2(datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_ff31[0]), 
        .B2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n80) );
  INV_X1 datapath_inst_iir_inst_U125 ( .A(datapath_inst_iir_inst_n80), .ZN(
        datapath_inst_iir_inst_n32) );
  AOI22_X1 datapath_inst_iir_inst_U124 ( .A1(datapath_inst_iir_inst_w0[2]), 
        .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_w1[2]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n114) );
  INV_X1 datapath_inst_iir_inst_U123 ( .A(datapath_inst_iir_inst_n114), .ZN(
        datapath_inst_iir_inst_n22) );
  AOI22_X1 datapath_inst_iir_inst_U122 ( .A1(datapath_inst_iir_inst_w0[3]), 
        .A2(datapath_inst_iir_inst_n11), .B1(datapath_inst_iir_inst_w1[3]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n113) );
  INV_X1 datapath_inst_iir_inst_U121 ( .A(datapath_inst_iir_inst_n113), .ZN(
        datapath_inst_iir_inst_n21) );
  AOI22_X1 datapath_inst_iir_inst_U120 ( .A1(datapath_inst_iir_inst_w0[4]), 
        .A2(datapath_inst_iir_inst_n11), .B1(datapath_inst_iir_inst_w1[4]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n112) );
  INV_X1 datapath_inst_iir_inst_U119 ( .A(datapath_inst_iir_inst_n112), .ZN(
        datapath_inst_iir_inst_n20) );
  AOI22_X1 datapath_inst_iir_inst_U118 ( .A1(datapath_inst_iir_inst_w0[5]), 
        .A2(datapath_inst_iir_inst_n11), .B1(datapath_inst_iir_inst_w1[5]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n111) );
  INV_X1 datapath_inst_iir_inst_U117 ( .A(datapath_inst_iir_inst_n111), .ZN(
        datapath_inst_iir_inst_n19) );
  AOI22_X1 datapath_inst_iir_inst_U116 ( .A1(datapath_inst_iir_inst_w0[6]), 
        .A2(datapath_inst_iir_inst_n11), .B1(datapath_inst_iir_inst_w1[6]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n110) );
  INV_X1 datapath_inst_iir_inst_U115 ( .A(datapath_inst_iir_inst_n110), .ZN(
        datapath_inst_iir_inst_n18) );
  AOI22_X1 datapath_inst_iir_inst_U114 ( .A1(datapath_inst_iir_inst_w0[7]), 
        .A2(datapath_inst_iir_inst_n11), .B1(datapath_inst_iir_inst_w1[7]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n109) );
  INV_X1 datapath_inst_iir_inst_U113 ( .A(datapath_inst_iir_inst_n109), .ZN(
        datapath_inst_iir_inst_n17) );
  AOI22_X1 datapath_inst_iir_inst_U112 ( .A1(datapath_inst_iir_inst_w0[8]), 
        .A2(datapath_inst_iir_inst_n11), .B1(datapath_inst_iir_inst_w1[8]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n108) );
  INV_X1 datapath_inst_iir_inst_U111 ( .A(datapath_inst_iir_inst_n108), .ZN(
        datapath_inst_iir_inst_n16) );
  AOI22_X1 datapath_inst_iir_inst_U110 ( .A1(datapath_inst_iir_inst_w0[1]), 
        .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_w1[1]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n115) );
  INV_X1 datapath_inst_iir_inst_U109 ( .A(datapath_inst_iir_inst_n115), .ZN(
        datapath_inst_iir_inst_n23) );
  AOI22_X1 datapath_inst_iir_inst_U108 ( .A1(datapath_inst_iir_inst_w0[0]), 
        .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_w1[0]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n116) );
  INV_X1 datapath_inst_iir_inst_U107 ( .A(datapath_inst_iir_inst_n116), .ZN(
        datapath_inst_iir_inst_n24) );
  NAND2_X1 datapath_inst_iir_inst_U106 ( .A1(datapath_inst_iir_inst_ff22[7]), 
        .A2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n88) );
  OAI21_X1 datapath_inst_iir_inst_U105 ( .B1(datapath_inst_iir_inst_n14), .B2(
        datapath_inst_iir_inst_n61), .A(datapath_inst_iir_inst_n88), .ZN(
        datapath_inst_iir_inst_n141) );
  NAND2_X1 datapath_inst_iir_inst_U104 ( .A1(datapath_inst_iir_inst_ff22[6]), 
        .A2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n87) );
  OAI21_X1 datapath_inst_iir_inst_U103 ( .B1(datapath_inst_iir_inst_n14), .B2(
        datapath_inst_iir_inst_n62), .A(datapath_inst_iir_inst_n87), .ZN(
        datapath_inst_iir_inst_n140) );
  NAND2_X1 datapath_inst_iir_inst_U102 ( .A1(datapath_inst_iir_inst_ff22[5]), 
        .A2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n86) );
  OAI21_X1 datapath_inst_iir_inst_U101 ( .B1(datapath_inst_iir_inst_n14), .B2(
        datapath_inst_iir_inst_n63), .A(datapath_inst_iir_inst_n86), .ZN(
        datapath_inst_iir_inst_n139) );
  NAND2_X1 datapath_inst_iir_inst_U100 ( .A1(datapath_inst_iir_inst_ff22[4]), 
        .A2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n85) );
  OAI21_X1 datapath_inst_iir_inst_U99 ( .B1(datapath_inst_iir_inst_n14), .B2(
        datapath_inst_iir_inst_n64), .A(datapath_inst_iir_inst_n85), .ZN(
        datapath_inst_iir_inst_n138) );
  NAND2_X1 datapath_inst_iir_inst_U98 ( .A1(datapath_inst_iir_inst_ff22[3]), 
        .A2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n84) );
  OAI21_X1 datapath_inst_iir_inst_U97 ( .B1(datapath_inst_iir_inst_n14), .B2(
        datapath_inst_iir_inst_n65), .A(datapath_inst_iir_inst_n84), .ZN(
        datapath_inst_iir_inst_n137) );
  NAND2_X1 datapath_inst_iir_inst_U96 ( .A1(datapath_inst_iir_inst_ff22[2]), 
        .A2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n83) );
  OAI21_X1 datapath_inst_iir_inst_U95 ( .B1(datapath_inst_iir_inst_n15), .B2(
        datapath_inst_iir_inst_n66), .A(datapath_inst_iir_inst_n83), .ZN(
        datapath_inst_iir_inst_n136) );
  NAND2_X1 datapath_inst_iir_inst_U94 ( .A1(datapath_inst_iir_inst_ff22[1]), 
        .A2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n82) );
  OAI21_X1 datapath_inst_iir_inst_U93 ( .B1(datapath_inst_iir_inst_n15), .B2(
        datapath_inst_iir_inst_n67), .A(datapath_inst_iir_inst_n82), .ZN(
        datapath_inst_iir_inst_n135) );
  NAND2_X1 datapath_inst_iir_inst_U92 ( .A1(datapath_inst_iir_inst_ff22[0]), 
        .A2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n81) );
  OAI21_X1 datapath_inst_iir_inst_U91 ( .B1(datapath_inst_iir_inst_n14), .B2(
        datapath_inst_iir_inst_n68), .A(datapath_inst_iir_inst_n81), .ZN(
        datapath_inst_iir_inst_n134) );
  NAND2_X1 datapath_inst_iir_inst_U90 ( .A1(datapath_inst_iir_inst_ff22[8]), 
        .A2(datapath_inst_iir_inst_n4), .ZN(datapath_inst_iir_inst_n89) );
  OAI21_X1 datapath_inst_iir_inst_U89 ( .B1(datapath_inst_iir_inst_n15), .B2(
        datapath_inst_iir_inst_n60), .A(datapath_inst_iir_inst_n89), .ZN(
        datapath_inst_iir_inst_n142) );
  NOR2_X1 datapath_inst_iir_inst_U88 ( .A1(En_iir_wire), .A2(
        datapath_inst_iir_inst_n149), .ZN(datapath_inst_iir_inst_n73) );
  AOI22_X1 datapath_inst_iir_inst_U87 ( .A1(
        datapath_inst_iir_inst_y_no_ff_temp[14]), .A2(
        datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_y_no_ff1[7]), 
        .B2(datapath_inst_iir_inst_n8), .ZN(datapath_inst_iir_inst_n133) );
  INV_X1 datapath_inst_iir_inst_U86 ( .A(datapath_inst_iir_inst_n133), .ZN(
        datapath_inst_iir_inst_n33) );
  AOI22_X1 datapath_inst_iir_inst_U85 ( .A1(datapath_inst_iir_inst_fb_temp[14]), .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_fb1[7]), .B2(
        datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n124) );
  INV_X1 datapath_inst_iir_inst_U84 ( .A(datapath_inst_iir_inst_n124), .ZN(
        datapath_inst_iir_inst_n42) );
  AOI22_X1 datapath_inst_iir_inst_U83 ( .A1(datapath_inst_iir_inst_fb_temp[13]), .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_fb1[6]), .B2(
        datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n123) );
  INV_X1 datapath_inst_iir_inst_U82 ( .A(datapath_inst_iir_inst_n123), .ZN(
        datapath_inst_iir_inst_n43) );
  AOI22_X1 datapath_inst_iir_inst_U81 ( .A1(datapath_inst_iir_inst_fb_temp[12]), .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_fb1[5]), .B2(
        datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n122) );
  INV_X1 datapath_inst_iir_inst_U80 ( .A(datapath_inst_iir_inst_n122), .ZN(
        datapath_inst_iir_inst_n44) );
  AOI22_X1 datapath_inst_iir_inst_U79 ( .A1(datapath_inst_iir_inst_fb_temp[11]), .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_fb1[4]), .B2(
        datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n121) );
  INV_X1 datapath_inst_iir_inst_U78 ( .A(datapath_inst_iir_inst_n121), .ZN(
        datapath_inst_iir_inst_n45) );
  AOI22_X1 datapath_inst_iir_inst_U77 ( .A1(datapath_inst_iir_inst_fb_temp[10]), .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_fb1[3]), .B2(
        datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n120) );
  INV_X1 datapath_inst_iir_inst_U76 ( .A(datapath_inst_iir_inst_n120), .ZN(
        datapath_inst_iir_inst_n46) );
  AOI22_X1 datapath_inst_iir_inst_U75 ( .A1(datapath_inst_iir_inst_fb_temp[9]), 
        .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_fb1[2]), 
        .B2(datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n119) );
  INV_X1 datapath_inst_iir_inst_U74 ( .A(datapath_inst_iir_inst_n119), .ZN(
        datapath_inst_iir_inst_n47) );
  AOI22_X1 datapath_inst_iir_inst_U73 ( .A1(datapath_inst_iir_inst_fb_temp[8]), 
        .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_fb1[1]), 
        .B2(datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n118) );
  INV_X1 datapath_inst_iir_inst_U72 ( .A(datapath_inst_iir_inst_n118), .ZN(
        datapath_inst_iir_inst_n48) );
  AOI22_X1 datapath_inst_iir_inst_U71 ( .A1(
        datapath_inst_iir_inst_ff_temp1[14]), .A2(datapath_inst_iir_inst_n11), 
        .B1(datapath_inst_iir_inst_ff11[7]), .B2(datapath_inst_iir_inst_n5), 
        .ZN(datapath_inst_iir_inst_n106) );
  INV_X1 datapath_inst_iir_inst_U70 ( .A(datapath_inst_iir_inst_n106), .ZN(
        datapath_inst_iir_inst_n69) );
  AOI22_X1 datapath_inst_iir_inst_U69 ( .A1(
        datapath_inst_iir_inst_ff_temp1[13]), .A2(datapath_inst_iir_inst_n11), 
        .B1(datapath_inst_iir_inst_ff11[6]), .B2(datapath_inst_iir_inst_n5), 
        .ZN(datapath_inst_iir_inst_n105) );
  INV_X1 datapath_inst_iir_inst_U68 ( .A(datapath_inst_iir_inst_n105), .ZN(
        datapath_inst_iir_inst_n70) );
  AOI22_X1 datapath_inst_iir_inst_U67 ( .A1(
        datapath_inst_iir_inst_ff_temp1[12]), .A2(datapath_inst_iir_inst_n11), 
        .B1(datapath_inst_iir_inst_ff11[5]), .B2(datapath_inst_iir_inst_n5), 
        .ZN(datapath_inst_iir_inst_n104) );
  INV_X1 datapath_inst_iir_inst_U66 ( .A(datapath_inst_iir_inst_n104), .ZN(
        datapath_inst_iir_inst_n143) );
  AOI22_X1 datapath_inst_iir_inst_U65 ( .A1(
        datapath_inst_iir_inst_ff_temp1[11]), .A2(datapath_inst_iir_inst_n11), 
        .B1(datapath_inst_iir_inst_ff11[4]), .B2(datapath_inst_iir_inst_n5), 
        .ZN(datapath_inst_iir_inst_n103) );
  INV_X1 datapath_inst_iir_inst_U64 ( .A(datapath_inst_iir_inst_n103), .ZN(
        datapath_inst_iir_inst_n144) );
  AOI22_X1 datapath_inst_iir_inst_U63 ( .A1(
        datapath_inst_iir_inst_ff_temp1[10]), .A2(datapath_inst_iir_inst_n10), 
        .B1(datapath_inst_iir_inst_ff11[3]), .B2(datapath_inst_iir_inst_n5), 
        .ZN(datapath_inst_iir_inst_n102) );
  INV_X1 datapath_inst_iir_inst_U62 ( .A(datapath_inst_iir_inst_n102), .ZN(
        datapath_inst_iir_inst_n145) );
  AOI22_X1 datapath_inst_iir_inst_U61 ( .A1(datapath_inst_iir_inst_ff_temp1[9]), .A2(datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_ff11[2]), .B2(
        datapath_inst_iir_inst_n5), .ZN(datapath_inst_iir_inst_n101) );
  INV_X1 datapath_inst_iir_inst_U60 ( .A(datapath_inst_iir_inst_n101), .ZN(
        datapath_inst_iir_inst_n146) );
  AOI22_X1 datapath_inst_iir_inst_U59 ( .A1(datapath_inst_iir_inst_ff_temp1[8]), .A2(datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_ff11[1]), .B2(
        datapath_inst_iir_inst_n5), .ZN(datapath_inst_iir_inst_n100) );
  INV_X1 datapath_inst_iir_inst_U58 ( .A(datapath_inst_iir_inst_n100), .ZN(
        datapath_inst_iir_inst_n147) );
  AOI22_X1 datapath_inst_iir_inst_U57 ( .A1(datapath_inst_iir_inst_fb_temp[7]), 
        .A2(datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_fb1[0]), 
        .B2(datapath_inst_iir_inst_n6), .ZN(datapath_inst_iir_inst_n117) );
  INV_X1 datapath_inst_iir_inst_U56 ( .A(datapath_inst_iir_inst_n117), .ZN(
        datapath_inst_iir_inst_n49) );
  AOI22_X1 datapath_inst_iir_inst_U55 ( .A1(
        datapath_inst_iir_inst_y_no_ff_temp[13]), .A2(
        datapath_inst_iir_inst_n13), .B1(datapath_inst_iir_inst_y_no_ff1[6]), 
        .B2(datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n132) );
  INV_X1 datapath_inst_iir_inst_U54 ( .A(datapath_inst_iir_inst_n132), .ZN(
        datapath_inst_iir_inst_n34) );
  AOI22_X1 datapath_inst_iir_inst_U53 ( .A1(
        datapath_inst_iir_inst_y_no_ff_temp[11]), .A2(
        datapath_inst_iir_inst_n13), .B1(datapath_inst_iir_inst_y_no_ff1[4]), 
        .B2(datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n130) );
  INV_X1 datapath_inst_iir_inst_U52 ( .A(datapath_inst_iir_inst_n130), .ZN(
        datapath_inst_iir_inst_n36) );
  AOI22_X1 datapath_inst_iir_inst_U51 ( .A1(
        datapath_inst_iir_inst_y_no_ff_temp[10]), .A2(
        datapath_inst_iir_inst_n13), .B1(datapath_inst_iir_inst_y_no_ff1[3]), 
        .B2(datapath_inst_iir_inst_n8), .ZN(datapath_inst_iir_inst_n129) );
  INV_X1 datapath_inst_iir_inst_U50 ( .A(datapath_inst_iir_inst_n129), .ZN(
        datapath_inst_iir_inst_n37) );
  AOI22_X1 datapath_inst_iir_inst_U49 ( .A1(
        datapath_inst_iir_inst_y_no_ff_temp[9]), .A2(
        datapath_inst_iir_inst_n13), .B1(datapath_inst_iir_inst_y_no_ff1[2]), 
        .B2(datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n128) );
  INV_X1 datapath_inst_iir_inst_U48 ( .A(datapath_inst_iir_inst_n128), .ZN(
        datapath_inst_iir_inst_n38) );
  AOI22_X1 datapath_inst_iir_inst_U47 ( .A1(
        datapath_inst_iir_inst_y_no_ff_temp[8]), .A2(
        datapath_inst_iir_inst_n13), .B1(datapath_inst_iir_inst_y_no_ff1[1]), 
        .B2(datapath_inst_iir_inst_n8), .ZN(datapath_inst_iir_inst_n127) );
  INV_X1 datapath_inst_iir_inst_U46 ( .A(datapath_inst_iir_inst_n127), .ZN(
        datapath_inst_iir_inst_n39) );
  AOI22_X1 datapath_inst_iir_inst_U45 ( .A1(datapath_inst_iir_inst_fb_temp[15]), .A2(datapath_inst_iir_inst_n13), .B1(datapath_inst_iir_inst_fb1[8]), .B2(
        datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n125) );
  INV_X1 datapath_inst_iir_inst_U44 ( .A(datapath_inst_iir_inst_n125), .ZN(
        datapath_inst_iir_inst_n41) );
  AOI22_X1 datapath_inst_iir_inst_U43 ( .A1(
        datapath_inst_iir_inst_y_no_ff_temp[7]), .A2(
        datapath_inst_iir_inst_n12), .B1(datapath_inst_iir_inst_y_no_ff1[0]), 
        .B2(datapath_inst_iir_inst_n7), .ZN(datapath_inst_iir_inst_n126) );
  INV_X1 datapath_inst_iir_inst_U42 ( .A(datapath_inst_iir_inst_n126), .ZN(
        datapath_inst_iir_inst_n40) );
  AOI22_X1 datapath_inst_iir_inst_U41 ( .A1(datapath_inst_iir_inst_ff_temp1[7]), .A2(datapath_inst_iir_inst_n10), .B1(datapath_inst_iir_inst_ff11[0]), .B2(
        datapath_inst_iir_inst_n5), .ZN(datapath_inst_iir_inst_n99) );
  INV_X1 datapath_inst_iir_inst_U40 ( .A(datapath_inst_iir_inst_n99), .ZN(
        datapath_inst_iir_inst_n148) );
  AOI22_X1 datapath_inst_iir_inst_U39 ( .A1(datapath_inst_iir_inst_n8), .A2(
        datapath_inst_iir_inst_ff21[7]), .B1(datapath_inst_iir_inst_n9), .B2(
        datapath_inst_iir_inst_ff_temp2[14]), .ZN(datapath_inst_iir_inst_n97)
         );
  INV_X1 datapath_inst_iir_inst_U38 ( .A(datapath_inst_iir_inst_n97), .ZN(
        datapath_inst_iir_inst_n51) );
  AOI22_X1 datapath_inst_iir_inst_U37 ( .A1(datapath_inst_iir_inst_n8), .A2(
        datapath_inst_iir_inst_ff21[5]), .B1(datapath_inst_iir_inst_n12), .B2(
        datapath_inst_iir_inst_ff_temp2[12]), .ZN(datapath_inst_iir_inst_n95)
         );
  INV_X1 datapath_inst_iir_inst_U36 ( .A(datapath_inst_iir_inst_n95), .ZN(
        datapath_inst_iir_inst_n53) );
  AOI22_X1 datapath_inst_iir_inst_U35 ( .A1(datapath_inst_iir_inst_n8), .A2(
        datapath_inst_iir_inst_ff21[0]), .B1(datapath_inst_iir_inst_n12), .B2(
        datapath_inst_iir_inst_ff_temp2[7]), .ZN(datapath_inst_iir_inst_n90)
         );
  INV_X1 datapath_inst_iir_inst_U34 ( .A(datapath_inst_iir_inst_n90), .ZN(
        datapath_inst_iir_inst_n58) );
  AOI22_X1 datapath_inst_iir_inst_U33 ( .A1(datapath_inst_iir_inst_n8), .A2(
        datapath_inst_iir_inst_ff21[6]), .B1(datapath_inst_iir_inst_n13), .B2(
        datapath_inst_iir_inst_ff_temp2[13]), .ZN(datapath_inst_iir_inst_n96)
         );
  INV_X1 datapath_inst_iir_inst_U32 ( .A(datapath_inst_iir_inst_n96), .ZN(
        datapath_inst_iir_inst_n52) );
  AOI22_X1 datapath_inst_iir_inst_U31 ( .A1(datapath_inst_iir_inst_n8), .A2(
        datapath_inst_iir_inst_ff21[4]), .B1(datapath_inst_iir_inst_n13), .B2(
        datapath_inst_iir_inst_ff_temp2[11]), .ZN(datapath_inst_iir_inst_n94)
         );
  INV_X1 datapath_inst_iir_inst_U30 ( .A(datapath_inst_iir_inst_n94), .ZN(
        datapath_inst_iir_inst_n54) );
  AOI22_X1 datapath_inst_iir_inst_U29 ( .A1(datapath_inst_iir_inst_n8), .A2(
        datapath_inst_iir_inst_ff21[3]), .B1(datapath_inst_iir_inst_n13), .B2(
        datapath_inst_iir_inst_ff_temp2[10]), .ZN(datapath_inst_iir_inst_n93)
         );
  INV_X1 datapath_inst_iir_inst_U28 ( .A(datapath_inst_iir_inst_n93), .ZN(
        datapath_inst_iir_inst_n55) );
  AOI22_X1 datapath_inst_iir_inst_U27 ( .A1(datapath_inst_iir_inst_n8), .A2(
        datapath_inst_iir_inst_ff21[2]), .B1(datapath_inst_iir_inst_n13), .B2(
        datapath_inst_iir_inst_ff_temp2[9]), .ZN(datapath_inst_iir_inst_n92)
         );
  INV_X1 datapath_inst_iir_inst_U26 ( .A(datapath_inst_iir_inst_n92), .ZN(
        datapath_inst_iir_inst_n56) );
  AOI22_X1 datapath_inst_iir_inst_U25 ( .A1(datapath_inst_iir_inst_n7), .A2(
        datapath_inst_iir_inst_ff21[1]), .B1(datapath_inst_iir_inst_n13), .B2(
        datapath_inst_iir_inst_ff_temp2[8]), .ZN(datapath_inst_iir_inst_n91)
         );
  INV_X1 datapath_inst_iir_inst_U24 ( .A(datapath_inst_iir_inst_n91), .ZN(
        datapath_inst_iir_inst_n57) );
  AOI22_X1 datapath_inst_iir_inst_U23 ( .A1(
        datapath_inst_iir_inst_y_no_ff_temp[12]), .A2(
        datapath_inst_iir_inst_n13), .B1(datapath_inst_iir_inst_y_no_ff1[5]), 
        .B2(datapath_inst_iir_inst_n8), .ZN(datapath_inst_iir_inst_n131) );
  INV_X1 datapath_inst_iir_inst_U22 ( .A(datapath_inst_iir_inst_n131), .ZN(
        datapath_inst_iir_inst_n35) );
  AOI22_X1 datapath_inst_iir_inst_U21 ( .A1(
        datapath_inst_iir_inst_ff_temp1[15]), .A2(datapath_inst_iir_inst_n11), 
        .B1(datapath_inst_iir_inst_ff11[8]), .B2(datapath_inst_iir_inst_n6), 
        .ZN(datapath_inst_iir_inst_n107) );
  INV_X1 datapath_inst_iir_inst_U20 ( .A(datapath_inst_iir_inst_n107), .ZN(
        datapath_inst_iir_inst_n59) );
  AOI22_X1 datapath_inst_iir_inst_U19 ( .A1(datapath_inst_iir_inst_n8), .A2(
        datapath_inst_iir_inst_ff21[8]), .B1(datapath_inst_iir_inst_n13), .B2(
        datapath_inst_iir_inst_ff_temp2[15]), .ZN(datapath_inst_iir_inst_n98)
         );
  INV_X1 datapath_inst_iir_inst_U18 ( .A(datapath_inst_iir_inst_n98), .ZN(
        datapath_inst_iir_inst_n50) );
  INV_X1 datapath_inst_iir_inst_U17 ( .A(RST_wire), .ZN(
        datapath_inst_iir_inst_n149) );
  BUF_X1 datapath_inst_iir_inst_U16 ( .A(datapath_inst_iir_inst_n73), .Z(
        datapath_inst_iir_inst_n6) );
  BUF_X1 datapath_inst_iir_inst_U15 ( .A(datapath_inst_iir_inst_n73), .Z(
        datapath_inst_iir_inst_n5) );
  BUF_X1 datapath_inst_iir_inst_U14 ( .A(datapath_inst_iir_inst_n73), .Z(
        datapath_inst_iir_inst_n4) );
  BUF_X1 datapath_inst_iir_inst_U13 ( .A(datapath_inst_iir_inst_n73), .Z(
        datapath_inst_iir_inst_n7) );
  BUF_X1 datapath_inst_iir_inst_U9 ( .A(datapath_inst_iir_inst_n73), .Z(
        datapath_inst_iir_inst_n8) );
  NOR2_X1 datapath_inst_iir_inst_U8 ( .A1(datapath_inst_iir_inst_n149), .A2(
        datapath_inst_iir_inst_n8), .ZN(datapath_inst_iir_inst_n72) );
  BUF_X1 datapath_inst_iir_inst_U7 ( .A(datapath_inst_iir_inst_n72), .Z(
        datapath_inst_iir_inst_n9) );
  INV_X1 datapath_inst_iir_inst_U6 ( .A(datapath_inst_iir_inst_n15), .ZN(
        datapath_inst_iir_inst_n10) );
  INV_X1 datapath_inst_iir_inst_U5 ( .A(datapath_inst_iir_inst_n15), .ZN(
        datapath_inst_iir_inst_n12) );
  INV_X1 datapath_inst_iir_inst_U4 ( .A(datapath_inst_iir_inst_n15), .ZN(
        datapath_inst_iir_inst_n11) );
  INV_X1 datapath_inst_iir_inst_U3 ( .A(datapath_inst_iir_inst_n14), .ZN(
        datapath_inst_iir_inst_n13) );
  DFF_X1 datapath_inst_iir_inst_ff31_reg_7_ ( .D(datapath_inst_iir_inst_n25), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff31[7]) );
  DFF_X1 datapath_inst_iir_inst_ff31_reg_6_ ( .D(datapath_inst_iir_inst_n26), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff31[6]) );
  DFF_X1 datapath_inst_iir_inst_ff31_reg_5_ ( .D(datapath_inst_iir_inst_n27), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff31[5]) );
  DFF_X1 datapath_inst_iir_inst_ff31_reg_4_ ( .D(datapath_inst_iir_inst_n28), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff31[4]) );
  DFF_X1 datapath_inst_iir_inst_ff31_reg_3_ ( .D(datapath_inst_iir_inst_n29), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff31[3]) );
  DFF_X1 datapath_inst_iir_inst_ff31_reg_2_ ( .D(datapath_inst_iir_inst_n30), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff31[2]) );
  DFF_X1 datapath_inst_iir_inst_ff31_reg_1_ ( .D(datapath_inst_iir_inst_n31), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff31[1]) );
  DFF_X1 datapath_inst_iir_inst_ff31_reg_0_ ( .D(datapath_inst_iir_inst_n32), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff31[0]) );
  DFF_X1 datapath_inst_iir_inst_ff22_reg_0_ ( .D(datapath_inst_iir_inst_n134), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff22[0]) );
  DFF_X1 datapath_inst_iir_inst_ff22_reg_1_ ( .D(datapath_inst_iir_inst_n135), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff22[1]) );
  DFF_X1 datapath_inst_iir_inst_ff22_reg_2_ ( .D(datapath_inst_iir_inst_n136), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff22[2]) );
  DFF_X1 datapath_inst_iir_inst_ff22_reg_3_ ( .D(datapath_inst_iir_inst_n137), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff22[3]) );
  DFF_X1 datapath_inst_iir_inst_ff22_reg_4_ ( .D(datapath_inst_iir_inst_n138), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff22[4]) );
  DFF_X1 datapath_inst_iir_inst_ff22_reg_5_ ( .D(datapath_inst_iir_inst_n139), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff22[5]) );
  DFF_X1 datapath_inst_iir_inst_ff22_reg_6_ ( .D(datapath_inst_iir_inst_n140), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff22[6]) );
  DFF_X1 datapath_inst_iir_inst_ff22_reg_7_ ( .D(datapath_inst_iir_inst_n141), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff22[7]) );
  DFF_X1 datapath_inst_iir_inst_ff22_reg_8_ ( .D(datapath_inst_iir_inst_n142), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff22[8]) );
  DFF_X1 datapath_inst_iir_inst_ff21_reg_0_ ( .D(datapath_inst_iir_inst_n58), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff21[0]), .QN(
        datapath_inst_iir_inst_n68) );
  DFF_X1 datapath_inst_iir_inst_ff21_reg_1_ ( .D(datapath_inst_iir_inst_n57), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff21[1]), .QN(
        datapath_inst_iir_inst_n67) );
  DFF_X1 datapath_inst_iir_inst_ff21_reg_2_ ( .D(datapath_inst_iir_inst_n56), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff21[2]), .QN(
        datapath_inst_iir_inst_n66) );
  DFF_X1 datapath_inst_iir_inst_ff21_reg_3_ ( .D(datapath_inst_iir_inst_n55), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff21[3]), .QN(
        datapath_inst_iir_inst_n65) );
  DFF_X1 datapath_inst_iir_inst_ff21_reg_4_ ( .D(datapath_inst_iir_inst_n54), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff21[4]), .QN(
        datapath_inst_iir_inst_n64) );
  DFF_X1 datapath_inst_iir_inst_ff21_reg_5_ ( .D(datapath_inst_iir_inst_n53), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff21[5]), .QN(
        datapath_inst_iir_inst_n63) );
  DFF_X1 datapath_inst_iir_inst_ff21_reg_6_ ( .D(datapath_inst_iir_inst_n52), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff21[6]), .QN(
        datapath_inst_iir_inst_n62) );
  DFF_X1 datapath_inst_iir_inst_ff21_reg_7_ ( .D(datapath_inst_iir_inst_n51), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff21[7]), .QN(
        datapath_inst_iir_inst_n61) );
  DFF_X1 datapath_inst_iir_inst_ff21_reg_8_ ( .D(datapath_inst_iir_inst_n50), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff21[8]), .QN(
        datapath_inst_iir_inst_n60) );
  DFF_X1 datapath_inst_iir_inst_ff11_reg_0_ ( .D(datapath_inst_iir_inst_n148), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff11[0]) );
  DFF_X1 datapath_inst_iir_inst_ff11_reg_1_ ( .D(datapath_inst_iir_inst_n147), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff11[1]) );
  DFF_X1 datapath_inst_iir_inst_ff11_reg_2_ ( .D(datapath_inst_iir_inst_n146), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff11[2]) );
  DFF_X1 datapath_inst_iir_inst_ff11_reg_3_ ( .D(datapath_inst_iir_inst_n145), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff11[3]) );
  DFF_X1 datapath_inst_iir_inst_ff11_reg_4_ ( .D(datapath_inst_iir_inst_n144), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff11[4]) );
  DFF_X1 datapath_inst_iir_inst_ff11_reg_5_ ( .D(datapath_inst_iir_inst_n143), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff11[5]) );
  DFF_X1 datapath_inst_iir_inst_ff11_reg_6_ ( .D(datapath_inst_iir_inst_n70), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff11[6]) );
  DFF_X1 datapath_inst_iir_inst_ff11_reg_7_ ( .D(datapath_inst_iir_inst_n69), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff11[7]) );
  DFF_X1 datapath_inst_iir_inst_ff11_reg_8_ ( .D(datapath_inst_iir_inst_n59), 
        .CK(CLK), .Q(datapath_inst_iir_inst_ff11[8]) );
  DFF_X1 datapath_inst_iir_inst_w1_reg_8_ ( .D(datapath_inst_iir_inst_n16), 
        .CK(CLK), .Q(datapath_inst_iir_inst_w1[8]) );
  DFF_X1 datapath_inst_iir_inst_w1_reg_7_ ( .D(datapath_inst_iir_inst_n17), 
        .CK(CLK), .Q(datapath_inst_iir_inst_w1[7]) );
  DFF_X1 datapath_inst_iir_inst_w1_reg_6_ ( .D(datapath_inst_iir_inst_n18), 
        .CK(CLK), .Q(datapath_inst_iir_inst_w1[6]) );
  DFF_X1 datapath_inst_iir_inst_w1_reg_5_ ( .D(datapath_inst_iir_inst_n19), 
        .CK(CLK), .Q(datapath_inst_iir_inst_w1[5]) );
  DFF_X1 datapath_inst_iir_inst_w1_reg_4_ ( .D(datapath_inst_iir_inst_n20), 
        .CK(CLK), .Q(datapath_inst_iir_inst_w1[4]) );
  DFF_X1 datapath_inst_iir_inst_w1_reg_3_ ( .D(datapath_inst_iir_inst_n21), 
        .CK(CLK), .Q(datapath_inst_iir_inst_w1[3]) );
  DFF_X1 datapath_inst_iir_inst_w1_reg_2_ ( .D(datapath_inst_iir_inst_n22), 
        .CK(CLK), .Q(datapath_inst_iir_inst_w1[2]) );
  DFF_X1 datapath_inst_iir_inst_w1_reg_1_ ( .D(datapath_inst_iir_inst_n23), 
        .CK(CLK), .Q(datapath_inst_iir_inst_w1[1]) );
  DFF_X1 datapath_inst_iir_inst_w1_reg_0_ ( .D(datapath_inst_iir_inst_n24), 
        .CK(CLK), .Q(datapath_inst_iir_inst_w1[0]) );
  DFF_X1 datapath_inst_iir_inst_fb1_reg_0_ ( .D(datapath_inst_iir_inst_n49), 
        .CK(CLK), .Q(datapath_inst_iir_inst_fb1[0]) );
  DFF_X1 datapath_inst_iir_inst_fb1_reg_1_ ( .D(datapath_inst_iir_inst_n48), 
        .CK(CLK), .Q(datapath_inst_iir_inst_fb1[1]) );
  DFF_X1 datapath_inst_iir_inst_fb1_reg_2_ ( .D(datapath_inst_iir_inst_n47), 
        .CK(CLK), .Q(datapath_inst_iir_inst_fb1[2]) );
  DFF_X1 datapath_inst_iir_inst_fb1_reg_3_ ( .D(datapath_inst_iir_inst_n46), 
        .CK(CLK), .Q(datapath_inst_iir_inst_fb1[3]) );
  DFF_X1 datapath_inst_iir_inst_fb1_reg_4_ ( .D(datapath_inst_iir_inst_n45), 
        .CK(CLK), .Q(datapath_inst_iir_inst_fb1[4]) );
  DFF_X1 datapath_inst_iir_inst_fb1_reg_5_ ( .D(datapath_inst_iir_inst_n44), 
        .CK(CLK), .Q(datapath_inst_iir_inst_fb1[5]) );
  DFF_X1 datapath_inst_iir_inst_fb1_reg_6_ ( .D(datapath_inst_iir_inst_n43), 
        .CK(CLK), .Q(datapath_inst_iir_inst_fb1[6]) );
  DFF_X1 datapath_inst_iir_inst_fb1_reg_7_ ( .D(datapath_inst_iir_inst_n42), 
        .CK(CLK), .Q(datapath_inst_iir_inst_fb1[7]) );
  DFF_X1 datapath_inst_iir_inst_fb1_reg_8_ ( .D(datapath_inst_iir_inst_n41), 
        .CK(CLK), .Q(datapath_inst_iir_inst_fb1[8]) );
  DFF_X1 datapath_inst_iir_inst_y_no_ff1_reg_0_ ( .D(
        datapath_inst_iir_inst_n40), .CK(CLK), .Q(
        datapath_inst_iir_inst_y_no_ff1[0]) );
  DFF_X1 datapath_inst_iir_inst_y_no_ff1_reg_1_ ( .D(
        datapath_inst_iir_inst_n39), .CK(CLK), .Q(
        datapath_inst_iir_inst_y_no_ff1[1]) );
  DFF_X1 datapath_inst_iir_inst_y_no_ff1_reg_2_ ( .D(
        datapath_inst_iir_inst_n38), .CK(CLK), .Q(
        datapath_inst_iir_inst_y_no_ff1[2]) );
  DFF_X1 datapath_inst_iir_inst_y_no_ff1_reg_3_ ( .D(
        datapath_inst_iir_inst_n37), .CK(CLK), .Q(
        datapath_inst_iir_inst_y_no_ff1[3]) );
  DFF_X1 datapath_inst_iir_inst_y_no_ff1_reg_4_ ( .D(
        datapath_inst_iir_inst_n36), .CK(CLK), .Q(
        datapath_inst_iir_inst_y_no_ff1[4]) );
  DFF_X1 datapath_inst_iir_inst_y_no_ff1_reg_5_ ( .D(
        datapath_inst_iir_inst_n35), .CK(CLK), .Q(
        datapath_inst_iir_inst_y_no_ff1[5]) );
  DFF_X1 datapath_inst_iir_inst_y_no_ff1_reg_6_ ( .D(
        datapath_inst_iir_inst_n34), .CK(CLK), .Q(
        datapath_inst_iir_inst_y_no_ff1[6]) );
  DFF_X1 datapath_inst_iir_inst_y_no_ff1_reg_7_ ( .D(
        datapath_inst_iir_inst_n33), .CK(CLK), .Q(
        datapath_inst_iir_inst_y_no_ff1[7]) );
  AND2_X1 datapath_inst_iir_inst_add_96_U2 ( .A1(
        datapath_inst_iir_inst_ff31[0]), .A2(
        datapath_inst_iir_inst_y_no_ff1[0]), .ZN(
        datapath_inst_iir_inst_add_96_n2) );
  XOR2_X1 datapath_inst_iir_inst_add_96_U1 ( .A(datapath_inst_iir_inst_ff31[0]), .B(datapath_inst_iir_inst_y_no_ff1[0]), .Z(datapath_inst_IIR_out[0]) );
  FA_X1 datapath_inst_iir_inst_add_96_U1_1 ( .A(
        datapath_inst_iir_inst_y_no_ff1[1]), .B(datapath_inst_iir_inst_ff31[1]), .CI(datapath_inst_iir_inst_add_96_n2), .CO(
        datapath_inst_iir_inst_add_96_carry[2]), .S(datapath_inst_IIR_out[1])
         );
  FA_X1 datapath_inst_iir_inst_add_96_U1_2 ( .A(
        datapath_inst_iir_inst_y_no_ff1[2]), .B(datapath_inst_iir_inst_ff31[2]), .CI(datapath_inst_iir_inst_add_96_carry[2]), .CO(
        datapath_inst_iir_inst_add_96_carry[3]), .S(datapath_inst_IIR_out[2])
         );
  FA_X1 datapath_inst_iir_inst_add_96_U1_3 ( .A(
        datapath_inst_iir_inst_y_no_ff1[3]), .B(datapath_inst_iir_inst_ff31[3]), .CI(datapath_inst_iir_inst_add_96_carry[3]), .CO(
        datapath_inst_iir_inst_add_96_carry[4]), .S(datapath_inst_IIR_out[3])
         );
  FA_X1 datapath_inst_iir_inst_add_96_U1_4 ( .A(
        datapath_inst_iir_inst_y_no_ff1[4]), .B(datapath_inst_iir_inst_ff31[4]), .CI(datapath_inst_iir_inst_add_96_carry[4]), .CO(
        datapath_inst_iir_inst_add_96_carry[5]), .S(datapath_inst_IIR_out[4])
         );
  FA_X1 datapath_inst_iir_inst_add_96_U1_5 ( .A(
        datapath_inst_iir_inst_y_no_ff1[5]), .B(datapath_inst_iir_inst_ff31[5]), .CI(datapath_inst_iir_inst_add_96_carry[5]), .CO(
        datapath_inst_iir_inst_add_96_carry[6]), .S(datapath_inst_IIR_out[5])
         );
  FA_X1 datapath_inst_iir_inst_add_96_U1_6 ( .A(
        datapath_inst_iir_inst_y_no_ff1[6]), .B(datapath_inst_iir_inst_ff31[6]), .CI(datapath_inst_iir_inst_add_96_carry[6]), .CO(
        datapath_inst_iir_inst_add_96_carry[7]), .S(datapath_inst_IIR_out[6])
         );
  FA_X1 datapath_inst_iir_inst_add_96_U1_7 ( .A(
        datapath_inst_iir_inst_y_no_ff1[7]), .B(datapath_inst_iir_inst_ff31[7]), .CI(datapath_inst_iir_inst_add_96_carry[7]), .S(datapath_inst_IIR_out[7]) );
  AND2_X1 datapath_inst_iir_inst_add_94_U2 ( .A1(
        datapath_inst_iir_inst_ff22[0]), .A2(datapath_inst_iir_inst_ff11[0]), 
        .ZN(datapath_inst_iir_inst_add_94_n2) );
  XOR2_X1 datapath_inst_iir_inst_add_94_U1 ( .A(datapath_inst_iir_inst_ff22[0]), .B(datapath_inst_iir_inst_ff11[0]), .Z(datapath_inst_iir_inst_ff30[0]) );
  FA_X1 datapath_inst_iir_inst_add_94_U1_1 ( .A(datapath_inst_iir_inst_ff11[1]), .B(datapath_inst_iir_inst_ff22[1]), .CI(datapath_inst_iir_inst_add_94_n2), 
        .CO(datapath_inst_iir_inst_add_94_carry[2]), .S(
        datapath_inst_iir_inst_ff30[1]) );
  FA_X1 datapath_inst_iir_inst_add_94_U1_2 ( .A(datapath_inst_iir_inst_ff11[2]), .B(datapath_inst_iir_inst_ff22[2]), .CI(
        datapath_inst_iir_inst_add_94_carry[2]), .CO(
        datapath_inst_iir_inst_add_94_carry[3]), .S(
        datapath_inst_iir_inst_ff30[2]) );
  FA_X1 datapath_inst_iir_inst_add_94_U1_3 ( .A(datapath_inst_iir_inst_ff11[3]), .B(datapath_inst_iir_inst_ff22[3]), .CI(
        datapath_inst_iir_inst_add_94_carry[3]), .CO(
        datapath_inst_iir_inst_add_94_carry[4]), .S(
        datapath_inst_iir_inst_ff30[3]) );
  FA_X1 datapath_inst_iir_inst_add_94_U1_4 ( .A(datapath_inst_iir_inst_ff11[4]), .B(datapath_inst_iir_inst_ff22[4]), .CI(
        datapath_inst_iir_inst_add_94_carry[4]), .CO(
        datapath_inst_iir_inst_add_94_carry[5]), .S(
        datapath_inst_iir_inst_ff30[4]) );
  FA_X1 datapath_inst_iir_inst_add_94_U1_5 ( .A(datapath_inst_iir_inst_ff11[5]), .B(datapath_inst_iir_inst_ff22[5]), .CI(
        datapath_inst_iir_inst_add_94_carry[5]), .CO(
        datapath_inst_iir_inst_add_94_carry[6]), .S(
        datapath_inst_iir_inst_ff30[5]) );
  FA_X1 datapath_inst_iir_inst_add_94_U1_6 ( .A(datapath_inst_iir_inst_ff11[6]), .B(datapath_inst_iir_inst_ff22[6]), .CI(
        datapath_inst_iir_inst_add_94_carry[6]), .CO(
        datapath_inst_iir_inst_add_94_carry[7]), .S(
        datapath_inst_iir_inst_ff30[6]) );
  FA_X1 datapath_inst_iir_inst_add_94_U1_7 ( .A(datapath_inst_iir_inst_ff11[7]), .B(datapath_inst_iir_inst_ff22[7]), .CI(
        datapath_inst_iir_inst_add_94_carry[7]), .S(
        datapath_inst_iir_inst_ff30[7]) );
  AND2_X1 datapath_inst_iir_inst_add_82_U2 ( .A1(datapath_inst_iir_inst_fb1[0]), .A2(datapath_inst_IIR_in[0]), .ZN(datapath_inst_iir_inst_add_82_n2) );
  XOR2_X1 datapath_inst_iir_inst_add_82_U1 ( .A(datapath_inst_iir_inst_fb1[0]), 
        .B(datapath_inst_IIR_in[0]), .Z(datapath_inst_iir_inst_w0[0]) );
  FA_X1 datapath_inst_iir_inst_add_82_U1_1 ( .A(datapath_inst_IIR_in[1]), .B(
        datapath_inst_iir_inst_fb1[1]), .CI(datapath_inst_iir_inst_add_82_n2), 
        .CO(datapath_inst_iir_inst_add_82_carry[2]), .S(
        datapath_inst_iir_inst_w0[1]) );
  FA_X1 datapath_inst_iir_inst_add_82_U1_2 ( .A(datapath_inst_IIR_in[2]), .B(
        datapath_inst_iir_inst_fb1[2]), .CI(
        datapath_inst_iir_inst_add_82_carry[2]), .CO(
        datapath_inst_iir_inst_add_82_carry[3]), .S(
        datapath_inst_iir_inst_w0[2]) );
  FA_X1 datapath_inst_iir_inst_add_82_U1_3 ( .A(datapath_inst_IIR_in[3]), .B(
        datapath_inst_iir_inst_fb1[3]), .CI(
        datapath_inst_iir_inst_add_82_carry[3]), .CO(
        datapath_inst_iir_inst_add_82_carry[4]), .S(
        datapath_inst_iir_inst_w0[3]) );
  FA_X1 datapath_inst_iir_inst_add_82_U1_4 ( .A(datapath_inst_IIR_in[4]), .B(
        datapath_inst_iir_inst_fb1[4]), .CI(
        datapath_inst_iir_inst_add_82_carry[4]), .CO(
        datapath_inst_iir_inst_add_82_carry[5]), .S(
        datapath_inst_iir_inst_w0[4]) );
  FA_X1 datapath_inst_iir_inst_add_82_U1_5 ( .A(datapath_inst_IIR_in[5]), .B(
        datapath_inst_iir_inst_fb1[5]), .CI(
        datapath_inst_iir_inst_add_82_carry[5]), .CO(
        datapath_inst_iir_inst_add_82_carry[6]), .S(
        datapath_inst_iir_inst_w0[5]) );
  FA_X1 datapath_inst_iir_inst_add_82_U1_6 ( .A(datapath_inst_IIR_in[6]), .B(
        datapath_inst_iir_inst_fb1[6]), .CI(
        datapath_inst_iir_inst_add_82_carry[6]), .CO(
        datapath_inst_iir_inst_add_82_carry[7]), .S(
        datapath_inst_iir_inst_w0[6]) );
  FA_X1 datapath_inst_iir_inst_add_82_U1_7 ( .A(datapath_inst_IIR_in[7]), .B(
        datapath_inst_iir_inst_fb1[7]), .CI(
        datapath_inst_iir_inst_add_82_carry[7]), .CO(
        datapath_inst_iir_inst_add_82_carry[8]), .S(
        datapath_inst_iir_inst_w0[7]) );
  FA_X1 datapath_inst_iir_inst_add_82_U1_8 ( .A(datapath_inst_IIR_in[7]), .B(
        datapath_inst_iir_inst_fb1[8]), .CI(
        datapath_inst_iir_inst_add_82_carry[8]), .S(
        datapath_inst_iir_inst_w0[8]) );
  XOR2_X1 datapath_inst_iir_inst_mult_84_U284 ( .A(an1[2]), .B(an1[1]), .Z(
        datapath_inst_iir_inst_mult_84_n290) );
  NAND2_X1 datapath_inst_iir_inst_mult_84_U283 ( .A1(an1[1]), .A2(
        datapath_inst_iir_inst_mult_84_n233), .ZN(
        datapath_inst_iir_inst_mult_84_n272) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U282 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(an1[1]), .ZN(
        datapath_inst_iir_inst_mult_84_n271) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U281 ( .A1(
        datapath_inst_iir_inst_w1[1]), .A2(datapath_inst_iir_inst_mult_84_n272), .B1(datapath_inst_iir_inst_mult_84_n271), .B2(
        datapath_inst_iir_inst_mult_84_n233), .ZN(
        datapath_inst_iir_inst_mult_84_n295) );
  NAND2_X1 datapath_inst_iir_inst_mult_84_U280 ( .A1(
        datapath_inst_iir_inst_mult_84_n290), .A2(
        datapath_inst_iir_inst_mult_84_n295), .ZN(
        datapath_inst_iir_inst_mult_84_n293) );
  NAND3_X1 datapath_inst_iir_inst_mult_84_U279 ( .A1(
        datapath_inst_iir_inst_mult_84_n295), .A2(
        datapath_inst_iir_inst_mult_84_n220), .A3(an1[1]), .ZN(
        datapath_inst_iir_inst_mult_84_n294) );
  MUX2_X1 datapath_inst_iir_inst_mult_84_U278 ( .A(
        datapath_inst_iir_inst_mult_84_n293), .B(
        datapath_inst_iir_inst_mult_84_n294), .S(
        datapath_inst_iir_inst_mult_84_n219), .Z(
        datapath_inst_iir_inst_mult_84_n292) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U277 ( .A(
        datapath_inst_iir_inst_mult_84_n231), .B(an1[2]), .ZN(
        datapath_inst_iir_inst_mult_84_n291) );
  NAND2_X1 datapath_inst_iir_inst_mult_84_U276 ( .A1(
        datapath_inst_iir_inst_mult_84_n232), .A2(
        datapath_inst_iir_inst_mult_84_n291), .ZN(
        datapath_inst_iir_inst_mult_84_n238) );
  NAND3_X1 datapath_inst_iir_inst_mult_84_U275 ( .A1(
        datapath_inst_iir_inst_mult_84_n290), .A2(
        datapath_inst_iir_inst_mult_84_n219), .A3(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n289) );
  OAI21_X1 datapath_inst_iir_inst_mult_84_U274 ( .B1(
        datapath_inst_iir_inst_mult_84_n231), .B2(
        datapath_inst_iir_inst_mult_84_n238), .A(
        datapath_inst_iir_inst_mult_84_n289), .ZN(
        datapath_inst_iir_inst_mult_84_n288) );
  AOI222_X1 datapath_inst_iir_inst_mult_84_U273 ( .A1(
        datapath_inst_iir_inst_mult_84_n217), .A2(
        datapath_inst_iir_inst_mult_84_n63), .B1(
        datapath_inst_iir_inst_mult_84_n288), .B2(
        datapath_inst_iir_inst_mult_84_n217), .C1(
        datapath_inst_iir_inst_mult_84_n288), .C2(
        datapath_inst_iir_inst_mult_84_n63), .ZN(
        datapath_inst_iir_inst_mult_84_n287) );
  OAI222_X1 datapath_inst_iir_inst_mult_84_U272 ( .A1(
        datapath_inst_iir_inst_mult_84_n287), .A2(
        datapath_inst_iir_inst_mult_84_n218), .B1(
        datapath_inst_iir_inst_mult_84_n287), .B2(
        datapath_inst_iir_inst_mult_84_n216), .C1(
        datapath_inst_iir_inst_mult_84_n216), .C2(
        datapath_inst_iir_inst_mult_84_n218), .ZN(
        datapath_inst_iir_inst_mult_84_n286) );
  AOI222_X1 datapath_inst_iir_inst_mult_84_U271 ( .A1(
        datapath_inst_iir_inst_mult_84_n286), .A2(
        datapath_inst_iir_inst_mult_84_n57), .B1(
        datapath_inst_iir_inst_mult_84_n286), .B2(
        datapath_inst_iir_inst_mult_84_n60), .C1(
        datapath_inst_iir_inst_mult_84_n60), .C2(
        datapath_inst_iir_inst_mult_84_n57), .ZN(
        datapath_inst_iir_inst_mult_84_n285) );
  OAI222_X1 datapath_inst_iir_inst_mult_84_U270 ( .A1(
        datapath_inst_iir_inst_mult_84_n285), .A2(
        datapath_inst_iir_inst_mult_84_n214), .B1(
        datapath_inst_iir_inst_mult_84_n285), .B2(
        datapath_inst_iir_inst_mult_84_n215), .C1(
        datapath_inst_iir_inst_mult_84_n215), .C2(
        datapath_inst_iir_inst_mult_84_n214), .ZN(
        datapath_inst_iir_inst_mult_84_n10) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U269 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n284) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U268 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n237) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U267 ( .A1(
        datapath_inst_iir_inst_mult_84_n284), .A2(
        datapath_inst_iir_inst_mult_84_n238), .B1(
        datapath_inst_iir_inst_mult_84_n232), .B2(
        datapath_inst_iir_inst_mult_84_n237), .ZN(
        datapath_inst_iir_inst_mult_84_n100) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U266 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n283) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U265 ( .A1(
        datapath_inst_iir_inst_mult_84_n283), .A2(
        datapath_inst_iir_inst_mult_84_n238), .B1(
        datapath_inst_iir_inst_mult_84_n232), .B2(
        datapath_inst_iir_inst_mult_84_n284), .ZN(
        datapath_inst_iir_inst_mult_84_n101) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U264 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n282) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U263 ( .A1(
        datapath_inst_iir_inst_mult_84_n282), .A2(
        datapath_inst_iir_inst_mult_84_n238), .B1(
        datapath_inst_iir_inst_mult_84_n232), .B2(
        datapath_inst_iir_inst_mult_84_n283), .ZN(
        datapath_inst_iir_inst_mult_84_n102) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U262 ( .A(
        datapath_inst_iir_inst_w1[1]), .B(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n281) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U261 ( .A1(
        datapath_inst_iir_inst_mult_84_n281), .A2(
        datapath_inst_iir_inst_mult_84_n238), .B1(
        datapath_inst_iir_inst_mult_84_n232), .B2(
        datapath_inst_iir_inst_mult_84_n282), .ZN(
        datapath_inst_iir_inst_mult_84_n103) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U260 ( .A(
        datapath_inst_iir_inst_w1[0]), .B(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n280) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U259 ( .A1(
        datapath_inst_iir_inst_mult_84_n280), .A2(
        datapath_inst_iir_inst_mult_84_n238), .B1(
        datapath_inst_iir_inst_mult_84_n232), .B2(
        datapath_inst_iir_inst_mult_84_n281), .ZN(
        datapath_inst_iir_inst_mult_84_n104) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U258 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(an1[1]), .ZN(
        datapath_inst_iir_inst_mult_84_n278) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U257 ( .A1(
        datapath_inst_iir_inst_mult_84_n233), .A2(
        datapath_inst_iir_inst_mult_84_n278), .B1(
        datapath_inst_iir_inst_mult_84_n272), .B2(
        datapath_inst_iir_inst_mult_84_n278), .ZN(
        datapath_inst_iir_inst_mult_84_n279) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U256 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(an1[1]), .ZN(
        datapath_inst_iir_inst_mult_84_n277) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U255 ( .A1(
        datapath_inst_iir_inst_mult_84_n277), .A2(
        datapath_inst_iir_inst_mult_84_n272), .B1(
        datapath_inst_iir_inst_mult_84_n278), .B2(
        datapath_inst_iir_inst_mult_84_n233), .ZN(
        datapath_inst_iir_inst_mult_84_n107) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U254 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(an1[1]), .ZN(
        datapath_inst_iir_inst_mult_84_n276) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U253 ( .A1(
        datapath_inst_iir_inst_mult_84_n276), .A2(
        datapath_inst_iir_inst_mult_84_n272), .B1(
        datapath_inst_iir_inst_mult_84_n277), .B2(
        datapath_inst_iir_inst_mult_84_n233), .ZN(
        datapath_inst_iir_inst_mult_84_n108) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U252 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(an1[1]), .ZN(
        datapath_inst_iir_inst_mult_84_n275) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U251 ( .A1(
        datapath_inst_iir_inst_mult_84_n275), .A2(
        datapath_inst_iir_inst_mult_84_n272), .B1(
        datapath_inst_iir_inst_mult_84_n276), .B2(
        datapath_inst_iir_inst_mult_84_n233), .ZN(
        datapath_inst_iir_inst_mult_84_n109) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U250 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(an1[1]), .ZN(
        datapath_inst_iir_inst_mult_84_n274) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U249 ( .A1(
        datapath_inst_iir_inst_mult_84_n274), .A2(
        datapath_inst_iir_inst_mult_84_n272), .B1(
        datapath_inst_iir_inst_mult_84_n275), .B2(
        datapath_inst_iir_inst_mult_84_n233), .ZN(
        datapath_inst_iir_inst_mult_84_n110) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U248 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(an1[1]), .ZN(
        datapath_inst_iir_inst_mult_84_n273) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U247 ( .A1(
        datapath_inst_iir_inst_mult_84_n273), .A2(
        datapath_inst_iir_inst_mult_84_n272), .B1(
        datapath_inst_iir_inst_mult_84_n274), .B2(
        datapath_inst_iir_inst_mult_84_n233), .ZN(
        datapath_inst_iir_inst_mult_84_n111) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U246 ( .A1(
        datapath_inst_iir_inst_mult_84_n271), .A2(
        datapath_inst_iir_inst_mult_84_n272), .B1(
        datapath_inst_iir_inst_mult_84_n273), .B2(
        datapath_inst_iir_inst_mult_84_n233), .ZN(
        datapath_inst_iir_inst_mult_84_n112) );
  XOR2_X1 datapath_inst_iir_inst_mult_84_U245 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(an1[7]), .Z(
        datapath_inst_iir_inst_mult_84_n263) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U244 ( .A(
        datapath_inst_iir_inst_mult_84_n228), .B(an1[6]), .ZN(
        datapath_inst_iir_inst_mult_84_n270) );
  NAND2_X1 datapath_inst_iir_inst_mult_84_U243 ( .A1(
        datapath_inst_iir_inst_mult_84_n254), .A2(
        datapath_inst_iir_inst_mult_84_n270), .ZN(
        datapath_inst_iir_inst_mult_84_n256) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U242 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(datapath_inst_iir_inst_mult_84_n228), 
        .ZN(datapath_inst_iir_inst_mult_84_n236) );
  AOI22_X1 datapath_inst_iir_inst_mult_84_U241 ( .A1(
        datapath_inst_iir_inst_mult_84_n263), .A2(
        datapath_inst_iir_inst_mult_84_n227), .B1(
        datapath_inst_iir_inst_mult_84_n229), .B2(
        datapath_inst_iir_inst_mult_84_n236), .ZN(
        datapath_inst_iir_inst_mult_84_n17) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U240 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(an1[5]), .ZN(
        datapath_inst_iir_inst_mult_84_n251) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U239 ( .A(
        datapath_inst_iir_inst_mult_84_n230), .B(an1[4]), .ZN(
        datapath_inst_iir_inst_mult_84_n269) );
  NAND2_X1 datapath_inst_iir_inst_mult_84_U238 ( .A1(
        datapath_inst_iir_inst_mult_84_n242), .A2(
        datapath_inst_iir_inst_mult_84_n269), .ZN(
        datapath_inst_iir_inst_mult_84_n244) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U237 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(an1[5]), .ZN(
        datapath_inst_iir_inst_mult_84_n253) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U236 ( .A1(
        datapath_inst_iir_inst_mult_84_n251), .A2(
        datapath_inst_iir_inst_mult_84_n244), .B1(
        datapath_inst_iir_inst_mult_84_n242), .B2(
        datapath_inst_iir_inst_mult_84_n253), .ZN(
        datapath_inst_iir_inst_mult_84_n22) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U235 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n268) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U234 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n241) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U233 ( .A1(
        datapath_inst_iir_inst_mult_84_n268), .A2(
        datapath_inst_iir_inst_mult_84_n238), .B1(
        datapath_inst_iir_inst_mult_84_n232), .B2(
        datapath_inst_iir_inst_mult_84_n241), .ZN(
        datapath_inst_iir_inst_mult_84_n32) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U232 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(an1[7]), .ZN(
        datapath_inst_iir_inst_mult_84_n258) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U231 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(an1[7]), .ZN(
        datapath_inst_iir_inst_mult_84_n259) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U230 ( .A1(
        datapath_inst_iir_inst_mult_84_n258), .A2(
        datapath_inst_iir_inst_mult_84_n256), .B1(
        datapath_inst_iir_inst_mult_84_n254), .B2(
        datapath_inst_iir_inst_mult_84_n259), .ZN(
        datapath_inst_iir_inst_mult_84_n266) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U229 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n239) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U228 ( .A1(
        datapath_inst_iir_inst_mult_84_n239), .A2(
        datapath_inst_iir_inst_mult_84_n238), .B1(
        datapath_inst_iir_inst_mult_84_n232), .B2(
        datapath_inst_iir_inst_mult_84_n268), .ZN(
        datapath_inst_iir_inst_mult_84_n267) );
  OR2_X1 datapath_inst_iir_inst_mult_84_U227 ( .A1(
        datapath_inst_iir_inst_mult_84_n266), .A2(
        datapath_inst_iir_inst_mult_84_n267), .ZN(
        datapath_inst_iir_inst_mult_84_n38) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U226 ( .A(
        datapath_inst_iir_inst_mult_84_n266), .B(
        datapath_inst_iir_inst_mult_84_n267), .ZN(
        datapath_inst_iir_inst_mult_84_n39) );
  NAND3_X1 datapath_inst_iir_inst_mult_84_U225 ( .A1(
        datapath_inst_iir_inst_mult_84_n229), .A2(
        datapath_inst_iir_inst_mult_84_n219), .A3(an1[7]), .ZN(
        datapath_inst_iir_inst_mult_84_n265) );
  OAI21_X1 datapath_inst_iir_inst_mult_84_U224 ( .B1(
        datapath_inst_iir_inst_mult_84_n228), .B2(
        datapath_inst_iir_inst_mult_84_n256), .A(
        datapath_inst_iir_inst_mult_84_n265), .ZN(
        datapath_inst_iir_inst_mult_84_n75) );
  OR3_X1 datapath_inst_iir_inst_mult_84_U223 ( .A1(
        datapath_inst_iir_inst_mult_84_n242), .A2(datapath_inst_iir_inst_w1[0]), .A3(datapath_inst_iir_inst_mult_84_n230), .ZN(
        datapath_inst_iir_inst_mult_84_n264) );
  OAI21_X1 datapath_inst_iir_inst_mult_84_U222 ( .B1(
        datapath_inst_iir_inst_mult_84_n230), .B2(
        datapath_inst_iir_inst_mult_84_n244), .A(
        datapath_inst_iir_inst_mult_84_n264), .ZN(
        datapath_inst_iir_inst_mult_84_n76) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U221 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(an1[7]), .ZN(
        datapath_inst_iir_inst_mult_84_n262) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U220 ( .A1(
        datapath_inst_iir_inst_mult_84_n262), .A2(
        datapath_inst_iir_inst_mult_84_n256), .B1(
        datapath_inst_iir_inst_mult_84_n254), .B2(
        datapath_inst_iir_inst_mult_84_n223), .ZN(
        datapath_inst_iir_inst_mult_84_n80) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U219 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(an1[7]), .ZN(
        datapath_inst_iir_inst_mult_84_n261) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U218 ( .A1(
        datapath_inst_iir_inst_mult_84_n261), .A2(
        datapath_inst_iir_inst_mult_84_n256), .B1(
        datapath_inst_iir_inst_mult_84_n254), .B2(
        datapath_inst_iir_inst_mult_84_n262), .ZN(
        datapath_inst_iir_inst_mult_84_n81) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U217 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(an1[7]), .ZN(
        datapath_inst_iir_inst_mult_84_n260) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U216 ( .A1(
        datapath_inst_iir_inst_mult_84_n260), .A2(
        datapath_inst_iir_inst_mult_84_n256), .B1(
        datapath_inst_iir_inst_mult_84_n254), .B2(
        datapath_inst_iir_inst_mult_84_n261), .ZN(
        datapath_inst_iir_inst_mult_84_n82) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U215 ( .A1(
        datapath_inst_iir_inst_mult_84_n259), .A2(
        datapath_inst_iir_inst_mult_84_n256), .B1(
        datapath_inst_iir_inst_mult_84_n254), .B2(
        datapath_inst_iir_inst_mult_84_n260), .ZN(
        datapath_inst_iir_inst_mult_84_n83) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U214 ( .A(
        datapath_inst_iir_inst_w1[1]), .B(an1[7]), .ZN(
        datapath_inst_iir_inst_mult_84_n257) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U213 ( .A1(
        datapath_inst_iir_inst_mult_84_n257), .A2(
        datapath_inst_iir_inst_mult_84_n256), .B1(
        datapath_inst_iir_inst_mult_84_n254), .B2(
        datapath_inst_iir_inst_mult_84_n258), .ZN(
        datapath_inst_iir_inst_mult_84_n85) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U212 ( .A(
        datapath_inst_iir_inst_w1[0]), .B(an1[7]), .ZN(
        datapath_inst_iir_inst_mult_84_n255) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U211 ( .A1(
        datapath_inst_iir_inst_mult_84_n255), .A2(
        datapath_inst_iir_inst_mult_84_n256), .B1(
        datapath_inst_iir_inst_mult_84_n254), .B2(
        datapath_inst_iir_inst_mult_84_n257), .ZN(
        datapath_inst_iir_inst_mult_84_n86) );
  NOR2_X1 datapath_inst_iir_inst_mult_84_U210 ( .A1(
        datapath_inst_iir_inst_mult_84_n254), .A2(
        datapath_inst_iir_inst_mult_84_n219), .ZN(
        datapath_inst_iir_inst_mult_84_n87) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U209 ( .A1(
        datapath_inst_iir_inst_mult_84_n253), .A2(
        datapath_inst_iir_inst_mult_84_n242), .B1(
        datapath_inst_iir_inst_mult_84_n244), .B2(
        datapath_inst_iir_inst_mult_84_n253), .ZN(
        datapath_inst_iir_inst_mult_84_n252) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U208 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(an1[5]), .ZN(
        datapath_inst_iir_inst_mult_84_n250) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U207 ( .A1(
        datapath_inst_iir_inst_mult_84_n250), .A2(
        datapath_inst_iir_inst_mult_84_n244), .B1(
        datapath_inst_iir_inst_mult_84_n242), .B2(
        datapath_inst_iir_inst_mult_84_n251), .ZN(
        datapath_inst_iir_inst_mult_84_n89) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U206 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(an1[5]), .ZN(
        datapath_inst_iir_inst_mult_84_n249) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U205 ( .A1(
        datapath_inst_iir_inst_mult_84_n249), .A2(
        datapath_inst_iir_inst_mult_84_n244), .B1(
        datapath_inst_iir_inst_mult_84_n242), .B2(
        datapath_inst_iir_inst_mult_84_n250), .ZN(
        datapath_inst_iir_inst_mult_84_n90) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U204 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(an1[5]), .ZN(
        datapath_inst_iir_inst_mult_84_n248) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U203 ( .A1(
        datapath_inst_iir_inst_mult_84_n248), .A2(
        datapath_inst_iir_inst_mult_84_n244), .B1(
        datapath_inst_iir_inst_mult_84_n242), .B2(
        datapath_inst_iir_inst_mult_84_n249), .ZN(
        datapath_inst_iir_inst_mult_84_n91) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U202 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(an1[5]), .ZN(
        datapath_inst_iir_inst_mult_84_n247) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U201 ( .A1(
        datapath_inst_iir_inst_mult_84_n247), .A2(
        datapath_inst_iir_inst_mult_84_n244), .B1(
        datapath_inst_iir_inst_mult_84_n242), .B2(
        datapath_inst_iir_inst_mult_84_n248), .ZN(
        datapath_inst_iir_inst_mult_84_n92) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U200 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(an1[5]), .ZN(
        datapath_inst_iir_inst_mult_84_n246) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U199 ( .A1(
        datapath_inst_iir_inst_mult_84_n246), .A2(
        datapath_inst_iir_inst_mult_84_n244), .B1(
        datapath_inst_iir_inst_mult_84_n242), .B2(
        datapath_inst_iir_inst_mult_84_n247), .ZN(
        datapath_inst_iir_inst_mult_84_n93) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U198 ( .A(
        datapath_inst_iir_inst_w1[1]), .B(an1[5]), .ZN(
        datapath_inst_iir_inst_mult_84_n245) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U197 ( .A1(
        datapath_inst_iir_inst_mult_84_n245), .A2(
        datapath_inst_iir_inst_mult_84_n244), .B1(
        datapath_inst_iir_inst_mult_84_n242), .B2(
        datapath_inst_iir_inst_mult_84_n246), .ZN(
        datapath_inst_iir_inst_mult_84_n94) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U196 ( .A(
        datapath_inst_iir_inst_w1[0]), .B(an1[5]), .ZN(
        datapath_inst_iir_inst_mult_84_n243) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U195 ( .A1(
        datapath_inst_iir_inst_mult_84_n243), .A2(
        datapath_inst_iir_inst_mult_84_n244), .B1(
        datapath_inst_iir_inst_mult_84_n242), .B2(
        datapath_inst_iir_inst_mult_84_n245), .ZN(
        datapath_inst_iir_inst_mult_84_n95) );
  NOR2_X1 datapath_inst_iir_inst_mult_84_U194 ( .A1(
        datapath_inst_iir_inst_mult_84_n242), .A2(
        datapath_inst_iir_inst_mult_84_n219), .ZN(
        datapath_inst_iir_inst_mult_84_n96) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U193 ( .A1(
        datapath_inst_iir_inst_mult_84_n241), .A2(
        datapath_inst_iir_inst_mult_84_n232), .B1(
        datapath_inst_iir_inst_mult_84_n238), .B2(
        datapath_inst_iir_inst_mult_84_n241), .ZN(
        datapath_inst_iir_inst_mult_84_n240) );
  OAI22_X1 datapath_inst_iir_inst_mult_84_U192 ( .A1(
        datapath_inst_iir_inst_mult_84_n237), .A2(
        datapath_inst_iir_inst_mult_84_n238), .B1(
        datapath_inst_iir_inst_mult_84_n232), .B2(
        datapath_inst_iir_inst_mult_84_n239), .ZN(
        datapath_inst_iir_inst_mult_84_n99) );
  AOI22_X1 datapath_inst_iir_inst_mult_84_U191 ( .A1(
        datapath_inst_iir_inst_mult_84_n236), .A2(
        datapath_inst_iir_inst_mult_84_n229), .B1(
        datapath_inst_iir_inst_mult_84_n227), .B2(
        datapath_inst_iir_inst_mult_84_n236), .ZN(
        datapath_inst_iir_inst_mult_84_n235) );
  XOR2_X1 datapath_inst_iir_inst_mult_84_U190 ( .A(
        datapath_inst_iir_inst_mult_84_n2), .B(
        datapath_inst_iir_inst_mult_84_n235), .Z(
        datapath_inst_iir_inst_mult_84_n234) );
  XNOR2_X1 datapath_inst_iir_inst_mult_84_U189 ( .A(
        datapath_inst_iir_inst_mult_84_n17), .B(
        datapath_inst_iir_inst_mult_84_n234), .ZN(
        datapath_inst_iir_inst_fb_temp[15]) );
  INV_X1 datapath_inst_iir_inst_mult_84_U188 ( .A(an1[7]), .ZN(
        datapath_inst_iir_inst_mult_84_n228) );
  INV_X1 datapath_inst_iir_inst_mult_84_U187 ( .A(an1[3]), .ZN(
        datapath_inst_iir_inst_mult_84_n231) );
  INV_X1 datapath_inst_iir_inst_mult_84_U186 ( .A(an1[5]), .ZN(
        datapath_inst_iir_inst_mult_84_n230) );
  INV_X1 datapath_inst_iir_inst_mult_84_U185 ( .A(datapath_inst_iir_inst_w1[1]), .ZN(datapath_inst_iir_inst_mult_84_n220) );
  INV_X1 datapath_inst_iir_inst_mult_84_U184 ( .A(an1[0]), .ZN(
        datapath_inst_iir_inst_mult_84_n233) );
  INV_X1 datapath_inst_iir_inst_mult_84_U183 ( .A(datapath_inst_iir_inst_w1[0]), .ZN(datapath_inst_iir_inst_mult_84_n219) );
  XOR2_X1 datapath_inst_iir_inst_mult_84_U182 ( .A(an1[6]), .B(
        datapath_inst_iir_inst_mult_84_n230), .Z(
        datapath_inst_iir_inst_mult_84_n254) );
  XOR2_X1 datapath_inst_iir_inst_mult_84_U181 ( .A(an1[4]), .B(
        datapath_inst_iir_inst_mult_84_n231), .Z(
        datapath_inst_iir_inst_mult_84_n242) );
  INV_X1 datapath_inst_iir_inst_mult_84_U180 ( .A(
        datapath_inst_iir_inst_mult_84_n256), .ZN(
        datapath_inst_iir_inst_mult_84_n227) );
  INV_X1 datapath_inst_iir_inst_mult_84_U179 ( .A(
        datapath_inst_iir_inst_mult_84_n254), .ZN(
        datapath_inst_iir_inst_mult_84_n229) );
  INV_X1 datapath_inst_iir_inst_mult_84_U178 ( .A(
        datapath_inst_iir_inst_mult_84_n32), .ZN(
        datapath_inst_iir_inst_mult_84_n221) );
  INV_X1 datapath_inst_iir_inst_mult_84_U177 ( .A(
        datapath_inst_iir_inst_mult_84_n240), .ZN(
        datapath_inst_iir_inst_mult_84_n224) );
  INV_X1 datapath_inst_iir_inst_mult_84_U176 ( .A(
        datapath_inst_iir_inst_mult_84_n279), .ZN(
        datapath_inst_iir_inst_mult_84_n226) );
  INV_X1 datapath_inst_iir_inst_mult_84_U175 ( .A(
        datapath_inst_iir_inst_mult_84_n263), .ZN(
        datapath_inst_iir_inst_mult_84_n223) );
  INV_X1 datapath_inst_iir_inst_mult_84_U174 ( .A(
        datapath_inst_iir_inst_mult_84_n252), .ZN(
        datapath_inst_iir_inst_mult_84_n225) );
  INV_X1 datapath_inst_iir_inst_mult_84_U173 ( .A(
        datapath_inst_iir_inst_mult_84_n22), .ZN(
        datapath_inst_iir_inst_mult_84_n222) );
  INV_X1 datapath_inst_iir_inst_mult_84_U172 ( .A(
        datapath_inst_iir_inst_mult_84_n290), .ZN(
        datapath_inst_iir_inst_mult_84_n232) );
  INV_X1 datapath_inst_iir_inst_mult_84_U171 ( .A(
        datapath_inst_iir_inst_mult_84_n292), .ZN(
        datapath_inst_iir_inst_mult_84_n217) );
  INV_X1 datapath_inst_iir_inst_mult_84_U170 ( .A(
        datapath_inst_iir_inst_mult_84_n61), .ZN(
        datapath_inst_iir_inst_mult_84_n218) );
  INV_X1 datapath_inst_iir_inst_mult_84_U169 ( .A(
        datapath_inst_iir_inst_mult_84_n62), .ZN(
        datapath_inst_iir_inst_mult_84_n216) );
  INV_X1 datapath_inst_iir_inst_mult_84_U168 ( .A(
        datapath_inst_iir_inst_mult_84_n53), .ZN(
        datapath_inst_iir_inst_mult_84_n214) );
  INV_X1 datapath_inst_iir_inst_mult_84_U167 ( .A(
        datapath_inst_iir_inst_mult_84_n56), .ZN(
        datapath_inst_iir_inst_mult_84_n215) );
  HA_X1 datapath_inst_iir_inst_mult_84_U41 ( .A(
        datapath_inst_iir_inst_mult_84_n104), .B(
        datapath_inst_iir_inst_mult_84_n112), .CO(
        datapath_inst_iir_inst_mult_84_n62), .S(
        datapath_inst_iir_inst_mult_84_n63) );
  FA_X1 datapath_inst_iir_inst_mult_84_U40 ( .A(
        datapath_inst_iir_inst_mult_84_n111), .B(
        datapath_inst_iir_inst_mult_84_n96), .CI(
        datapath_inst_iir_inst_mult_84_n103), .CO(
        datapath_inst_iir_inst_mult_84_n60), .S(
        datapath_inst_iir_inst_mult_84_n61) );
  HA_X1 datapath_inst_iir_inst_mult_84_U39 ( .A(
        datapath_inst_iir_inst_mult_84_n76), .B(
        datapath_inst_iir_inst_mult_84_n95), .CO(
        datapath_inst_iir_inst_mult_84_n58), .S(
        datapath_inst_iir_inst_mult_84_n59) );
  FA_X1 datapath_inst_iir_inst_mult_84_U38 ( .A(
        datapath_inst_iir_inst_mult_84_n102), .B(
        datapath_inst_iir_inst_mult_84_n110), .CI(
        datapath_inst_iir_inst_mult_84_n59), .CO(
        datapath_inst_iir_inst_mult_84_n56), .S(
        datapath_inst_iir_inst_mult_84_n57) );
  FA_X1 datapath_inst_iir_inst_mult_84_U37 ( .A(
        datapath_inst_iir_inst_mult_84_n109), .B(
        datapath_inst_iir_inst_mult_84_n87), .CI(
        datapath_inst_iir_inst_mult_84_n101), .CO(
        datapath_inst_iir_inst_mult_84_n54), .S(
        datapath_inst_iir_inst_mult_84_n55) );
  FA_X1 datapath_inst_iir_inst_mult_84_U36 ( .A(
        datapath_inst_iir_inst_mult_84_n58), .B(
        datapath_inst_iir_inst_mult_84_n94), .CI(
        datapath_inst_iir_inst_mult_84_n55), .CO(
        datapath_inst_iir_inst_mult_84_n52), .S(
        datapath_inst_iir_inst_mult_84_n53) );
  HA_X1 datapath_inst_iir_inst_mult_84_U35 ( .A(
        datapath_inst_iir_inst_mult_84_n75), .B(
        datapath_inst_iir_inst_mult_84_n86), .CO(
        datapath_inst_iir_inst_mult_84_n50), .S(
        datapath_inst_iir_inst_mult_84_n51) );
  FA_X1 datapath_inst_iir_inst_mult_84_U34 ( .A(
        datapath_inst_iir_inst_mult_84_n93), .B(
        datapath_inst_iir_inst_mult_84_n108), .CI(
        datapath_inst_iir_inst_mult_84_n100), .CO(
        datapath_inst_iir_inst_mult_84_n48), .S(
        datapath_inst_iir_inst_mult_84_n49) );
  FA_X1 datapath_inst_iir_inst_mult_84_U33 ( .A(
        datapath_inst_iir_inst_mult_84_n54), .B(
        datapath_inst_iir_inst_mult_84_n51), .CI(
        datapath_inst_iir_inst_mult_84_n49), .CO(
        datapath_inst_iir_inst_mult_84_n46), .S(
        datapath_inst_iir_inst_mult_84_n47) );
  HA_X1 datapath_inst_iir_inst_mult_84_U32 ( .A(
        datapath_inst_iir_inst_mult_84_n85), .B(
        datapath_inst_iir_inst_mult_84_n92), .CO(
        datapath_inst_iir_inst_mult_84_n44), .S(
        datapath_inst_iir_inst_mult_84_n45) );
  FA_X1 datapath_inst_iir_inst_mult_84_U31 ( .A(
        datapath_inst_iir_inst_mult_84_n99), .B(
        datapath_inst_iir_inst_mult_84_n107), .CI(
        datapath_inst_iir_inst_mult_84_n50), .CO(
        datapath_inst_iir_inst_mult_84_n42), .S(
        datapath_inst_iir_inst_mult_84_n43) );
  FA_X1 datapath_inst_iir_inst_mult_84_U30 ( .A(
        datapath_inst_iir_inst_mult_84_n48), .B(
        datapath_inst_iir_inst_mult_84_n45), .CI(
        datapath_inst_iir_inst_mult_84_n43), .CO(
        datapath_inst_iir_inst_mult_84_n40), .S(
        datapath_inst_iir_inst_mult_84_n41) );
  FA_X1 datapath_inst_iir_inst_mult_84_U27 ( .A(
        datapath_inst_iir_inst_mult_84_n226), .B(
        datapath_inst_iir_inst_mult_84_n91), .CI(
        datapath_inst_iir_inst_mult_84_n44), .CO(
        datapath_inst_iir_inst_mult_84_n36), .S(
        datapath_inst_iir_inst_mult_84_n37) );
  FA_X1 datapath_inst_iir_inst_mult_84_U26 ( .A(
        datapath_inst_iir_inst_mult_84_n42), .B(
        datapath_inst_iir_inst_mult_84_n39), .CI(
        datapath_inst_iir_inst_mult_84_n37), .CO(
        datapath_inst_iir_inst_mult_84_n34), .S(
        datapath_inst_iir_inst_mult_84_n35) );
  FA_X1 datapath_inst_iir_inst_mult_84_U24 ( .A(
        datapath_inst_iir_inst_mult_84_n83), .B(
        datapath_inst_iir_inst_mult_84_n90), .CI(
        datapath_inst_iir_inst_mult_84_n221), .CO(
        datapath_inst_iir_inst_mult_84_n30), .S(
        datapath_inst_iir_inst_mult_84_n31) );
  FA_X1 datapath_inst_iir_inst_mult_84_U23 ( .A(
        datapath_inst_iir_inst_mult_84_n36), .B(
        datapath_inst_iir_inst_mult_84_n38), .CI(
        datapath_inst_iir_inst_mult_84_n31), .CO(
        datapath_inst_iir_inst_mult_84_n28), .S(
        datapath_inst_iir_inst_mult_84_n29) );
  FA_X1 datapath_inst_iir_inst_mult_84_U22 ( .A(
        datapath_inst_iir_inst_mult_84_n89), .B(
        datapath_inst_iir_inst_mult_84_n32), .CI(
        datapath_inst_iir_inst_mult_84_n224), .CO(
        datapath_inst_iir_inst_mult_84_n26), .S(
        datapath_inst_iir_inst_mult_84_n27) );
  FA_X1 datapath_inst_iir_inst_mult_84_U21 ( .A(
        datapath_inst_iir_inst_mult_84_n30), .B(
        datapath_inst_iir_inst_mult_84_n82), .CI(
        datapath_inst_iir_inst_mult_84_n27), .CO(
        datapath_inst_iir_inst_mult_84_n24), .S(
        datapath_inst_iir_inst_mult_84_n25) );
  FA_X1 datapath_inst_iir_inst_mult_84_U19 ( .A(
        datapath_inst_iir_inst_mult_84_n222), .B(
        datapath_inst_iir_inst_mult_84_n81), .CI(
        datapath_inst_iir_inst_mult_84_n26), .CO(
        datapath_inst_iir_inst_mult_84_n20), .S(
        datapath_inst_iir_inst_mult_84_n21) );
  FA_X1 datapath_inst_iir_inst_mult_84_U18 ( .A(
        datapath_inst_iir_inst_mult_84_n80), .B(
        datapath_inst_iir_inst_mult_84_n22), .CI(
        datapath_inst_iir_inst_mult_84_n225), .CO(
        datapath_inst_iir_inst_mult_84_n18), .S(
        datapath_inst_iir_inst_mult_84_n19) );
  FA_X1 datapath_inst_iir_inst_mult_84_U10 ( .A(
        datapath_inst_iir_inst_mult_84_n47), .B(
        datapath_inst_iir_inst_mult_84_n52), .CI(
        datapath_inst_iir_inst_mult_84_n10), .CO(
        datapath_inst_iir_inst_mult_84_n9), .S(
        datapath_inst_iir_inst_fb_temp[7]) );
  FA_X1 datapath_inst_iir_inst_mult_84_U9 ( .A(
        datapath_inst_iir_inst_mult_84_n41), .B(
        datapath_inst_iir_inst_mult_84_n46), .CI(
        datapath_inst_iir_inst_mult_84_n9), .CO(
        datapath_inst_iir_inst_mult_84_n8), .S(
        datapath_inst_iir_inst_fb_temp[8]) );
  FA_X1 datapath_inst_iir_inst_mult_84_U8 ( .A(
        datapath_inst_iir_inst_mult_84_n35), .B(
        datapath_inst_iir_inst_mult_84_n40), .CI(
        datapath_inst_iir_inst_mult_84_n8), .CO(
        datapath_inst_iir_inst_mult_84_n7), .S(
        datapath_inst_iir_inst_fb_temp[9]) );
  FA_X1 datapath_inst_iir_inst_mult_84_U7 ( .A(
        datapath_inst_iir_inst_mult_84_n29), .B(
        datapath_inst_iir_inst_mult_84_n34), .CI(
        datapath_inst_iir_inst_mult_84_n7), .CO(
        datapath_inst_iir_inst_mult_84_n6), .S(
        datapath_inst_iir_inst_fb_temp[10]) );
  FA_X1 datapath_inst_iir_inst_mult_84_U6 ( .A(
        datapath_inst_iir_inst_mult_84_n25), .B(
        datapath_inst_iir_inst_mult_84_n28), .CI(
        datapath_inst_iir_inst_mult_84_n6), .CO(
        datapath_inst_iir_inst_mult_84_n5), .S(
        datapath_inst_iir_inst_fb_temp[11]) );
  FA_X1 datapath_inst_iir_inst_mult_84_U5 ( .A(
        datapath_inst_iir_inst_mult_84_n21), .B(
        datapath_inst_iir_inst_mult_84_n24), .CI(
        datapath_inst_iir_inst_mult_84_n5), .CO(
        datapath_inst_iir_inst_mult_84_n4), .S(
        datapath_inst_iir_inst_fb_temp[12]) );
  FA_X1 datapath_inst_iir_inst_mult_84_U4 ( .A(
        datapath_inst_iir_inst_mult_84_n20), .B(
        datapath_inst_iir_inst_mult_84_n19), .CI(
        datapath_inst_iir_inst_mult_84_n4), .CO(
        datapath_inst_iir_inst_mult_84_n3), .S(
        datapath_inst_iir_inst_fb_temp[13]) );
  FA_X1 datapath_inst_iir_inst_mult_84_U3 ( .A(
        datapath_inst_iir_inst_mult_84_n18), .B(
        datapath_inst_iir_inst_mult_84_n17), .CI(
        datapath_inst_iir_inst_mult_84_n3), .CO(
        datapath_inst_iir_inst_mult_84_n2), .S(
        datapath_inst_iir_inst_fb_temp[14]) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U277 ( .A(
        datapath_inst_iir_inst_mult_85_n216), .B(b0[3]), .Z(
        datapath_inst_iir_inst_mult_85_n288) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U276 ( .A(b0[3]), .B(b0[2]), .Z(
        datapath_inst_iir_inst_mult_85_n289) );
  NAND2_X1 datapath_inst_iir_inst_mult_85_U275 ( .A1(
        datapath_inst_iir_inst_mult_85_n235), .A2(
        datapath_inst_iir_inst_mult_85_n289), .ZN(
        datapath_inst_iir_inst_mult_85_n234) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U274 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(datapath_inst_iir_inst_mult_85_n224), 
        .Z(datapath_inst_iir_inst_mult_85_n233) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U273 ( .A1(
        datapath_inst_iir_inst_mult_85_n288), .A2(
        datapath_inst_iir_inst_mult_85_n234), .B1(
        datapath_inst_iir_inst_mult_85_n235), .B2(
        datapath_inst_iir_inst_mult_85_n233), .ZN(
        datapath_inst_iir_inst_mult_85_n100) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U272 ( .A(
        datapath_inst_iir_inst_mult_85_n215), .B(b0[3]), .Z(
        datapath_inst_iir_inst_mult_85_n287) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U271 ( .A1(
        datapath_inst_iir_inst_mult_85_n287), .A2(
        datapath_inst_iir_inst_mult_85_n234), .B1(
        datapath_inst_iir_inst_mult_85_n235), .B2(
        datapath_inst_iir_inst_mult_85_n288), .ZN(
        datapath_inst_iir_inst_mult_85_n101) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U270 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(b0[1]), .ZN(
        datapath_inst_iir_inst_mult_85_n285) );
  NAND2_X1 datapath_inst_iir_inst_mult_85_U269 ( .A1(b0[1]), .A2(
        datapath_inst_iir_inst_mult_85_n226), .ZN(
        datapath_inst_iir_inst_mult_85_n258) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U268 ( .A1(
        datapath_inst_iir_inst_mult_85_n226), .A2(
        datapath_inst_iir_inst_mult_85_n285), .B1(
        datapath_inst_iir_inst_mult_85_n258), .B2(
        datapath_inst_iir_inst_mult_85_n285), .ZN(
        datapath_inst_iir_inst_mult_85_n286) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U267 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(b0[1]), .ZN(
        datapath_inst_iir_inst_mult_85_n284) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U266 ( .A1(
        datapath_inst_iir_inst_mult_85_n284), .A2(
        datapath_inst_iir_inst_mult_85_n258), .B1(
        datapath_inst_iir_inst_mult_85_n285), .B2(
        datapath_inst_iir_inst_mult_85_n226), .ZN(
        datapath_inst_iir_inst_mult_85_n104) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U265 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(b0[1]), .ZN(
        datapath_inst_iir_inst_mult_85_n283) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U264 ( .A1(
        datapath_inst_iir_inst_mult_85_n283), .A2(
        datapath_inst_iir_inst_mult_85_n258), .B1(
        datapath_inst_iir_inst_mult_85_n284), .B2(
        datapath_inst_iir_inst_mult_85_n226), .ZN(
        datapath_inst_iir_inst_mult_85_n105) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U263 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(b0[1]), .ZN(
        datapath_inst_iir_inst_mult_85_n282) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U262 ( .A1(
        datapath_inst_iir_inst_mult_85_n282), .A2(
        datapath_inst_iir_inst_mult_85_n258), .B1(
        datapath_inst_iir_inst_mult_85_n283), .B2(
        datapath_inst_iir_inst_mult_85_n226), .ZN(
        datapath_inst_iir_inst_mult_85_n106) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U261 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(b0[1]), .ZN(
        datapath_inst_iir_inst_mult_85_n281) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U260 ( .A1(
        datapath_inst_iir_inst_mult_85_n281), .A2(
        datapath_inst_iir_inst_mult_85_n258), .B1(
        datapath_inst_iir_inst_mult_85_n282), .B2(
        datapath_inst_iir_inst_mult_85_n226), .ZN(
        datapath_inst_iir_inst_mult_85_n107) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U259 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(b0[1]), .ZN(
        datapath_inst_iir_inst_mult_85_n280) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U258 ( .A1(
        datapath_inst_iir_inst_mult_85_n280), .A2(
        datapath_inst_iir_inst_mult_85_n258), .B1(
        datapath_inst_iir_inst_mult_85_n281), .B2(
        datapath_inst_iir_inst_mult_85_n226), .ZN(
        datapath_inst_iir_inst_mult_85_n108) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U257 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(b0[1]), .ZN(
        datapath_inst_iir_inst_mult_85_n259) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U256 ( .A1(
        datapath_inst_iir_inst_mult_85_n259), .A2(
        datapath_inst_iir_inst_mult_85_n258), .B1(
        datapath_inst_iir_inst_mult_85_n280), .B2(
        datapath_inst_iir_inst_mult_85_n226), .ZN(
        datapath_inst_iir_inst_mult_85_n109) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U255 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(datapath_inst_iir_inst_mult_85_n223), 
        .Z(datapath_inst_iir_inst_mult_85_n263) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U254 ( .A(b0[5]), .B(b0[4]), .Z(
        datapath_inst_iir_inst_mult_85_n279) );
  NAND2_X1 datapath_inst_iir_inst_mult_85_U253 ( .A1(
        datapath_inst_iir_inst_mult_85_n242), .A2(
        datapath_inst_iir_inst_mult_85_n279), .ZN(
        datapath_inst_iir_inst_mult_85_n244) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U252 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(datapath_inst_iir_inst_mult_85_n223), 
        .Z(datapath_inst_iir_inst_mult_85_n265) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U251 ( .A1(
        datapath_inst_iir_inst_mult_85_n263), .A2(
        datapath_inst_iir_inst_mult_85_n244), .B1(
        datapath_inst_iir_inst_mult_85_n242), .B2(
        datapath_inst_iir_inst_mult_85_n265), .ZN(
        datapath_inst_iir_inst_mult_85_n20) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U250 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(datapath_inst_iir_inst_mult_85_n224), 
        .Z(datapath_inst_iir_inst_mult_85_n277) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U249 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(datapath_inst_iir_inst_mult_85_n224), 
        .Z(datapath_inst_iir_inst_mult_85_n241) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U248 ( .A1(
        datapath_inst_iir_inst_mult_85_n277), .A2(
        datapath_inst_iir_inst_mult_85_n234), .B1(
        datapath_inst_iir_inst_mult_85_n235), .B2(
        datapath_inst_iir_inst_mult_85_n241), .ZN(
        datapath_inst_iir_inst_mult_85_n30) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U247 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(datapath_inst_iir_inst_mult_85_n222), 
        .Z(datapath_inst_iir_inst_mult_85_n268) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U246 ( .A(b0[7]), .B(b0[6]), .Z(
        datapath_inst_iir_inst_mult_85_n278) );
  NAND2_X1 datapath_inst_iir_inst_mult_85_U245 ( .A1(
        datapath_inst_iir_inst_mult_85_n230), .A2(
        datapath_inst_iir_inst_mult_85_n278), .ZN(
        datapath_inst_iir_inst_mult_85_n231) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U244 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(datapath_inst_iir_inst_mult_85_n222), 
        .Z(datapath_inst_iir_inst_mult_85_n269) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U243 ( .A1(
        datapath_inst_iir_inst_mult_85_n268), .A2(
        datapath_inst_iir_inst_mult_85_n231), .B1(
        datapath_inst_iir_inst_mult_85_n230), .B2(
        datapath_inst_iir_inst_mult_85_n269), .ZN(
        datapath_inst_iir_inst_mult_85_n275) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U242 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(datapath_inst_iir_inst_mult_85_n224), 
        .Z(datapath_inst_iir_inst_mult_85_n239) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U241 ( .A1(
        datapath_inst_iir_inst_mult_85_n239), .A2(
        datapath_inst_iir_inst_mult_85_n234), .B1(
        datapath_inst_iir_inst_mult_85_n235), .B2(
        datapath_inst_iir_inst_mult_85_n277), .ZN(
        datapath_inst_iir_inst_mult_85_n276) );
  OR2_X1 datapath_inst_iir_inst_mult_85_U240 ( .A1(
        datapath_inst_iir_inst_mult_85_n275), .A2(
        datapath_inst_iir_inst_mult_85_n276), .ZN(
        datapath_inst_iir_inst_mult_85_n36) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U239 ( .A(
        datapath_inst_iir_inst_mult_85_n275), .B(
        datapath_inst_iir_inst_mult_85_n276), .ZN(
        datapath_inst_iir_inst_mult_85_n37) );
  OR3_X1 datapath_inst_iir_inst_mult_85_U238 ( .A1(
        datapath_inst_iir_inst_mult_85_n230), .A2(datapath_inst_iir_inst_w1[0]), .A3(datapath_inst_iir_inst_mult_85_n222), .ZN(
        datapath_inst_iir_inst_mult_85_n274) );
  OAI21_X1 datapath_inst_iir_inst_mult_85_U237 ( .B1(
        datapath_inst_iir_inst_mult_85_n222), .B2(
        datapath_inst_iir_inst_mult_85_n231), .A(
        datapath_inst_iir_inst_mult_85_n274), .ZN(
        datapath_inst_iir_inst_mult_85_n72) );
  OR3_X1 datapath_inst_iir_inst_mult_85_U236 ( .A1(
        datapath_inst_iir_inst_mult_85_n242), .A2(datapath_inst_iir_inst_w1[0]), .A3(datapath_inst_iir_inst_mult_85_n223), .ZN(
        datapath_inst_iir_inst_mult_85_n273) );
  OAI21_X1 datapath_inst_iir_inst_mult_85_U235 ( .B1(
        datapath_inst_iir_inst_mult_85_n223), .B2(
        datapath_inst_iir_inst_mult_85_n244), .A(
        datapath_inst_iir_inst_mult_85_n273), .ZN(
        datapath_inst_iir_inst_mult_85_n73) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U234 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(datapath_inst_iir_inst_mult_85_n222), 
        .Z(datapath_inst_iir_inst_mult_85_n272) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U233 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(b0[7]), .ZN(
        datapath_inst_iir_inst_mult_85_n232) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U232 ( .A1(
        datapath_inst_iir_inst_mult_85_n272), .A2(
        datapath_inst_iir_inst_mult_85_n231), .B1(
        datapath_inst_iir_inst_mult_85_n230), .B2(
        datapath_inst_iir_inst_mult_85_n232), .ZN(
        datapath_inst_iir_inst_mult_85_n77) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U231 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(datapath_inst_iir_inst_mult_85_n222), 
        .Z(datapath_inst_iir_inst_mult_85_n271) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U230 ( .A1(
        datapath_inst_iir_inst_mult_85_n271), .A2(
        datapath_inst_iir_inst_mult_85_n231), .B1(
        datapath_inst_iir_inst_mult_85_n230), .B2(
        datapath_inst_iir_inst_mult_85_n272), .ZN(
        datapath_inst_iir_inst_mult_85_n78) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U229 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(datapath_inst_iir_inst_mult_85_n222), 
        .Z(datapath_inst_iir_inst_mult_85_n270) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U228 ( .A1(
        datapath_inst_iir_inst_mult_85_n270), .A2(
        datapath_inst_iir_inst_mult_85_n231), .B1(
        datapath_inst_iir_inst_mult_85_n230), .B2(
        datapath_inst_iir_inst_mult_85_n271), .ZN(
        datapath_inst_iir_inst_mult_85_n79) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U227 ( .A1(
        datapath_inst_iir_inst_mult_85_n269), .A2(
        datapath_inst_iir_inst_mult_85_n231), .B1(
        datapath_inst_iir_inst_mult_85_n230), .B2(
        datapath_inst_iir_inst_mult_85_n270), .ZN(
        datapath_inst_iir_inst_mult_85_n80) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U226 ( .A(
        datapath_inst_iir_inst_mult_85_n216), .B(b0[7]), .Z(
        datapath_inst_iir_inst_mult_85_n267) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U225 ( .A1(
        datapath_inst_iir_inst_mult_85_n267), .A2(
        datapath_inst_iir_inst_mult_85_n231), .B1(
        datapath_inst_iir_inst_mult_85_n230), .B2(
        datapath_inst_iir_inst_mult_85_n268), .ZN(
        datapath_inst_iir_inst_mult_85_n82) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U224 ( .A(
        datapath_inst_iir_inst_mult_85_n215), .B(b0[7]), .Z(
        datapath_inst_iir_inst_mult_85_n266) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U223 ( .A1(
        datapath_inst_iir_inst_mult_85_n266), .A2(
        datapath_inst_iir_inst_mult_85_n231), .B1(
        datapath_inst_iir_inst_mult_85_n230), .B2(
        datapath_inst_iir_inst_mult_85_n267), .ZN(
        datapath_inst_iir_inst_mult_85_n83) );
  NOR2_X1 datapath_inst_iir_inst_mult_85_U222 ( .A1(
        datapath_inst_iir_inst_mult_85_n230), .A2(
        datapath_inst_iir_inst_mult_85_n215), .ZN(
        datapath_inst_iir_inst_mult_85_n84) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U221 ( .A1(
        datapath_inst_iir_inst_mult_85_n265), .A2(
        datapath_inst_iir_inst_mult_85_n242), .B1(
        datapath_inst_iir_inst_mult_85_n244), .B2(
        datapath_inst_iir_inst_mult_85_n265), .ZN(
        datapath_inst_iir_inst_mult_85_n264) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U220 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(datapath_inst_iir_inst_mult_85_n223), 
        .Z(datapath_inst_iir_inst_mult_85_n262) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U219 ( .A1(
        datapath_inst_iir_inst_mult_85_n262), .A2(
        datapath_inst_iir_inst_mult_85_n244), .B1(
        datapath_inst_iir_inst_mult_85_n242), .B2(
        datapath_inst_iir_inst_mult_85_n263), .ZN(
        datapath_inst_iir_inst_mult_85_n86) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U218 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(datapath_inst_iir_inst_mult_85_n223), 
        .Z(datapath_inst_iir_inst_mult_85_n261) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U217 ( .A1(
        datapath_inst_iir_inst_mult_85_n261), .A2(
        datapath_inst_iir_inst_mult_85_n244), .B1(
        datapath_inst_iir_inst_mult_85_n242), .B2(
        datapath_inst_iir_inst_mult_85_n262), .ZN(
        datapath_inst_iir_inst_mult_85_n87) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U216 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(datapath_inst_iir_inst_mult_85_n223), 
        .Z(datapath_inst_iir_inst_mult_85_n260) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U215 ( .A1(
        datapath_inst_iir_inst_mult_85_n260), .A2(
        datapath_inst_iir_inst_mult_85_n244), .B1(
        datapath_inst_iir_inst_mult_85_n242), .B2(
        datapath_inst_iir_inst_mult_85_n261), .ZN(
        datapath_inst_iir_inst_mult_85_n88) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U214 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(datapath_inst_iir_inst_mult_85_n223), 
        .Z(datapath_inst_iir_inst_mult_85_n247) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U213 ( .A1(
        datapath_inst_iir_inst_mult_85_n247), .A2(
        datapath_inst_iir_inst_mult_85_n244), .B1(
        datapath_inst_iir_inst_mult_85_n242), .B2(
        datapath_inst_iir_inst_mult_85_n260), .ZN(
        datapath_inst_iir_inst_mult_85_n89) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U212 ( .A1(
        datapath_inst_iir_inst_w1[1]), .A2(datapath_inst_iir_inst_mult_85_n258), .B1(datapath_inst_iir_inst_mult_85_n259), .B2(
        datapath_inst_iir_inst_mult_85_n226), .ZN(
        datapath_inst_iir_inst_mult_85_n257) );
  NAND3_X1 datapath_inst_iir_inst_mult_85_U211 ( .A1(
        datapath_inst_iir_inst_mult_85_n257), .A2(
        datapath_inst_iir_inst_mult_85_n216), .A3(b0[1]), .ZN(
        datapath_inst_iir_inst_mult_85_n255) );
  NAND2_X1 datapath_inst_iir_inst_mult_85_U210 ( .A1(
        datapath_inst_iir_inst_mult_85_n225), .A2(
        datapath_inst_iir_inst_mult_85_n257), .ZN(
        datapath_inst_iir_inst_mult_85_n256) );
  MUX2_X1 datapath_inst_iir_inst_mult_85_U209 ( .A(
        datapath_inst_iir_inst_mult_85_n255), .B(
        datapath_inst_iir_inst_mult_85_n256), .S(datapath_inst_iir_inst_w1[0]), 
        .Z(datapath_inst_iir_inst_mult_85_n254) );
  NAND3_X1 datapath_inst_iir_inst_mult_85_U208 ( .A1(
        datapath_inst_iir_inst_mult_85_n225), .A2(
        datapath_inst_iir_inst_mult_85_n215), .A3(b0[3]), .ZN(
        datapath_inst_iir_inst_mult_85_n253) );
  OAI21_X1 datapath_inst_iir_inst_mult_85_U207 ( .B1(
        datapath_inst_iir_inst_mult_85_n224), .B2(
        datapath_inst_iir_inst_mult_85_n234), .A(
        datapath_inst_iir_inst_mult_85_n253), .ZN(
        datapath_inst_iir_inst_mult_85_n252) );
  AOI222_X1 datapath_inst_iir_inst_mult_85_U206 ( .A1(
        datapath_inst_iir_inst_mult_85_n214), .A2(
        datapath_inst_iir_inst_mult_85_n61), .B1(
        datapath_inst_iir_inst_mult_85_n252), .B2(
        datapath_inst_iir_inst_mult_85_n214), .C1(
        datapath_inst_iir_inst_mult_85_n252), .C2(
        datapath_inst_iir_inst_mult_85_n61), .ZN(
        datapath_inst_iir_inst_mult_85_n251) );
  AOI222_X1 datapath_inst_iir_inst_mult_85_U205 ( .A1(
        datapath_inst_iir_inst_mult_85_n213), .A2(
        datapath_inst_iir_inst_mult_85_n59), .B1(
        datapath_inst_iir_inst_mult_85_n213), .B2(
        datapath_inst_iir_inst_mult_85_n60), .C1(
        datapath_inst_iir_inst_mult_85_n60), .C2(
        datapath_inst_iir_inst_mult_85_n59), .ZN(
        datapath_inst_iir_inst_mult_85_n250) );
  AOI222_X1 datapath_inst_iir_inst_mult_85_U204 ( .A1(
        datapath_inst_iir_inst_mult_85_n212), .A2(
        datapath_inst_iir_inst_mult_85_n55), .B1(
        datapath_inst_iir_inst_mult_85_n212), .B2(
        datapath_inst_iir_inst_mult_85_n58), .C1(
        datapath_inst_iir_inst_mult_85_n58), .C2(
        datapath_inst_iir_inst_mult_85_n55), .ZN(
        datapath_inst_iir_inst_mult_85_n249) );
  AOI222_X1 datapath_inst_iir_inst_mult_85_U203 ( .A1(
        datapath_inst_iir_inst_mult_85_n211), .A2(
        datapath_inst_iir_inst_mult_85_n51), .B1(
        datapath_inst_iir_inst_mult_85_n211), .B2(
        datapath_inst_iir_inst_mult_85_n54), .C1(
        datapath_inst_iir_inst_mult_85_n54), .C2(
        datapath_inst_iir_inst_mult_85_n51), .ZN(
        datapath_inst_iir_inst_mult_85_n248) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U202 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(datapath_inst_iir_inst_mult_85_n223), 
        .Z(datapath_inst_iir_inst_mult_85_n246) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U201 ( .A1(
        datapath_inst_iir_inst_mult_85_n246), .A2(
        datapath_inst_iir_inst_mult_85_n244), .B1(
        datapath_inst_iir_inst_mult_85_n242), .B2(
        datapath_inst_iir_inst_mult_85_n247), .ZN(
        datapath_inst_iir_inst_mult_85_n90) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U200 ( .A(
        datapath_inst_iir_inst_mult_85_n216), .B(b0[5]), .Z(
        datapath_inst_iir_inst_mult_85_n245) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U199 ( .A1(
        datapath_inst_iir_inst_mult_85_n245), .A2(
        datapath_inst_iir_inst_mult_85_n244), .B1(
        datapath_inst_iir_inst_mult_85_n242), .B2(
        datapath_inst_iir_inst_mult_85_n246), .ZN(
        datapath_inst_iir_inst_mult_85_n91) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U198 ( .A(
        datapath_inst_iir_inst_mult_85_n215), .B(b0[5]), .Z(
        datapath_inst_iir_inst_mult_85_n243) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U197 ( .A1(
        datapath_inst_iir_inst_mult_85_n243), .A2(
        datapath_inst_iir_inst_mult_85_n244), .B1(
        datapath_inst_iir_inst_mult_85_n242), .B2(
        datapath_inst_iir_inst_mult_85_n245), .ZN(
        datapath_inst_iir_inst_mult_85_n92) );
  NOR2_X1 datapath_inst_iir_inst_mult_85_U196 ( .A1(
        datapath_inst_iir_inst_mult_85_n242), .A2(
        datapath_inst_iir_inst_mult_85_n215), .ZN(
        datapath_inst_iir_inst_mult_85_n93) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U195 ( .A1(
        datapath_inst_iir_inst_mult_85_n241), .A2(
        datapath_inst_iir_inst_mult_85_n235), .B1(
        datapath_inst_iir_inst_mult_85_n234), .B2(
        datapath_inst_iir_inst_mult_85_n241), .ZN(
        datapath_inst_iir_inst_mult_85_n240) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U194 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(datapath_inst_iir_inst_mult_85_n224), 
        .Z(datapath_inst_iir_inst_mult_85_n238) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U193 ( .A1(
        datapath_inst_iir_inst_mult_85_n238), .A2(
        datapath_inst_iir_inst_mult_85_n234), .B1(
        datapath_inst_iir_inst_mult_85_n235), .B2(
        datapath_inst_iir_inst_mult_85_n239), .ZN(
        datapath_inst_iir_inst_mult_85_n96) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U192 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(datapath_inst_iir_inst_mult_85_n224), 
        .Z(datapath_inst_iir_inst_mult_85_n237) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U191 ( .A1(
        datapath_inst_iir_inst_mult_85_n237), .A2(
        datapath_inst_iir_inst_mult_85_n234), .B1(
        datapath_inst_iir_inst_mult_85_n235), .B2(
        datapath_inst_iir_inst_mult_85_n238), .ZN(
        datapath_inst_iir_inst_mult_85_n97) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U190 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(datapath_inst_iir_inst_mult_85_n224), 
        .Z(datapath_inst_iir_inst_mult_85_n236) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U189 ( .A1(
        datapath_inst_iir_inst_mult_85_n236), .A2(
        datapath_inst_iir_inst_mult_85_n234), .B1(
        datapath_inst_iir_inst_mult_85_n235), .B2(
        datapath_inst_iir_inst_mult_85_n237), .ZN(
        datapath_inst_iir_inst_mult_85_n98) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U188 ( .A1(
        datapath_inst_iir_inst_mult_85_n233), .A2(
        datapath_inst_iir_inst_mult_85_n234), .B1(
        datapath_inst_iir_inst_mult_85_n235), .B2(
        datapath_inst_iir_inst_mult_85_n236), .ZN(
        datapath_inst_iir_inst_mult_85_n99) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U187 ( .A(
        datapath_inst_iir_inst_mult_85_n222), .B(datapath_inst_iir_inst_w1[8]), 
        .Z(datapath_inst_iir_inst_mult_85_n229) );
  OAI22_X1 datapath_inst_iir_inst_mult_85_U186 ( .A1(
        datapath_inst_iir_inst_mult_85_n229), .A2(
        datapath_inst_iir_inst_mult_85_n230), .B1(
        datapath_inst_iir_inst_mult_85_n231), .B2(
        datapath_inst_iir_inst_mult_85_n232), .ZN(
        datapath_inst_iir_inst_mult_85_n227) );
  XOR2_X1 datapath_inst_iir_inst_mult_85_U185 ( .A(
        datapath_inst_iir_inst_mult_85_n2), .B(
        datapath_inst_iir_inst_mult_85_n16), .Z(
        datapath_inst_iir_inst_mult_85_n228) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U184 ( .A(
        datapath_inst_iir_inst_mult_85_n227), .B(
        datapath_inst_iir_inst_mult_85_n228), .ZN(
        datapath_inst_iir_inst_y_no_ff_temp[14]) );
  INV_X1 datapath_inst_iir_inst_mult_85_U183 ( .A(b0[0]), .ZN(
        datapath_inst_iir_inst_mult_85_n226) );
  INV_X1 datapath_inst_iir_inst_mult_85_U182 ( .A(b0[7]), .ZN(
        datapath_inst_iir_inst_mult_85_n222) );
  INV_X1 datapath_inst_iir_inst_mult_85_U181 ( .A(b0[3]), .ZN(
        datapath_inst_iir_inst_mult_85_n224) );
  INV_X1 datapath_inst_iir_inst_mult_85_U180 ( .A(datapath_inst_iir_inst_w1[1]), .ZN(datapath_inst_iir_inst_mult_85_n216) );
  INV_X1 datapath_inst_iir_inst_mult_85_U179 ( .A(b0[5]), .ZN(
        datapath_inst_iir_inst_mult_85_n223) );
  INV_X1 datapath_inst_iir_inst_mult_85_U178 ( .A(datapath_inst_iir_inst_w1[0]), .ZN(datapath_inst_iir_inst_mult_85_n215) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U177 ( .A(b0[6]), .B(b0[5]), .ZN(
        datapath_inst_iir_inst_mult_85_n230) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U176 ( .A(b0[2]), .B(b0[1]), .ZN(
        datapath_inst_iir_inst_mult_85_n235) );
  XNOR2_X1 datapath_inst_iir_inst_mult_85_U175 ( .A(b0[4]), .B(b0[3]), .ZN(
        datapath_inst_iir_inst_mult_85_n242) );
  INV_X1 datapath_inst_iir_inst_mult_85_U174 ( .A(
        datapath_inst_iir_inst_mult_85_n264), .ZN(
        datapath_inst_iir_inst_mult_85_n220) );
  INV_X1 datapath_inst_iir_inst_mult_85_U173 ( .A(
        datapath_inst_iir_inst_mult_85_n250), .ZN(
        datapath_inst_iir_inst_mult_85_n212) );
  INV_X1 datapath_inst_iir_inst_mult_85_U172 ( .A(
        datapath_inst_iir_inst_mult_85_n249), .ZN(
        datapath_inst_iir_inst_mult_85_n211) );
  INV_X1 datapath_inst_iir_inst_mult_85_U171 ( .A(
        datapath_inst_iir_inst_mult_85_n254), .ZN(
        datapath_inst_iir_inst_mult_85_n214) );
  INV_X1 datapath_inst_iir_inst_mult_85_U170 ( .A(
        datapath_inst_iir_inst_mult_85_n251), .ZN(
        datapath_inst_iir_inst_mult_85_n213) );
  INV_X1 datapath_inst_iir_inst_mult_85_U169 ( .A(
        datapath_inst_iir_inst_mult_85_n235), .ZN(
        datapath_inst_iir_inst_mult_85_n225) );
  INV_X1 datapath_inst_iir_inst_mult_85_U168 ( .A(
        datapath_inst_iir_inst_mult_85_n248), .ZN(
        datapath_inst_iir_inst_mult_85_n210) );
  INV_X1 datapath_inst_iir_inst_mult_85_U167 ( .A(
        datapath_inst_iir_inst_mult_85_n30), .ZN(
        datapath_inst_iir_inst_mult_85_n217) );
  INV_X1 datapath_inst_iir_inst_mult_85_U166 ( .A(
        datapath_inst_iir_inst_mult_85_n240), .ZN(
        datapath_inst_iir_inst_mult_85_n219) );
  INV_X1 datapath_inst_iir_inst_mult_85_U165 ( .A(
        datapath_inst_iir_inst_mult_85_n286), .ZN(
        datapath_inst_iir_inst_mult_85_n221) );
  INV_X1 datapath_inst_iir_inst_mult_85_U164 ( .A(
        datapath_inst_iir_inst_mult_85_n20), .ZN(
        datapath_inst_iir_inst_mult_85_n218) );
  HA_X1 datapath_inst_iir_inst_mult_85_U40 ( .A(
        datapath_inst_iir_inst_mult_85_n101), .B(
        datapath_inst_iir_inst_mult_85_n109), .CO(
        datapath_inst_iir_inst_mult_85_n60), .S(
        datapath_inst_iir_inst_mult_85_n61) );
  FA_X1 datapath_inst_iir_inst_mult_85_U39 ( .A(
        datapath_inst_iir_inst_mult_85_n108), .B(
        datapath_inst_iir_inst_mult_85_n93), .CI(
        datapath_inst_iir_inst_mult_85_n100), .CO(
        datapath_inst_iir_inst_mult_85_n58), .S(
        datapath_inst_iir_inst_mult_85_n59) );
  HA_X1 datapath_inst_iir_inst_mult_85_U38 ( .A(
        datapath_inst_iir_inst_mult_85_n73), .B(
        datapath_inst_iir_inst_mult_85_n92), .CO(
        datapath_inst_iir_inst_mult_85_n56), .S(
        datapath_inst_iir_inst_mult_85_n57) );
  FA_X1 datapath_inst_iir_inst_mult_85_U37 ( .A(
        datapath_inst_iir_inst_mult_85_n99), .B(
        datapath_inst_iir_inst_mult_85_n107), .CI(
        datapath_inst_iir_inst_mult_85_n57), .CO(
        datapath_inst_iir_inst_mult_85_n54), .S(
        datapath_inst_iir_inst_mult_85_n55) );
  FA_X1 datapath_inst_iir_inst_mult_85_U36 ( .A(
        datapath_inst_iir_inst_mult_85_n106), .B(
        datapath_inst_iir_inst_mult_85_n84), .CI(
        datapath_inst_iir_inst_mult_85_n98), .CO(
        datapath_inst_iir_inst_mult_85_n52), .S(
        datapath_inst_iir_inst_mult_85_n53) );
  FA_X1 datapath_inst_iir_inst_mult_85_U35 ( .A(
        datapath_inst_iir_inst_mult_85_n56), .B(
        datapath_inst_iir_inst_mult_85_n91), .CI(
        datapath_inst_iir_inst_mult_85_n53), .CO(
        datapath_inst_iir_inst_mult_85_n50), .S(
        datapath_inst_iir_inst_mult_85_n51) );
  HA_X1 datapath_inst_iir_inst_mult_85_U34 ( .A(
        datapath_inst_iir_inst_mult_85_n72), .B(
        datapath_inst_iir_inst_mult_85_n83), .CO(
        datapath_inst_iir_inst_mult_85_n48), .S(
        datapath_inst_iir_inst_mult_85_n49) );
  FA_X1 datapath_inst_iir_inst_mult_85_U33 ( .A(
        datapath_inst_iir_inst_mult_85_n90), .B(
        datapath_inst_iir_inst_mult_85_n105), .CI(
        datapath_inst_iir_inst_mult_85_n97), .CO(
        datapath_inst_iir_inst_mult_85_n46), .S(
        datapath_inst_iir_inst_mult_85_n47) );
  FA_X1 datapath_inst_iir_inst_mult_85_U32 ( .A(
        datapath_inst_iir_inst_mult_85_n52), .B(
        datapath_inst_iir_inst_mult_85_n49), .CI(
        datapath_inst_iir_inst_mult_85_n47), .CO(
        datapath_inst_iir_inst_mult_85_n44), .S(
        datapath_inst_iir_inst_mult_85_n45) );
  HA_X1 datapath_inst_iir_inst_mult_85_U31 ( .A(
        datapath_inst_iir_inst_mult_85_n82), .B(
        datapath_inst_iir_inst_mult_85_n89), .CO(
        datapath_inst_iir_inst_mult_85_n42), .S(
        datapath_inst_iir_inst_mult_85_n43) );
  FA_X1 datapath_inst_iir_inst_mult_85_U30 ( .A(
        datapath_inst_iir_inst_mult_85_n96), .B(
        datapath_inst_iir_inst_mult_85_n104), .CI(
        datapath_inst_iir_inst_mult_85_n48), .CO(
        datapath_inst_iir_inst_mult_85_n40), .S(
        datapath_inst_iir_inst_mult_85_n41) );
  FA_X1 datapath_inst_iir_inst_mult_85_U29 ( .A(
        datapath_inst_iir_inst_mult_85_n46), .B(
        datapath_inst_iir_inst_mult_85_n43), .CI(
        datapath_inst_iir_inst_mult_85_n41), .CO(
        datapath_inst_iir_inst_mult_85_n38), .S(
        datapath_inst_iir_inst_mult_85_n39) );
  FA_X1 datapath_inst_iir_inst_mult_85_U26 ( .A(
        datapath_inst_iir_inst_mult_85_n221), .B(
        datapath_inst_iir_inst_mult_85_n88), .CI(
        datapath_inst_iir_inst_mult_85_n42), .CO(
        datapath_inst_iir_inst_mult_85_n34), .S(
        datapath_inst_iir_inst_mult_85_n35) );
  FA_X1 datapath_inst_iir_inst_mult_85_U25 ( .A(
        datapath_inst_iir_inst_mult_85_n40), .B(
        datapath_inst_iir_inst_mult_85_n37), .CI(
        datapath_inst_iir_inst_mult_85_n35), .CO(
        datapath_inst_iir_inst_mult_85_n32), .S(
        datapath_inst_iir_inst_mult_85_n33) );
  FA_X1 datapath_inst_iir_inst_mult_85_U23 ( .A(
        datapath_inst_iir_inst_mult_85_n80), .B(
        datapath_inst_iir_inst_mult_85_n87), .CI(
        datapath_inst_iir_inst_mult_85_n217), .CO(
        datapath_inst_iir_inst_mult_85_n28), .S(
        datapath_inst_iir_inst_mult_85_n29) );
  FA_X1 datapath_inst_iir_inst_mult_85_U22 ( .A(
        datapath_inst_iir_inst_mult_85_n34), .B(
        datapath_inst_iir_inst_mult_85_n36), .CI(
        datapath_inst_iir_inst_mult_85_n29), .CO(
        datapath_inst_iir_inst_mult_85_n26), .S(
        datapath_inst_iir_inst_mult_85_n27) );
  FA_X1 datapath_inst_iir_inst_mult_85_U21 ( .A(
        datapath_inst_iir_inst_mult_85_n86), .B(
        datapath_inst_iir_inst_mult_85_n30), .CI(
        datapath_inst_iir_inst_mult_85_n219), .CO(
        datapath_inst_iir_inst_mult_85_n24), .S(
        datapath_inst_iir_inst_mult_85_n25) );
  FA_X1 datapath_inst_iir_inst_mult_85_U20 ( .A(
        datapath_inst_iir_inst_mult_85_n28), .B(
        datapath_inst_iir_inst_mult_85_n79), .CI(
        datapath_inst_iir_inst_mult_85_n25), .CO(
        datapath_inst_iir_inst_mult_85_n22), .S(
        datapath_inst_iir_inst_mult_85_n23) );
  FA_X1 datapath_inst_iir_inst_mult_85_U18 ( .A(
        datapath_inst_iir_inst_mult_85_n218), .B(
        datapath_inst_iir_inst_mult_85_n78), .CI(
        datapath_inst_iir_inst_mult_85_n24), .CO(
        datapath_inst_iir_inst_mult_85_n18), .S(
        datapath_inst_iir_inst_mult_85_n19) );
  FA_X1 datapath_inst_iir_inst_mult_85_U17 ( .A(
        datapath_inst_iir_inst_mult_85_n77), .B(
        datapath_inst_iir_inst_mult_85_n20), .CI(
        datapath_inst_iir_inst_mult_85_n220), .CO(
        datapath_inst_iir_inst_mult_85_n16), .S(
        datapath_inst_iir_inst_mult_85_n17) );
  FA_X1 datapath_inst_iir_inst_mult_85_U9 ( .A(
        datapath_inst_iir_inst_mult_85_n45), .B(
        datapath_inst_iir_inst_mult_85_n50), .CI(
        datapath_inst_iir_inst_mult_85_n210), .CO(
        datapath_inst_iir_inst_mult_85_n8), .S(
        datapath_inst_iir_inst_y_no_ff_temp[7]) );
  FA_X1 datapath_inst_iir_inst_mult_85_U8 ( .A(
        datapath_inst_iir_inst_mult_85_n39), .B(
        datapath_inst_iir_inst_mult_85_n44), .CI(
        datapath_inst_iir_inst_mult_85_n8), .CO(
        datapath_inst_iir_inst_mult_85_n7), .S(
        datapath_inst_iir_inst_y_no_ff_temp[8]) );
  FA_X1 datapath_inst_iir_inst_mult_85_U7 ( .A(
        datapath_inst_iir_inst_mult_85_n33), .B(
        datapath_inst_iir_inst_mult_85_n38), .CI(
        datapath_inst_iir_inst_mult_85_n7), .CO(
        datapath_inst_iir_inst_mult_85_n6), .S(
        datapath_inst_iir_inst_y_no_ff_temp[9]) );
  FA_X1 datapath_inst_iir_inst_mult_85_U6 ( .A(
        datapath_inst_iir_inst_mult_85_n27), .B(
        datapath_inst_iir_inst_mult_85_n32), .CI(
        datapath_inst_iir_inst_mult_85_n6), .CO(
        datapath_inst_iir_inst_mult_85_n5), .S(
        datapath_inst_iir_inst_y_no_ff_temp[10]) );
  FA_X1 datapath_inst_iir_inst_mult_85_U5 ( .A(
        datapath_inst_iir_inst_mult_85_n23), .B(
        datapath_inst_iir_inst_mult_85_n26), .CI(
        datapath_inst_iir_inst_mult_85_n5), .CO(
        datapath_inst_iir_inst_mult_85_n4), .S(
        datapath_inst_iir_inst_y_no_ff_temp[11]) );
  FA_X1 datapath_inst_iir_inst_mult_85_U4 ( .A(
        datapath_inst_iir_inst_mult_85_n19), .B(
        datapath_inst_iir_inst_mult_85_n22), .CI(
        datapath_inst_iir_inst_mult_85_n4), .CO(
        datapath_inst_iir_inst_mult_85_n3), .S(
        datapath_inst_iir_inst_y_no_ff_temp[12]) );
  FA_X1 datapath_inst_iir_inst_mult_85_U3 ( .A(
        datapath_inst_iir_inst_mult_85_n18), .B(
        datapath_inst_iir_inst_mult_85_n17), .CI(
        datapath_inst_iir_inst_mult_85_n3), .CO(
        datapath_inst_iir_inst_mult_85_n2), .S(
        datapath_inst_iir_inst_y_no_ff_temp[13]) );
  XOR2_X1 datapath_inst_iir_inst_mult_86_U284 ( .A(bn1[2]), .B(bn1[1]), .Z(
        datapath_inst_iir_inst_mult_86_n290) );
  NAND2_X1 datapath_inst_iir_inst_mult_86_U283 ( .A1(bn1[1]), .A2(
        datapath_inst_iir_inst_mult_86_n233), .ZN(
        datapath_inst_iir_inst_mult_86_n272) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U282 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(bn1[1]), .ZN(
        datapath_inst_iir_inst_mult_86_n271) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U281 ( .A1(
        datapath_inst_iir_inst_w1[1]), .A2(datapath_inst_iir_inst_mult_86_n272), .B1(datapath_inst_iir_inst_mult_86_n271), .B2(
        datapath_inst_iir_inst_mult_86_n233), .ZN(
        datapath_inst_iir_inst_mult_86_n295) );
  NAND2_X1 datapath_inst_iir_inst_mult_86_U280 ( .A1(
        datapath_inst_iir_inst_mult_86_n290), .A2(
        datapath_inst_iir_inst_mult_86_n295), .ZN(
        datapath_inst_iir_inst_mult_86_n293) );
  NAND3_X1 datapath_inst_iir_inst_mult_86_U279 ( .A1(
        datapath_inst_iir_inst_mult_86_n295), .A2(
        datapath_inst_iir_inst_mult_86_n220), .A3(bn1[1]), .ZN(
        datapath_inst_iir_inst_mult_86_n294) );
  MUX2_X1 datapath_inst_iir_inst_mult_86_U278 ( .A(
        datapath_inst_iir_inst_mult_86_n293), .B(
        datapath_inst_iir_inst_mult_86_n294), .S(
        datapath_inst_iir_inst_mult_86_n219), .Z(
        datapath_inst_iir_inst_mult_86_n292) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U277 ( .A(
        datapath_inst_iir_inst_mult_86_n231), .B(bn1[2]), .ZN(
        datapath_inst_iir_inst_mult_86_n291) );
  NAND2_X1 datapath_inst_iir_inst_mult_86_U276 ( .A1(
        datapath_inst_iir_inst_mult_86_n232), .A2(
        datapath_inst_iir_inst_mult_86_n291), .ZN(
        datapath_inst_iir_inst_mult_86_n238) );
  NAND3_X1 datapath_inst_iir_inst_mult_86_U275 ( .A1(
        datapath_inst_iir_inst_mult_86_n290), .A2(
        datapath_inst_iir_inst_mult_86_n219), .A3(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n289) );
  OAI21_X1 datapath_inst_iir_inst_mult_86_U274 ( .B1(
        datapath_inst_iir_inst_mult_86_n231), .B2(
        datapath_inst_iir_inst_mult_86_n238), .A(
        datapath_inst_iir_inst_mult_86_n289), .ZN(
        datapath_inst_iir_inst_mult_86_n288) );
  AOI222_X1 datapath_inst_iir_inst_mult_86_U273 ( .A1(
        datapath_inst_iir_inst_mult_86_n217), .A2(
        datapath_inst_iir_inst_mult_86_n63), .B1(
        datapath_inst_iir_inst_mult_86_n288), .B2(
        datapath_inst_iir_inst_mult_86_n217), .C1(
        datapath_inst_iir_inst_mult_86_n288), .C2(
        datapath_inst_iir_inst_mult_86_n63), .ZN(
        datapath_inst_iir_inst_mult_86_n287) );
  OAI222_X1 datapath_inst_iir_inst_mult_86_U272 ( .A1(
        datapath_inst_iir_inst_mult_86_n287), .A2(
        datapath_inst_iir_inst_mult_86_n218), .B1(
        datapath_inst_iir_inst_mult_86_n287), .B2(
        datapath_inst_iir_inst_mult_86_n216), .C1(
        datapath_inst_iir_inst_mult_86_n216), .C2(
        datapath_inst_iir_inst_mult_86_n218), .ZN(
        datapath_inst_iir_inst_mult_86_n286) );
  AOI222_X1 datapath_inst_iir_inst_mult_86_U271 ( .A1(
        datapath_inst_iir_inst_mult_86_n286), .A2(
        datapath_inst_iir_inst_mult_86_n57), .B1(
        datapath_inst_iir_inst_mult_86_n286), .B2(
        datapath_inst_iir_inst_mult_86_n60), .C1(
        datapath_inst_iir_inst_mult_86_n60), .C2(
        datapath_inst_iir_inst_mult_86_n57), .ZN(
        datapath_inst_iir_inst_mult_86_n285) );
  OAI222_X1 datapath_inst_iir_inst_mult_86_U270 ( .A1(
        datapath_inst_iir_inst_mult_86_n285), .A2(
        datapath_inst_iir_inst_mult_86_n214), .B1(
        datapath_inst_iir_inst_mult_86_n285), .B2(
        datapath_inst_iir_inst_mult_86_n215), .C1(
        datapath_inst_iir_inst_mult_86_n215), .C2(
        datapath_inst_iir_inst_mult_86_n214), .ZN(
        datapath_inst_iir_inst_mult_86_n10) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U269 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n284) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U268 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n237) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U267 ( .A1(
        datapath_inst_iir_inst_mult_86_n284), .A2(
        datapath_inst_iir_inst_mult_86_n238), .B1(
        datapath_inst_iir_inst_mult_86_n232), .B2(
        datapath_inst_iir_inst_mult_86_n237), .ZN(
        datapath_inst_iir_inst_mult_86_n100) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U266 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n283) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U265 ( .A1(
        datapath_inst_iir_inst_mult_86_n283), .A2(
        datapath_inst_iir_inst_mult_86_n238), .B1(
        datapath_inst_iir_inst_mult_86_n232), .B2(
        datapath_inst_iir_inst_mult_86_n284), .ZN(
        datapath_inst_iir_inst_mult_86_n101) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U264 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n282) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U263 ( .A1(
        datapath_inst_iir_inst_mult_86_n282), .A2(
        datapath_inst_iir_inst_mult_86_n238), .B1(
        datapath_inst_iir_inst_mult_86_n232), .B2(
        datapath_inst_iir_inst_mult_86_n283), .ZN(
        datapath_inst_iir_inst_mult_86_n102) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U262 ( .A(
        datapath_inst_iir_inst_w1[1]), .B(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n281) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U261 ( .A1(
        datapath_inst_iir_inst_mult_86_n281), .A2(
        datapath_inst_iir_inst_mult_86_n238), .B1(
        datapath_inst_iir_inst_mult_86_n232), .B2(
        datapath_inst_iir_inst_mult_86_n282), .ZN(
        datapath_inst_iir_inst_mult_86_n103) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U260 ( .A(
        datapath_inst_iir_inst_w1[0]), .B(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n280) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U259 ( .A1(
        datapath_inst_iir_inst_mult_86_n280), .A2(
        datapath_inst_iir_inst_mult_86_n238), .B1(
        datapath_inst_iir_inst_mult_86_n232), .B2(
        datapath_inst_iir_inst_mult_86_n281), .ZN(
        datapath_inst_iir_inst_mult_86_n104) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U258 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(bn1[1]), .ZN(
        datapath_inst_iir_inst_mult_86_n278) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U257 ( .A1(
        datapath_inst_iir_inst_mult_86_n233), .A2(
        datapath_inst_iir_inst_mult_86_n278), .B1(
        datapath_inst_iir_inst_mult_86_n272), .B2(
        datapath_inst_iir_inst_mult_86_n278), .ZN(
        datapath_inst_iir_inst_mult_86_n279) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U256 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(bn1[1]), .ZN(
        datapath_inst_iir_inst_mult_86_n277) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U255 ( .A1(
        datapath_inst_iir_inst_mult_86_n277), .A2(
        datapath_inst_iir_inst_mult_86_n272), .B1(
        datapath_inst_iir_inst_mult_86_n278), .B2(
        datapath_inst_iir_inst_mult_86_n233), .ZN(
        datapath_inst_iir_inst_mult_86_n107) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U254 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(bn1[1]), .ZN(
        datapath_inst_iir_inst_mult_86_n276) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U253 ( .A1(
        datapath_inst_iir_inst_mult_86_n276), .A2(
        datapath_inst_iir_inst_mult_86_n272), .B1(
        datapath_inst_iir_inst_mult_86_n277), .B2(
        datapath_inst_iir_inst_mult_86_n233), .ZN(
        datapath_inst_iir_inst_mult_86_n108) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U252 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(bn1[1]), .ZN(
        datapath_inst_iir_inst_mult_86_n275) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U251 ( .A1(
        datapath_inst_iir_inst_mult_86_n275), .A2(
        datapath_inst_iir_inst_mult_86_n272), .B1(
        datapath_inst_iir_inst_mult_86_n276), .B2(
        datapath_inst_iir_inst_mult_86_n233), .ZN(
        datapath_inst_iir_inst_mult_86_n109) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U250 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(bn1[1]), .ZN(
        datapath_inst_iir_inst_mult_86_n274) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U249 ( .A1(
        datapath_inst_iir_inst_mult_86_n274), .A2(
        datapath_inst_iir_inst_mult_86_n272), .B1(
        datapath_inst_iir_inst_mult_86_n275), .B2(
        datapath_inst_iir_inst_mult_86_n233), .ZN(
        datapath_inst_iir_inst_mult_86_n110) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U248 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(bn1[1]), .ZN(
        datapath_inst_iir_inst_mult_86_n273) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U247 ( .A1(
        datapath_inst_iir_inst_mult_86_n273), .A2(
        datapath_inst_iir_inst_mult_86_n272), .B1(
        datapath_inst_iir_inst_mult_86_n274), .B2(
        datapath_inst_iir_inst_mult_86_n233), .ZN(
        datapath_inst_iir_inst_mult_86_n111) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U246 ( .A1(
        datapath_inst_iir_inst_mult_86_n271), .A2(
        datapath_inst_iir_inst_mult_86_n272), .B1(
        datapath_inst_iir_inst_mult_86_n273), .B2(
        datapath_inst_iir_inst_mult_86_n233), .ZN(
        datapath_inst_iir_inst_mult_86_n112) );
  XOR2_X1 datapath_inst_iir_inst_mult_86_U245 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(bn1[7]), .Z(
        datapath_inst_iir_inst_mult_86_n263) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U244 ( .A(
        datapath_inst_iir_inst_mult_86_n228), .B(bn1[6]), .ZN(
        datapath_inst_iir_inst_mult_86_n270) );
  NAND2_X1 datapath_inst_iir_inst_mult_86_U243 ( .A1(
        datapath_inst_iir_inst_mult_86_n254), .A2(
        datapath_inst_iir_inst_mult_86_n270), .ZN(
        datapath_inst_iir_inst_mult_86_n256) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U242 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(datapath_inst_iir_inst_mult_86_n228), 
        .ZN(datapath_inst_iir_inst_mult_86_n236) );
  AOI22_X1 datapath_inst_iir_inst_mult_86_U241 ( .A1(
        datapath_inst_iir_inst_mult_86_n263), .A2(
        datapath_inst_iir_inst_mult_86_n227), .B1(
        datapath_inst_iir_inst_mult_86_n229), .B2(
        datapath_inst_iir_inst_mult_86_n236), .ZN(
        datapath_inst_iir_inst_mult_86_n17) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U240 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(bn1[5]), .ZN(
        datapath_inst_iir_inst_mult_86_n251) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U239 ( .A(
        datapath_inst_iir_inst_mult_86_n230), .B(bn1[4]), .ZN(
        datapath_inst_iir_inst_mult_86_n269) );
  NAND2_X1 datapath_inst_iir_inst_mult_86_U238 ( .A1(
        datapath_inst_iir_inst_mult_86_n242), .A2(
        datapath_inst_iir_inst_mult_86_n269), .ZN(
        datapath_inst_iir_inst_mult_86_n244) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U237 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(bn1[5]), .ZN(
        datapath_inst_iir_inst_mult_86_n253) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U236 ( .A1(
        datapath_inst_iir_inst_mult_86_n251), .A2(
        datapath_inst_iir_inst_mult_86_n244), .B1(
        datapath_inst_iir_inst_mult_86_n242), .B2(
        datapath_inst_iir_inst_mult_86_n253), .ZN(
        datapath_inst_iir_inst_mult_86_n22) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U235 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n268) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U234 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n241) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U233 ( .A1(
        datapath_inst_iir_inst_mult_86_n268), .A2(
        datapath_inst_iir_inst_mult_86_n238), .B1(
        datapath_inst_iir_inst_mult_86_n232), .B2(
        datapath_inst_iir_inst_mult_86_n241), .ZN(
        datapath_inst_iir_inst_mult_86_n32) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U232 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(bn1[7]), .ZN(
        datapath_inst_iir_inst_mult_86_n258) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U231 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(bn1[7]), .ZN(
        datapath_inst_iir_inst_mult_86_n259) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U230 ( .A1(
        datapath_inst_iir_inst_mult_86_n258), .A2(
        datapath_inst_iir_inst_mult_86_n256), .B1(
        datapath_inst_iir_inst_mult_86_n254), .B2(
        datapath_inst_iir_inst_mult_86_n259), .ZN(
        datapath_inst_iir_inst_mult_86_n266) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U229 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n239) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U228 ( .A1(
        datapath_inst_iir_inst_mult_86_n239), .A2(
        datapath_inst_iir_inst_mult_86_n238), .B1(
        datapath_inst_iir_inst_mult_86_n232), .B2(
        datapath_inst_iir_inst_mult_86_n268), .ZN(
        datapath_inst_iir_inst_mult_86_n267) );
  OR2_X1 datapath_inst_iir_inst_mult_86_U227 ( .A1(
        datapath_inst_iir_inst_mult_86_n266), .A2(
        datapath_inst_iir_inst_mult_86_n267), .ZN(
        datapath_inst_iir_inst_mult_86_n38) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U226 ( .A(
        datapath_inst_iir_inst_mult_86_n266), .B(
        datapath_inst_iir_inst_mult_86_n267), .ZN(
        datapath_inst_iir_inst_mult_86_n39) );
  NAND3_X1 datapath_inst_iir_inst_mult_86_U225 ( .A1(
        datapath_inst_iir_inst_mult_86_n229), .A2(
        datapath_inst_iir_inst_mult_86_n219), .A3(bn1[7]), .ZN(
        datapath_inst_iir_inst_mult_86_n265) );
  OAI21_X1 datapath_inst_iir_inst_mult_86_U224 ( .B1(
        datapath_inst_iir_inst_mult_86_n228), .B2(
        datapath_inst_iir_inst_mult_86_n256), .A(
        datapath_inst_iir_inst_mult_86_n265), .ZN(
        datapath_inst_iir_inst_mult_86_n75) );
  OR3_X1 datapath_inst_iir_inst_mult_86_U223 ( .A1(
        datapath_inst_iir_inst_mult_86_n242), .A2(datapath_inst_iir_inst_w1[0]), .A3(datapath_inst_iir_inst_mult_86_n230), .ZN(
        datapath_inst_iir_inst_mult_86_n264) );
  OAI21_X1 datapath_inst_iir_inst_mult_86_U222 ( .B1(
        datapath_inst_iir_inst_mult_86_n230), .B2(
        datapath_inst_iir_inst_mult_86_n244), .A(
        datapath_inst_iir_inst_mult_86_n264), .ZN(
        datapath_inst_iir_inst_mult_86_n76) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U221 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(bn1[7]), .ZN(
        datapath_inst_iir_inst_mult_86_n262) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U220 ( .A1(
        datapath_inst_iir_inst_mult_86_n262), .A2(
        datapath_inst_iir_inst_mult_86_n256), .B1(
        datapath_inst_iir_inst_mult_86_n254), .B2(
        datapath_inst_iir_inst_mult_86_n223), .ZN(
        datapath_inst_iir_inst_mult_86_n80) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U219 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(bn1[7]), .ZN(
        datapath_inst_iir_inst_mult_86_n261) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U218 ( .A1(
        datapath_inst_iir_inst_mult_86_n261), .A2(
        datapath_inst_iir_inst_mult_86_n256), .B1(
        datapath_inst_iir_inst_mult_86_n254), .B2(
        datapath_inst_iir_inst_mult_86_n262), .ZN(
        datapath_inst_iir_inst_mult_86_n81) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U217 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(bn1[7]), .ZN(
        datapath_inst_iir_inst_mult_86_n260) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U216 ( .A1(
        datapath_inst_iir_inst_mult_86_n260), .A2(
        datapath_inst_iir_inst_mult_86_n256), .B1(
        datapath_inst_iir_inst_mult_86_n254), .B2(
        datapath_inst_iir_inst_mult_86_n261), .ZN(
        datapath_inst_iir_inst_mult_86_n82) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U215 ( .A1(
        datapath_inst_iir_inst_mult_86_n259), .A2(
        datapath_inst_iir_inst_mult_86_n256), .B1(
        datapath_inst_iir_inst_mult_86_n254), .B2(
        datapath_inst_iir_inst_mult_86_n260), .ZN(
        datapath_inst_iir_inst_mult_86_n83) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U214 ( .A(
        datapath_inst_iir_inst_w1[1]), .B(bn1[7]), .ZN(
        datapath_inst_iir_inst_mult_86_n257) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U213 ( .A1(
        datapath_inst_iir_inst_mult_86_n257), .A2(
        datapath_inst_iir_inst_mult_86_n256), .B1(
        datapath_inst_iir_inst_mult_86_n254), .B2(
        datapath_inst_iir_inst_mult_86_n258), .ZN(
        datapath_inst_iir_inst_mult_86_n85) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U212 ( .A(
        datapath_inst_iir_inst_w1[0]), .B(bn1[7]), .ZN(
        datapath_inst_iir_inst_mult_86_n255) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U211 ( .A1(
        datapath_inst_iir_inst_mult_86_n255), .A2(
        datapath_inst_iir_inst_mult_86_n256), .B1(
        datapath_inst_iir_inst_mult_86_n254), .B2(
        datapath_inst_iir_inst_mult_86_n257), .ZN(
        datapath_inst_iir_inst_mult_86_n86) );
  NOR2_X1 datapath_inst_iir_inst_mult_86_U210 ( .A1(
        datapath_inst_iir_inst_mult_86_n254), .A2(
        datapath_inst_iir_inst_mult_86_n219), .ZN(
        datapath_inst_iir_inst_mult_86_n87) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U209 ( .A1(
        datapath_inst_iir_inst_mult_86_n253), .A2(
        datapath_inst_iir_inst_mult_86_n242), .B1(
        datapath_inst_iir_inst_mult_86_n244), .B2(
        datapath_inst_iir_inst_mult_86_n253), .ZN(
        datapath_inst_iir_inst_mult_86_n252) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U208 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(bn1[5]), .ZN(
        datapath_inst_iir_inst_mult_86_n250) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U207 ( .A1(
        datapath_inst_iir_inst_mult_86_n250), .A2(
        datapath_inst_iir_inst_mult_86_n244), .B1(
        datapath_inst_iir_inst_mult_86_n242), .B2(
        datapath_inst_iir_inst_mult_86_n251), .ZN(
        datapath_inst_iir_inst_mult_86_n89) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U206 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(bn1[5]), .ZN(
        datapath_inst_iir_inst_mult_86_n249) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U205 ( .A1(
        datapath_inst_iir_inst_mult_86_n249), .A2(
        datapath_inst_iir_inst_mult_86_n244), .B1(
        datapath_inst_iir_inst_mult_86_n242), .B2(
        datapath_inst_iir_inst_mult_86_n250), .ZN(
        datapath_inst_iir_inst_mult_86_n90) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U204 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(bn1[5]), .ZN(
        datapath_inst_iir_inst_mult_86_n248) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U203 ( .A1(
        datapath_inst_iir_inst_mult_86_n248), .A2(
        datapath_inst_iir_inst_mult_86_n244), .B1(
        datapath_inst_iir_inst_mult_86_n242), .B2(
        datapath_inst_iir_inst_mult_86_n249), .ZN(
        datapath_inst_iir_inst_mult_86_n91) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U202 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(bn1[5]), .ZN(
        datapath_inst_iir_inst_mult_86_n247) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U201 ( .A1(
        datapath_inst_iir_inst_mult_86_n247), .A2(
        datapath_inst_iir_inst_mult_86_n244), .B1(
        datapath_inst_iir_inst_mult_86_n242), .B2(
        datapath_inst_iir_inst_mult_86_n248), .ZN(
        datapath_inst_iir_inst_mult_86_n92) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U200 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(bn1[5]), .ZN(
        datapath_inst_iir_inst_mult_86_n246) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U199 ( .A1(
        datapath_inst_iir_inst_mult_86_n246), .A2(
        datapath_inst_iir_inst_mult_86_n244), .B1(
        datapath_inst_iir_inst_mult_86_n242), .B2(
        datapath_inst_iir_inst_mult_86_n247), .ZN(
        datapath_inst_iir_inst_mult_86_n93) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U198 ( .A(
        datapath_inst_iir_inst_w1[1]), .B(bn1[5]), .ZN(
        datapath_inst_iir_inst_mult_86_n245) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U197 ( .A1(
        datapath_inst_iir_inst_mult_86_n245), .A2(
        datapath_inst_iir_inst_mult_86_n244), .B1(
        datapath_inst_iir_inst_mult_86_n242), .B2(
        datapath_inst_iir_inst_mult_86_n246), .ZN(
        datapath_inst_iir_inst_mult_86_n94) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U196 ( .A(
        datapath_inst_iir_inst_w1[0]), .B(bn1[5]), .ZN(
        datapath_inst_iir_inst_mult_86_n243) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U195 ( .A1(
        datapath_inst_iir_inst_mult_86_n243), .A2(
        datapath_inst_iir_inst_mult_86_n244), .B1(
        datapath_inst_iir_inst_mult_86_n242), .B2(
        datapath_inst_iir_inst_mult_86_n245), .ZN(
        datapath_inst_iir_inst_mult_86_n95) );
  NOR2_X1 datapath_inst_iir_inst_mult_86_U194 ( .A1(
        datapath_inst_iir_inst_mult_86_n242), .A2(
        datapath_inst_iir_inst_mult_86_n219), .ZN(
        datapath_inst_iir_inst_mult_86_n96) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U193 ( .A1(
        datapath_inst_iir_inst_mult_86_n241), .A2(
        datapath_inst_iir_inst_mult_86_n232), .B1(
        datapath_inst_iir_inst_mult_86_n238), .B2(
        datapath_inst_iir_inst_mult_86_n241), .ZN(
        datapath_inst_iir_inst_mult_86_n240) );
  OAI22_X1 datapath_inst_iir_inst_mult_86_U192 ( .A1(
        datapath_inst_iir_inst_mult_86_n237), .A2(
        datapath_inst_iir_inst_mult_86_n238), .B1(
        datapath_inst_iir_inst_mult_86_n232), .B2(
        datapath_inst_iir_inst_mult_86_n239), .ZN(
        datapath_inst_iir_inst_mult_86_n99) );
  AOI22_X1 datapath_inst_iir_inst_mult_86_U191 ( .A1(
        datapath_inst_iir_inst_mult_86_n236), .A2(
        datapath_inst_iir_inst_mult_86_n229), .B1(
        datapath_inst_iir_inst_mult_86_n227), .B2(
        datapath_inst_iir_inst_mult_86_n236), .ZN(
        datapath_inst_iir_inst_mult_86_n235) );
  XOR2_X1 datapath_inst_iir_inst_mult_86_U190 ( .A(
        datapath_inst_iir_inst_mult_86_n2), .B(
        datapath_inst_iir_inst_mult_86_n235), .Z(
        datapath_inst_iir_inst_mult_86_n234) );
  XNOR2_X1 datapath_inst_iir_inst_mult_86_U189 ( .A(
        datapath_inst_iir_inst_mult_86_n17), .B(
        datapath_inst_iir_inst_mult_86_n234), .ZN(
        datapath_inst_iir_inst_ff_temp1[15]) );
  INV_X1 datapath_inst_iir_inst_mult_86_U188 ( .A(bn1[7]), .ZN(
        datapath_inst_iir_inst_mult_86_n228) );
  INV_X1 datapath_inst_iir_inst_mult_86_U187 ( .A(bn1[3]), .ZN(
        datapath_inst_iir_inst_mult_86_n231) );
  INV_X1 datapath_inst_iir_inst_mult_86_U186 ( .A(bn1[5]), .ZN(
        datapath_inst_iir_inst_mult_86_n230) );
  INV_X1 datapath_inst_iir_inst_mult_86_U185 ( .A(datapath_inst_iir_inst_w1[1]), .ZN(datapath_inst_iir_inst_mult_86_n220) );
  INV_X1 datapath_inst_iir_inst_mult_86_U184 ( .A(bn1[0]), .ZN(
        datapath_inst_iir_inst_mult_86_n233) );
  INV_X1 datapath_inst_iir_inst_mult_86_U183 ( .A(datapath_inst_iir_inst_w1[0]), .ZN(datapath_inst_iir_inst_mult_86_n219) );
  XOR2_X1 datapath_inst_iir_inst_mult_86_U182 ( .A(bn1[6]), .B(
        datapath_inst_iir_inst_mult_86_n230), .Z(
        datapath_inst_iir_inst_mult_86_n254) );
  XOR2_X1 datapath_inst_iir_inst_mult_86_U181 ( .A(bn1[4]), .B(
        datapath_inst_iir_inst_mult_86_n231), .Z(
        datapath_inst_iir_inst_mult_86_n242) );
  INV_X1 datapath_inst_iir_inst_mult_86_U180 ( .A(
        datapath_inst_iir_inst_mult_86_n256), .ZN(
        datapath_inst_iir_inst_mult_86_n227) );
  INV_X1 datapath_inst_iir_inst_mult_86_U179 ( .A(
        datapath_inst_iir_inst_mult_86_n254), .ZN(
        datapath_inst_iir_inst_mult_86_n229) );
  INV_X1 datapath_inst_iir_inst_mult_86_U178 ( .A(
        datapath_inst_iir_inst_mult_86_n32), .ZN(
        datapath_inst_iir_inst_mult_86_n221) );
  INV_X1 datapath_inst_iir_inst_mult_86_U177 ( .A(
        datapath_inst_iir_inst_mult_86_n240), .ZN(
        datapath_inst_iir_inst_mult_86_n224) );
  INV_X1 datapath_inst_iir_inst_mult_86_U176 ( .A(
        datapath_inst_iir_inst_mult_86_n279), .ZN(
        datapath_inst_iir_inst_mult_86_n226) );
  INV_X1 datapath_inst_iir_inst_mult_86_U175 ( .A(
        datapath_inst_iir_inst_mult_86_n263), .ZN(
        datapath_inst_iir_inst_mult_86_n223) );
  INV_X1 datapath_inst_iir_inst_mult_86_U174 ( .A(
        datapath_inst_iir_inst_mult_86_n252), .ZN(
        datapath_inst_iir_inst_mult_86_n225) );
  INV_X1 datapath_inst_iir_inst_mult_86_U173 ( .A(
        datapath_inst_iir_inst_mult_86_n22), .ZN(
        datapath_inst_iir_inst_mult_86_n222) );
  INV_X1 datapath_inst_iir_inst_mult_86_U172 ( .A(
        datapath_inst_iir_inst_mult_86_n290), .ZN(
        datapath_inst_iir_inst_mult_86_n232) );
  INV_X1 datapath_inst_iir_inst_mult_86_U171 ( .A(
        datapath_inst_iir_inst_mult_86_n292), .ZN(
        datapath_inst_iir_inst_mult_86_n217) );
  INV_X1 datapath_inst_iir_inst_mult_86_U170 ( .A(
        datapath_inst_iir_inst_mult_86_n61), .ZN(
        datapath_inst_iir_inst_mult_86_n218) );
  INV_X1 datapath_inst_iir_inst_mult_86_U169 ( .A(
        datapath_inst_iir_inst_mult_86_n62), .ZN(
        datapath_inst_iir_inst_mult_86_n216) );
  INV_X1 datapath_inst_iir_inst_mult_86_U168 ( .A(
        datapath_inst_iir_inst_mult_86_n53), .ZN(
        datapath_inst_iir_inst_mult_86_n214) );
  INV_X1 datapath_inst_iir_inst_mult_86_U167 ( .A(
        datapath_inst_iir_inst_mult_86_n56), .ZN(
        datapath_inst_iir_inst_mult_86_n215) );
  HA_X1 datapath_inst_iir_inst_mult_86_U41 ( .A(
        datapath_inst_iir_inst_mult_86_n104), .B(
        datapath_inst_iir_inst_mult_86_n112), .CO(
        datapath_inst_iir_inst_mult_86_n62), .S(
        datapath_inst_iir_inst_mult_86_n63) );
  FA_X1 datapath_inst_iir_inst_mult_86_U40 ( .A(
        datapath_inst_iir_inst_mult_86_n111), .B(
        datapath_inst_iir_inst_mult_86_n96), .CI(
        datapath_inst_iir_inst_mult_86_n103), .CO(
        datapath_inst_iir_inst_mult_86_n60), .S(
        datapath_inst_iir_inst_mult_86_n61) );
  HA_X1 datapath_inst_iir_inst_mult_86_U39 ( .A(
        datapath_inst_iir_inst_mult_86_n76), .B(
        datapath_inst_iir_inst_mult_86_n95), .CO(
        datapath_inst_iir_inst_mult_86_n58), .S(
        datapath_inst_iir_inst_mult_86_n59) );
  FA_X1 datapath_inst_iir_inst_mult_86_U38 ( .A(
        datapath_inst_iir_inst_mult_86_n102), .B(
        datapath_inst_iir_inst_mult_86_n110), .CI(
        datapath_inst_iir_inst_mult_86_n59), .CO(
        datapath_inst_iir_inst_mult_86_n56), .S(
        datapath_inst_iir_inst_mult_86_n57) );
  FA_X1 datapath_inst_iir_inst_mult_86_U37 ( .A(
        datapath_inst_iir_inst_mult_86_n109), .B(
        datapath_inst_iir_inst_mult_86_n87), .CI(
        datapath_inst_iir_inst_mult_86_n101), .CO(
        datapath_inst_iir_inst_mult_86_n54), .S(
        datapath_inst_iir_inst_mult_86_n55) );
  FA_X1 datapath_inst_iir_inst_mult_86_U36 ( .A(
        datapath_inst_iir_inst_mult_86_n58), .B(
        datapath_inst_iir_inst_mult_86_n94), .CI(
        datapath_inst_iir_inst_mult_86_n55), .CO(
        datapath_inst_iir_inst_mult_86_n52), .S(
        datapath_inst_iir_inst_mult_86_n53) );
  HA_X1 datapath_inst_iir_inst_mult_86_U35 ( .A(
        datapath_inst_iir_inst_mult_86_n75), .B(
        datapath_inst_iir_inst_mult_86_n86), .CO(
        datapath_inst_iir_inst_mult_86_n50), .S(
        datapath_inst_iir_inst_mult_86_n51) );
  FA_X1 datapath_inst_iir_inst_mult_86_U34 ( .A(
        datapath_inst_iir_inst_mult_86_n93), .B(
        datapath_inst_iir_inst_mult_86_n108), .CI(
        datapath_inst_iir_inst_mult_86_n100), .CO(
        datapath_inst_iir_inst_mult_86_n48), .S(
        datapath_inst_iir_inst_mult_86_n49) );
  FA_X1 datapath_inst_iir_inst_mult_86_U33 ( .A(
        datapath_inst_iir_inst_mult_86_n54), .B(
        datapath_inst_iir_inst_mult_86_n51), .CI(
        datapath_inst_iir_inst_mult_86_n49), .CO(
        datapath_inst_iir_inst_mult_86_n46), .S(
        datapath_inst_iir_inst_mult_86_n47) );
  HA_X1 datapath_inst_iir_inst_mult_86_U32 ( .A(
        datapath_inst_iir_inst_mult_86_n85), .B(
        datapath_inst_iir_inst_mult_86_n92), .CO(
        datapath_inst_iir_inst_mult_86_n44), .S(
        datapath_inst_iir_inst_mult_86_n45) );
  FA_X1 datapath_inst_iir_inst_mult_86_U31 ( .A(
        datapath_inst_iir_inst_mult_86_n99), .B(
        datapath_inst_iir_inst_mult_86_n107), .CI(
        datapath_inst_iir_inst_mult_86_n50), .CO(
        datapath_inst_iir_inst_mult_86_n42), .S(
        datapath_inst_iir_inst_mult_86_n43) );
  FA_X1 datapath_inst_iir_inst_mult_86_U30 ( .A(
        datapath_inst_iir_inst_mult_86_n48), .B(
        datapath_inst_iir_inst_mult_86_n45), .CI(
        datapath_inst_iir_inst_mult_86_n43), .CO(
        datapath_inst_iir_inst_mult_86_n40), .S(
        datapath_inst_iir_inst_mult_86_n41) );
  FA_X1 datapath_inst_iir_inst_mult_86_U27 ( .A(
        datapath_inst_iir_inst_mult_86_n226), .B(
        datapath_inst_iir_inst_mult_86_n91), .CI(
        datapath_inst_iir_inst_mult_86_n44), .CO(
        datapath_inst_iir_inst_mult_86_n36), .S(
        datapath_inst_iir_inst_mult_86_n37) );
  FA_X1 datapath_inst_iir_inst_mult_86_U26 ( .A(
        datapath_inst_iir_inst_mult_86_n42), .B(
        datapath_inst_iir_inst_mult_86_n39), .CI(
        datapath_inst_iir_inst_mult_86_n37), .CO(
        datapath_inst_iir_inst_mult_86_n34), .S(
        datapath_inst_iir_inst_mult_86_n35) );
  FA_X1 datapath_inst_iir_inst_mult_86_U24 ( .A(
        datapath_inst_iir_inst_mult_86_n83), .B(
        datapath_inst_iir_inst_mult_86_n90), .CI(
        datapath_inst_iir_inst_mult_86_n221), .CO(
        datapath_inst_iir_inst_mult_86_n30), .S(
        datapath_inst_iir_inst_mult_86_n31) );
  FA_X1 datapath_inst_iir_inst_mult_86_U23 ( .A(
        datapath_inst_iir_inst_mult_86_n36), .B(
        datapath_inst_iir_inst_mult_86_n38), .CI(
        datapath_inst_iir_inst_mult_86_n31), .CO(
        datapath_inst_iir_inst_mult_86_n28), .S(
        datapath_inst_iir_inst_mult_86_n29) );
  FA_X1 datapath_inst_iir_inst_mult_86_U22 ( .A(
        datapath_inst_iir_inst_mult_86_n89), .B(
        datapath_inst_iir_inst_mult_86_n32), .CI(
        datapath_inst_iir_inst_mult_86_n224), .CO(
        datapath_inst_iir_inst_mult_86_n26), .S(
        datapath_inst_iir_inst_mult_86_n27) );
  FA_X1 datapath_inst_iir_inst_mult_86_U21 ( .A(
        datapath_inst_iir_inst_mult_86_n30), .B(
        datapath_inst_iir_inst_mult_86_n82), .CI(
        datapath_inst_iir_inst_mult_86_n27), .CO(
        datapath_inst_iir_inst_mult_86_n24), .S(
        datapath_inst_iir_inst_mult_86_n25) );
  FA_X1 datapath_inst_iir_inst_mult_86_U19 ( .A(
        datapath_inst_iir_inst_mult_86_n222), .B(
        datapath_inst_iir_inst_mult_86_n81), .CI(
        datapath_inst_iir_inst_mult_86_n26), .CO(
        datapath_inst_iir_inst_mult_86_n20), .S(
        datapath_inst_iir_inst_mult_86_n21) );
  FA_X1 datapath_inst_iir_inst_mult_86_U18 ( .A(
        datapath_inst_iir_inst_mult_86_n80), .B(
        datapath_inst_iir_inst_mult_86_n22), .CI(
        datapath_inst_iir_inst_mult_86_n225), .CO(
        datapath_inst_iir_inst_mult_86_n18), .S(
        datapath_inst_iir_inst_mult_86_n19) );
  FA_X1 datapath_inst_iir_inst_mult_86_U10 ( .A(
        datapath_inst_iir_inst_mult_86_n47), .B(
        datapath_inst_iir_inst_mult_86_n52), .CI(
        datapath_inst_iir_inst_mult_86_n10), .CO(
        datapath_inst_iir_inst_mult_86_n9), .S(
        datapath_inst_iir_inst_ff_temp1[7]) );
  FA_X1 datapath_inst_iir_inst_mult_86_U9 ( .A(
        datapath_inst_iir_inst_mult_86_n41), .B(
        datapath_inst_iir_inst_mult_86_n46), .CI(
        datapath_inst_iir_inst_mult_86_n9), .CO(
        datapath_inst_iir_inst_mult_86_n8), .S(
        datapath_inst_iir_inst_ff_temp1[8]) );
  FA_X1 datapath_inst_iir_inst_mult_86_U8 ( .A(
        datapath_inst_iir_inst_mult_86_n35), .B(
        datapath_inst_iir_inst_mult_86_n40), .CI(
        datapath_inst_iir_inst_mult_86_n8), .CO(
        datapath_inst_iir_inst_mult_86_n7), .S(
        datapath_inst_iir_inst_ff_temp1[9]) );
  FA_X1 datapath_inst_iir_inst_mult_86_U7 ( .A(
        datapath_inst_iir_inst_mult_86_n29), .B(
        datapath_inst_iir_inst_mult_86_n34), .CI(
        datapath_inst_iir_inst_mult_86_n7), .CO(
        datapath_inst_iir_inst_mult_86_n6), .S(
        datapath_inst_iir_inst_ff_temp1[10]) );
  FA_X1 datapath_inst_iir_inst_mult_86_U6 ( .A(
        datapath_inst_iir_inst_mult_86_n25), .B(
        datapath_inst_iir_inst_mult_86_n28), .CI(
        datapath_inst_iir_inst_mult_86_n6), .CO(
        datapath_inst_iir_inst_mult_86_n5), .S(
        datapath_inst_iir_inst_ff_temp1[11]) );
  FA_X1 datapath_inst_iir_inst_mult_86_U5 ( .A(
        datapath_inst_iir_inst_mult_86_n21), .B(
        datapath_inst_iir_inst_mult_86_n24), .CI(
        datapath_inst_iir_inst_mult_86_n5), .CO(
        datapath_inst_iir_inst_mult_86_n4), .S(
        datapath_inst_iir_inst_ff_temp1[12]) );
  FA_X1 datapath_inst_iir_inst_mult_86_U4 ( .A(
        datapath_inst_iir_inst_mult_86_n20), .B(
        datapath_inst_iir_inst_mult_86_n19), .CI(
        datapath_inst_iir_inst_mult_86_n4), .CO(
        datapath_inst_iir_inst_mult_86_n3), .S(
        datapath_inst_iir_inst_ff_temp1[13]) );
  FA_X1 datapath_inst_iir_inst_mult_86_U3 ( .A(
        datapath_inst_iir_inst_mult_86_n18), .B(
        datapath_inst_iir_inst_mult_86_n17), .CI(
        datapath_inst_iir_inst_mult_86_n3), .CO(
        datapath_inst_iir_inst_mult_86_n2), .S(
        datapath_inst_iir_inst_ff_temp1[14]) );
  XOR2_X1 datapath_inst_iir_inst_mult_87_U284 ( .A(bn2[2]), .B(bn2[1]), .Z(
        datapath_inst_iir_inst_mult_87_n290) );
  NAND2_X1 datapath_inst_iir_inst_mult_87_U283 ( .A1(bn2[1]), .A2(
        datapath_inst_iir_inst_mult_87_n233), .ZN(
        datapath_inst_iir_inst_mult_87_n272) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U282 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(bn2[1]), .ZN(
        datapath_inst_iir_inst_mult_87_n271) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U281 ( .A1(
        datapath_inst_iir_inst_w1[1]), .A2(datapath_inst_iir_inst_mult_87_n272), .B1(datapath_inst_iir_inst_mult_87_n271), .B2(
        datapath_inst_iir_inst_mult_87_n233), .ZN(
        datapath_inst_iir_inst_mult_87_n295) );
  NAND2_X1 datapath_inst_iir_inst_mult_87_U280 ( .A1(
        datapath_inst_iir_inst_mult_87_n290), .A2(
        datapath_inst_iir_inst_mult_87_n295), .ZN(
        datapath_inst_iir_inst_mult_87_n293) );
  NAND3_X1 datapath_inst_iir_inst_mult_87_U279 ( .A1(
        datapath_inst_iir_inst_mult_87_n295), .A2(
        datapath_inst_iir_inst_mult_87_n220), .A3(bn2[1]), .ZN(
        datapath_inst_iir_inst_mult_87_n294) );
  MUX2_X1 datapath_inst_iir_inst_mult_87_U278 ( .A(
        datapath_inst_iir_inst_mult_87_n293), .B(
        datapath_inst_iir_inst_mult_87_n294), .S(
        datapath_inst_iir_inst_mult_87_n219), .Z(
        datapath_inst_iir_inst_mult_87_n292) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U277 ( .A(
        datapath_inst_iir_inst_mult_87_n231), .B(bn2[2]), .ZN(
        datapath_inst_iir_inst_mult_87_n291) );
  NAND2_X1 datapath_inst_iir_inst_mult_87_U276 ( .A1(
        datapath_inst_iir_inst_mult_87_n232), .A2(
        datapath_inst_iir_inst_mult_87_n291), .ZN(
        datapath_inst_iir_inst_mult_87_n238) );
  NAND3_X1 datapath_inst_iir_inst_mult_87_U275 ( .A1(
        datapath_inst_iir_inst_mult_87_n290), .A2(
        datapath_inst_iir_inst_mult_87_n219), .A3(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n289) );
  OAI21_X1 datapath_inst_iir_inst_mult_87_U274 ( .B1(
        datapath_inst_iir_inst_mult_87_n231), .B2(
        datapath_inst_iir_inst_mult_87_n238), .A(
        datapath_inst_iir_inst_mult_87_n289), .ZN(
        datapath_inst_iir_inst_mult_87_n288) );
  AOI222_X1 datapath_inst_iir_inst_mult_87_U273 ( .A1(
        datapath_inst_iir_inst_mult_87_n217), .A2(
        datapath_inst_iir_inst_mult_87_n63), .B1(
        datapath_inst_iir_inst_mult_87_n288), .B2(
        datapath_inst_iir_inst_mult_87_n217), .C1(
        datapath_inst_iir_inst_mult_87_n288), .C2(
        datapath_inst_iir_inst_mult_87_n63), .ZN(
        datapath_inst_iir_inst_mult_87_n287) );
  OAI222_X1 datapath_inst_iir_inst_mult_87_U272 ( .A1(
        datapath_inst_iir_inst_mult_87_n287), .A2(
        datapath_inst_iir_inst_mult_87_n218), .B1(
        datapath_inst_iir_inst_mult_87_n287), .B2(
        datapath_inst_iir_inst_mult_87_n216), .C1(
        datapath_inst_iir_inst_mult_87_n216), .C2(
        datapath_inst_iir_inst_mult_87_n218), .ZN(
        datapath_inst_iir_inst_mult_87_n286) );
  AOI222_X1 datapath_inst_iir_inst_mult_87_U271 ( .A1(
        datapath_inst_iir_inst_mult_87_n286), .A2(
        datapath_inst_iir_inst_mult_87_n57), .B1(
        datapath_inst_iir_inst_mult_87_n286), .B2(
        datapath_inst_iir_inst_mult_87_n60), .C1(
        datapath_inst_iir_inst_mult_87_n60), .C2(
        datapath_inst_iir_inst_mult_87_n57), .ZN(
        datapath_inst_iir_inst_mult_87_n285) );
  OAI222_X1 datapath_inst_iir_inst_mult_87_U270 ( .A1(
        datapath_inst_iir_inst_mult_87_n285), .A2(
        datapath_inst_iir_inst_mult_87_n214), .B1(
        datapath_inst_iir_inst_mult_87_n285), .B2(
        datapath_inst_iir_inst_mult_87_n215), .C1(
        datapath_inst_iir_inst_mult_87_n215), .C2(
        datapath_inst_iir_inst_mult_87_n214), .ZN(
        datapath_inst_iir_inst_mult_87_n10) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U269 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n284) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U268 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n237) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U267 ( .A1(
        datapath_inst_iir_inst_mult_87_n284), .A2(
        datapath_inst_iir_inst_mult_87_n238), .B1(
        datapath_inst_iir_inst_mult_87_n232), .B2(
        datapath_inst_iir_inst_mult_87_n237), .ZN(
        datapath_inst_iir_inst_mult_87_n100) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U266 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n283) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U265 ( .A1(
        datapath_inst_iir_inst_mult_87_n283), .A2(
        datapath_inst_iir_inst_mult_87_n238), .B1(
        datapath_inst_iir_inst_mult_87_n232), .B2(
        datapath_inst_iir_inst_mult_87_n284), .ZN(
        datapath_inst_iir_inst_mult_87_n101) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U264 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n282) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U263 ( .A1(
        datapath_inst_iir_inst_mult_87_n282), .A2(
        datapath_inst_iir_inst_mult_87_n238), .B1(
        datapath_inst_iir_inst_mult_87_n232), .B2(
        datapath_inst_iir_inst_mult_87_n283), .ZN(
        datapath_inst_iir_inst_mult_87_n102) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U262 ( .A(
        datapath_inst_iir_inst_w1[1]), .B(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n281) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U261 ( .A1(
        datapath_inst_iir_inst_mult_87_n281), .A2(
        datapath_inst_iir_inst_mult_87_n238), .B1(
        datapath_inst_iir_inst_mult_87_n232), .B2(
        datapath_inst_iir_inst_mult_87_n282), .ZN(
        datapath_inst_iir_inst_mult_87_n103) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U260 ( .A(
        datapath_inst_iir_inst_w1[0]), .B(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n280) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U259 ( .A1(
        datapath_inst_iir_inst_mult_87_n280), .A2(
        datapath_inst_iir_inst_mult_87_n238), .B1(
        datapath_inst_iir_inst_mult_87_n232), .B2(
        datapath_inst_iir_inst_mult_87_n281), .ZN(
        datapath_inst_iir_inst_mult_87_n104) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U258 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(bn2[1]), .ZN(
        datapath_inst_iir_inst_mult_87_n278) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U257 ( .A1(
        datapath_inst_iir_inst_mult_87_n233), .A2(
        datapath_inst_iir_inst_mult_87_n278), .B1(
        datapath_inst_iir_inst_mult_87_n272), .B2(
        datapath_inst_iir_inst_mult_87_n278), .ZN(
        datapath_inst_iir_inst_mult_87_n279) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U256 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(bn2[1]), .ZN(
        datapath_inst_iir_inst_mult_87_n277) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U255 ( .A1(
        datapath_inst_iir_inst_mult_87_n277), .A2(
        datapath_inst_iir_inst_mult_87_n272), .B1(
        datapath_inst_iir_inst_mult_87_n278), .B2(
        datapath_inst_iir_inst_mult_87_n233), .ZN(
        datapath_inst_iir_inst_mult_87_n107) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U254 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(bn2[1]), .ZN(
        datapath_inst_iir_inst_mult_87_n276) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U253 ( .A1(
        datapath_inst_iir_inst_mult_87_n276), .A2(
        datapath_inst_iir_inst_mult_87_n272), .B1(
        datapath_inst_iir_inst_mult_87_n277), .B2(
        datapath_inst_iir_inst_mult_87_n233), .ZN(
        datapath_inst_iir_inst_mult_87_n108) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U252 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(bn2[1]), .ZN(
        datapath_inst_iir_inst_mult_87_n275) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U251 ( .A1(
        datapath_inst_iir_inst_mult_87_n275), .A2(
        datapath_inst_iir_inst_mult_87_n272), .B1(
        datapath_inst_iir_inst_mult_87_n276), .B2(
        datapath_inst_iir_inst_mult_87_n233), .ZN(
        datapath_inst_iir_inst_mult_87_n109) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U250 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(bn2[1]), .ZN(
        datapath_inst_iir_inst_mult_87_n274) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U249 ( .A1(
        datapath_inst_iir_inst_mult_87_n274), .A2(
        datapath_inst_iir_inst_mult_87_n272), .B1(
        datapath_inst_iir_inst_mult_87_n275), .B2(
        datapath_inst_iir_inst_mult_87_n233), .ZN(
        datapath_inst_iir_inst_mult_87_n110) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U248 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(bn2[1]), .ZN(
        datapath_inst_iir_inst_mult_87_n273) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U247 ( .A1(
        datapath_inst_iir_inst_mult_87_n273), .A2(
        datapath_inst_iir_inst_mult_87_n272), .B1(
        datapath_inst_iir_inst_mult_87_n274), .B2(
        datapath_inst_iir_inst_mult_87_n233), .ZN(
        datapath_inst_iir_inst_mult_87_n111) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U246 ( .A1(
        datapath_inst_iir_inst_mult_87_n271), .A2(
        datapath_inst_iir_inst_mult_87_n272), .B1(
        datapath_inst_iir_inst_mult_87_n273), .B2(
        datapath_inst_iir_inst_mult_87_n233), .ZN(
        datapath_inst_iir_inst_mult_87_n112) );
  XOR2_X1 datapath_inst_iir_inst_mult_87_U245 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(bn2[7]), .Z(
        datapath_inst_iir_inst_mult_87_n263) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U244 ( .A(
        datapath_inst_iir_inst_mult_87_n228), .B(bn2[6]), .ZN(
        datapath_inst_iir_inst_mult_87_n270) );
  NAND2_X1 datapath_inst_iir_inst_mult_87_U243 ( .A1(
        datapath_inst_iir_inst_mult_87_n254), .A2(
        datapath_inst_iir_inst_mult_87_n270), .ZN(
        datapath_inst_iir_inst_mult_87_n256) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U242 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(datapath_inst_iir_inst_mult_87_n228), 
        .ZN(datapath_inst_iir_inst_mult_87_n236) );
  AOI22_X1 datapath_inst_iir_inst_mult_87_U241 ( .A1(
        datapath_inst_iir_inst_mult_87_n263), .A2(
        datapath_inst_iir_inst_mult_87_n227), .B1(
        datapath_inst_iir_inst_mult_87_n229), .B2(
        datapath_inst_iir_inst_mult_87_n236), .ZN(
        datapath_inst_iir_inst_mult_87_n17) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U240 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(bn2[5]), .ZN(
        datapath_inst_iir_inst_mult_87_n251) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U239 ( .A(
        datapath_inst_iir_inst_mult_87_n230), .B(bn2[4]), .ZN(
        datapath_inst_iir_inst_mult_87_n269) );
  NAND2_X1 datapath_inst_iir_inst_mult_87_U238 ( .A1(
        datapath_inst_iir_inst_mult_87_n242), .A2(
        datapath_inst_iir_inst_mult_87_n269), .ZN(
        datapath_inst_iir_inst_mult_87_n244) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U237 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(bn2[5]), .ZN(
        datapath_inst_iir_inst_mult_87_n253) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U236 ( .A1(
        datapath_inst_iir_inst_mult_87_n251), .A2(
        datapath_inst_iir_inst_mult_87_n244), .B1(
        datapath_inst_iir_inst_mult_87_n242), .B2(
        datapath_inst_iir_inst_mult_87_n253), .ZN(
        datapath_inst_iir_inst_mult_87_n22) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U235 ( .A(
        datapath_inst_iir_inst_w1[7]), .B(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n268) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U234 ( .A(
        datapath_inst_iir_inst_w1[8]), .B(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n241) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U233 ( .A1(
        datapath_inst_iir_inst_mult_87_n268), .A2(
        datapath_inst_iir_inst_mult_87_n238), .B1(
        datapath_inst_iir_inst_mult_87_n232), .B2(
        datapath_inst_iir_inst_mult_87_n241), .ZN(
        datapath_inst_iir_inst_mult_87_n32) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U232 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(bn2[7]), .ZN(
        datapath_inst_iir_inst_mult_87_n258) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U231 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(bn2[7]), .ZN(
        datapath_inst_iir_inst_mult_87_n259) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U230 ( .A1(
        datapath_inst_iir_inst_mult_87_n258), .A2(
        datapath_inst_iir_inst_mult_87_n256), .B1(
        datapath_inst_iir_inst_mult_87_n254), .B2(
        datapath_inst_iir_inst_mult_87_n259), .ZN(
        datapath_inst_iir_inst_mult_87_n266) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U229 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n239) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U228 ( .A1(
        datapath_inst_iir_inst_mult_87_n239), .A2(
        datapath_inst_iir_inst_mult_87_n238), .B1(
        datapath_inst_iir_inst_mult_87_n232), .B2(
        datapath_inst_iir_inst_mult_87_n268), .ZN(
        datapath_inst_iir_inst_mult_87_n267) );
  OR2_X1 datapath_inst_iir_inst_mult_87_U227 ( .A1(
        datapath_inst_iir_inst_mult_87_n266), .A2(
        datapath_inst_iir_inst_mult_87_n267), .ZN(
        datapath_inst_iir_inst_mult_87_n38) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U226 ( .A(
        datapath_inst_iir_inst_mult_87_n266), .B(
        datapath_inst_iir_inst_mult_87_n267), .ZN(
        datapath_inst_iir_inst_mult_87_n39) );
  NAND3_X1 datapath_inst_iir_inst_mult_87_U225 ( .A1(
        datapath_inst_iir_inst_mult_87_n229), .A2(
        datapath_inst_iir_inst_mult_87_n219), .A3(bn2[7]), .ZN(
        datapath_inst_iir_inst_mult_87_n265) );
  OAI21_X1 datapath_inst_iir_inst_mult_87_U224 ( .B1(
        datapath_inst_iir_inst_mult_87_n228), .B2(
        datapath_inst_iir_inst_mult_87_n256), .A(
        datapath_inst_iir_inst_mult_87_n265), .ZN(
        datapath_inst_iir_inst_mult_87_n75) );
  OR3_X1 datapath_inst_iir_inst_mult_87_U223 ( .A1(
        datapath_inst_iir_inst_mult_87_n242), .A2(datapath_inst_iir_inst_w1[0]), .A3(datapath_inst_iir_inst_mult_87_n230), .ZN(
        datapath_inst_iir_inst_mult_87_n264) );
  OAI21_X1 datapath_inst_iir_inst_mult_87_U222 ( .B1(
        datapath_inst_iir_inst_mult_87_n230), .B2(
        datapath_inst_iir_inst_mult_87_n244), .A(
        datapath_inst_iir_inst_mult_87_n264), .ZN(
        datapath_inst_iir_inst_mult_87_n76) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U221 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(bn2[7]), .ZN(
        datapath_inst_iir_inst_mult_87_n262) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U220 ( .A1(
        datapath_inst_iir_inst_mult_87_n262), .A2(
        datapath_inst_iir_inst_mult_87_n256), .B1(
        datapath_inst_iir_inst_mult_87_n254), .B2(
        datapath_inst_iir_inst_mult_87_n223), .ZN(
        datapath_inst_iir_inst_mult_87_n80) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U219 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(bn2[7]), .ZN(
        datapath_inst_iir_inst_mult_87_n261) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U218 ( .A1(
        datapath_inst_iir_inst_mult_87_n261), .A2(
        datapath_inst_iir_inst_mult_87_n256), .B1(
        datapath_inst_iir_inst_mult_87_n254), .B2(
        datapath_inst_iir_inst_mult_87_n262), .ZN(
        datapath_inst_iir_inst_mult_87_n81) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U217 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(bn2[7]), .ZN(
        datapath_inst_iir_inst_mult_87_n260) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U216 ( .A1(
        datapath_inst_iir_inst_mult_87_n260), .A2(
        datapath_inst_iir_inst_mult_87_n256), .B1(
        datapath_inst_iir_inst_mult_87_n254), .B2(
        datapath_inst_iir_inst_mult_87_n261), .ZN(
        datapath_inst_iir_inst_mult_87_n82) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U215 ( .A1(
        datapath_inst_iir_inst_mult_87_n259), .A2(
        datapath_inst_iir_inst_mult_87_n256), .B1(
        datapath_inst_iir_inst_mult_87_n254), .B2(
        datapath_inst_iir_inst_mult_87_n260), .ZN(
        datapath_inst_iir_inst_mult_87_n83) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U214 ( .A(
        datapath_inst_iir_inst_w1[1]), .B(bn2[7]), .ZN(
        datapath_inst_iir_inst_mult_87_n257) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U213 ( .A1(
        datapath_inst_iir_inst_mult_87_n257), .A2(
        datapath_inst_iir_inst_mult_87_n256), .B1(
        datapath_inst_iir_inst_mult_87_n254), .B2(
        datapath_inst_iir_inst_mult_87_n258), .ZN(
        datapath_inst_iir_inst_mult_87_n85) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U212 ( .A(
        datapath_inst_iir_inst_w1[0]), .B(bn2[7]), .ZN(
        datapath_inst_iir_inst_mult_87_n255) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U211 ( .A1(
        datapath_inst_iir_inst_mult_87_n255), .A2(
        datapath_inst_iir_inst_mult_87_n256), .B1(
        datapath_inst_iir_inst_mult_87_n254), .B2(
        datapath_inst_iir_inst_mult_87_n257), .ZN(
        datapath_inst_iir_inst_mult_87_n86) );
  NOR2_X1 datapath_inst_iir_inst_mult_87_U210 ( .A1(
        datapath_inst_iir_inst_mult_87_n254), .A2(
        datapath_inst_iir_inst_mult_87_n219), .ZN(
        datapath_inst_iir_inst_mult_87_n87) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U209 ( .A1(
        datapath_inst_iir_inst_mult_87_n253), .A2(
        datapath_inst_iir_inst_mult_87_n242), .B1(
        datapath_inst_iir_inst_mult_87_n244), .B2(
        datapath_inst_iir_inst_mult_87_n253), .ZN(
        datapath_inst_iir_inst_mult_87_n252) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U208 ( .A(
        datapath_inst_iir_inst_w1[6]), .B(bn2[5]), .ZN(
        datapath_inst_iir_inst_mult_87_n250) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U207 ( .A1(
        datapath_inst_iir_inst_mult_87_n250), .A2(
        datapath_inst_iir_inst_mult_87_n244), .B1(
        datapath_inst_iir_inst_mult_87_n242), .B2(
        datapath_inst_iir_inst_mult_87_n251), .ZN(
        datapath_inst_iir_inst_mult_87_n89) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U206 ( .A(
        datapath_inst_iir_inst_w1[5]), .B(bn2[5]), .ZN(
        datapath_inst_iir_inst_mult_87_n249) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U205 ( .A1(
        datapath_inst_iir_inst_mult_87_n249), .A2(
        datapath_inst_iir_inst_mult_87_n244), .B1(
        datapath_inst_iir_inst_mult_87_n242), .B2(
        datapath_inst_iir_inst_mult_87_n250), .ZN(
        datapath_inst_iir_inst_mult_87_n90) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U204 ( .A(
        datapath_inst_iir_inst_w1[4]), .B(bn2[5]), .ZN(
        datapath_inst_iir_inst_mult_87_n248) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U203 ( .A1(
        datapath_inst_iir_inst_mult_87_n248), .A2(
        datapath_inst_iir_inst_mult_87_n244), .B1(
        datapath_inst_iir_inst_mult_87_n242), .B2(
        datapath_inst_iir_inst_mult_87_n249), .ZN(
        datapath_inst_iir_inst_mult_87_n91) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U202 ( .A(
        datapath_inst_iir_inst_w1[3]), .B(bn2[5]), .ZN(
        datapath_inst_iir_inst_mult_87_n247) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U201 ( .A1(
        datapath_inst_iir_inst_mult_87_n247), .A2(
        datapath_inst_iir_inst_mult_87_n244), .B1(
        datapath_inst_iir_inst_mult_87_n242), .B2(
        datapath_inst_iir_inst_mult_87_n248), .ZN(
        datapath_inst_iir_inst_mult_87_n92) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U200 ( .A(
        datapath_inst_iir_inst_w1[2]), .B(bn2[5]), .ZN(
        datapath_inst_iir_inst_mult_87_n246) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U199 ( .A1(
        datapath_inst_iir_inst_mult_87_n246), .A2(
        datapath_inst_iir_inst_mult_87_n244), .B1(
        datapath_inst_iir_inst_mult_87_n242), .B2(
        datapath_inst_iir_inst_mult_87_n247), .ZN(
        datapath_inst_iir_inst_mult_87_n93) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U198 ( .A(
        datapath_inst_iir_inst_w1[1]), .B(bn2[5]), .ZN(
        datapath_inst_iir_inst_mult_87_n245) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U197 ( .A1(
        datapath_inst_iir_inst_mult_87_n245), .A2(
        datapath_inst_iir_inst_mult_87_n244), .B1(
        datapath_inst_iir_inst_mult_87_n242), .B2(
        datapath_inst_iir_inst_mult_87_n246), .ZN(
        datapath_inst_iir_inst_mult_87_n94) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U196 ( .A(
        datapath_inst_iir_inst_w1[0]), .B(bn2[5]), .ZN(
        datapath_inst_iir_inst_mult_87_n243) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U195 ( .A1(
        datapath_inst_iir_inst_mult_87_n243), .A2(
        datapath_inst_iir_inst_mult_87_n244), .B1(
        datapath_inst_iir_inst_mult_87_n242), .B2(
        datapath_inst_iir_inst_mult_87_n245), .ZN(
        datapath_inst_iir_inst_mult_87_n95) );
  NOR2_X1 datapath_inst_iir_inst_mult_87_U194 ( .A1(
        datapath_inst_iir_inst_mult_87_n242), .A2(
        datapath_inst_iir_inst_mult_87_n219), .ZN(
        datapath_inst_iir_inst_mult_87_n96) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U193 ( .A1(
        datapath_inst_iir_inst_mult_87_n241), .A2(
        datapath_inst_iir_inst_mult_87_n232), .B1(
        datapath_inst_iir_inst_mult_87_n238), .B2(
        datapath_inst_iir_inst_mult_87_n241), .ZN(
        datapath_inst_iir_inst_mult_87_n240) );
  OAI22_X1 datapath_inst_iir_inst_mult_87_U192 ( .A1(
        datapath_inst_iir_inst_mult_87_n237), .A2(
        datapath_inst_iir_inst_mult_87_n238), .B1(
        datapath_inst_iir_inst_mult_87_n232), .B2(
        datapath_inst_iir_inst_mult_87_n239), .ZN(
        datapath_inst_iir_inst_mult_87_n99) );
  AOI22_X1 datapath_inst_iir_inst_mult_87_U191 ( .A1(
        datapath_inst_iir_inst_mult_87_n236), .A2(
        datapath_inst_iir_inst_mult_87_n229), .B1(
        datapath_inst_iir_inst_mult_87_n227), .B2(
        datapath_inst_iir_inst_mult_87_n236), .ZN(
        datapath_inst_iir_inst_mult_87_n235) );
  XOR2_X1 datapath_inst_iir_inst_mult_87_U190 ( .A(
        datapath_inst_iir_inst_mult_87_n2), .B(
        datapath_inst_iir_inst_mult_87_n235), .Z(
        datapath_inst_iir_inst_mult_87_n234) );
  XNOR2_X1 datapath_inst_iir_inst_mult_87_U189 ( .A(
        datapath_inst_iir_inst_mult_87_n17), .B(
        datapath_inst_iir_inst_mult_87_n234), .ZN(
        datapath_inst_iir_inst_ff_temp2[15]) );
  INV_X1 datapath_inst_iir_inst_mult_87_U188 ( .A(bn2[7]), .ZN(
        datapath_inst_iir_inst_mult_87_n228) );
  INV_X1 datapath_inst_iir_inst_mult_87_U187 ( .A(bn2[3]), .ZN(
        datapath_inst_iir_inst_mult_87_n231) );
  INV_X1 datapath_inst_iir_inst_mult_87_U186 ( .A(bn2[5]), .ZN(
        datapath_inst_iir_inst_mult_87_n230) );
  INV_X1 datapath_inst_iir_inst_mult_87_U185 ( .A(datapath_inst_iir_inst_w1[1]), .ZN(datapath_inst_iir_inst_mult_87_n220) );
  INV_X1 datapath_inst_iir_inst_mult_87_U184 ( .A(bn2[0]), .ZN(
        datapath_inst_iir_inst_mult_87_n233) );
  INV_X1 datapath_inst_iir_inst_mult_87_U183 ( .A(datapath_inst_iir_inst_w1[0]), .ZN(datapath_inst_iir_inst_mult_87_n219) );
  XOR2_X1 datapath_inst_iir_inst_mult_87_U182 ( .A(bn2[6]), .B(
        datapath_inst_iir_inst_mult_87_n230), .Z(
        datapath_inst_iir_inst_mult_87_n254) );
  XOR2_X1 datapath_inst_iir_inst_mult_87_U181 ( .A(bn2[4]), .B(
        datapath_inst_iir_inst_mult_87_n231), .Z(
        datapath_inst_iir_inst_mult_87_n242) );
  INV_X1 datapath_inst_iir_inst_mult_87_U180 ( .A(
        datapath_inst_iir_inst_mult_87_n256), .ZN(
        datapath_inst_iir_inst_mult_87_n227) );
  INV_X1 datapath_inst_iir_inst_mult_87_U179 ( .A(
        datapath_inst_iir_inst_mult_87_n254), .ZN(
        datapath_inst_iir_inst_mult_87_n229) );
  INV_X1 datapath_inst_iir_inst_mult_87_U178 ( .A(
        datapath_inst_iir_inst_mult_87_n32), .ZN(
        datapath_inst_iir_inst_mult_87_n221) );
  INV_X1 datapath_inst_iir_inst_mult_87_U177 ( .A(
        datapath_inst_iir_inst_mult_87_n240), .ZN(
        datapath_inst_iir_inst_mult_87_n224) );
  INV_X1 datapath_inst_iir_inst_mult_87_U176 ( .A(
        datapath_inst_iir_inst_mult_87_n279), .ZN(
        datapath_inst_iir_inst_mult_87_n226) );
  INV_X1 datapath_inst_iir_inst_mult_87_U175 ( .A(
        datapath_inst_iir_inst_mult_87_n263), .ZN(
        datapath_inst_iir_inst_mult_87_n223) );
  INV_X1 datapath_inst_iir_inst_mult_87_U174 ( .A(
        datapath_inst_iir_inst_mult_87_n252), .ZN(
        datapath_inst_iir_inst_mult_87_n225) );
  INV_X1 datapath_inst_iir_inst_mult_87_U173 ( .A(
        datapath_inst_iir_inst_mult_87_n22), .ZN(
        datapath_inst_iir_inst_mult_87_n222) );
  INV_X1 datapath_inst_iir_inst_mult_87_U172 ( .A(
        datapath_inst_iir_inst_mult_87_n290), .ZN(
        datapath_inst_iir_inst_mult_87_n232) );
  INV_X1 datapath_inst_iir_inst_mult_87_U171 ( .A(
        datapath_inst_iir_inst_mult_87_n292), .ZN(
        datapath_inst_iir_inst_mult_87_n217) );
  INV_X1 datapath_inst_iir_inst_mult_87_U170 ( .A(
        datapath_inst_iir_inst_mult_87_n61), .ZN(
        datapath_inst_iir_inst_mult_87_n218) );
  INV_X1 datapath_inst_iir_inst_mult_87_U169 ( .A(
        datapath_inst_iir_inst_mult_87_n62), .ZN(
        datapath_inst_iir_inst_mult_87_n216) );
  INV_X1 datapath_inst_iir_inst_mult_87_U168 ( .A(
        datapath_inst_iir_inst_mult_87_n53), .ZN(
        datapath_inst_iir_inst_mult_87_n214) );
  INV_X1 datapath_inst_iir_inst_mult_87_U167 ( .A(
        datapath_inst_iir_inst_mult_87_n56), .ZN(
        datapath_inst_iir_inst_mult_87_n215) );
  HA_X1 datapath_inst_iir_inst_mult_87_U41 ( .A(
        datapath_inst_iir_inst_mult_87_n104), .B(
        datapath_inst_iir_inst_mult_87_n112), .CO(
        datapath_inst_iir_inst_mult_87_n62), .S(
        datapath_inst_iir_inst_mult_87_n63) );
  FA_X1 datapath_inst_iir_inst_mult_87_U40 ( .A(
        datapath_inst_iir_inst_mult_87_n111), .B(
        datapath_inst_iir_inst_mult_87_n96), .CI(
        datapath_inst_iir_inst_mult_87_n103), .CO(
        datapath_inst_iir_inst_mult_87_n60), .S(
        datapath_inst_iir_inst_mult_87_n61) );
  HA_X1 datapath_inst_iir_inst_mult_87_U39 ( .A(
        datapath_inst_iir_inst_mult_87_n76), .B(
        datapath_inst_iir_inst_mult_87_n95), .CO(
        datapath_inst_iir_inst_mult_87_n58), .S(
        datapath_inst_iir_inst_mult_87_n59) );
  FA_X1 datapath_inst_iir_inst_mult_87_U38 ( .A(
        datapath_inst_iir_inst_mult_87_n102), .B(
        datapath_inst_iir_inst_mult_87_n110), .CI(
        datapath_inst_iir_inst_mult_87_n59), .CO(
        datapath_inst_iir_inst_mult_87_n56), .S(
        datapath_inst_iir_inst_mult_87_n57) );
  FA_X1 datapath_inst_iir_inst_mult_87_U37 ( .A(
        datapath_inst_iir_inst_mult_87_n109), .B(
        datapath_inst_iir_inst_mult_87_n87), .CI(
        datapath_inst_iir_inst_mult_87_n101), .CO(
        datapath_inst_iir_inst_mult_87_n54), .S(
        datapath_inst_iir_inst_mult_87_n55) );
  FA_X1 datapath_inst_iir_inst_mult_87_U36 ( .A(
        datapath_inst_iir_inst_mult_87_n58), .B(
        datapath_inst_iir_inst_mult_87_n94), .CI(
        datapath_inst_iir_inst_mult_87_n55), .CO(
        datapath_inst_iir_inst_mult_87_n52), .S(
        datapath_inst_iir_inst_mult_87_n53) );
  HA_X1 datapath_inst_iir_inst_mult_87_U35 ( .A(
        datapath_inst_iir_inst_mult_87_n75), .B(
        datapath_inst_iir_inst_mult_87_n86), .CO(
        datapath_inst_iir_inst_mult_87_n50), .S(
        datapath_inst_iir_inst_mult_87_n51) );
  FA_X1 datapath_inst_iir_inst_mult_87_U34 ( .A(
        datapath_inst_iir_inst_mult_87_n93), .B(
        datapath_inst_iir_inst_mult_87_n108), .CI(
        datapath_inst_iir_inst_mult_87_n100), .CO(
        datapath_inst_iir_inst_mult_87_n48), .S(
        datapath_inst_iir_inst_mult_87_n49) );
  FA_X1 datapath_inst_iir_inst_mult_87_U33 ( .A(
        datapath_inst_iir_inst_mult_87_n54), .B(
        datapath_inst_iir_inst_mult_87_n51), .CI(
        datapath_inst_iir_inst_mult_87_n49), .CO(
        datapath_inst_iir_inst_mult_87_n46), .S(
        datapath_inst_iir_inst_mult_87_n47) );
  HA_X1 datapath_inst_iir_inst_mult_87_U32 ( .A(
        datapath_inst_iir_inst_mult_87_n85), .B(
        datapath_inst_iir_inst_mult_87_n92), .CO(
        datapath_inst_iir_inst_mult_87_n44), .S(
        datapath_inst_iir_inst_mult_87_n45) );
  FA_X1 datapath_inst_iir_inst_mult_87_U31 ( .A(
        datapath_inst_iir_inst_mult_87_n99), .B(
        datapath_inst_iir_inst_mult_87_n107), .CI(
        datapath_inst_iir_inst_mult_87_n50), .CO(
        datapath_inst_iir_inst_mult_87_n42), .S(
        datapath_inst_iir_inst_mult_87_n43) );
  FA_X1 datapath_inst_iir_inst_mult_87_U30 ( .A(
        datapath_inst_iir_inst_mult_87_n48), .B(
        datapath_inst_iir_inst_mult_87_n45), .CI(
        datapath_inst_iir_inst_mult_87_n43), .CO(
        datapath_inst_iir_inst_mult_87_n40), .S(
        datapath_inst_iir_inst_mult_87_n41) );
  FA_X1 datapath_inst_iir_inst_mult_87_U27 ( .A(
        datapath_inst_iir_inst_mult_87_n226), .B(
        datapath_inst_iir_inst_mult_87_n91), .CI(
        datapath_inst_iir_inst_mult_87_n44), .CO(
        datapath_inst_iir_inst_mult_87_n36), .S(
        datapath_inst_iir_inst_mult_87_n37) );
  FA_X1 datapath_inst_iir_inst_mult_87_U26 ( .A(
        datapath_inst_iir_inst_mult_87_n42), .B(
        datapath_inst_iir_inst_mult_87_n39), .CI(
        datapath_inst_iir_inst_mult_87_n37), .CO(
        datapath_inst_iir_inst_mult_87_n34), .S(
        datapath_inst_iir_inst_mult_87_n35) );
  FA_X1 datapath_inst_iir_inst_mult_87_U24 ( .A(
        datapath_inst_iir_inst_mult_87_n83), .B(
        datapath_inst_iir_inst_mult_87_n90), .CI(
        datapath_inst_iir_inst_mult_87_n221), .CO(
        datapath_inst_iir_inst_mult_87_n30), .S(
        datapath_inst_iir_inst_mult_87_n31) );
  FA_X1 datapath_inst_iir_inst_mult_87_U23 ( .A(
        datapath_inst_iir_inst_mult_87_n36), .B(
        datapath_inst_iir_inst_mult_87_n38), .CI(
        datapath_inst_iir_inst_mult_87_n31), .CO(
        datapath_inst_iir_inst_mult_87_n28), .S(
        datapath_inst_iir_inst_mult_87_n29) );
  FA_X1 datapath_inst_iir_inst_mult_87_U22 ( .A(
        datapath_inst_iir_inst_mult_87_n89), .B(
        datapath_inst_iir_inst_mult_87_n32), .CI(
        datapath_inst_iir_inst_mult_87_n224), .CO(
        datapath_inst_iir_inst_mult_87_n26), .S(
        datapath_inst_iir_inst_mult_87_n27) );
  FA_X1 datapath_inst_iir_inst_mult_87_U21 ( .A(
        datapath_inst_iir_inst_mult_87_n30), .B(
        datapath_inst_iir_inst_mult_87_n82), .CI(
        datapath_inst_iir_inst_mult_87_n27), .CO(
        datapath_inst_iir_inst_mult_87_n24), .S(
        datapath_inst_iir_inst_mult_87_n25) );
  FA_X1 datapath_inst_iir_inst_mult_87_U19 ( .A(
        datapath_inst_iir_inst_mult_87_n222), .B(
        datapath_inst_iir_inst_mult_87_n81), .CI(
        datapath_inst_iir_inst_mult_87_n26), .CO(
        datapath_inst_iir_inst_mult_87_n20), .S(
        datapath_inst_iir_inst_mult_87_n21) );
  FA_X1 datapath_inst_iir_inst_mult_87_U18 ( .A(
        datapath_inst_iir_inst_mult_87_n80), .B(
        datapath_inst_iir_inst_mult_87_n22), .CI(
        datapath_inst_iir_inst_mult_87_n225), .CO(
        datapath_inst_iir_inst_mult_87_n18), .S(
        datapath_inst_iir_inst_mult_87_n19) );
  FA_X1 datapath_inst_iir_inst_mult_87_U10 ( .A(
        datapath_inst_iir_inst_mult_87_n47), .B(
        datapath_inst_iir_inst_mult_87_n52), .CI(
        datapath_inst_iir_inst_mult_87_n10), .CO(
        datapath_inst_iir_inst_mult_87_n9), .S(
        datapath_inst_iir_inst_ff_temp2[7]) );
  FA_X1 datapath_inst_iir_inst_mult_87_U9 ( .A(
        datapath_inst_iir_inst_mult_87_n41), .B(
        datapath_inst_iir_inst_mult_87_n46), .CI(
        datapath_inst_iir_inst_mult_87_n9), .CO(
        datapath_inst_iir_inst_mult_87_n8), .S(
        datapath_inst_iir_inst_ff_temp2[8]) );
  FA_X1 datapath_inst_iir_inst_mult_87_U8 ( .A(
        datapath_inst_iir_inst_mult_87_n35), .B(
        datapath_inst_iir_inst_mult_87_n40), .CI(
        datapath_inst_iir_inst_mult_87_n8), .CO(
        datapath_inst_iir_inst_mult_87_n7), .S(
        datapath_inst_iir_inst_ff_temp2[9]) );
  FA_X1 datapath_inst_iir_inst_mult_87_U7 ( .A(
        datapath_inst_iir_inst_mult_87_n29), .B(
        datapath_inst_iir_inst_mult_87_n34), .CI(
        datapath_inst_iir_inst_mult_87_n7), .CO(
        datapath_inst_iir_inst_mult_87_n6), .S(
        datapath_inst_iir_inst_ff_temp2[10]) );
  FA_X1 datapath_inst_iir_inst_mult_87_U6 ( .A(
        datapath_inst_iir_inst_mult_87_n25), .B(
        datapath_inst_iir_inst_mult_87_n28), .CI(
        datapath_inst_iir_inst_mult_87_n6), .CO(
        datapath_inst_iir_inst_mult_87_n5), .S(
        datapath_inst_iir_inst_ff_temp2[11]) );
  FA_X1 datapath_inst_iir_inst_mult_87_U5 ( .A(
        datapath_inst_iir_inst_mult_87_n21), .B(
        datapath_inst_iir_inst_mult_87_n24), .CI(
        datapath_inst_iir_inst_mult_87_n5), .CO(
        datapath_inst_iir_inst_mult_87_n4), .S(
        datapath_inst_iir_inst_ff_temp2[12]) );
  FA_X1 datapath_inst_iir_inst_mult_87_U4 ( .A(
        datapath_inst_iir_inst_mult_87_n20), .B(
        datapath_inst_iir_inst_mult_87_n19), .CI(
        datapath_inst_iir_inst_mult_87_n4), .CO(
        datapath_inst_iir_inst_mult_87_n3), .S(
        datapath_inst_iir_inst_ff_temp2[13]) );
  FA_X1 datapath_inst_iir_inst_mult_87_U3 ( .A(
        datapath_inst_iir_inst_mult_87_n18), .B(
        datapath_inst_iir_inst_mult_87_n17), .CI(
        datapath_inst_iir_inst_mult_87_n3), .CO(
        datapath_inst_iir_inst_mult_87_n2), .S(
        datapath_inst_iir_inst_ff_temp2[14]) );
  AOI22_X1 datapath_inst_reg_file1_inst_U21 ( .A1(DIN[7]), .A2(
        datapath_inst_reg_file1_inst_n11), .B1(datapath_inst_IIR_in[7]), .B2(
        datapath_inst_reg_file1_inst_n12), .ZN(
        datapath_inst_reg_file1_inst_n19) );
  INV_X1 datapath_inst_reg_file1_inst_U20 ( .A(
        datapath_inst_reg_file1_inst_n19), .ZN(datapath_inst_reg_file1_inst_n1) );
  AOI22_X1 datapath_inst_reg_file1_inst_U19 ( .A1(DIN[6]), .A2(
        datapath_inst_reg_file1_inst_n11), .B1(datapath_inst_IIR_in[6]), .B2(
        datapath_inst_reg_file1_inst_n12), .ZN(
        datapath_inst_reg_file1_inst_n18) );
  INV_X1 datapath_inst_reg_file1_inst_U18 ( .A(
        datapath_inst_reg_file1_inst_n18), .ZN(datapath_inst_reg_file1_inst_n2) );
  AOI22_X1 datapath_inst_reg_file1_inst_U17 ( .A1(DIN[5]), .A2(
        datapath_inst_reg_file1_inst_n11), .B1(datapath_inst_IIR_in[5]), .B2(
        datapath_inst_reg_file1_inst_n12), .ZN(
        datapath_inst_reg_file1_inst_n17) );
  INV_X1 datapath_inst_reg_file1_inst_U16 ( .A(
        datapath_inst_reg_file1_inst_n17), .ZN(datapath_inst_reg_file1_inst_n3) );
  AOI22_X1 datapath_inst_reg_file1_inst_U15 ( .A1(DIN[4]), .A2(
        datapath_inst_reg_file1_inst_n11), .B1(datapath_inst_IIR_in[4]), .B2(
        datapath_inst_reg_file1_inst_n12), .ZN(
        datapath_inst_reg_file1_inst_n16) );
  INV_X1 datapath_inst_reg_file1_inst_U14 ( .A(
        datapath_inst_reg_file1_inst_n16), .ZN(datapath_inst_reg_file1_inst_n4) );
  AOI22_X1 datapath_inst_reg_file1_inst_U13 ( .A1(DIN[3]), .A2(
        datapath_inst_reg_file1_inst_n11), .B1(datapath_inst_IIR_in[3]), .B2(
        datapath_inst_reg_file1_inst_n12), .ZN(
        datapath_inst_reg_file1_inst_n15) );
  INV_X1 datapath_inst_reg_file1_inst_U12 ( .A(
        datapath_inst_reg_file1_inst_n15), .ZN(datapath_inst_reg_file1_inst_n5) );
  AOI22_X1 datapath_inst_reg_file1_inst_U11 ( .A1(DIN[2]), .A2(
        datapath_inst_reg_file1_inst_n11), .B1(datapath_inst_IIR_in[2]), .B2(
        datapath_inst_reg_file1_inst_n12), .ZN(
        datapath_inst_reg_file1_inst_n14) );
  INV_X1 datapath_inst_reg_file1_inst_U10 ( .A(
        datapath_inst_reg_file1_inst_n14), .ZN(datapath_inst_reg_file1_inst_n6) );
  AOI22_X1 datapath_inst_reg_file1_inst_U9 ( .A1(DIN[1]), .A2(
        datapath_inst_reg_file1_inst_n11), .B1(datapath_inst_IIR_in[1]), .B2(
        datapath_inst_reg_file1_inst_n12), .ZN(
        datapath_inst_reg_file1_inst_n13) );
  INV_X1 datapath_inst_reg_file1_inst_U8 ( .A(datapath_inst_reg_file1_inst_n13), .ZN(datapath_inst_reg_file1_inst_n7) );
  AOI22_X1 datapath_inst_reg_file1_inst_U7 ( .A1(DIN[0]), .A2(
        datapath_inst_reg_file1_inst_n11), .B1(datapath_inst_IIR_in[0]), .B2(
        datapath_inst_reg_file1_inst_n12), .ZN(
        datapath_inst_reg_file1_inst_n10) );
  INV_X1 datapath_inst_reg_file1_inst_U6 ( .A(datapath_inst_reg_file1_inst_n10), .ZN(datapath_inst_reg_file1_inst_n8) );
  NOR2_X1 datapath_inst_reg_file1_inst_U5 ( .A1(VIN), .A2(
        datapath_inst_reg_file1_inst_n9), .ZN(datapath_inst_reg_file1_inst_n12) );
  INV_X1 datapath_inst_reg_file1_inst_U4 ( .A(RST_wire), .ZN(
        datapath_inst_reg_file1_inst_n9) );
  NOR2_X1 datapath_inst_reg_file1_inst_U3 ( .A1(
        datapath_inst_reg_file1_inst_n9), .A2(datapath_inst_reg_file1_inst_n12), .ZN(datapath_inst_reg_file1_inst_n11) );
  DFF_X1 datapath_inst_reg_file1_inst_registers_reg_0_ ( .D(
        datapath_inst_reg_file1_inst_n8), .CK(CLK), .Q(datapath_inst_IIR_in[0]) );
  DFF_X1 datapath_inst_reg_file1_inst_registers_reg_1_ ( .D(
        datapath_inst_reg_file1_inst_n7), .CK(CLK), .Q(datapath_inst_IIR_in[1]) );
  DFF_X1 datapath_inst_reg_file1_inst_registers_reg_2_ ( .D(
        datapath_inst_reg_file1_inst_n6), .CK(CLK), .Q(datapath_inst_IIR_in[2]) );
  DFF_X1 datapath_inst_reg_file1_inst_registers_reg_3_ ( .D(
        datapath_inst_reg_file1_inst_n5), .CK(CLK), .Q(datapath_inst_IIR_in[3]) );
  DFF_X1 datapath_inst_reg_file1_inst_registers_reg_4_ ( .D(
        datapath_inst_reg_file1_inst_n4), .CK(CLK), .Q(datapath_inst_IIR_in[4]) );
  DFF_X1 datapath_inst_reg_file1_inst_registers_reg_5_ ( .D(
        datapath_inst_reg_file1_inst_n3), .CK(CLK), .Q(datapath_inst_IIR_in[5]) );
  DFF_X1 datapath_inst_reg_file1_inst_registers_reg_6_ ( .D(
        datapath_inst_reg_file1_inst_n2), .CK(CLK), .Q(datapath_inst_IIR_in[6]) );
  DFF_X1 datapath_inst_reg_file1_inst_registers_reg_7_ ( .D(
        datapath_inst_reg_file1_inst_n1), .CK(CLK), .Q(datapath_inst_IIR_in[7]) );
  AOI22_X1 datapath_inst_reg_file2_inst_U21 ( .A1(datapath_inst_IIR_out[7]), 
        .A2(datapath_inst_reg_file2_inst_n28), .B1(DOUT[7]), .B2(
        datapath_inst_reg_file2_inst_n27), .ZN(
        datapath_inst_reg_file2_inst_n20) );
  INV_X1 datapath_inst_reg_file2_inst_U20 ( .A(
        datapath_inst_reg_file2_inst_n20), .ZN(datapath_inst_reg_file2_inst_n1) );
  AOI22_X1 datapath_inst_reg_file2_inst_U19 ( .A1(datapath_inst_IIR_out[6]), 
        .A2(datapath_inst_reg_file2_inst_n28), .B1(DOUT[6]), .B2(
        datapath_inst_reg_file2_inst_n27), .ZN(
        datapath_inst_reg_file2_inst_n21) );
  INV_X1 datapath_inst_reg_file2_inst_U18 ( .A(
        datapath_inst_reg_file2_inst_n21), .ZN(datapath_inst_reg_file2_inst_n2) );
  AOI22_X1 datapath_inst_reg_file2_inst_U17 ( .A1(datapath_inst_IIR_out[5]), 
        .A2(datapath_inst_reg_file2_inst_n28), .B1(DOUT[5]), .B2(
        datapath_inst_reg_file2_inst_n27), .ZN(
        datapath_inst_reg_file2_inst_n22) );
  INV_X1 datapath_inst_reg_file2_inst_U16 ( .A(
        datapath_inst_reg_file2_inst_n22), .ZN(datapath_inst_reg_file2_inst_n3) );
  AOI22_X1 datapath_inst_reg_file2_inst_U15 ( .A1(datapath_inst_IIR_out[4]), 
        .A2(datapath_inst_reg_file2_inst_n28), .B1(DOUT[4]), .B2(
        datapath_inst_reg_file2_inst_n27), .ZN(
        datapath_inst_reg_file2_inst_n23) );
  INV_X1 datapath_inst_reg_file2_inst_U14 ( .A(
        datapath_inst_reg_file2_inst_n23), .ZN(datapath_inst_reg_file2_inst_n4) );
  AOI22_X1 datapath_inst_reg_file2_inst_U13 ( .A1(datapath_inst_IIR_out[3]), 
        .A2(datapath_inst_reg_file2_inst_n28), .B1(DOUT[3]), .B2(
        datapath_inst_reg_file2_inst_n27), .ZN(
        datapath_inst_reg_file2_inst_n24) );
  INV_X1 datapath_inst_reg_file2_inst_U12 ( .A(
        datapath_inst_reg_file2_inst_n24), .ZN(datapath_inst_reg_file2_inst_n5) );
  AOI22_X1 datapath_inst_reg_file2_inst_U11 ( .A1(datapath_inst_IIR_out[2]), 
        .A2(datapath_inst_reg_file2_inst_n28), .B1(DOUT[2]), .B2(
        datapath_inst_reg_file2_inst_n27), .ZN(
        datapath_inst_reg_file2_inst_n25) );
  INV_X1 datapath_inst_reg_file2_inst_U10 ( .A(
        datapath_inst_reg_file2_inst_n25), .ZN(datapath_inst_reg_file2_inst_n6) );
  AOI22_X1 datapath_inst_reg_file2_inst_U9 ( .A1(datapath_inst_IIR_out[1]), 
        .A2(datapath_inst_reg_file2_inst_n28), .B1(DOUT[1]), .B2(
        datapath_inst_reg_file2_inst_n27), .ZN(
        datapath_inst_reg_file2_inst_n26) );
  INV_X1 datapath_inst_reg_file2_inst_U8 ( .A(datapath_inst_reg_file2_inst_n26), .ZN(datapath_inst_reg_file2_inst_n7) );
  AOI22_X1 datapath_inst_reg_file2_inst_U7 ( .A1(datapath_inst_IIR_out[0]), 
        .A2(datapath_inst_reg_file2_inst_n28), .B1(DOUT[0]), .B2(
        datapath_inst_reg_file2_inst_n27), .ZN(
        datapath_inst_reg_file2_inst_n29) );
  INV_X1 datapath_inst_reg_file2_inst_U6 ( .A(datapath_inst_reg_file2_inst_n29), .ZN(datapath_inst_reg_file2_inst_n8) );
  INV_X1 datapath_inst_reg_file2_inst_U5 ( .A(RST_wire), .ZN(
        datapath_inst_reg_file2_inst_n9) );
  NOR2_X1 datapath_inst_reg_file2_inst_U4 ( .A1(En_out_wire), .A2(
        datapath_inst_reg_file2_inst_n9), .ZN(datapath_inst_reg_file2_inst_n27) );
  NOR2_X1 datapath_inst_reg_file2_inst_U3 ( .A1(
        datapath_inst_reg_file2_inst_n9), .A2(datapath_inst_reg_file2_inst_n27), .ZN(datapath_inst_reg_file2_inst_n28) );
  DFF_X1 datapath_inst_reg_file2_inst_registers_reg_0_ ( .D(
        datapath_inst_reg_file2_inst_n8), .CK(CLK), .Q(DOUT[0]) );
  DFF_X1 datapath_inst_reg_file2_inst_registers_reg_1_ ( .D(
        datapath_inst_reg_file2_inst_n7), .CK(CLK), .Q(DOUT[1]) );
  DFF_X1 datapath_inst_reg_file2_inst_registers_reg_2_ ( .D(
        datapath_inst_reg_file2_inst_n6), .CK(CLK), .Q(DOUT[2]) );
  DFF_X1 datapath_inst_reg_file2_inst_registers_reg_3_ ( .D(
        datapath_inst_reg_file2_inst_n5), .CK(CLK), .Q(DOUT[3]) );
  DFF_X1 datapath_inst_reg_file2_inst_registers_reg_4_ ( .D(
        datapath_inst_reg_file2_inst_n4), .CK(CLK), .Q(DOUT[4]) );
  DFF_X1 datapath_inst_reg_file2_inst_registers_reg_5_ ( .D(
        datapath_inst_reg_file2_inst_n3), .CK(CLK), .Q(DOUT[5]) );
  DFF_X1 datapath_inst_reg_file2_inst_registers_reg_6_ ( .D(
        datapath_inst_reg_file2_inst_n2), .CK(CLK), .Q(DOUT[6]) );
  DFF_X1 datapath_inst_reg_file2_inst_registers_reg_7_ ( .D(
        datapath_inst_reg_file2_inst_n1), .CK(CLK), .Q(DOUT[7]) );
  AND2_X1 datapath_inst_my_ff_inst_U3 ( .A1(RST_wire), .A2(En_out_wire), .ZN(
        datapath_inst_my_ff_inst_N2) );
  DFF_X1 datapath_inst_my_ff_inst_data_reg ( .D(datapath_inst_my_ff_inst_N2), 
        .CK(CLK), .Q(VOUT) );
  NOR3_X1 control_unit_inst_U22 ( .A1(control_unit_inst_current_state[0]), 
        .A2(control_unit_inst_current_state[2]), .A3(
        control_unit_inst_current_state[1]), .ZN(control_unit_inst_n2) );
  INV_X1 control_unit_inst_U21 ( .A(control_unit_inst_n2), .ZN(
        control_unit_inst_n9) );
  AOI22_X1 control_unit_inst_U20 ( .A1(control_unit_inst_N40), .A2(
        control_unit_inst_n9), .B1(control_unit_inst_n2), .B2(RST_n), .ZN(
        control_unit_inst_n3) );
  INV_X1 control_unit_inst_U19 ( .A(control_unit_inst_n3), .ZN(
        control_unit_inst_n8) );
  AND2_X1 control_unit_inst_U18 ( .A1(VIN), .A2(RST_n), .ZN(
        control_unit_inst_N41) );
  INV_X1 control_unit_inst_U17 ( .A(RST_n), .ZN(control_unit_inst_n11) );
  AOI21_X1 control_unit_inst_U16 ( .B1(control_unit_inst_n1), .B2(
        control_unit_inst_current_state[0]), .A(
        control_unit_inst_current_state[2]), .ZN(control_unit_inst_n5) );
  INV_X1 control_unit_inst_U15 ( .A(control_unit_inst_N41), .ZN(
        control_unit_inst_n10) );
  OAI21_X1 control_unit_inst_U14 ( .B1(control_unit_inst_n10), .B2(
        control_unit_inst_n5), .A(control_unit_inst_n4), .ZN(
        control_unit_inst_next_state[1]) );
  OAI21_X1 control_unit_inst_U13 ( .B1(control_unit_inst_n7), .B2(
        control_unit_inst_n11), .A(control_unit_inst_n6), .ZN(
        control_unit_inst_next_state[2]) );
  NOR2_X1 control_unit_inst_U12 ( .A1(VIN), .A2(control_unit_inst_n11), .ZN(
        control_unit_inst_N40) );
  NAND2_X1 control_unit_inst_U11 ( .A1(control_unit_inst_current_state[1]), 
        .A2(control_unit_inst_n13), .ZN(control_unit_inst_n18) );
  NOR2_X1 control_unit_inst_U10 ( .A1(control_unit_inst_n7), .A2(
        control_unit_inst_n18), .ZN(En_out_wire) );
  OAI21_X1 control_unit_inst_U9 ( .B1(control_unit_inst_current_state[1]), 
        .B2(control_unit_inst_n13), .A(control_unit_inst_n18), .ZN(
        control_unit_inst_n17) );
  XNOR2_X1 control_unit_inst_U7 ( .A(control_unit_inst_n17), .B(
        control_unit_inst_n7), .ZN(control_unit_inst_n16) );
  AOI22_X1 control_unit_inst_U5 ( .A1(control_unit_inst_current_state[0]), 
        .A2(control_unit_inst_current_state[1]), .B1(control_unit_inst_n17), 
        .B2(control_unit_inst_current_state[2]), .ZN(control_unit_inst_n15) );
  XNOR2_X1 control_unit_inst_U4 ( .A(control_unit_inst_n15), .B(
        control_unit_inst_n16), .ZN(RST_wire) );
  OAI21_X1 control_unit_inst_U3 ( .B1(control_unit_inst_current_state[0]), 
        .B2(control_unit_inst_n7), .A(control_unit_inst_n18), .ZN(En_iir_wire)
         );
  DFF_X1 control_unit_inst_current_state_reg_2_ ( .D(
        control_unit_inst_next_state[2]), .CK(CLK), .Q(
        control_unit_inst_current_state[2]), .QN(control_unit_inst_n7) );
  NAND3_X1 control_unit_inst_U8 ( .A1(control_unit_inst_N41), .A2(
        control_unit_inst_n7), .A3(control_unit_inst_current_state[1]), .ZN(
        control_unit_inst_n6) );
  NAND3_X1 control_unit_inst_U6 ( .A1(control_unit_inst_current_state[1]), 
        .A2(control_unit_inst_n5), .A3(control_unit_inst_N40), .ZN(
        control_unit_inst_n4) );
  DFF_X1 control_unit_inst_current_state_reg_0_ ( .D(control_unit_inst_n8), 
        .CK(CLK), .Q(control_unit_inst_current_state[0]), .QN(
        control_unit_inst_n13) );
  DFF_X1 control_unit_inst_current_state_reg_1_ ( .D(
        control_unit_inst_next_state[1]), .CK(CLK), .Q(
        control_unit_inst_current_state[1]), .QN(control_unit_inst_n1) );
endmodule
