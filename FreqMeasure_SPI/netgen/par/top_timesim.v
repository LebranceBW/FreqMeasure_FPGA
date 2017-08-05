////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_timesim.v
// /___/   /\     Timestamp: Fri Aug 04 16:00:00 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf top.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim top.ncd top_timesim.v 
// Device	: 6slx9tqg144-3 (PRODUCTION 1.23 2013-10-13)
// Input file	: top.ncd
// Output file	: H:\ISEWorkspace\FreqMeasure_SPI\FreqMeasure_SPI\netgen\par\top_timesim.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : G:\ISE\14.7\ISE_DS\ISE\
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

module top (
  clk, sigClk, rst, MOSI, CS, SCK, sclk, sendEnable, BUSY, data, Status
);
  input clk;
  input sigClk;
  input rst;
  output MOSI;
  output CS;
  output SCK;
  output sclk;
  output sendEnable;
  output BUSY;
  output [7 : 0] data;
  output [1 : 0] Status;
  wire \sigClk_BUFGP/IBUFG_0 ;
  wire sigClk_BUFGP;
  wire \clk_BUFGP/IBUFG_0 ;
  wire clk_BUFGP;
  wire \u2/newSend_1050 ;
  wire \u2/busy_1052 ;
  wire \u2/newData_1053 ;
  wire rst_IBUF_0;
  wire \u3/_n0101_inv ;
  wire \u3/clr ;
  wire \u3/_n0109_inv_0 ;
  wire \u3/Status_FSM_FFd2_1065 ;
  wire \u3/soft_Clr_1066 ;
  wire \u1/sclk_1070 ;
  wire \u3/sendEnable_1073 ;
  wire \u3/_n0106_inv1_cepot_1074 ;
  wire \u3/Status_FSM_FFd1_1075 ;
  wire \u3/baseOvf_1076 ;
  wire \u3/sigOvf_1078 ;
  wire \u3/Result<0>1_0 ;
  wire \u3/Result<1>1_0 ;
  wire \u3/Result<2>1_0 ;
  wire \u3/Result<3>1_0 ;
  wire \u3/Result<4>1_0 ;
  wire \u3/Result<5>1_0 ;
  wire \u3/Result<6>_0 ;
  wire \u3/Result<7>_0 ;
  wire \u3/Result<8>_0 ;
  wire \u3/Result<9>_0 ;
  wire \u3/Result<10>_0 ;
  wire \u1/n0001_inv ;
  wire \u3/Result<11>_0 ;
  wire \u3/Result<12>_0 ;
  wire \u3/Result<20>_0 ;
  wire \u3/Result<13>_0 ;
  wire \u3/Result<21>_0 ;
  wire \u3/Result<14>_0 ;
  wire \u3/Result<22>_0 ;
  wire \u3/Result<15>_0 ;
  wire \u3/Result<23>_0 ;
  wire \u3/Result<16>_0 ;
  wire \u3/Result<17>_0 ;
  wire \u3/Result<18>_0 ;
  wire \u3/Result<19>_0 ;
  wire \u3/_n0090 ;
  wire \u3/data<3>_0 ;
  wire \u2/_n0121_inv1 ;
  wire \u2/sclkCache_1140 ;
  wire \u2/SCK_1141 ;
  wire \u3/Status_FSM_FFd1-In1_1142 ;
  wire \u2/PWR_3_o_sendCnt[3]_sub_9_OUT<2> ;
  wire \u2/Mmux_PWR_3_o_dataLock[7]_Mux_9_o_4_1144 ;
  wire \u2/MOSI_1145 ;
  wire \u2/newSend_PWR_3_o_MUX_25_o ;
  wire \u3/Status_FSM_FFd2-In1_1156 ;
  wire \u3/Status_FSM_FFd2-In2_1157 ;
  wire \u3/Status_FSM_FFd2-In3_1160 ;
  wire \u3/Status_FSM_FFd2-In4_1162 ;
  wire \u3/_n0106_inv1_rstpot_1164 ;
  wire \u3/_n0106_inv1_cepot1_1165 ;
  wire \u3/Result<25>_0 ;
  wire \u3/Result<24>_0 ;
  wire \u3/Status_FSM_FFd2-In8_1168 ;
  wire \u3/Status_FSM_FFd2-In7_1169 ;
  wire \u3/Status_FSM_FFd2-In6_1170 ;
  wire \u3/baseCount[31]_PWR_5_o_equal_1_o<31> ;
  wire \u3/baseCount[31]_PWR_5_o_equal_1_o<31>1_1177 ;
  wire \u3/baseCount[31]_PWR_5_o_equal_1_o<31>2_1178 ;
  wire \u3/baseCount[31]_PWR_5_o_equal_1_o<31>4_1179 ;
  wire \u3/baseCount[31]_PWR_5_o_equal_1_o<31>5_1180 ;
  wire \u3/baseCount[31]_PWR_5_o_equal_1_o<31>3_1181 ;
  wire \u3/Result<29>_0 ;
  wire \u3/Result<28>_0 ;
  wire \u2/_n0103_inv ;
  wire \u2/cs_1185 ;
  wire \u3/Result<31>_0 ;
  wire \u3/Result<30>_0 ;
  wire \u3/Result<27>_0 ;
  wire \u3/Result<26>_0 ;
  wire \u3/Mcount_baseCount_cy[3] ;
  wire \u3/Mcount_baseCount_cy[7] ;
  wire \u3/Mcount_baseCount_cy[11] ;
  wire \u3/Mcount_baseCount_cy[15] ;
  wire \u3/Mcount_baseCount_cy[19] ;
  wire \u3/Mcount_baseCount_cy[23] ;
  wire \u3/Mcount_baseCount_cy[27] ;
  wire N6;
  wire N4;
  wire \u3/count[2]_X_4_o_wide_mux_15_OUT<3>1_1199 ;
  wire \u3/count[2]_X_4_o_wide_mux_15_OUT<2>1_1200 ;
  wire N2;
  wire N10;
  wire N12;
  wire N8;
  wire \u3/Status_FSM_FFd1-In2_1205 ;
  wire \u3/Status_FSM_FFd2-In5_1206 ;
  wire \u3/sigCount[5]_PWR_5_o_equal_7_o ;
  wire \u2/Mmux_PWR_3_o_dataLock[7]_Mux_9_o_3_1208 ;
  wire \u2/riseSigCache_1209 ;
  wire N16;
  wire \u1/Mcount_clkCnt_xor<3>11_1211 ;
  wire \u3/Result<3>1_19 ;
  wire \u3/baseCount<3>_rt_17 ;
  wire \ProtoComp48.CYINITGND.0 ;
  wire \u3/Result<2>1_13 ;
  wire \u3/baseCount<1>_rt_10 ;
  wire \u3/baseCount<2>_rt_9 ;
  wire \u3/Result<1>1 ;
  wire \u3/Result<0>1 ;
  wire \clk_BUFGP/IBUFG_186 ;
  wire \sigClk_BUFGP/IBUFG_177 ;
  wire rst_IBUF_215;
  wire \u3/count[2]_X_4_o_wide_mux_15_OUT<0>_296 ;
  wire \u3/count[2]_X_4_o_wide_mux_15_OUT<6>_313 ;
  wire \u3/baseCount<31>_pack_3 ;
  wire \u3/baseCount_31_dpot_354 ;
  wire \u3/baseCount_30_dpot_340 ;
  wire \u3/count[2]_X_4_o_wide_mux_15_OUT<3> ;
  wire \u3/count[2]_X_4_o_wide_mux_15_OUT<2> ;
  wire \u3/count[2]_X_4_o_wide_mux_15_OUT<1>_244 ;
  wire \u3/count[2]_X_4_o_wide_mux_15_OUT<4>_239 ;
  wire N6_pack_5;
  wire \u3/baseCount<13>_rt_85 ;
  wire \u3/baseCount<12>_rt_82 ;
  wire \u3/baseCount<15>_rt_81 ;
  wire \u3/baseCount<14>_rt_75 ;
  wire \u3/baseCount<5>_rt_41 ;
  wire \u3/baseCount<4>_rt_38 ;
  wire \u3/baseCount<7>_rt_37 ;
  wire \u3/baseCount<6>_rt_31 ;
  wire \u3/Result<4>1_30 ;
  wire \u3/Result<5>1_29 ;
  wire \u3/baseCount<9>_rt_63 ;
  wire \u3/baseCount<8>_rt_60 ;
  wire \u3/baseCount<11>_rt_59 ;
  wire \u3/baseCount<10>_rt_53 ;
  wire \u3/baseCount<25>_rt_151 ;
  wire \u3/baseCount<24>_rt_148 ;
  wire \u3/baseCount<27>_rt_147 ;
  wire \u3/baseCount<26>_rt_141 ;
  wire \u3/baseCount<21>_rt_129 ;
  wire \u3/baseCount<20>_rt_126 ;
  wire \u3/baseCount<23>_rt_125 ;
  wire \u3/baseCount<22>_rt_119 ;
  wire \u3/baseCount<30>_rt_172 ;
  wire \u3/baseCount<31>_rt_170 ;
  wire \u3/baseCount<28>_rt_162 ;
  wire \u3/baseCount<29>_rt_160 ;
  wire \u3/baseCount<17>_rt_107 ;
  wire \u3/baseCount<16>_rt_104 ;
  wire \u3/baseCount<19>_rt_103 ;
  wire \u3/baseCount<18>_rt_97 ;
  wire \u3/baseCount_23_dpot_646 ;
  wire \u3/baseCount_22_dpot_638 ;
  wire \u3/baseCount_20_dpot_616 ;
  wire \u3/baseCount_21_dpot_613 ;
  wire \u3/baseCount_3_dpot_471 ;
  wire \u3/baseCount_2_dpot_463 ;
  wire \u3/baseCount_0_dpot_441 ;
  wire \u3/baseCount_1_dpot_438 ;
  wire \u3/baseCount_7_dpot_506 ;
  wire \u3/baseCount_6_dpot_498 ;
  wire \u3/baseCount_4_dpot_476 ;
  wire \u3/baseCount_5_dpot_473 ;
  wire \u3/baseCount_11_dpot_541 ;
  wire \u3/baseCount_10_dpot_533 ;
  wire \u3/baseCount_8_dpot_511 ;
  wire \u3/baseCount_9_dpot_508 ;
  wire \u3/baseOvf_dpot_433 ;
  wire \u3/baseCount_15_dpot_576 ;
  wire \u3/baseCount_14_dpot_568 ;
  wire \u3/baseCount_12_dpot_546 ;
  wire \u3/baseCount_13_dpot_543 ;
  wire \u3/count[2]_X_4_o_wide_mux_15_OUT<5>_381 ;
  wire \u3/count[2]_X_4_o_wide_mux_15_OUT<7>_376 ;
  wire N12_pack_5;
  wire \u3/baseCount_19_dpot_611 ;
  wire \u3/baseCount_18_dpot_603 ;
  wire \u3/baseCount_16_dpot_581 ;
  wire \u3/baseCount_17_dpot_578 ;
  wire \u3/baseCount<25>_pack_4 ;
  wire \u3/baseCount_24_dpot_669 ;
  wire \u3/baseCount_26_dpot_666 ;
  wire \u3/baseCount_27_dpot_664 ;
  wire \u3/baseCount_25_dpot_663 ;
  wire \u3/baseCount<27>_pack_6 ;
  wire \u3/baseCount_28_dpot_655 ;
  wire \u3/baseCount<29>_pack_8 ;
  wire \u3/baseCount_29_dpot_650 ;
  wire \u3/sigCount<1>_pack_11 ;
  wire \u3/sigCount<4>_pack_13 ;
  wire \u3/Result<0>2 ;
  wire \u3/count<1>_pack_3 ;
  wire \u3/Result<1>2 ;
  wire \u3/Result<2>2 ;
  wire \u3/Status[1]_GND_5_o_equal_28_o ;
  wire \u2/MOSI_rstpot_833 ;
  wire \u3/Status_FSM_FFd1-In ;
  wire \u3/Status_FSM_FFd2-In ;
  wire \u3/sendEnable_rstpot_740 ;
  wire \u3/_n0109_inv ;
  wire N16_pack_13;
  wire \u2/cs_rstpot_909 ;
  wire N19;
  wire N18;
  wire \u2/newSend_rstpot_884 ;
  wire \u1/clkCnt<4>_pack_11 ;
  wire \u2/GND_3_o_sendCnt[3]_mux_15_OUT<3> ;
  wire \u2/GND_3_o_sendCnt[3]_mux_15_OUT<2> ;
  wire \u2/GND_3_o_sendCnt[3]_mux_15_OUT<0> ;
  wire \u2/sendCnt<1>_pack_4 ;
  wire \u2/sendCnt<2>_pack_6 ;
  wire \u2/GND_3_o_sendCnt[3]_mux_15_OUT<1> ;
  wire \u2/busy_rstpot_937 ;
  wire \u2/busy_pack_7 ;
  wire \u2/SCK_rstpot_926 ;
  wire \u1/clkCnt<2>_pack_2 ;
  wire \u2/riseSigCache_riseSig_AND_1_o ;
  wire \u2/riseSigCache_pack_1 ;
  wire \u3/sendEnable_rt_876 ;
  wire \u1/sclk_rstpot_1019 ;
  wire \NlwBufferSignal_sigClk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_BUSY_OBUF/I ;
  wire \NlwBufferSignal_CS_OBUF/I ;
  wire \NlwBufferSignal_data_2_OBUF/I ;
  wire \NlwBufferSignal_data_1_OBUF/I ;
  wire \NlwBufferSignal_data_3_OBUF/I ;
  wire \NlwBufferSignal_data_0_OBUF/I ;
  wire \NlwBufferSignal_Status_1_OBUF/I ;
  wire \NlwBufferSignal_sendEnable_OBUF/I ;
  wire \NlwBufferSignal_sclk_OBUF/I ;
  wire \NlwBufferSignal_u3/data_0/CLK ;
  wire \NlwBufferSignal_Status_0_OBUF/I ;
  wire \NlwBufferSignal_u3/data_6/CLK ;
  wire \NlwBufferSignal_data_7_OBUF/I ;
  wire \NlwBufferSignal_data_5_OBUF/I ;
  wire \NlwBufferSignal_u3/baseCount_30/CLK ;
  wire \NlwBufferSignal_u3/baseCount_31/CLK ;
  wire \NlwBufferSignal_u3/data_2/CLK ;
  wire \NlwBufferSignal_u3/data_3/CLK ;
  wire \NlwBufferSignal_SCK_OBUF/I ;
  wire \NlwBufferSignal_data_6_OBUF/I ;
  wire \NlwBufferSignal_u3/data_1/CLK ;
  wire \NlwBufferSignal_u3/data_4/CLK ;
  wire \NlwBufferSignal_data_4_OBUF/I ;
  wire \NlwBufferSignal_MOSI_OBUF/I ;
  wire \NlwBufferSignal_u3/baseCount_23/CLK ;
  wire \NlwBufferSignal_u3/baseCount_22/CLK ;
  wire \NlwBufferSignal_u3/baseCount_21/CLK ;
  wire \NlwBufferSignal_u3/baseCount_20/CLK ;
  wire \NlwBufferSignal_u3/baseCount_3/CLK ;
  wire \NlwBufferSignal_u3/baseCount_2/CLK ;
  wire \NlwBufferSignal_u3/baseCount_1/CLK ;
  wire \NlwBufferSignal_u3/baseCount_0/CLK ;
  wire \NlwBufferSignal_u3/baseCount_7/CLK ;
  wire \NlwBufferSignal_u3/baseCount_6/CLK ;
  wire \NlwBufferSignal_u3/baseCount_5/CLK ;
  wire \NlwBufferSignal_u3/baseCount_4/CLK ;
  wire \NlwBufferSignal_u3/baseCount_11/CLK ;
  wire \NlwBufferSignal_u3/baseCount_10/CLK ;
  wire \NlwBufferSignal_u3/baseCount_9/CLK ;
  wire \NlwBufferSignal_u3/baseCount_8/CLK ;
  wire \NlwBufferSignal_u3/baseOvf/CLK ;
  wire \NlwBufferSignal_u3/baseCount_15/CLK ;
  wire \NlwBufferSignal_u3/baseCount_14/CLK ;
  wire \NlwBufferSignal_u3/baseCount_13/CLK ;
  wire \NlwBufferSignal_u3/baseCount_12/CLK ;
  wire \NlwBufferSignal_u3/data_5/CLK ;
  wire \NlwBufferSignal_u3/data_7/CLK ;
  wire \NlwBufferSignal_u3/baseCount_19/CLK ;
  wire \NlwBufferSignal_u3/baseCount_18/CLK ;
  wire \NlwBufferSignal_u3/baseCount_17/CLK ;
  wire \NlwBufferSignal_u3/baseCount_16/CLK ;
  wire \NlwBufferSignal_u3/baseCount_28/CLK ;
  wire \NlwBufferSignal_u3/baseCount_29/CLK ;
  wire \NlwBufferSignal_u3/baseCount_26/CLK ;
  wire \NlwBufferSignal_u3/baseCount_27/CLK ;
  wire \NlwBufferSignal_u3/baseCount_24/CLK ;
  wire \NlwBufferSignal_u3/baseCount_25/CLK ;
  wire \NlwBufferSignal_u3/sigCount_5/CLK ;
  wire \NlwBufferSignal_u3/sigCount_3/CLK ;
  wire \NlwBufferSignal_u3/sigCount_4/CLK ;
  wire \NlwBufferSignal_u3/sigCount_2/CLK ;
  wire \NlwBufferSignal_u3/sigCount_1/CLK ;
  wire \NlwBufferSignal_u3/sigCount_0/CLK ;
  wire \NlwBufferSignal_u3/count_2/CLK ;
  wire \NlwBufferSignal_u3/count_1/CLK ;
  wire \NlwBufferSignal_u3/count_0/CLK ;
  wire \NlwBufferSignal_u3/soft_Clr/CLK ;
  wire \NlwBufferSignal_u3/sigOvf/CLK ;
  wire \NlwBufferSignal_u2/MOSI/CLK ;
  wire \NlwBufferSignal_u3/Status_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_u3/Status_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_u3/sendEnable/CLK ;
  wire \NlwBufferSignal_u2/dataLock_3/CLK ;
  wire \NlwBufferSignal_u2/dataLock_3/IN ;
  wire \NlwBufferSignal_u2/dataLock_2/CLK ;
  wire \NlwBufferSignal_u2/dataLock_2/IN ;
  wire \NlwBufferSignal_u2/dataLock_1/CLK ;
  wire \NlwBufferSignal_u2/dataLock_1/IN ;
  wire \NlwBufferSignal_u2/dataLock_0/CLK ;
  wire \NlwBufferSignal_u2/dataLock_0/IN ;
  wire \NlwBufferSignal_u2/dataLock_7/CLK ;
  wire \NlwBufferSignal_u2/dataLock_7/IN ;
  wire \NlwBufferSignal_u2/dataLock_6/CLK ;
  wire \NlwBufferSignal_u2/dataLock_6/IN ;
  wire \NlwBufferSignal_u2/dataLock_5/CLK ;
  wire \NlwBufferSignal_u2/dataLock_5/IN ;
  wire \NlwBufferSignal_u2/dataLock_4/CLK ;
  wire \NlwBufferSignal_u2/dataLock_4/IN ;
  wire \NlwBufferSignal_u2/newSend/CLK ;
  wire \NlwBufferSignal_u2/cs/CLK ;
  wire \NlwBufferSignal_u2/sclkCache/CLK ;
  wire \NlwBufferSignal_u2/sclkCache/IN ;
  wire \NlwBufferSignal_u1/clkCnt_5/CLK ;
  wire \NlwBufferSignal_u1/clkCnt_3/CLK ;
  wire \NlwBufferSignal_u1/clkCnt_4/CLK ;
  wire \NlwBufferSignal_u1/clkCnt_1/CLK ;
  wire \NlwBufferSignal_u1/clkCnt_0/CLK ;
  wire \NlwBufferSignal_u2/sendCnt_3/CLK ;
  wire \NlwBufferSignal_u2/sendCnt_2/CLK ;
  wire \NlwBufferSignal_u2/sendCnt_0/CLK ;
  wire \NlwBufferSignal_u2/sendCnt_1/CLK ;
  wire \NlwBufferSignal_u2/SCK/CLK ;
  wire \NlwBufferSignal_u2/busy/CLK ;
  wire \NlwBufferSignal_u1/clkCnt_2/CLK ;
  wire \NlwBufferSignal_u1/clkCnt_6/CLK ;
  wire \NlwBufferSignal_u2/newData/CLK ;
  wire \NlwBufferSignal_u2/riseSigCache/CLK ;
  wire \NlwBufferSignal_u1/sclk/CLK ;
  wire \NLW_N0_28.D5LUT_O_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_29.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_30.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1.A5LUT_O_UNCONNECTED ;
  wire GND;
  wire \NLW_N0_16.D5LUT_O_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_17.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_18.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_19.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_24.D5LUT_O_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_25.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_26.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_27.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_20.D5LUT_O_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_21.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_22.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_23.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_4.D5LUT_O_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<27>_CO[0]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<27>_CO[1]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<27>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_5.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_6.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_7.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_8.D5LUT_O_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<23>_CO[0]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<23>_CO[1]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<23>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_9.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_10.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_11.A5LUT_O_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_xor<31>_CO[0]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_xor<31>_CO[1]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_xor<31>_CO[2]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_xor<31>_CO[3]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_xor<31>_DI[3]_UNCONNECTED ;
  wire \NLW_N0.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_2.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_3.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_12.D5LUT_O_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<19>_CO[0]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<19>_CO[1]_UNCONNECTED ;
  wire \NLW_u3/Mcount_baseCount_cy<19>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_13.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_14.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_15.A5LUT_O_UNCONNECTED ;
  wire VCC;
  wire [3 : 0] \u2/sendCnt ;
  wire [5 : 0] \u3/sigCount ;
  wire [2 : 0] \u3/count ;
  wire [6 : 0] \u1/clkCnt ;
  wire [31 : 0] \u3/baseCount ;
  wire [7 : 0] \u3/data ;
  wire [7 : 0] \u2/dataLock ;
  wire [0 : 0] \u3/Mcount_baseCount_lut ;
  wire [31 : 0] \u3/Result ;
  wire [6 : 0] Result;
  initial $sdf_annotate("netgen/par/top_timesim.sdf");
  X_BUF   \u3/Mcount_baseCount_cy<3>/u3/Mcount_baseCount_cy<3>_DMUX_Delay  (
    .I(\u3/Result<3>1_19 ),
    .O(\u3/Result<3>1_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<3>/u3/Mcount_baseCount_cy<3>_CMUX_Delay  (
    .I(\u3/Result<2>1_13 ),
    .O(\u3/Result<2>1_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<3>/u3/Mcount_baseCount_cy<3>_BMUX_Delay  (
    .I(\u3/Result<1>1 ),
    .O(\u3/Result<1>1_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<3>/u3/Mcount_baseCount_cy<3>_AMUX_Delay  (
    .I(\u3/Result<0>1 ),
    .O(\u3/Result<0>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u3/baseCount<3>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/baseCount [3]),
    .ADR5(1'b1),
    .O(\u3/baseCount<3>_rt_17 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 32'h00000000 ))
  \N0_28.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_28.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X6Y18" ))
  \ProtoComp48.CYINITGND  (
    .O(\ProtoComp48.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y18" ))
  \u3/Mcount_baseCount_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp48.CYINITGND.0 ),
    .CO({\u3/Mcount_baseCount_cy[3] , \NLW_u3/Mcount_baseCount_cy<3>_CO[2]_UNCONNECTED , \NLW_u3/Mcount_baseCount_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u3/Mcount_baseCount_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\u3/Result<3>1_19 , \u3/Result<2>1_13 , \u3/Result<1>1 , \u3/Result<0>1 }),
    .S({\u3/baseCount<3>_rt_17 , \u3/baseCount<2>_rt_9 , \u3/baseCount<1>_rt_10 , \u3/Mcount_baseCount_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [2]),
    .ADR5(1'b1),
    .O(\u3/baseCount<2>_rt_9 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 32'h00000000 ))
  \N0_29.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_29.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [1]),
    .ADR5(1'b1),
    .O(\u3/baseCount<1>_rt_10 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 32'h00000000 ))
  \N0_30.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_30.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 64'h3333333333333333 ))
  \u3/Mcount_baseCount_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u3/baseCount [0]),
    .ADR5(1'b1),
    .O(\u3/Mcount_baseCount_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 32'hFFFFFFFF ))
  \N1.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1.A5LUT_O_UNCONNECTED )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y8" ))
  \sigClk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_sigClk_BUFGP/BUFG/IN ),
    .O(sigClk_BUFGP)
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_OPAD #(
    .LOC ( "PAD172" ))
  BUSY_94 (
    .PAD(BUSY)
  );
  X_OBUF #(
    .LOC ( "PAD172" ))
  BUSY_OBUF (
    .I(\NlwBufferSignal_BUSY_OBUF/I ),
    .O(BUSY)
  );
  X_OPAD #(
    .LOC ( "PAD81" ))
  CS_107 (
    .PAD(CS)
  );
  X_OBUF #(
    .LOC ( "PAD81" ))
  CS_OBUF (
    .I(\NlwBufferSignal_CS_OBUF/I ),
    .O(CS)
  );
  X_IPAD #(
    .LOC ( "PAD120" ))
  clk_101 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_186 ),
    .I(clk)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \ProtoComp51.IMUX.1  (
    .I(\clk_BUFGP/IBUFG_186 ),
    .O(\clk_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD148" ))
  \data<2>  (
    .PAD(data[2])
  );
  X_OBUF #(
    .LOC ( "PAD148" ))
  data_2_OBUF (
    .I(\NlwBufferSignal_data_2_OBUF/I ),
    .O(data[2])
  );
  X_OPAD #(
    .LOC ( "PAD147" ))
  \data<1>  (
    .PAD(data[1])
  );
  X_OBUF #(
    .LOC ( "PAD147" ))
  data_1_OBUF (
    .I(\NlwBufferSignal_data_1_OBUF/I ),
    .O(data[1])
  );
  X_OPAD #(
    .LOC ( "PAD159" ))
  \data<3>  (
    .PAD(data[3])
  );
  X_OBUF #(
    .LOC ( "PAD159" ))
  data_3_OBUF (
    .I(\NlwBufferSignal_data_3_OBUF/I ),
    .O(data[3])
  );
  X_OPAD #(
    .LOC ( "PAD145" ))
  \data<0>  (
    .PAD(data[0])
  );
  X_OBUF #(
    .LOC ( "PAD145" ))
  data_0_OBUF (
    .I(\NlwBufferSignal_data_0_OBUF/I ),
    .O(data[0])
  );
  X_IPAD #(
    .LOC ( "PAD80" ))
  sigClk_88 (
    .PAD(sigClk)
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \sigClk_BUFGP/IBUFG  (
    .O(\sigClk_BUFGP/IBUFG_177 ),
    .I(sigClk)
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \ProtoComp51.IMUX  (
    .I(\sigClk_BUFGP/IBUFG_177 ),
    .O(\sigClk_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD174" ))
  \Status<1>  (
    .PAD(Status[1])
  );
  X_OBUF #(
    .LOC ( "PAD174" ))
  Status_1_OBUF (
    .I(\NlwBufferSignal_Status_1_OBUF/I ),
    .O(Status[1])
  );
  X_OPAD #(
    .LOC ( "PAD170" ))
  sendEnable_140 (
    .PAD(sendEnable)
  );
  X_OBUF #(
    .LOC ( "PAD170" ))
  sendEnable_OBUF (
    .I(\NlwBufferSignal_sendEnable_OBUF/I ),
    .O(sendEnable)
  );
  X_OPAD #(
    .LOC ( "PAD171" ))
  sclk_128 (
    .PAD(sclk)
  );
  X_OBUF #(
    .LOC ( "PAD171" ))
  sclk_OBUF (
    .I(\NlwBufferSignal_sclk_OBUF/I ),
    .O(sclk)
  );
  X_IPAD #(
    .LOC ( "PAD79" ))
  rst_144 (
    .PAD(rst)
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  rst_IBUF (
    .O(rst_IBUF_215),
    .I(rst)
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  \ProtoComp51.IMUX.2  (
    .I(rst_IBUF_215),
    .O(rst_IBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y23" ),
    .INIT ( 64'h0000000000000001 ))
  \u3/Status_FSM_FFd2-In2  (
    .ADR1(\u3/baseCount [26]),
    .ADR5(\u3/baseCount [27]),
    .ADR2(\u3/baseCount [25]),
    .ADR0(\u3/baseCount [24]),
    .ADR3(\u3/baseCount [23]),
    .ADR4(\u3/baseCount [22]),
    .O(\u3/Status_FSM_FFd2-In2_1157 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'hFC30FC30FC30FC30 ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<0>_SW0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR3(\u3/baseCount [16]),
    .ADR1(\u3/count [1]),
    .ADR2(\u3/baseCount [0]),
    .O(N2)
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 1'b0 ))
  \u3/data_0  (
    .CE(\u3/_n0090 ),
    .CLK(\NlwBufferSignal_u3/data_0/CLK ),
    .I(\u3/count[2]_X_4_o_wide_mux_15_OUT<0>_296 ),
    .O(\u3/data [0]),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'hCCFFCCAFCC00CCAF ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<0>  (
    .ADR3(\u3/count [2]),
    .ADR4(\u3/count [0]),
    .ADR2(\u3/count [1]),
    .ADR0(\u3/baseCount [8]),
    .ADR5(N2),
    .ADR1(\u3/baseCount [24]),
    .O(\u3/count[2]_X_4_o_wide_mux_15_OUT<0>_296 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'h0000000000000001 ))
  \u3/Status_FSM_FFd2-In4  (
    .ADR1(\u3/baseCount [15]),
    .ADR5(\u3/baseCount [16]),
    .ADR0(\u3/baseCount [14]),
    .ADR3(\u3/baseCount [13]),
    .ADR2(\u3/baseCount [12]),
    .ADR4(\u3/baseCount [11]),
    .O(\u3/Status_FSM_FFd2-In4_1162 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'h0000000000000001 ))
  \u3/Status_FSM_FFd2-In7  (
    .ADR2(\u3/baseCount [31]),
    .ADR3(\u3/baseCount [3]),
    .ADR5(\u3/baseCount [30]),
    .ADR0(\u3/baseCount [2]),
    .ADR1(\u3/baseCount [29]),
    .ADR4(\u3/baseCount [28]),
    .O(\u3/Status_FSM_FFd2-In7_1169 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y21" ),
    .INIT ( 64'h0000000000000001 ))
  \u3/Status_FSM_FFd2-In6  (
    .ADR3(\u3/baseCount [8]),
    .ADR4(\u3/baseCount [9]),
    .ADR0(\u3/baseCount [7]),
    .ADR1(\u3/baseCount [6]),
    .ADR2(\u3/baseCount [5]),
    .ADR5(\u3/baseCount [4]),
    .O(\u3/Status_FSM_FFd2-In6_1170 )
  );
  X_OPAD #(
    .LOC ( "PAD173" ))
  \Status<0>  (
    .PAD(Status[0])
  );
  X_OBUF #(
    .LOC ( "PAD173" ))
  Status_0_OBUF (
    .I(\NlwBufferSignal_Status_0_OBUF/I ),
    .O(Status[0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y22" ),
    .INIT ( 64'h000000FFFFFF00FF ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<6>_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u3/baseCount [22]),
    .ADR4(\u3/count [0]),
    .ADR3(\u3/baseCount [14]),
    .O(N10)
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y22" ),
    .INIT ( 1'b0 ))
  \u3/data_6  (
    .CE(\u3/_n0090 ),
    .CLK(\NlwBufferSignal_u3/data_6/CLK ),
    .I(\u3/count[2]_X_4_o_wide_mux_15_OUT<6>_313 ),
    .O(\u3/data [6]),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y22" ),
    .INIT ( 64'hF022F0EEF033F0FF ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<6>  (
    .ADR3(\u3/count [2]),
    .ADR1(\u3/count [1]),
    .ADR0(\u3/baseCount [6]),
    .ADR5(\u3/count [0]),
    .ADR4(N10),
    .ADR2(\u3/baseCount [30]),
    .O(\u3/count[2]_X_4_o_wide_mux_15_OUT<6>_313 )
  );
  X_OPAD #(
    .LOC ( "PAD169" ))
  \data<7>  (
    .PAD(data[7])
  );
  X_OBUF #(
    .LOC ( "PAD169" ))
  data_7_OBUF (
    .I(\NlwBufferSignal_data_7_OBUF/I ),
    .O(data[7])
  );
  X_OPAD #(
    .LOC ( "PAD161" ))
  \data<5>  (
    .PAD(data[5])
  );
  X_OBUF #(
    .LOC ( "PAD161" ))
  data_5_OBUF (
    .I(\NlwBufferSignal_data_5_OBUF/I ),
    .O(data[5])
  );
  X_BUF   \u3/baseCount<30>/u3/baseCount<30>_AMUX_Delay  (
    .I(\u3/baseCount<31>_pack_3 ),
    .O(\u3/baseCount [31])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'h8000000000000000 ))
  \u3/baseCount[31]_PWR_5_o_equal_1_o<31>1  (
    .ADR5(\u3/baseCount [15]),
    .ADR4(\u3/baseCount [14]),
    .ADR3(\u3/baseCount [17]),
    .ADR2(\u3/baseCount [16]),
    .ADR1(\u3/baseCount [19]),
    .ADR0(\u3/baseCount [18]),
    .O(\u3/baseCount[31]_PWR_5_o_equal_1_o<31> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'h8000000000000000 ))
  \u3/baseCount[31]_PWR_5_o_equal_1_o<31>3  (
    .ADR5(\u3/baseCount [27]),
    .ADR4(\u3/baseCount [26]),
    .ADR3(\u3/baseCount [29]),
    .ADR1(\u3/baseCount [28]),
    .ADR0(\u3/baseCount [31]),
    .ADR2(\u3/baseCount [30]),
    .O(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>2_1178 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \u3/_n0106_inv1_cepot1  (
    .ADR1(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>4_1179 ),
    .ADR2(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>5_1180 ),
    .ADR0(\u3/baseCount[31]_PWR_5_o_equal_1_o<31> ),
    .ADR5(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>1_1177 ),
    .ADR3(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>2_1178 ),
    .ADR4(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>3_1181 ),
    .O(\u3/_n0106_inv1_cepot1_1165 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_30  (
    .CE(\u3/_n0106_inv1_cepot1_1165 ),
    .CLK(\NlwBufferSignal_u3/baseCount_30/CLK ),
    .I(\u3/baseCount_30_dpot_340 ),
    .O(\u3/baseCount [30]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'hFCFC3030FCFC3030 ))
  \u3/baseCount_30_dpot  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/Result<30>_0 ),
    .ADR2(\u3/baseCount [30]),
    .ADR1(\u3/_n0106_inv1_rstpot_1164 ),
    .ADR5(1'b1),
    .O(\u3/baseCount_30_dpot_340 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 32'hEE22EE22 ))
  \u3/baseCount_31_dpot  (
    .ADR3(\u3/Result<31>_0 ),
    .ADR0(\u3/baseCount [31]),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR1(\u3/_n0106_inv1_rstpot_1164 ),
    .O(\u3/baseCount_31_dpot_354 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_31  (
    .CE(\u3/_n0106_inv1_cepot1_1165 ),
    .CLK(\NlwBufferSignal_u3/baseCount_31/CLK ),
    .I(\u3/baseCount_31_dpot_354 ),
    .O(\u3/baseCount<31>_pack_3 ),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_BUF   \u3/data<2>/u3/data<2>_CMUX_Delay  (
    .I(\u3/data [3]),
    .O(\u3/data<3>_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y20" ),
    .INIT ( 1'b0 ))
  \u3/data_2  (
    .CE(\u3/_n0090 ),
    .CLK(\NlwBufferSignal_u3/data_2/CLK ),
    .I(\u3/count[2]_X_4_o_wide_mux_15_OUT<2> ),
    .O(\u3/data [2]),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y20" ),
    .INIT ( 64'hFFF00F00FFF00F00 ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<2>2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\u3/baseCount [26]),
    .ADR2(\u3/count [2]),
    .ADR3(\u3/count[2]_X_4_o_wide_mux_15_OUT<2>1_1200 ),
    .ADR5(1'b1),
    .O(\u3/count[2]_X_4_o_wide_mux_15_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y20" ),
    .INIT ( 32'hCACACACA ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<3>2  (
    .ADR1(\u3/baseCount [27]),
    .ADR0(\u3/count[2]_X_4_o_wide_mux_15_OUT<3>1_1199 ),
    .ADR3(1'b1),
    .ADR2(\u3/count [2]),
    .ADR4(1'b1),
    .O(\u3/count[2]_X_4_o_wide_mux_15_OUT<3> )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y20" ),
    .INIT ( 1'b0 ))
  \u3/data_3  (
    .CE(\u3/_n0090 ),
    .CLK(\NlwBufferSignal_u3/data_3/CLK ),
    .I(\u3/count[2]_X_4_o_wide_mux_15_OUT<3> ),
    .O(\u3/data [3]),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y20" ),
    .INIT ( 64'hFB3BCB0BFB3BCB0B ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<2>1  (
    .ADR5(1'b1),
    .ADR2(\u3/count [0]),
    .ADR0(\u3/baseCount [10]),
    .ADR1(\u3/count [1]),
    .ADR4(\u3/baseCount [2]),
    .ADR3(\u3/baseCount [18]),
    .O(\u3/count[2]_X_4_o_wide_mux_15_OUT<2>1_1200 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y20" ),
    .INIT ( 64'hFDFDADAD5D5D0D0D ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<3>1  (
    .ADR3(1'b1),
    .ADR2(\u3/count [0]),
    .ADR1(\u3/baseCount [11]),
    .ADR0(\u3/count [1]),
    .ADR4(\u3/baseCount [3]),
    .ADR5(\u3/baseCount [19]),
    .O(\u3/count[2]_X_4_o_wide_mux_15_OUT<3>1_1199 )
  );
  X_OPAD #(
    .LOC ( "PAD82" ))
  SCK_134 (
    .PAD(SCK)
  );
  X_OBUF #(
    .LOC ( "PAD82" ))
  SCK_OBUF (
    .I(\NlwBufferSignal_SCK_OBUF/I ),
    .O(SCK)
  );
  X_OPAD #(
    .LOC ( "PAD162" ))
  \data<6>  (
    .PAD(data[6])
  );
  X_OBUF #(
    .LOC ( "PAD162" ))
  data_6_OBUF (
    .I(\NlwBufferSignal_data_6_OBUF/I ),
    .O(data[6])
  );
  X_BUF   \u3/data<1>/u3/data<1>_CMUX_Delay  (
    .I(N6_pack_5),
    .O(N6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y19" ),
    .INIT ( 64'hAAAAF0F0AAAAF0F0 ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<1>_SW0  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR0(\u3/baseCount [17]),
    .ADR4(\u3/count [1]),
    .ADR2(\u3/baseCount [1]),
    .ADR5(1'b1),
    .O(N4)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y19" ),
    .INIT ( 32'hCCCCFF00 ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<4>_SW0  (
    .ADR1(\u3/baseCount [20]),
    .ADR3(\u3/baseCount [4]),
    .ADR2(1'b1),
    .ADR4(\u3/count [1]),
    .ADR0(1'b1),
    .O(N6_pack_5)
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y19" ),
    .INIT ( 1'b0 ))
  \u3/data_1  (
    .CE(\u3/_n0090 ),
    .CLK(\NlwBufferSignal_u3/data_1/CLK ),
    .I(\u3/count[2]_X_4_o_wide_mux_15_OUT<1>_244 ),
    .O(\u3/data [1]),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y19" ),
    .INIT ( 64'hAAAAFF33AAAACF03 ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<1>  (
    .ADR4(\u3/count [2]),
    .ADR1(\u3/count [0]),
    .ADR2(\u3/count [1]),
    .ADR5(\u3/baseCount [9]),
    .ADR3(N4),
    .ADR0(\u3/baseCount [25]),
    .O(\u3/count[2]_X_4_o_wide_mux_15_OUT<1>_244 )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y19" ),
    .INIT ( 1'b0 ))
  \u3/data_4  (
    .CE(\u3/_n0090 ),
    .CLK(\NlwBufferSignal_u3/data_4/CLK ),
    .I(\u3/count[2]_X_4_o_wide_mux_15_OUT<4>_239 ),
    .O(\u3/data [4]),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y19" ),
    .INIT ( 64'hE4E4E4E4F5F5A0F5 ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<4>  (
    .ADR0(\u3/count [2]),
    .ADR5(\u3/count [0]),
    .ADR3(\u3/count [1]),
    .ADR4(\u3/baseCount [12]),
    .ADR1(N6),
    .ADR2(\u3/baseCount [28]),
    .O(\u3/count[2]_X_4_o_wide_mux_15_OUT<4>_239 )
  );
  X_OPAD #(
    .LOC ( "PAD160" ))
  \data<4>  (
    .PAD(data[4])
  );
  X_OBUF #(
    .LOC ( "PAD160" ))
  data_4_OBUF (
    .I(\NlwBufferSignal_data_4_OBUF/I ),
    .O(data[4])
  );
  X_OPAD #(
    .LOC ( "PAD83" ))
  MOSI_137 (
    .PAD(MOSI)
  );
  X_OBUF #(
    .LOC ( "PAD83" ))
  MOSI_OBUF (
    .I(\NlwBufferSignal_MOSI_OBUF/I ),
    .O(MOSI)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y20" ),
    .INIT ( 64'h8000000000000000 ))
  \u3/baseCount[31]_PWR_5_o_equal_1_o<31>2  (
    .ADR1(\u3/baseCount [9]),
    .ADR0(\u3/baseCount [8]),
    .ADR3(\u3/baseCount [11]),
    .ADR2(\u3/baseCount [10]),
    .ADR4(\u3/baseCount [13]),
    .ADR5(\u3/baseCount [12]),
    .O(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>1_1177 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<15>/u3/Mcount_baseCount_cy<15>_DMUX_Delay  (
    .I(\u3/Result [15]),
    .O(\u3/Result<15>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<15>/u3/Mcount_baseCount_cy<15>_CMUX_Delay  (
    .I(\u3/Result [14]),
    .O(\u3/Result<14>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<15>/u3/Mcount_baseCount_cy<15>_BMUX_Delay  (
    .I(\u3/Result [13]),
    .O(\u3/Result<13>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<15>/u3/Mcount_baseCount_cy<15>_AMUX_Delay  (
    .I(\u3/Result [12]),
    .O(\u3/Result<12>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u3/baseCount<15>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/baseCount [15]),
    .ADR5(1'b1),
    .O(\u3/baseCount<15>_rt_81 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 32'h00000000 ))
  \N0_16.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_16.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y21" ))
  \u3/Mcount_baseCount_cy<15>  (
    .CI(\u3/Mcount_baseCount_cy[11] ),
    .CYINIT(1'b0),
    .CO({\u3/Mcount_baseCount_cy[15] , \NLW_u3/Mcount_baseCount_cy<15>_CO[2]_UNCONNECTED , \NLW_u3/Mcount_baseCount_cy<15>_CO[1]_UNCONNECTED , 
\NLW_u3/Mcount_baseCount_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u3/Result [15], \u3/Result [14], \u3/Result [13], \u3/Result [12]}),
    .S({\u3/baseCount<15>_rt_81 , \u3/baseCount<14>_rt_75 , \u3/baseCount<13>_rt_85 , \u3/baseCount<12>_rt_82 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [14]),
    .ADR5(1'b1),
    .O(\u3/baseCount<14>_rt_75 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 32'h00000000 ))
  \N0_17.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_17.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [13]),
    .ADR5(1'b1),
    .O(\u3/baseCount<13>_rt_85 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 32'h00000000 ))
  \N0_18.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_18.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u3/baseCount<12>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u3/baseCount [12]),
    .ADR5(1'b1),
    .O(\u3/baseCount<12>_rt_82 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 32'h00000000 ))
  \N0_19.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_19.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u3/Mcount_baseCount_cy<7>/u3/Mcount_baseCount_cy<7>_DMUX_Delay  (
    .I(\u3/Result [7]),
    .O(\u3/Result<7>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<7>/u3/Mcount_baseCount_cy<7>_CMUX_Delay  (
    .I(\u3/Result [6]),
    .O(\u3/Result<6>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<7>/u3/Mcount_baseCount_cy<7>_BMUX_Delay  (
    .I(\u3/Result<5>1_29 ),
    .O(\u3/Result<5>1_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<7>/u3/Mcount_baseCount_cy<7>_AMUX_Delay  (
    .I(\u3/Result<4>1_30 ),
    .O(\u3/Result<4>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y19" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u3/baseCount<7>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/baseCount [7]),
    .ADR5(1'b1),
    .O(\u3/baseCount<7>_rt_37 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y19" ),
    .INIT ( 32'h00000000 ))
  \N0_24.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_24.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y19" ))
  \u3/Mcount_baseCount_cy<7>  (
    .CI(\u3/Mcount_baseCount_cy[3] ),
    .CYINIT(1'b0),
    .CO({\u3/Mcount_baseCount_cy[7] , \NLW_u3/Mcount_baseCount_cy<7>_CO[2]_UNCONNECTED , \NLW_u3/Mcount_baseCount_cy<7>_CO[1]_UNCONNECTED , 
\NLW_u3/Mcount_baseCount_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u3/Result [7], \u3/Result [6], \u3/Result<5>1_29 , \u3/Result<4>1_30 }),
    .S({\u3/baseCount<7>_rt_37 , \u3/baseCount<6>_rt_31 , \u3/baseCount<5>_rt_41 , \u3/baseCount<4>_rt_38 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y19" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [6]),
    .ADR5(1'b1),
    .O(\u3/baseCount<6>_rt_31 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y19" ),
    .INIT ( 32'h00000000 ))
  \N0_25.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_25.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y19" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [5]),
    .ADR5(1'b1),
    .O(\u3/baseCount<5>_rt_41 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y19" ),
    .INIT ( 32'h00000000 ))
  \N0_26.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_26.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y19" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u3/baseCount<4>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u3/baseCount [4]),
    .ADR5(1'b1),
    .O(\u3/baseCount<4>_rt_38 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y19" ),
    .INIT ( 32'h00000000 ))
  \N0_27.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_27.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u3/Mcount_baseCount_cy<11>/u3/Mcount_baseCount_cy<11>_DMUX_Delay  (
    .I(\u3/Result [11]),
    .O(\u3/Result<11>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<11>/u3/Mcount_baseCount_cy<11>_CMUX_Delay  (
    .I(\u3/Result [10]),
    .O(\u3/Result<10>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<11>/u3/Mcount_baseCount_cy<11>_BMUX_Delay  (
    .I(\u3/Result [9]),
    .O(\u3/Result<9>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<11>/u3/Mcount_baseCount_cy<11>_AMUX_Delay  (
    .I(\u3/Result [8]),
    .O(\u3/Result<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y20" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u3/baseCount<11>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/baseCount [11]),
    .ADR5(1'b1),
    .O(\u3/baseCount<11>_rt_59 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y20" ),
    .INIT ( 32'h00000000 ))
  \N0_20.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_20.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y20" ))
  \u3/Mcount_baseCount_cy<11>  (
    .CI(\u3/Mcount_baseCount_cy[7] ),
    .CYINIT(1'b0),
    .CO({\u3/Mcount_baseCount_cy[11] , \NLW_u3/Mcount_baseCount_cy<11>_CO[2]_UNCONNECTED , \NLW_u3/Mcount_baseCount_cy<11>_CO[1]_UNCONNECTED , 
\NLW_u3/Mcount_baseCount_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u3/Result [11], \u3/Result [10], \u3/Result [9], \u3/Result [8]}),
    .S({\u3/baseCount<11>_rt_59 , \u3/baseCount<10>_rt_53 , \u3/baseCount<9>_rt_63 , \u3/baseCount<8>_rt_60 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y20" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [10]),
    .ADR5(1'b1),
    .O(\u3/baseCount<10>_rt_53 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y20" ),
    .INIT ( 32'h00000000 ))
  \N0_21.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_21.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y20" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [9]),
    .ADR5(1'b1),
    .O(\u3/baseCount<9>_rt_63 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y20" ),
    .INIT ( 32'h00000000 ))
  \N0_22.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_22.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y20" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u3/baseCount<8>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u3/baseCount [8]),
    .ADR5(1'b1),
    .O(\u3/baseCount<8>_rt_60 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y20" ),
    .INIT ( 32'h00000000 ))
  \N0_23.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_23.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u3/Mcount_baseCount_cy<27>/u3/Mcount_baseCount_cy<27>_DMUX_Delay  (
    .I(\u3/Result [27]),
    .O(\u3/Result<27>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<27>/u3/Mcount_baseCount_cy<27>_CMUX_Delay  (
    .I(\u3/Result [26]),
    .O(\u3/Result<26>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<27>/u3/Mcount_baseCount_cy<27>_BMUX_Delay  (
    .I(\u3/Result [25]),
    .O(\u3/Result<25>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<27>/u3/Mcount_baseCount_cy<27>_AMUX_Delay  (
    .I(\u3/Result [24]),
    .O(\u3/Result<24>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u3/baseCount<27>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u3/baseCount [27]),
    .ADR5(1'b1),
    .O(\u3/baseCount<27>_rt_147 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 32'h00000000 ))
  \N0_4.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_4.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y24" ))
  \u3/Mcount_baseCount_cy<27>  (
    .CI(\u3/Mcount_baseCount_cy[23] ),
    .CYINIT(1'b0),
    .CO({\u3/Mcount_baseCount_cy[27] , \NLW_u3/Mcount_baseCount_cy<27>_CO[2]_UNCONNECTED , \NLW_u3/Mcount_baseCount_cy<27>_CO[1]_UNCONNECTED , 
\NLW_u3/Mcount_baseCount_cy<27>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u3/Result [27], \u3/Result [26], \u3/Result [25], \u3/Result [24]}),
    .S({\u3/baseCount<27>_rt_147 , \u3/baseCount<26>_rt_141 , \u3/baseCount<25>_rt_151 , \u3/baseCount<24>_rt_148 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u3/baseCount<26>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/baseCount [26]),
    .ADR5(1'b1),
    .O(\u3/baseCount<26>_rt_141 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 32'h00000000 ))
  \N0_5.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_5.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u3/baseCount<25>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u3/baseCount [25]),
    .ADR5(1'b1),
    .O(\u3/baseCount<25>_rt_151 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 32'h00000000 ))
  \N0_6.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_6.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<24>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [24]),
    .ADR5(1'b1),
    .O(\u3/baseCount<24>_rt_148 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 32'h00000000 ))
  \N0_7.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_7.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u3/Mcount_baseCount_cy<23>/u3/Mcount_baseCount_cy<23>_DMUX_Delay  (
    .I(\u3/Result [23]),
    .O(\u3/Result<23>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<23>/u3/Mcount_baseCount_cy<23>_CMUX_Delay  (
    .I(\u3/Result [22]),
    .O(\u3/Result<22>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<23>/u3/Mcount_baseCount_cy<23>_BMUX_Delay  (
    .I(\u3/Result [21]),
    .O(\u3/Result<21>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<23>/u3/Mcount_baseCount_cy<23>_AMUX_Delay  (
    .I(\u3/Result [20]),
    .O(\u3/Result<20>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u3/baseCount<23>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/baseCount [23]),
    .ADR5(1'b1),
    .O(\u3/baseCount<23>_rt_125 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 32'h00000000 ))
  \N0_8.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_8.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y23" ))
  \u3/Mcount_baseCount_cy<23>  (
    .CI(\u3/Mcount_baseCount_cy[19] ),
    .CYINIT(1'b0),
    .CO({\u3/Mcount_baseCount_cy[23] , \NLW_u3/Mcount_baseCount_cy<23>_CO[2]_UNCONNECTED , \NLW_u3/Mcount_baseCount_cy<23>_CO[1]_UNCONNECTED , 
\NLW_u3/Mcount_baseCount_cy<23>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u3/Result [23], \u3/Result [22], \u3/Result [21], \u3/Result [20]}),
    .S({\u3/baseCount<23>_rt_125 , \u3/baseCount<22>_rt_119 , \u3/baseCount<21>_rt_129 , \u3/baseCount<20>_rt_126 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u3/baseCount<22>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/baseCount [22]),
    .ADR5(1'b1),
    .O(\u3/baseCount<22>_rt_119 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 32'h00000000 ))
  \N0_9.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_9.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<21>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [21]),
    .ADR5(1'b1),
    .O(\u3/baseCount<21>_rt_129 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 32'h00000000 ))
  \N0_10.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_10.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u3/baseCount<20>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u3/baseCount [20]),
    .ADR5(1'b1),
    .O(\u3/baseCount<20>_rt_126 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 32'h00000000 ))
  \N0_11.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_11.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u3/Result<31>/u3/Result<31>_DMUX_Delay  (
    .I(\u3/Result [31]),
    .O(\u3/Result<31>_0 )
  );
  X_BUF   \u3/Result<31>/u3/Result<31>_CMUX_Delay  (
    .I(\u3/Result [30]),
    .O(\u3/Result<30>_0 )
  );
  X_BUF   \u3/Result<31>/u3/Result<31>_BMUX_Delay  (
    .I(\u3/Result [29]),
    .O(\u3/Result<29>_0 )
  );
  X_BUF   \u3/Result<31>/u3/Result<31>_AMUX_Delay  (
    .I(\u3/Result [28]),
    .O(\u3/Result<28>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u3/baseCount<31>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(\u3/baseCount [31]),
    .O(\u3/baseCount<31>_rt_170 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y25" ))
  \u3/Mcount_baseCount_xor<31>  (
    .CI(\u3/Mcount_baseCount_cy[27] ),
    .CYINIT(1'b0),
    .CO({\NLW_u3/Mcount_baseCount_xor<31>_CO[3]_UNCONNECTED , \NLW_u3/Mcount_baseCount_xor<31>_CO[2]_UNCONNECTED , 
\NLW_u3/Mcount_baseCount_xor<31>_CO[1]_UNCONNECTED , \NLW_u3/Mcount_baseCount_xor<31>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u3/Mcount_baseCount_xor<31>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\u3/Result [31], \u3/Result [30], \u3/Result [29], \u3/Result [28]}),
    .S({\u3/baseCount<31>_rt_170 , \u3/baseCount<30>_rt_172 , \u3/baseCount<29>_rt_160 , \u3/baseCount<28>_rt_162 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u3/baseCount<30>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u3/baseCount [30]),
    .ADR5(1'b1),
    .O(\u3/baseCount<30>_rt_172 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 32'h00000000 ))
  \N0.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<29>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [29]),
    .ADR5(1'b1),
    .O(\u3/baseCount<29>_rt_160 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 32'h00000000 ))
  \N0_2.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_2.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u3/baseCount<28>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u3/baseCount [28]),
    .ADR5(1'b1),
    .O(\u3/baseCount<28>_rt_162 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 32'h00000000 ))
  \N0_3.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_3.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u3/Mcount_baseCount_cy<19>/u3/Mcount_baseCount_cy<19>_DMUX_Delay  (
    .I(\u3/Result [19]),
    .O(\u3/Result<19>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<19>/u3/Mcount_baseCount_cy<19>_CMUX_Delay  (
    .I(\u3/Result [18]),
    .O(\u3/Result<18>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<19>/u3/Mcount_baseCount_cy<19>_BMUX_Delay  (
    .I(\u3/Result [17]),
    .O(\u3/Result<17>_0 )
  );
  X_BUF   \u3/Mcount_baseCount_cy<19>/u3/Mcount_baseCount_cy<19>_AMUX_Delay  (
    .I(\u3/Result [16]),
    .O(\u3/Result<16>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u3/baseCount<19>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/baseCount [19]),
    .ADR5(1'b1),
    .O(\u3/baseCount<19>_rt_103 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 32'h00000000 ))
  \N0_12.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_12.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y22" ))
  \u3/Mcount_baseCount_cy<19>  (
    .CI(\u3/Mcount_baseCount_cy[15] ),
    .CYINIT(1'b0),
    .CO({\u3/Mcount_baseCount_cy[19] , \NLW_u3/Mcount_baseCount_cy<19>_CO[2]_UNCONNECTED , \NLW_u3/Mcount_baseCount_cy<19>_CO[1]_UNCONNECTED , 
\NLW_u3/Mcount_baseCount_cy<19>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u3/Result [19], \u3/Result [18], \u3/Result [17], \u3/Result [16]}),
    .S({\u3/baseCount<19>_rt_103 , \u3/baseCount<18>_rt_97 , \u3/baseCount<17>_rt_107 , \u3/baseCount<16>_rt_104 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<18>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [18]),
    .ADR5(1'b1),
    .O(\u3/baseCount<18>_rt_97 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 32'h00000000 ))
  \N0_13.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_13.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u3/baseCount<17>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [17]),
    .ADR5(1'b1),
    .O(\u3/baseCount<17>_rt_107 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 32'h00000000 ))
  \N0_14.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_14.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u3/baseCount<16>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u3/baseCount [16]),
    .ADR5(1'b1),
    .O(\u3/baseCount<16>_rt_104 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 32'h00000000 ))
  \N0_15.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_15.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y22" ),
    .INIT ( 64'hFFFF000000000000 ))
  \u3/baseCount[31]_PWR_5_o_equal_1_o<31>5  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u3/baseCount [1]),
    .ADR5(\u3/baseCount [0]),
    .O(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>4_1179 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y22" ),
    .INIT ( 64'h0000000000000001 ))
  \u3/Status_FSM_FFd2-In3  (
    .ADR4(\u3/baseCount [20]),
    .ADR2(\u3/baseCount [21]),
    .ADR5(\u3/baseCount [1]),
    .ADR1(\u3/baseCount [19]),
    .ADR0(\u3/baseCount [18]),
    .ADR3(\u3/baseCount [17]),
    .O(\u3/Status_FSM_FFd2-In3_1160 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_23  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_23/CLK ),
    .I(\u3/baseCount_23_dpot_646 ),
    .O(\u3/baseCount [23]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'hFFFF0000FFFD0200 ))
  \u3/baseCount_23_dpot  (
    .ADR2(\u3/Status_FSM_FFd1_1075 ),
    .ADR0(\u3/Status_FSM_FFd2_1065 ),
    .ADR5(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [23]),
    .ADR1(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<23>_0 ),
    .O(\u3/baseCount_23_dpot_646 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_22  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_22/CLK ),
    .I(\u3/baseCount_22_dpot_638 ),
    .O(\u3/baseCount [22]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'hFFFF0000FEFF1000 ))
  \u3/baseCount_22_dpot  (
    .ADR1(\u3/Status_FSM_FFd1_1075 ),
    .ADR3(\u3/Status_FSM_FFd2_1065 ),
    .ADR5(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [22]),
    .ADR0(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<22>_0 ),
    .O(\u3/baseCount_22_dpot_638 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_21  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_21/CLK ),
    .I(\u3/baseCount_21_dpot_613 ),
    .O(\u3/baseCount [21]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'hFFFF0000FFFB0040 ))
  \u3/baseCount_21_dpot  (
    .ADR5(\u3/Status_FSM_FFd1_1075 ),
    .ADR1(\u3/Status_FSM_FFd2_1065 ),
    .ADR3(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [21]),
    .ADR0(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<21>_0 ),
    .O(\u3/baseCount_21_dpot_613 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_20  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_20/CLK ),
    .I(\u3/baseCount_20_dpot_616 ),
    .O(\u3/baseCount [20]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'hFFFFFFEF00001000 ))
  \u3/baseCount_20_dpot  (
    .ADR0(\u3/Status_FSM_FFd1_1075 ),
    .ADR2(\u3/Status_FSM_FFd2_1065 ),
    .ADR1(\u3/baseOvf_1076 ),
    .ADR5(\u3/baseCount [20]),
    .ADR4(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<20>_0 ),
    .O(\u3/baseCount_20_dpot_616 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_3  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_3/CLK ),
    .I(\u3/baseCount_3_dpot_471 ),
    .O(\u3/baseCount [3]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 64'hFFFFFFFB00000400 ))
  \u3/baseCount_3_dpot  (
    .ADR0(\u3/Status_FSM_FFd1_1075 ),
    .ADR1(\u3/Status_FSM_FFd2_1065 ),
    .ADR2(\u3/baseOvf_1076 ),
    .ADR5(\u3/baseCount [3]),
    .ADR4(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<3>1_0 ),
    .O(\u3/baseCount_3_dpot_471 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_2  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_2/CLK ),
    .I(\u3/baseCount_2_dpot_463 ),
    .O(\u3/baseCount [2]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 64'hAAAAAAAAAAB8AAAA ))
  \u3/baseCount_2_dpot  (
    .ADR1(\u3/Status_FSM_FFd1_1075 ),
    .ADR4(\u3/Status_FSM_FFd2_1065 ),
    .ADR3(\u3/baseOvf_1076 ),
    .ADR0(\u3/baseCount [2]),
    .ADR5(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<2>1_0 ),
    .O(\u3/baseCount_2_dpot_463 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_1  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_1/CLK ),
    .I(\u3/baseCount_1_dpot_438 ),
    .O(\u3/baseCount [1]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 64'hFFFF0000FEFF1000 ))
  \u3/baseCount_1_dpot  (
    .ADR0(\u3/Status_FSM_FFd1_1075 ),
    .ADR3(\u3/Status_FSM_FFd2_1065 ),
    .ADR5(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [1]),
    .ADR1(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<1>1_0 ),
    .O(\u3/baseCount_1_dpot_438 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_0  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_0/CLK ),
    .I(\u3/baseCount_0_dpot_441 ),
    .O(\u3/baseCount [0]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 64'hFFFF0000FFEF1000 ))
  \u3/baseCount_0_dpot  (
    .ADR0(\u3/Status_FSM_FFd1_1075 ),
    .ADR2(\u3/Status_FSM_FFd2_1065 ),
    .ADR5(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [0]),
    .ADR1(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<0>1_0 ),
    .O(\u3/baseCount_0_dpot_441 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y19" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_7  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_7/CLK ),
    .I(\u3/baseCount_7_dpot_506 ),
    .O(\u3/baseCount [7]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y19" ),
    .INIT ( 64'hFFFF0004FFFB0000 ))
  \u3/baseCount_7_dpot  (
    .ADR3(\u3/Status_FSM_FFd1_1075 ),
    .ADR1(\u3/Status_FSM_FFd2_1065 ),
    .ADR2(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [7]),
    .ADR0(\u3/sigOvf_1078 ),
    .ADR5(\u3/Result<7>_0 ),
    .O(\u3/baseCount_7_dpot_506 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y19" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_6  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_6/CLK ),
    .I(\u3/baseCount_6_dpot_498 ),
    .O(\u3/baseCount [6]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y19" ),
    .INIT ( 64'hAAAAAAB8AAAAAAAA ))
  \u3/baseCount_6_dpot  (
    .ADR3(\u3/Status_FSM_FFd1_1075 ),
    .ADR5(\u3/Status_FSM_FFd2_1065 ),
    .ADR1(\u3/baseOvf_1076 ),
    .ADR0(\u3/baseCount [6]),
    .ADR4(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<6>_0 ),
    .O(\u3/baseCount_6_dpot_498 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y19" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_5  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_5/CLK ),
    .I(\u3/baseCount_5_dpot_473 ),
    .O(\u3/baseCount [5]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y19" ),
    .INIT ( 64'hFFFF0000FFFB0040 ))
  \u3/baseCount_5_dpot  (
    .ADR5(\u3/Status_FSM_FFd1_1075 ),
    .ADR1(\u3/Status_FSM_FFd2_1065 ),
    .ADR0(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [5]),
    .ADR3(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<5>1_0 ),
    .O(\u3/baseCount_5_dpot_473 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y19" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_4  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_4/CLK ),
    .I(\u3/baseCount_4_dpot_476 ),
    .O(\u3/baseCount [4]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y19" ),
    .INIT ( 64'hFFFFFFFB00000400 ))
  \u3/baseCount_4_dpot  (
    .ADR4(\u3/Status_FSM_FFd1_1075 ),
    .ADR1(\u3/Status_FSM_FFd2_1065 ),
    .ADR0(\u3/baseOvf_1076 ),
    .ADR5(\u3/baseCount [4]),
    .ADR2(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<4>1_0 ),
    .O(\u3/baseCount_4_dpot_476 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y20" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_11  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_11/CLK ),
    .I(\u3/baseCount_11_dpot_541 ),
    .O(\u3/baseCount [11]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y20" ),
    .INIT ( 64'hFFFFFFFB00000400 ))
  \u3/baseCount_11_dpot  (
    .ADR0(\u3/Status_FSM_FFd1_1075 ),
    .ADR1(\u3/Status_FSM_FFd2_1065 ),
    .ADR2(\u3/baseOvf_1076 ),
    .ADR5(\u3/baseCount [11]),
    .ADR4(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<11>_0 ),
    .O(\u3/baseCount_11_dpot_541 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y20" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_10  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_10/CLK ),
    .I(\u3/baseCount_10_dpot_533 ),
    .O(\u3/baseCount [10]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y20" ),
    .INIT ( 64'hAAAAAAAAAAB8AAAA ))
  \u3/baseCount_10_dpot  (
    .ADR1(\u3/Status_FSM_FFd1_1075 ),
    .ADR4(\u3/Status_FSM_FFd2_1065 ),
    .ADR3(\u3/baseOvf_1076 ),
    .ADR0(\u3/baseCount [10]),
    .ADR5(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<10>_0 ),
    .O(\u3/baseCount_10_dpot_533 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y20" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_9  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_9/CLK ),
    .I(\u3/baseCount_9_dpot_508 ),
    .O(\u3/baseCount [9]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y20" ),
    .INIT ( 64'hFFFF0000FFFB0040 ))
  \u3/baseCount_9_dpot  (
    .ADR0(\u3/Status_FSM_FFd1_1075 ),
    .ADR1(\u3/Status_FSM_FFd2_1065 ),
    .ADR5(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [9]),
    .ADR3(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<9>_0 ),
    .O(\u3/baseCount_9_dpot_508 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y20" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_8  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_8/CLK ),
    .I(\u3/baseCount_8_dpot_511 ),
    .O(\u3/baseCount [8]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y20" ),
    .INIT ( 64'hFFFF0000FFFD0200 ))
  \u3/baseCount_8_dpot  (
    .ADR2(\u3/Status_FSM_FFd1_1075 ),
    .ADR0(\u3/Status_FSM_FFd2_1065 ),
    .ADR5(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [8]),
    .ADR1(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<8>_0 ),
    .O(\u3/baseCount_8_dpot_511 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y23" ),
    .INIT ( 64'h8000000000000000 ))
  \u3/baseCount[31]_PWR_5_o_equal_1_o<31>6  (
    .ADR4(\u3/baseCount [3]),
    .ADR3(\u3/baseCount [2]),
    .ADR0(\u3/baseCount [5]),
    .ADR1(\u3/baseCount [4]),
    .ADR2(\u3/baseCount [7]),
    .ADR5(\u3/baseCount [6]),
    .O(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>5_1180 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y23" ),
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \u3/_n0106_inv1_cepot  (
    .ADR1(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>4_1179 ),
    .ADR4(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>2_1178 ),
    .ADR3(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>3_1181 ),
    .ADR2(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>1_1177 ),
    .ADR0(\u3/baseCount[31]_PWR_5_o_equal_1_o<31> ),
    .ADR5(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>5_1180 ),
    .O(\u3/_n0106_inv1_cepot_1074 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y23" ),
    .INIT ( 64'h8000000000000000 ))
  \u3/baseCount[31]_PWR_5_o_equal_1_o<31>4  (
    .ADR4(\u3/baseCount [24]),
    .ADR2(\u3/baseCount [25]),
    .ADR1(\u3/baseCount [22]),
    .ADR0(\u3/baseCount [23]),
    .ADR5(\u3/baseCount [20]),
    .ADR3(\u3/baseCount [21]),
    .O(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>3_1181 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y23" ),
    .INIT ( 1'b0 ))
  \u3/baseOvf  (
    .CE(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>4_1179 ),
    .CLK(\NlwBufferSignal_u3/baseOvf/CLK ),
    .I(\u3/baseOvf_dpot_433 ),
    .O(\u3/baseOvf_1076 ),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y23" ),
    .INIT ( 64'hFFFFFFFF80000000 ))
  \u3/baseOvf_dpot  (
    .ADR2(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>5_1180 ),
    .ADR0(\u3/baseCount[31]_PWR_5_o_equal_1_o<31> ),
    .ADR1(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>1_1177 ),
    .ADR5(\u3/baseOvf_1076 ),
    .ADR3(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>2_1178 ),
    .ADR4(\u3/baseCount[31]_PWR_5_o_equal_1_o<31>3_1181 ),
    .O(\u3/baseOvf_dpot_433 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_15  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_15/CLK ),
    .I(\u3/baseCount_15_dpot_576 ),
    .O(\u3/baseCount [15]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 64'hFFFEFFFF01000000 ))
  \u3/baseCount_15_dpot  (
    .ADR1(\u3/Status_FSM_FFd1_1075 ),
    .ADR4(\u3/Status_FSM_FFd2_1065 ),
    .ADR2(\u3/baseOvf_1076 ),
    .ADR5(\u3/baseCount [15]),
    .ADR0(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<15>_0 ),
    .O(\u3/baseCount_15_dpot_576 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_14  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_14/CLK ),
    .I(\u3/baseCount_14_dpot_568 ),
    .O(\u3/baseCount [14]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 64'hFFFE0010FFFF0000 ))
  \u3/baseCount_14_dpot  (
    .ADR3(\u3/Status_FSM_FFd1_1075 ),
    .ADR5(\u3/Status_FSM_FFd2_1065 ),
    .ADR1(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [14]),
    .ADR0(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<14>_0 ),
    .O(\u3/baseCount_14_dpot_568 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_13  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_13/CLK ),
    .I(\u3/baseCount_13_dpot_543 ),
    .O(\u3/baseCount [13]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 64'hFFFF0000FFFB0040 ))
  \u3/baseCount_13_dpot  (
    .ADR5(\u3/Status_FSM_FFd1_1075 ),
    .ADR1(\u3/Status_FSM_FFd2_1065 ),
    .ADR0(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [13]),
    .ADR3(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<13>_0 ),
    .O(\u3/baseCount_13_dpot_543 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_12  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_12/CLK ),
    .I(\u3/baseCount_12_dpot_546 ),
    .O(\u3/baseCount [12]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 64'hAAAAAAAAAAAABA8A ))
  \u3/baseCount_12_dpot  (
    .ADR4(\u3/Status_FSM_FFd1_1075 ),
    .ADR2(\u3/Status_FSM_FFd2_1065 ),
    .ADR5(\u3/baseOvf_1076 ),
    .ADR0(\u3/baseCount [12]),
    .ADR1(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<12>_0 ),
    .O(\u3/baseCount_12_dpot_546 )
  );
  X_BUF   \u3/data<5>/u3/data<5>_CMUX_Delay  (
    .I(N12_pack_5),
    .O(N12)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y21" ),
    .INIT ( 64'hFA50FA50FA50FA50 ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<5>_SW0  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR3(\u3/baseCount [21]),
    .ADR0(\u3/count [1]),
    .ADR2(\u3/baseCount [5]),
    .ADR5(1'b1),
    .O(N8)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y21" ),
    .INIT ( 32'hDDDD8888 ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<7>_SW0  (
    .ADR1(\u3/baseCount [23]),
    .ADR4(\u3/baseCount [7]),
    .ADR2(1'b1),
    .ADR0(\u3/count [1]),
    .ADR3(1'b1),
    .O(N12_pack_5)
  );
  X_SFF #(
    .LOC ( "SLICE_X5Y21" ),
    .INIT ( 1'b0 ))
  \u3/data_5  (
    .CE(\u3/_n0090 ),
    .CLK(\NlwBufferSignal_u3/data_5/CLK ),
    .I(\u3/count[2]_X_4_o_wide_mux_15_OUT<5>_381 ),
    .O(\u3/data [5]),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y21" ),
    .INIT ( 64'hFFF50F05FBF10B01 ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<5>  (
    .ADR2(\u3/count [2]),
    .ADR0(\u3/count [0]),
    .ADR1(\u3/count [1]),
    .ADR5(\u3/baseCount [13]),
    .ADR3(N8),
    .ADR4(\u3/baseCount [29]),
    .O(\u3/count[2]_X_4_o_wide_mux_15_OUT<5>_381 )
  );
  X_SFF #(
    .LOC ( "SLICE_X5Y21" ),
    .INIT ( 1'b0 ))
  \u3/data_7  (
    .CE(\u3/_n0090 ),
    .CLK(\NlwBufferSignal_u3/data_7/CLK ),
    .I(\u3/count[2]_X_4_o_wide_mux_15_OUT<7>_376 ),
    .O(\u3/data [7]),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y21" ),
    .INIT ( 64'hE4F5E4F5E4A0E4F5 ))
  \u3/count[2]_X_4_o_wide_mux_15_OUT<7>  (
    .ADR0(\u3/count [2]),
    .ADR3(\u3/count [0]),
    .ADR4(\u3/count [1]),
    .ADR5(\u3/baseCount [15]),
    .ADR1(N12),
    .ADR2(\u3/baseCount [31]),
    .O(\u3/count[2]_X_4_o_wide_mux_15_OUT<7>_376 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_19  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_19/CLK ),
    .I(\u3/baseCount_19_dpot_611 ),
    .O(\u3/baseCount [19]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 64'hFFFFFFFD00000200 ))
  \u3/baseCount_19_dpot  (
    .ADR1(\u3/Status_FSM_FFd1_1075 ),
    .ADR0(\u3/Status_FSM_FFd2_1065 ),
    .ADR2(\u3/baseOvf_1076 ),
    .ADR5(\u3/baseCount [19]),
    .ADR4(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<19>_0 ),
    .O(\u3/baseCount_19_dpot_611 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_18  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_18/CLK ),
    .I(\u3/baseCount_18_dpot_603 ),
    .O(\u3/baseCount [18]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 64'hAAAAAAAAAAB8AAAA ))
  \u3/baseCount_18_dpot  (
    .ADR3(\u3/Status_FSM_FFd1_1075 ),
    .ADR4(\u3/Status_FSM_FFd2_1065 ),
    .ADR1(\u3/baseOvf_1076 ),
    .ADR0(\u3/baseCount [18]),
    .ADR5(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<18>_0 ),
    .O(\u3/baseCount_18_dpot_603 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_17  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_17/CLK ),
    .I(\u3/baseCount_17_dpot_578 ),
    .O(\u3/baseCount [17]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 64'hFFFF0000FFFB0040 ))
  \u3/baseCount_17_dpot  (
    .ADR0(\u3/Status_FSM_FFd1_1075 ),
    .ADR1(\u3/Status_FSM_FFd2_1065 ),
    .ADR5(\u3/baseOvf_1076 ),
    .ADR4(\u3/baseCount [17]),
    .ADR3(\u3/sigOvf_1078 ),
    .ADR2(\u3/Result<17>_0 ),
    .O(\u3/baseCount_17_dpot_578 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_16  (
    .CE(\u3/_n0106_inv1_cepot_1074 ),
    .CLK(\NlwBufferSignal_u3/baseCount_16/CLK ),
    .I(\u3/baseCount_16_dpot_581 ),
    .O(\u3/baseCount [16]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 64'hFFFFFFFD00000200 ))
  \u3/baseCount_16_dpot  (
    .ADR4(\u3/Status_FSM_FFd1_1075 ),
    .ADR0(\u3/Status_FSM_FFd2_1065 ),
    .ADR2(\u3/baseOvf_1076 ),
    .ADR5(\u3/baseCount [16]),
    .ADR1(\u3/sigOvf_1078 ),
    .ADR3(\u3/Result<16>_0 ),
    .O(\u3/baseCount_16_dpot_581 )
  );
  X_BUF   \u3/baseCount<28>/u3/baseCount<28>_DMUX_Delay  (
    .I(\u3/baseCount<29>_pack_8 ),
    .O(\u3/baseCount [29])
  );
  X_BUF   \u3/baseCount<28>/u3/baseCount<28>_CMUX_Delay  (
    .I(\u3/baseCount<27>_pack_6 ),
    .O(\u3/baseCount [27])
  );
  X_BUF   \u3/baseCount<28>/u3/baseCount<28>_BMUX_Delay  (
    .I(\u3/baseCount<25>_pack_4 ),
    .O(\u3/baseCount [25])
  );
  X_FF #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_28  (
    .CE(\u3/_n0106_inv1_cepot1_1165 ),
    .CLK(\NlwBufferSignal_u3/baseCount_28/CLK ),
    .I(\u3/baseCount_28_dpot_655 ),
    .O(\u3/baseCount [28]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 64'hFFAA5500FFAA5500 ))
  \u3/baseCount_28_dpot  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\u3/Result<28>_0 ),
    .ADR3(\u3/baseCount [28]),
    .ADR0(\u3/_n0106_inv1_rstpot_1164 ),
    .ADR5(1'b1),
    .O(\u3/baseCount_28_dpot_655 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 32'hE4E4E4E4 ))
  \u3/baseCount_29_dpot  (
    .ADR2(\u3/Result<29>_0 ),
    .ADR1(\u3/baseCount [29]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/_n0106_inv1_rstpot_1164 ),
    .O(\u3/baseCount_29_dpot_650 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_29  (
    .CE(\u3/_n0106_inv1_cepot1_1165 ),
    .CLK(\NlwBufferSignal_u3/baseCount_29/CLK ),
    .I(\u3/baseCount_29_dpot_650 ),
    .O(\u3/baseCount<29>_pack_8 ),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_26  (
    .CE(\u3/_n0106_inv1_cepot1_1165 ),
    .CLK(\NlwBufferSignal_u3/baseCount_26/CLK ),
    .I(\u3/baseCount_26_dpot_666 ),
    .O(\u3/baseCount [26]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 64'hFA0AFA0AFA0AFA0A ))
  \u3/baseCount_26_dpot  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR3(\u3/Result<26>_0 ),
    .ADR0(\u3/baseCount [26]),
    .ADR2(\u3/_n0106_inv1_rstpot_1164 ),
    .ADR5(1'b1),
    .O(\u3/baseCount_26_dpot_666 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 32'hFCFC0C0C ))
  \u3/baseCount_27_dpot  (
    .ADR4(\u3/Result<27>_0 ),
    .ADR1(\u3/baseCount [27]),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(\u3/_n0106_inv1_rstpot_1164 ),
    .O(\u3/baseCount_27_dpot_664 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_27  (
    .CE(\u3/_n0106_inv1_cepot1_1165 ),
    .CLK(\NlwBufferSignal_u3/baseCount_27/CLK ),
    .I(\u3/baseCount_27_dpot_664 ),
    .O(\u3/baseCount<27>_pack_6 ),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_24  (
    .CE(\u3/_n0106_inv1_cepot1_1165 ),
    .CLK(\NlwBufferSignal_u3/baseCount_24/CLK ),
    .I(\u3/baseCount_24_dpot_669 ),
    .O(\u3/baseCount [24]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 64'hFFAA00AAFFAA00AA ))
  \u3/baseCount_24_dpot  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\u3/Result<24>_0 ),
    .ADR0(\u3/baseCount [24]),
    .ADR3(\u3/_n0106_inv1_rstpot_1164 ),
    .ADR5(1'b1),
    .O(\u3/baseCount_24_dpot_669 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 32'hF0CCF0CC ))
  \u3/baseCount_25_dpot  (
    .ADR2(\u3/Result<25>_0 ),
    .ADR1(\u3/baseCount [25]),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(\u3/_n0106_inv1_rstpot_1164 ),
    .O(\u3/baseCount_25_dpot_663 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 1'b0 ))
  \u3/baseCount_25  (
    .CE(\u3/_n0106_inv1_cepot1_1165 ),
    .CLK(\NlwBufferSignal_u3/baseCount_25/CLK ),
    .I(\u3/baseCount_25_dpot_663 ),
    .O(\u3/baseCount<25>_pack_4 ),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 64'h0000000000000F00 ))
  \u3/_n0106_inv1_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\u3/Status_FSM_FFd1_1075 ),
    .ADR3(\u3/Status_FSM_FFd2_1065 ),
    .ADR5(\u3/baseOvf_1076 ),
    .ADR2(\u3/sigOvf_1078 ),
    .O(\u3/_n0106_inv1_rstpot_1164 )
  );
  X_BUF   \u3/sigCount<5>/u3/sigCount<5>_CMUX_Delay  (
    .I(\u3/sigCount<4>_pack_13 ),
    .O(\u3/sigCount [4])
  );
  X_BUF   \u3/sigCount<5>/u3/sigCount<5>_BMUX_Delay  (
    .I(\u3/sigCount<1>_pack_11 ),
    .O(\u3/sigCount [1])
  );
  X_FF #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 1'b0 ))
  \u3/sigCount_5  (
    .CE(\u3/_n0101_inv ),
    .CLK(\NlwBufferSignal_u3/sigCount_5/CLK ),
    .I(\u3/Result [5]),
    .O(\u3/sigCount [5]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 64'h7FFFFFFF80000000 ))
  \u3/Result<5>1  (
    .ADR3(\u3/sigCount [2]),
    .ADR4(\u3/sigCount [3]),
    .ADR2(\u3/sigCount [4]),
    .ADR5(\u3/sigCount [5]),
    .ADR1(\u3/sigCount [0]),
    .ADR0(\u3/sigCount [1]),
    .O(\u3/Result [5])
  );
  X_FF #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 1'b0 ))
  \u3/sigCount_3  (
    .CE(\u3/_n0101_inv ),
    .CLK(\NlwBufferSignal_u3/sigCount_3/CLK ),
    .I(\u3/Result [3]),
    .O(\u3/sigCount [3]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 64'h5FA0FF005FA0FF00 ))
  \u3/Result<3>1  (
    .ADR1(1'b1),
    .ADR0(\u3/sigCount [2]),
    .ADR2(\u3/sigCount [0]),
    .ADR3(\u3/sigCount [3]),
    .ADR4(\u3/sigCount [1]),
    .ADR5(1'b1),
    .O(\u3/Result [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 32'h6CCCCCCC ))
  \u3/Result<4>1  (
    .ADR1(\u3/sigCount [4]),
    .ADR0(\u3/sigCount [2]),
    .ADR2(\u3/sigCount [0]),
    .ADR3(\u3/sigCount [3]),
    .ADR4(\u3/sigCount [1]),
    .O(\u3/Result [4])
  );
  X_FF #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 1'b0 ))
  \u3/sigCount_4  (
    .CE(\u3/_n0101_inv ),
    .CLK(\NlwBufferSignal_u3/sigCount_4/CLK ),
    .I(\u3/Result [4]),
    .O(\u3/sigCount<4>_pack_13 ),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 1'b0 ))
  \u3/sigCount_2  (
    .CE(\u3/_n0101_inv ),
    .CLK(\NlwBufferSignal_u3/sigCount_2/CLK ),
    .I(\u3/Result [2]),
    .O(\u3/sigCount [2]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 64'h7777888877778888 ))
  \u3/Result<2>1  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/sigCount [0]),
    .ADR4(\u3/sigCount [2]),
    .ADR1(\u3/sigCount [1]),
    .ADR5(1'b1),
    .O(\u3/Result [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 32'h66666666 ))
  \u3/Mcount_sigCount_xor<1>11  (
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR0(\u3/sigCount [0]),
    .ADR3(1'b1),
    .ADR1(\u3/sigCount [1]),
    .O(\u3/Result [1])
  );
  X_FF #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 1'b0 ))
  \u3/sigCount_1  (
    .CE(\u3/_n0101_inv ),
    .CLK(\NlwBufferSignal_u3/sigCount_1/CLK ),
    .I(\u3/Result [1]),
    .O(\u3/sigCount<1>_pack_11 ),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 1'b0 ))
  \u3/sigCount_0  (
    .CE(\u3/_n0101_inv ),
    .CLK(\NlwBufferSignal_u3/sigCount_0/CLK ),
    .I(\u3/Result [0]),
    .O(\u3/sigCount [0]),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \u3/Mcount_sigCount_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u3/sigCount [0]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\u3/Result [0])
  );
  X_BUF   \u3/count<2>/u3/count<2>_BMUX_Delay  (
    .I(\u3/count<1>_pack_3 ),
    .O(\u3/count [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y20" ),
    .INIT ( 1'b0 ))
  \u3/count_2  (
    .CE(\u3/_n0109_inv_0 ),
    .CLK(\NlwBufferSignal_u3/count_2/CLK ),
    .I(\u3/Result<2>2 ),
    .O(\u3/count [2]),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y20" ),
    .INIT ( 64'h7777888877778888 ))
  \u3/Mcount_count_xor<2>11  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\u3/count [0]),
    .ADR4(\u3/count [2]),
    .ADR0(\u3/count [1]),
    .ADR5(1'b1),
    .O(\u3/Result<2>2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y20" ),
    .INIT ( 32'h66666666 ))
  \u3/Mcount_count_xor<1>11  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\u3/count [0]),
    .ADR3(1'b1),
    .ADR0(\u3/count [1]),
    .O(\u3/Result<1>2 )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y20" ),
    .INIT ( 1'b0 ))
  \u3/count_1  (
    .CE(\u3/_n0109_inv_0 ),
    .CLK(\NlwBufferSignal_u3/count_1/CLK ),
    .I(\u3/Result<1>2 ),
    .O(\u3/count<1>_pack_3 ),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y20" ),
    .INIT ( 1'b0 ))
  \u3/count_0  (
    .CE(\u3/_n0109_inv_0 ),
    .CLK(\NlwBufferSignal_u3/count_0/CLK ),
    .I(\u3/Result<0>2 ),
    .O(\u3/count [0]),
    .SRST(\u3/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y20" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \u3/Mcount_count_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u3/count [0]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\u3/Result<0>2 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y22" ),
    .INIT ( 1'b0 ))
  \u3/soft_Clr  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u3/soft_Clr/CLK ),
    .I(\u3/Status[1]_GND_5_o_equal_28_o ),
    .O(\u3/soft_Clr_1066 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y22" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \u3/Status_Status[1]_GND_5_o_equal_28_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR4(\u3/Status_FSM_FFd2_1065 ),
    .O(\u3/Status[1]_GND_5_o_equal_28_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y24" ),
    .INIT ( 64'h0000000000000500 ))
  \u3/_n0101_inv1  (
    .ADR1(1'b1),
    .ADR2(\u3/baseOvf_1076 ),
    .ADR3(\u3/Status_FSM_FFd2_1065 ),
    .ADR5(\u3/Status_FSM_FFd1_1075 ),
    .ADR0(\u3/sigOvf_1078 ),
    .ADR4(\u3/sigCount[5]_PWR_5_o_equal_7_o ),
    .O(\u3/_n0101_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y24" ),
    .INIT ( 1'b0 ))
  \u3/sigOvf  (
    .CE(\u3/sigCount[5]_PWR_5_o_equal_7_o ),
    .CLK(\NlwBufferSignal_u3/sigOvf/CLK ),
    .I(1'b1),
    .O(\u3/sigOvf_1078 ),
    .RST(\u3/clr ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y24" ),
    .INIT ( 64'h8000000000000000 ))
  \u3/sigCount[5]_PWR_5_o_equal_7_o<5>1  (
    .ADR0(\u3/sigCount [5]),
    .ADR5(\u3/sigCount [4]),
    .ADR4(\u3/sigCount [3]),
    .ADR2(\u3/sigCount [2]),
    .ADR3(\u3/sigCount [1]),
    .ADR1(\u3/sigCount [0]),
    .O(\u3/sigCount[5]_PWR_5_o_equal_7_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y24" ),
    .INIT ( 64'h0200000000000000 ))
  \u3/Status_FSM_FFd1-In1  (
    .ADR5(\u3/sigCount [0]),
    .ADR3(\u3/sigCount [1]),
    .ADR0(\u3/sigCount [2]),
    .ADR4(\u3/sigCount [3]),
    .ADR1(\u3/sigCount [4]),
    .ADR2(\u3/sigCount [5]),
    .O(\u3/Status_FSM_FFd1-In1_1142 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y21" ),
    .INIT ( 64'hAAFFAA00CCF0CCF0 ))
  \u2/Mmux_PWR_3_o_dataLock[7]_Mux_9_o_3  (
    .ADR3(\u2/sendCnt [0]),
    .ADR5(\u2/sendCnt [1]),
    .ADR1(\u2/dataLock [7]),
    .ADR0(\u2/dataLock [5]),
    .ADR4(\u2/dataLock [6]),
    .ADR2(\u2/dataLock [4]),
    .O(\u2/Mmux_PWR_3_o_dataLock[7]_Mux_9_o_3_1208 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y21" ),
    .INIT ( 1'b0 ))
  \u2/MOSI  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u2/MOSI/CLK ),
    .I(\u2/MOSI_rstpot_833 ),
    .O(\u2/MOSI_1145 ),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y21" ),
    .INIT ( 64'hFF33F3F3BBBBBBBB ))
  \u2/MOSI_rstpot  (
    .ADR5(\u2/_n0121_inv1 ),
    .ADR4(\u2/PWR_3_o_sendCnt[3]_sub_9_OUT<2> ),
    .ADR2(\u2/Mmux_PWR_3_o_dataLock[7]_Mux_9_o_4_1144 ),
    .ADR0(\u2/MOSI_1145 ),
    .ADR3(\u2/Mmux_PWR_3_o_dataLock[7]_Mux_9_o_3_1208 ),
    .ADR1(\u2/newSend_1050 ),
    .O(\u2/MOSI_rstpot_833 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y21" ),
    .INIT ( 64'h0300000000000000 ))
  \u3/Status_FSM_FFd2-In5  (
    .ADR0(1'b1),
    .ADR1(\u3/baseCount [10]),
    .ADR2(\u3/baseCount [0]),
    .ADR4(\u3/Status_FSM_FFd2-In4_1162 ),
    .ADR3(\u3/Status_FSM_FFd2-In3_1160 ),
    .ADR5(\u3/Status_FSM_FFd2-In2_1157 ),
    .O(\u3/Status_FSM_FFd2-In5_1206 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y21" ),
    .INIT ( 1'b0 ))
  \u3/Status_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u3/Status_FSM_FFd2/CLK ),
    .I(\u3/Status_FSM_FFd2-In ),
    .O(\u3/Status_FSM_FFd2_1065 ),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y21" ),
    .INIT ( 64'hAAAAEAAAAAAAAAAA ))
  \u3/Status_FSM_FFd2-In9  (
    .ADR2(\u3/Status_FSM_FFd2-In8_1168 ),
    .ADR3(\u3/Status_FSM_FFd2-In7_1169 ),
    .ADR1(\u3/Status_FSM_FFd2-In6_1170 ),
    .ADR4(\u3/Status_FSM_FFd2_1065 ),
    .ADR0(\u3/Status_FSM_FFd2-In1_1156 ),
    .ADR5(\u3/Status_FSM_FFd2-In5_1206 ),
    .O(\u3/Status_FSM_FFd2-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y21" ),
    .INIT ( 64'hFFFFEEEE00000000 ))
  \u3/Status_FSM_FFd1-In2  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR5(\u3/Status_FSM_FFd2_1065 ),
    .ADR4(\u3/baseOvf_1076 ),
    .ADR0(\u3/sigOvf_1078 ),
    .ADR1(\u3/Status_FSM_FFd1-In1_1142 ),
    .O(\u3/Status_FSM_FFd1-In2_1205 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y21" ),
    .INIT ( 1'b0 ))
  \u3/Status_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u3/Status_FSM_FFd1/CLK ),
    .I(\u3/Status_FSM_FFd1-In ),
    .O(\u3/Status_FSM_FFd1_1075 ),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y21" ),
    .INIT ( 64'hFFBFFFBFFFFF0000 ))
  \u3/Status_FSM_FFd1-In3  (
    .ADR1(\u3/count [2]),
    .ADR3(\u2/busy_1052 ),
    .ADR0(\u3/count [1]),
    .ADR5(\u3/Status_FSM_FFd1_1075 ),
    .ADR2(\u3/count [0]),
    .ADR4(\u3/Status_FSM_FFd1-In2_1205 ),
    .O(\u3/Status_FSM_FFd1-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y23" ),
    .INIT ( 64'h0000000000000001 ))
  \u3/Status_FSM_FFd2-In8  (
    .ADR5(\u3/sigCount [4]),
    .ADR2(\u3/sigCount [5]),
    .ADR0(\u3/sigCount [3]),
    .ADR4(\u3/sigCount [2]),
    .ADR1(\u3/sigCount [1]),
    .ADR3(\u3/sigCount [0]),
    .O(\u3/Status_FSM_FFd2-In8_1168 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y22" ),
    .INIT ( 64'h0000000000440444 ))
  \u3/_n009011  (
    .ADR1(\u3/Status_FSM_FFd1_1075 ),
    .ADR0(\u3/sendEnable_1073 ),
    .ADR5(\u2/busy_1052 ),
    .ADR4(\u3/count [1]),
    .ADR2(\u3/count [0]),
    .ADR3(\u3/count [2]),
    .O(\u3/_n0090 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y22" ),
    .INIT ( 1'b0 ))
  \u3/sendEnable  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u3/sendEnable/CLK ),
    .I(\u3/sendEnable_rstpot_740 ),
    .O(\u3/sendEnable_1073 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y22" ),
    .INIT ( 64'h0055005500100050 ))
  \u3/sendEnable_rstpot  (
    .ADR0(\u3/soft_Clr_1066 ),
    .ADR3(rst_IBUF_0),
    .ADR1(\u3/Status_FSM_FFd1_1075 ),
    .ADR2(\u3/sendEnable_1073 ),
    .ADR4(\u2/busy_1052 ),
    .ADR5(\u3/_n0090 ),
    .O(\u3/sendEnable_rstpot_740 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y22" ),
    .INIT ( 64'hFFFFAAAAFFFFAAAA ))
  \u3/clr1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u3/soft_Clr_1066 ),
    .ADR4(rst_IBUF_0),
    .O(\u3/clr )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y20" ),
    .INIT ( 64'hFFF000F0AACCAACC ))
  \u2/Mmux_PWR_3_o_dataLock[7]_Mux_9_o_4  (
    .ADR5(\u2/sendCnt [0]),
    .ADR3(\u2/sendCnt [1]),
    .ADR2(\u2/dataLock [3]),
    .ADR4(\u2/dataLock [1]),
    .ADR0(\u2/dataLock [2]),
    .ADR1(\u2/dataLock [0]),
    .O(\u2/Mmux_PWR_3_o_dataLock[7]_Mux_9_o_4_1144 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y21" ),
    .INIT ( 64'hFFF3FFFFAAAAAAAA ))
  \u3/Status_FSM_FFd2-In1  (
    .ADR5(\u3/Status_FSM_FFd1_1075 ),
    .ADR4(\u3/count [2]),
    .ADR3(\u2/busy_1052 ),
    .ADR2(\u3/count [1]),
    .ADR1(\u3/count [0]),
    .ADR0(\u3/Status_FSM_FFd2_1065 ),
    .O(\u3/Status_FSM_FFd2-In1_1156 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y20" ),
    .INIT ( 1'b0 ))
  \u2/dataLock_3  (
    .CE(\u2/newSend_PWR_3_o_MUX_25_o ),
    .CLK(\NlwBufferSignal_u2/dataLock_3/CLK ),
    .I(\NlwBufferSignal_u2/dataLock_3/IN ),
    .O(\u2/dataLock [3]),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y20" ),
    .INIT ( 1'b0 ))
  \u2/dataLock_2  (
    .CE(\u2/newSend_PWR_3_o_MUX_25_o ),
    .CLK(\NlwBufferSignal_u2/dataLock_2/CLK ),
    .I(\NlwBufferSignal_u2/dataLock_2/IN ),
    .O(\u2/dataLock [2]),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y20" ),
    .INIT ( 1'b0 ))
  \u2/dataLock_1  (
    .CE(\u2/newSend_PWR_3_o_MUX_25_o ),
    .CLK(\NlwBufferSignal_u2/dataLock_1/CLK ),
    .I(\NlwBufferSignal_u2/dataLock_1/IN ),
    .O(\u2/dataLock [1]),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y20" ),
    .INIT ( 1'b0 ))
  \u2/dataLock_0  (
    .CE(\u2/newSend_PWR_3_o_MUX_25_o ),
    .CLK(\NlwBufferSignal_u2/dataLock_0/CLK ),
    .I(\NlwBufferSignal_u2/dataLock_0/IN ),
    .O(\u2/dataLock [0]),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_BUF   \u2/dataLock<7>/u2/dataLock<7>_DMUX_Delay  (
    .I(\u3/_n0109_inv ),
    .O(\u3/_n0109_inv_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y21" ),
    .INIT ( 1'b0 ))
  \u2/dataLock_7  (
    .CE(\u2/newSend_PWR_3_o_MUX_25_o ),
    .CLK(\NlwBufferSignal_u2/dataLock_7/CLK ),
    .I(\NlwBufferSignal_u2/dataLock_7/IN ),
    .O(\u2/dataLock [7]),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y21" ),
    .INIT ( 64'h0000F0F00000F0F0 ))
  \u2/newSend_PWR_3_o_MUX_25_o1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u2/newData_1053 ),
    .ADR4(\u2/busy_1052 ),
    .ADR5(1'b1),
    .O(\u2/newSend_PWR_3_o_MUX_25_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y21" ),
    .INIT ( 32'hFF000000 ))
  \u3/_n0109_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\u3/Status_FSM_FFd1_1075 ),
    .ADR2(1'b1),
    .ADR4(\u2/busy_1052 ),
    .O(\u3/_n0109_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y21" ),
    .INIT ( 1'b0 ))
  \u2/dataLock_6  (
    .CE(\u2/newSend_PWR_3_o_MUX_25_o ),
    .CLK(\NlwBufferSignal_u2/dataLock_6/CLK ),
    .I(\NlwBufferSignal_u2/dataLock_6/IN ),
    .O(\u2/dataLock [6]),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y21" ),
    .INIT ( 1'b0 ))
  \u2/dataLock_5  (
    .CE(\u2/newSend_PWR_3_o_MUX_25_o ),
    .CLK(\NlwBufferSignal_u2/dataLock_5/CLK ),
    .I(\NlwBufferSignal_u2/dataLock_5/IN ),
    .O(\u2/dataLock [5]),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y21" ),
    .INIT ( 1'b0 ))
  \u2/dataLock_4  (
    .CE(\u2/newSend_PWR_3_o_MUX_25_o ),
    .CLK(\NlwBufferSignal_u2/dataLock_4/CLK ),
    .I(\NlwBufferSignal_u2/dataLock_4/IN ),
    .O(\u2/dataLock [4]),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_BUF   \u2/newSend/u2/newSend_BMUX_Delay  (
    .I(N16_pack_13),
    .O(N16)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y22" ))
  \u2/newSend_rstpot  (
    .IA(N18),
    .IB(N19),
    .O(\u2/newSend_rstpot_884 ),
    .SEL(\u2/newData_1053 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 64'hCCC0CCCCCCCCCCCC ))
  \u2/newSend_rstpot_F  (
    .ADR0(1'b1),
    .ADR1(\u2/newSend_1050 ),
    .ADR3(\u2/sendCnt [2]),
    .ADR4(\u2/sendCnt [1]),
    .ADR2(\u2/sendCnt [0]),
    .ADR5(\u2/sendCnt [3]),
    .O(N18)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 1'b0 ))
  \u2/newSend  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u2/newSend/CLK ),
    .I(\u2/newSend_rstpot_884 ),
    .O(\u2/newSend_1050 ),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 64'hFB00FF00FFFFFFFF ))
  \u2/newSend_rstpot_G  (
    .ADR1(\u2/sendCnt [3]),
    .ADR2(\u2/sendCnt [2]),
    .ADR4(\u2/sendCnt [1]),
    .ADR3(\u2/newSend_1050 ),
    .ADR0(\u2/sendCnt [0]),
    .ADR5(\u2/busy_1052 ),
    .O(N19)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 64'h0033FFCC0033FFCC ))
  \u2/Msub_PWR_3_o_sendCnt[3]_sub_9_OUT<2:0>_xor<2>11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\u2/sendCnt [2]),
    .ADR3(\u2/sendCnt [1]),
    .ADR1(\u2/sendCnt [0]),
    .ADR5(1'b1),
    .O(\u2/PWR_3_o_sendCnt[3]_sub_9_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 32'h000000C0 ))
  \u2/cs_rstpot_SW0  (
    .ADR0(1'b1),
    .ADR2(\u2/sendCnt [3]),
    .ADR4(\u2/sendCnt [2]),
    .ADR3(\u2/sendCnt [1]),
    .ADR1(\u2/sendCnt [0]),
    .O(N16_pack_13)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 1'b1 ))
  \u2/cs  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u2/cs/CLK ),
    .I(\u2/cs_rstpot_909 ),
    .O(\u2/cs_1185 ),
    .SET(rst_IBUF_0),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 64'hDDFFDDFF40000000 ))
  \u2/cs_rstpot  (
    .ADR3(\u2/newSend_1050 ),
    .ADR0(\u1/sclk_1070 ),
    .ADR1(\u2/sclkCache_1140 ),
    .ADR5(\u2/cs_1185 ),
    .ADR2(\u2/busy_1052 ),
    .ADR4(N16),
    .O(\u2/cs_rstpot_909 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y24" ),
    .INIT ( 1'b0 ))
  \u2/sclkCache  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u2/sclkCache/CLK ),
    .I(\NlwBufferSignal_u2/sclkCache/IN ),
    .O(\u2/sclkCache_1140 ),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \u1/clkCnt<5>/u1/clkCnt<5>_CMUX_Delay  (
    .I(\u1/clkCnt<4>_pack_11 ),
    .O(\u1/clkCnt [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 1'b0 ))
  \u1/clkCnt_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u1/clkCnt_5/CLK ),
    .I(Result[5]),
    .O(\u1/clkCnt [5]),
    .SRST(\u1/n0001_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 64'h7FFF8000FFFF0000 ))
  \u1/Mcount_clkCnt_xor<5>11  (
    .ADR5(\u1/clkCnt [2]),
    .ADR1(\u1/clkCnt [0]),
    .ADR3(\u1/clkCnt [1]),
    .ADR4(\u1/clkCnt [5]),
    .ADR2(\u1/clkCnt [4]),
    .ADR0(\u1/clkCnt [3]),
    .O(Result[5])
  );
  X_SFF #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 1'b0 ))
  \u1/clkCnt_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u1/clkCnt_3/CLK ),
    .I(Result[3]),
    .O(\u1/clkCnt [3]),
    .SRST(\u1/n0001_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 64'h5FFFA0005FFFA000 ))
  \u1/Mcount_clkCnt_xor<3>11  (
    .ADR1(1'b1),
    .ADR0(\u1/clkCnt [2]),
    .ADR2(\u1/clkCnt [0]),
    .ADR4(\u1/clkCnt [3]),
    .ADR3(\u1/clkCnt [1]),
    .ADR5(1'b1),
    .O(Result[3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 32'h6CCCCCCC ))
  \u1/Mcount_clkCnt_xor<4>11  (
    .ADR1(\u1/clkCnt [4]),
    .ADR0(\u1/clkCnt [2]),
    .ADR2(\u1/clkCnt [0]),
    .ADR4(\u1/clkCnt [3]),
    .ADR3(\u1/clkCnt [1]),
    .O(Result[4])
  );
  X_SFF #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 1'b0 ))
  \u1/clkCnt_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u1/clkCnt_4/CLK ),
    .I(Result[4]),
    .O(\u1/clkCnt<4>_pack_11 ),
    .SRST(\u1/n0001_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 1'b0 ))
  \u1/clkCnt_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u1/clkCnt_1/CLK ),
    .I(Result[1]),
    .O(\u1/clkCnt [1]),
    .SRST(\u1/n0001_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 64'h5555AAAA5555AAAA ))
  \u1/Mcount_clkCnt_xor<1>11  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u1/clkCnt [1]),
    .ADR3(1'b1),
    .ADR0(\u1/clkCnt [0]),
    .O(Result[1])
  );
  X_SFF #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 1'b0 ))
  \u1/clkCnt_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u1/clkCnt_0/CLK ),
    .I(Result[0]),
    .O(\u1/clkCnt [0]),
    .SRST(\u1/n0001_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \u1/Mcount_clkCnt_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u1/clkCnt [0]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(Result[0])
  );
  X_BUF   \u2/sendCnt<3>/u2/sendCnt<3>_BMUX_Delay  (
    .I(\u2/sendCnt<2>_pack_6 ),
    .O(\u2/sendCnt [2])
  );
  X_BUF   \u2/sendCnt<3>/u2/sendCnt<3>_AMUX_Delay  (
    .I(\u2/sendCnt<1>_pack_4 ),
    .O(\u2/sendCnt [1])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 1'b0 ))
  \u2/sendCnt_3  (
    .CE(\u2/_n0103_inv ),
    .CLK(\NlwBufferSignal_u2/sendCnt_3/CLK ),
    .I(\u2/GND_3_o_sendCnt[3]_mux_15_OUT<3> ),
    .O(\u2/sendCnt [3]),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 64'h70F0800070F08000 ))
  \u2/Mmux_GND_3_o_sendCnt[3]_mux_15_OUT41  (
    .ADR2(\u2/newSend_1050 ),
    .ADR0(\u2/sendCnt [0]),
    .ADR3(\u2/sendCnt [1]),
    .ADR4(\u2/sendCnt [3]),
    .ADR1(\u2/sendCnt [2]),
    .ADR5(1'b1),
    .O(\u2/GND_3_o_sendCnt[3]_mux_15_OUT<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 32'h60C060C0 ))
  \u2/Mmux_GND_3_o_sendCnt[3]_mux_15_OUT31  (
    .ADR2(\u2/newSend_1050 ),
    .ADR0(\u2/sendCnt [0]),
    .ADR3(\u2/sendCnt [1]),
    .ADR4(1'b1),
    .ADR1(\u2/sendCnt [2]),
    .O(\u2/GND_3_o_sendCnt[3]_mux_15_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 1'b0 ))
  \u2/sendCnt_2  (
    .CE(\u2/_n0103_inv ),
    .CLK(\NlwBufferSignal_u2/sendCnt_2/CLK ),
    .I(\u2/GND_3_o_sendCnt[3]_mux_15_OUT<2> ),
    .O(\u2/sendCnt<2>_pack_6 ),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 1'b0 ))
  \u2/sendCnt_0  (
    .CE(\u2/_n0103_inv ),
    .CLK(\NlwBufferSignal_u2/sendCnt_0/CLK ),
    .I(\u2/GND_3_o_sendCnt[3]_mux_15_OUT<0> ),
    .O(\u2/sendCnt [0]),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \u2/Mmux_GND_3_o_sendCnt[3]_mux_15_OUT11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u2/sendCnt [0]),
    .ADR3(\u2/newSend_1050 ),
    .ADR5(1'b1),
    .O(\u2/GND_3_o_sendCnt[3]_mux_15_OUT<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 32'h3300CC00 ))
  \u2/Mmux_GND_3_o_sendCnt[3]_mux_15_OUT21  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u2/sendCnt [1]),
    .ADR4(\u2/sendCnt [0]),
    .ADR3(\u2/newSend_1050 ),
    .O(\u2/GND_3_o_sendCnt[3]_mux_15_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 1'b0 ))
  \u2/sendCnt_1  (
    .CE(\u2/_n0103_inv ),
    .CLK(\NlwBufferSignal_u2/sendCnt_1/CLK ),
    .I(\u2/GND_3_o_sendCnt[3]_mux_15_OUT<1> ),
    .O(\u2/sendCnt<1>_pack_4 ),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y24" ),
    .INIT ( 64'hFFFA000000000000 ))
  \u1/n0001_inv1  (
    .ADR1(1'b1),
    .ADR4(\u1/clkCnt [5]),
    .ADR5(\u1/clkCnt [6]),
    .ADR2(\u1/clkCnt [2]),
    .ADR0(\u1/clkCnt [3]),
    .ADR3(\u1/clkCnt [4]),
    .O(\u1/n0001_inv )
  );
  X_BUF   \u2/SCK/u2/SCK_AMUX_Delay  (
    .I(\u2/busy_pack_7 ),
    .O(\u2/busy_1052 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'h0000FF000000DE00 ))
  \u2/_n0121_inv11  (
    .ADR3(\u1/sclk_1070 ),
    .ADR4(\u2/sclkCache_1140 ),
    .ADR1(\u2/sendCnt [1]),
    .ADR2(\u2/sendCnt [0]),
    .ADR0(\u2/sendCnt [3]),
    .ADR5(\u2/sendCnt [2]),
    .O(\u2/_n0121_inv1 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 1'b0 ))
  \u2/SCK  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u2/SCK/CLK ),
    .I(\u2/SCK_rstpot_926 ),
    .O(\u2/SCK_1141 ),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'hF0F7F000FFFF0000 ))
  \u2/SCK_rstpot  (
    .ADR3(\u2/_n0121_inv1 ),
    .ADR1(\u2/sclkCache_1140 ),
    .ADR0(\u2/busy_1052 ),
    .ADR4(\u2/SCK_1141 ),
    .ADR5(\u2/newSend_1050 ),
    .ADR2(\u1/sclk_1070 ),
    .O(\u2/SCK_rstpot_926 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'h22FF00FF22FF00FF ))
  \u2/_n0103_inv1  (
    .ADR2(1'b1),
    .ADR3(\u2/newSend_1050 ),
    .ADR1(\u1/sclk_1070 ),
    .ADR4(\u2/sclkCache_1140 ),
    .ADR0(\u2/busy_1052 ),
    .ADR5(1'b1),
    .O(\u2/_n0103_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 32'hAA00EE00 ))
  \u2/busy_rstpot  (
    .ADR2(1'b1),
    .ADR3(\u2/newSend_1050 ),
    .ADR1(\u1/sclk_1070 ),
    .ADR4(\u2/sclkCache_1140 ),
    .ADR0(\u2/busy_1052 ),
    .O(\u2/busy_rstpot_937 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 1'b0 ))
  \u2/busy  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u2/busy/CLK ),
    .I(\u2/busy_rstpot_937 ),
    .O(\u2/busy_pack_7 ),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_BUF   \u1/clkCnt<6>/u1/clkCnt<6>_BMUX_Delay  (
    .I(\u1/clkCnt<2>_pack_2 ),
    .O(\u1/clkCnt [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 64'h7777FFFF7777FFFF ))
  \u1/Mcount_clkCnt_xor<3>111  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u1/clkCnt [2]),
    .ADR4(\u1/clkCnt [0]),
    .ADR1(\u1/clkCnt [1]),
    .ADR5(1'b1),
    .O(\u1/Mcount_clkCnt_xor<3>11_1211 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 32'h6666AAAA ))
  \u1/Mcount_clkCnt_xor<2>11  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u1/clkCnt [2]),
    .ADR4(\u1/clkCnt [0]),
    .ADR1(\u1/clkCnt [1]),
    .O(Result[2])
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 1'b0 ))
  \u1/clkCnt_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u1/clkCnt_2/CLK ),
    .I(Result[2]),
    .O(\u1/clkCnt<2>_pack_2 ),
    .SRST(\u1/n0001_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 1'b0 ))
  \u1/clkCnt_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u1/clkCnt_6/CLK ),
    .I(Result[6]),
    .O(\u1/clkCnt [6]),
    .SRST(\u1/n0001_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 64'hFF005FA0FF00FF00 ))
  \u1/Mcount_clkCnt_xor<6>11  (
    .ADR1(1'b1),
    .ADR4(\u1/Mcount_clkCnt_xor<3>11_1211 ),
    .ADR5(\u1/clkCnt [4]),
    .ADR3(\u1/clkCnt [6]),
    .ADR2(\u1/clkCnt [5]),
    .ADR0(\u1/clkCnt [3]),
    .O(Result[6])
  );
  X_BUF   \u2/newData/u2/newData_DMUX_Delay  (
    .I(\u2/riseSigCache_pack_1 ),
    .O(\u2/riseSigCache_1209 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y22" ),
    .INIT ( 1'b0 ))
  \u2/newData  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u2/newData/CLK ),
    .I(\u2/riseSigCache_riseSig_AND_1_o ),
    .O(\u2/newData_1053 ),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y22" ),
    .INIT ( 64'h3300330033003300 ))
  \u2/riseSigCache_riseSig_AND_1_o1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(\u3/sendEnable_1073 ),
    .ADR1(\u2/riseSigCache_1209 ),
    .ADR5(1'b1),
    .O(\u2/riseSigCache_riseSig_AND_1_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y22" ),
    .INIT ( 32'hFF00FF00 ))
  \u3/sendEnable_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u3/sendEnable_1073 ),
    .ADR4(1'b1),
    .O(\u3/sendEnable_rt_876 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y22" ),
    .INIT ( 1'b0 ))
  \u2/riseSigCache  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u2/riseSigCache/CLK ),
    .I(\u3/sendEnable_rt_876 ),
    .O(\u2/riseSigCache_pack_1 ),
    .RST(rst_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y24" ),
    .INIT ( 1'b0 ))
  \u1/sclk  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u1/sclk/CLK ),
    .I(\u1/sclk_rstpot_1019 ),
    .O(\u1/sclk_1070 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y24" ),
    .INIT ( 64'h5557FFFFAAA80000 ))
  \u1/sclk_rstpot  (
    .ADR0(\u1/clkCnt [5]),
    .ADR4(\u1/clkCnt [6]),
    .ADR2(\u1/clkCnt [2]),
    .ADR5(\u1/sclk_1070 ),
    .ADR3(\u1/clkCnt [3]),
    .ADR1(\u1/clkCnt [4]),
    .O(\u1/sclk_rstpot_1019 )
  );
  X_BUF   \NlwBufferBlock_sigClk_BUFGP/BUFG/IN  (
    .I(\sigClk_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_sigClk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_BUSY_OBUF/I  (
    .I(\u2/busy_1052 ),
    .O(\NlwBufferSignal_BUSY_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_CS_OBUF/I  (
    .I(\u2/cs_1185 ),
    .O(\NlwBufferSignal_CS_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_2_OBUF/I  (
    .I(\u3/data [2]),
    .O(\NlwBufferSignal_data_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_1_OBUF/I  (
    .I(\u3/data [1]),
    .O(\NlwBufferSignal_data_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_3_OBUF/I  (
    .I(\u3/data<3>_0 ),
    .O(\NlwBufferSignal_data_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_0_OBUF/I  (
    .I(\u3/data [0]),
    .O(\NlwBufferSignal_data_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Status_1_OBUF/I  (
    .I(\u3/Status_FSM_FFd1_1075 ),
    .O(\NlwBufferSignal_Status_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sendEnable_OBUF/I  (
    .I(\u3/sendEnable_1073 ),
    .O(\NlwBufferSignal_sendEnable_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sclk_OBUF/I  (
    .I(\u1/sclk_1070 ),
    .O(\NlwBufferSignal_sclk_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u3/data_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/data_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Status_0_OBUF/I  (
    .I(\u3/Status_FSM_FFd2_1065 ),
    .O(\NlwBufferSignal_Status_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u3/data_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/data_6/CLK )
  );
  X_BUF   \NlwBufferBlock_data_7_OBUF/I  (
    .I(\u3/data [7]),
    .O(\NlwBufferSignal_data_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_5_OBUF/I  (
    .I(\u3/data [5]),
    .O(\NlwBufferSignal_data_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_30/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_30/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_31/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_31/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/data_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/data_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/data_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/data_3/CLK )
  );
  X_BUF   \NlwBufferBlock_SCK_OBUF/I  (
    .I(\u2/SCK_1141 ),
    .O(\NlwBufferSignal_SCK_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_6_OBUF/I  (
    .I(\u3/data [6]),
    .O(\NlwBufferSignal_data_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u3/data_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/data_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/data_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/data_4/CLK )
  );
  X_BUF   \NlwBufferBlock_data_4_OBUF/I  (
    .I(\u3/data [4]),
    .O(\NlwBufferSignal_data_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MOSI_OBUF/I  (
    .I(\u2/MOSI_1145 ),
    .O(\NlwBufferSignal_MOSI_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_23/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_22/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_21/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_20/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseOvf/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseOvf/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_15/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_14/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_13/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_12/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/data_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/data_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/data_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/data_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_19/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_18/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_17/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_16/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_28/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_28/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_29/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_29/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_26/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_27/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_27/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_24/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/baseCount_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/baseCount_25/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/sigCount_5/CLK  (
    .I(sigClk_BUFGP),
    .O(\NlwBufferSignal_u3/sigCount_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/sigCount_3/CLK  (
    .I(sigClk_BUFGP),
    .O(\NlwBufferSignal_u3/sigCount_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/sigCount_4/CLK  (
    .I(sigClk_BUFGP),
    .O(\NlwBufferSignal_u3/sigCount_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/sigCount_2/CLK  (
    .I(sigClk_BUFGP),
    .O(\NlwBufferSignal_u3/sigCount_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/sigCount_1/CLK  (
    .I(sigClk_BUFGP),
    .O(\NlwBufferSignal_u3/sigCount_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/sigCount_0/CLK  (
    .I(sigClk_BUFGP),
    .O(\NlwBufferSignal_u3/sigCount_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/count_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/count_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/count_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/count_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/count_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/count_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/soft_Clr/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/soft_Clr/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/sigOvf/CLK  (
    .I(sigClk_BUFGP),
    .O(\NlwBufferSignal_u3/sigOvf/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/MOSI/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/MOSI/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/Status_FSM_FFd2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/Status_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/Status_FSM_FFd1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/Status_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_u3/sendEnable/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u3/sendEnable/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/dataLock_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_3/IN  (
    .I(\u3/data<3>_0 ),
    .O(\NlwBufferSignal_u2/dataLock_3/IN )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/dataLock_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_2/IN  (
    .I(\u3/data [2]),
    .O(\NlwBufferSignal_u2/dataLock_2/IN )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/dataLock_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_1/IN  (
    .I(\u3/data [1]),
    .O(\NlwBufferSignal_u2/dataLock_1/IN )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/dataLock_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_0/IN  (
    .I(\u3/data [0]),
    .O(\NlwBufferSignal_u2/dataLock_0/IN )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/dataLock_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_7/IN  (
    .I(\u3/data [7]),
    .O(\NlwBufferSignal_u2/dataLock_7/IN )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/dataLock_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_6/IN  (
    .I(\u3/data [6]),
    .O(\NlwBufferSignal_u2/dataLock_6/IN )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/dataLock_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_5/IN  (
    .I(\u3/data [5]),
    .O(\NlwBufferSignal_u2/dataLock_5/IN )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/dataLock_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/dataLock_4/IN  (
    .I(\u3/data [4]),
    .O(\NlwBufferSignal_u2/dataLock_4/IN )
  );
  X_BUF   \NlwBufferBlock_u2/newSend/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/newSend/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/cs/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/cs/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/sclkCache/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/sclkCache/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/sclkCache/IN  (
    .I(\u1/sclk_1070 ),
    .O(\NlwBufferSignal_u2/sclkCache/IN )
  );
  X_BUF   \NlwBufferBlock_u1/clkCnt_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u1/clkCnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u1/clkCnt_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u1/clkCnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u1/clkCnt_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u1/clkCnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u1/clkCnt_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u1/clkCnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u1/clkCnt_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u1/clkCnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/sendCnt_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/sendCnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/sendCnt_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/sendCnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/sendCnt_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/sendCnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/sendCnt_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/sendCnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/SCK/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/SCK/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/busy/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/busy/CLK )
  );
  X_BUF   \NlwBufferBlock_u1/clkCnt_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u1/clkCnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u1/clkCnt_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u1/clkCnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/newData/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/newData/CLK )
  );
  X_BUF   \NlwBufferBlock_u2/riseSigCache/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u2/riseSigCache/CLK )
  );
  X_BUF   \NlwBufferBlock_u1/sclk/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_u1/sclk/CLK )
  );
  X_ZERO   NlwBlock_top_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_top_VCC (
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

