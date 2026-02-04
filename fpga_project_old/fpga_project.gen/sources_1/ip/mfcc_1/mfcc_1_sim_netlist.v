// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jan 20 12:47:10 2026
// Host        : audrey running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/the5t/OneDrive/Documents/GitHub/rwth-lab-fpga-WIP/fpga_project/fpga_project.gen/sources_1/ip/mfcc_1/mfcc_1_sim_netlist.v
// Design      : mfcc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mfcc_1,mfcc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "mfcc,Vivado 2023.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module mfcc_1
   (ap_clk,
    ap_rst_n,
    in_stream_TVALID,
    in_stream_TREADY,
    in_stream_TDATA,
    in_stream_TLAST,
    in_stream_TKEEP,
    in_stream_TSTRB,
    out_stream_TVALID,
    out_stream_TREADY,
    out_stream_TDATA,
    out_stream_TLAST,
    out_stream_TKEEP,
    out_stream_TSTRB);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_stream:out_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TVALID" *) input in_stream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TREADY" *) output in_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TDATA" *) input [15:0]in_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TLAST" *) input [0:0]in_stream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TKEEP" *) input [1:0]in_stream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_stream, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, INSERT_VIP 0" *) input [1:0]in_stream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TVALID" *) output out_stream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TREADY" *) input out_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TDATA" *) output [15:0]out_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TLAST" *) output [0:0]out_stream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TKEEP" *) output [1:0]out_stream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_stream, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, INSERT_VIP 0" *) output [1:0]out_stream_TSTRB;

  wire \<const0> ;
  wire \<const1> ;
  wire ap_clk;
  wire ap_rst_n;
  wire in_stream_TREADY;
  wire in_stream_TVALID;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire out_stream_TVALID;
  wire [15:0]NLW_inst_out_stream_TDATA_UNCONNECTED;
  wire [1:0]NLW_inst_out_stream_TKEEP_UNCONNECTED;
  wire [1:0]NLW_inst_out_stream_TSTRB_UNCONNECTED;

  assign out_stream_TDATA[15] = \<const0> ;
  assign out_stream_TDATA[14] = \<const0> ;
  assign out_stream_TDATA[13] = \<const0> ;
  assign out_stream_TDATA[12] = \<const0> ;
  assign out_stream_TDATA[11] = \<const0> ;
  assign out_stream_TDATA[10] = \<const0> ;
  assign out_stream_TDATA[9] = \<const0> ;
  assign out_stream_TDATA[8] = \<const0> ;
  assign out_stream_TDATA[7] = \<const0> ;
  assign out_stream_TDATA[6] = \<const0> ;
  assign out_stream_TDATA[5] = \<const0> ;
  assign out_stream_TDATA[4] = \<const0> ;
  assign out_stream_TDATA[3] = \<const0> ;
  assign out_stream_TDATA[2] = \<const0> ;
  assign out_stream_TDATA[1] = \<const0> ;
  assign out_stream_TDATA[0] = \<const0> ;
  assign out_stream_TKEEP[1] = \<const1> ;
  assign out_stream_TKEEP[0] = \<const1> ;
  assign out_stream_TSTRB[1] = \<const1> ;
  assign out_stream_TSTRB[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "7'b0000001" *) 
  (* ap_ST_fsm_state2 = "7'b0000010" *) 
  (* ap_ST_fsm_state3 = "7'b0000100" *) 
  (* ap_ST_fsm_state4 = "7'b0001000" *) 
  (* ap_ST_fsm_state5 = "7'b0010000" *) 
  (* ap_ST_fsm_state6 = "7'b0100000" *) 
  (* ap_ST_fsm_state7 = "7'b1000000" *) 
  mfcc_1_mfcc inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in_stream_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .in_stream_TKEEP({1'b0,1'b0}),
        .in_stream_TLAST(1'b0),
        .in_stream_TREADY(in_stream_TREADY),
        .in_stream_TSTRB({1'b0,1'b0}),
        .in_stream_TVALID(in_stream_TVALID),
        .out_stream_TDATA(NLW_inst_out_stream_TDATA_UNCONNECTED[15:0]),
        .out_stream_TKEEP(NLW_inst_out_stream_TKEEP_UNCONNECTED[1:0]),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TSTRB(NLW_inst_out_stream_TSTRB_UNCONNECTED[1:0]),
        .out_stream_TVALID(out_stream_TVALID));
endmodule

(* ORIG_REF_NAME = "mfcc" *) (* ap_ST_fsm_state1 = "7'b0000001" *) (* ap_ST_fsm_state2 = "7'b0000010" *) 
(* ap_ST_fsm_state3 = "7'b0000100" *) (* ap_ST_fsm_state4 = "7'b0001000" *) (* ap_ST_fsm_state5 = "7'b0010000" *) 
(* ap_ST_fsm_state6 = "7'b0100000" *) (* ap_ST_fsm_state7 = "7'b1000000" *) (* hls_module = "yes" *) 
module mfcc_1_mfcc
   (ap_clk,
    ap_rst_n,
    in_stream_TDATA,
    in_stream_TVALID,
    in_stream_TREADY,
    in_stream_TKEEP,
    in_stream_TSTRB,
    in_stream_TLAST,
    out_stream_TDATA,
    out_stream_TVALID,
    out_stream_TREADY,
    out_stream_TKEEP,
    out_stream_TSTRB,
    out_stream_TLAST);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in_stream_TDATA;
  input in_stream_TVALID;
  output in_stream_TREADY;
  input [1:0]in_stream_TKEEP;
  input [1:0]in_stream_TSTRB;
  input [0:0]in_stream_TLAST;
  output [15:0]out_stream_TDATA;
  output out_stream_TVALID;
  input out_stream_TREADY;
  output [1:0]out_stream_TKEEP;
  output [1:0]out_stream_TSTRB;
  output [0:0]out_stream_TLAST;

  wire \<const0> ;
  wire \ap_CS_fsm_reg_n_3_[3] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire [6:1]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg;
  wire grp_mfcc_Pipeline_task_2_fu_52_n_3;
  wire grp_mfcc_Pipeline_task_2_fu_52_n_6;
  wire grp_mfcc_Pipeline_task_2_fu_52_n_7;
  wire grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg;
  wire grp_mfcc_Pipeline_task_6_fu_64_n_4;
  wire grp_mfcc_Pipeline_task_6_fu_64_n_5;
  wire grp_mfcc_Pipeline_task_6_fu_64_n_8;
  wire in_stream_TREADY;
  wire in_stream_TVALID;
  wire in_stream_TVALID_int_regslice;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire out_stream_TVALID;
  wire regslice_both_out_stream_V_data_V_U_n_5;

  assign out_stream_TDATA[15] = \<const0> ;
  assign out_stream_TDATA[14] = \<const0> ;
  assign out_stream_TDATA[13] = \<const0> ;
  assign out_stream_TDATA[12] = \<const0> ;
  assign out_stream_TDATA[11] = \<const0> ;
  assign out_stream_TDATA[10] = \<const0> ;
  assign out_stream_TDATA[9] = \<const0> ;
  assign out_stream_TDATA[8] = \<const0> ;
  assign out_stream_TDATA[7] = \<const0> ;
  assign out_stream_TDATA[6] = \<const0> ;
  assign out_stream_TDATA[5] = \<const0> ;
  assign out_stream_TDATA[4] = \<const0> ;
  assign out_stream_TDATA[3] = \<const0> ;
  assign out_stream_TDATA[2] = \<const0> ;
  assign out_stream_TDATA[1] = \<const0> ;
  assign out_stream_TDATA[0] = \<const0> ;
  assign out_stream_TKEEP[1] = \<const0> ;
  assign out_stream_TKEEP[0] = \<const0> ;
  assign out_stream_TSTRB[1] = \<const0> ;
  assign out_stream_TSTRB[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(ap_CS_fsm_state6),
        .I2(ap_CS_fsm_state5),
        .I3(\ap_CS_fsm_reg_n_3_[3] ),
        .I4(ap_CS_fsm_state3),
        .I5(ap_CS_fsm_state2),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(\ap_CS_fsm_reg_n_3_[3] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_3_[3] ),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  mfcc_1_mfcc_mfcc_Pipeline_task_2 grp_mfcc_Pipeline_task_2_fu_52
       (.D(ap_NS_fsm[3:2]),
        .Q({ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .\ap_CS_fsm_reg[1] (grp_mfcc_Pipeline_task_2_fu_52_n_6),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg(grp_mfcc_Pipeline_task_2_fu_52_n_7),
        .\i_fu_46_reg[6]_0 (grp_mfcc_Pipeline_task_2_fu_52_n_3),
        .in_stream_TVALID_int_regslice(in_stream_TVALID_int_regslice));
  FDRE #(
    .INIT(1'b0)) 
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_mfcc_Pipeline_task_2_fu_52_n_6),
        .Q(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .R(ap_rst_n_inv));
  mfcc_1_mfcc_mfcc_Pipeline_task_6 grp_mfcc_Pipeline_task_6_fu_64
       (.D(ap_NS_fsm[6:5]),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_state5}),
        .\ap_CS_fsm_reg[4] (grp_mfcc_Pipeline_task_6_fu_64_n_8),
        .\ap_CS_fsm_reg[6] (regslice_both_out_stream_V_data_V_U_n_5),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg_0(grp_mfcc_Pipeline_task_6_fu_64_n_5),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice),
        .\val_out_last_reg_116_reg[0]_0 (grp_mfcc_Pipeline_task_6_fu_64_n_4));
  FDRE #(
    .INIT(1'b0)) 
    grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_mfcc_Pipeline_task_6_fu_64_n_8),
        .Q(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .R(ap_rst_n_inv));
  mfcc_1_mfcc_regslice_both regslice_both_in_stream_V_data_V_U
       (.\B_V_data_1_state_reg[0]_0 (grp_mfcc_Pipeline_task_2_fu_52_n_7),
        .\B_V_data_1_state_reg[1]_0 (grp_mfcc_Pipeline_task_2_fu_52_n_3),
        .Q(ap_CS_fsm_state3),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .in_stream_TREADY(in_stream_TREADY),
        .in_stream_TVALID(in_stream_TVALID),
        .in_stream_TVALID_int_regslice(in_stream_TVALID_int_regslice));
  mfcc_1_mfcc_regslice_both_0 regslice_both_out_stream_V_data_V_U
       (.\B_V_data_1_state_reg[0]_0 (out_stream_TVALID),
        .Q({ap_CS_fsm_state7,ap_CS_fsm_state6}),
        .\ap_CS_fsm_reg[6] (regslice_both_out_stream_V_data_V_U_n_5),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice));
  mfcc_1_mfcc_regslice_both__parameterized1 regslice_both_out_stream_V_last_V_U
       (.\B_V_data_1_payload_A_reg[0]_0 (grp_mfcc_Pipeline_task_6_fu_64_n_4),
        .\B_V_data_1_state_reg[0]_0 (grp_mfcc_Pipeline_task_6_fu_64_n_5),
        .Q(ap_CS_fsm_state6),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice));
endmodule

(* ORIG_REF_NAME = "mfcc_flow_control_loop_pipe_sequential_init" *) 
module mfcc_1_mfcc_flow_control_loop_pipe_sequential_init
   (ap_rst_n_0,
    \val_out_last_reg_116_reg[0] ,
    m_fu_52,
    D,
    add_ln106_fu_89_p2,
    \ap_CS_fsm_reg[4] ,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
    \m_fu_52_reg[0] ,
    out_stream_TREADY_int_regslice,
    Q,
    \val_out_last_reg_116_reg[0]_0 ,
    \ap_CS_fsm_reg[6] ,
    \m_fu_52_reg[4] ,
    \m_fu_52_reg[4]_0 ,
    \m_fu_52_reg[4]_1 ,
    \m_fu_52_reg[4]_2 ,
    \m_fu_52_reg[4]_3 ,
    \m_fu_52_reg[5] );
  output ap_rst_n_0;
  output \val_out_last_reg_116_reg[0] ;
  output m_fu_52;
  output [1:0]D;
  output [5:0]add_ln106_fu_89_p2;
  output \ap_CS_fsm_reg[4] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg;
  input \m_fu_52_reg[0] ;
  input out_stream_TREADY_int_regslice;
  input [1:0]Q;
  input \val_out_last_reg_116_reg[0]_0 ;
  input \ap_CS_fsm_reg[6] ;
  input \m_fu_52_reg[4] ;
  input \m_fu_52_reg[4]_0 ;
  input \m_fu_52_reg[4]_1 ;
  input \m_fu_52_reg[4]_2 ;
  input \m_fu_52_reg[4]_3 ;
  input \m_fu_52_reg[5] ;

  wire [1:0]D;
  wire [1:0]Q;
  wire [5:0]add_ln106_fu_89_p2;
  wire \ap_CS_fsm[6]_i_3_n_3 ;
  wire \ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[6] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_3;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_3;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg;
  wire m_fu_52;
  wire \m_fu_52[4]_i_2_n_3 ;
  wire \m_fu_52[5]_i_3_n_3 ;
  wire \m_fu_52[5]_i_4_n_3 ;
  wire \m_fu_52[5]_i_5_n_3 ;
  wire \m_fu_52_reg[0] ;
  wire \m_fu_52_reg[4] ;
  wire \m_fu_52_reg[4]_0 ;
  wire \m_fu_52_reg[4]_1 ;
  wire \m_fu_52_reg[4]_2 ;
  wire \m_fu_52_reg[4]_3 ;
  wire \m_fu_52_reg[5] ;
  wire out_stream_TREADY_int_regslice;
  wire \val_out_last_reg_116[0]_i_2_n_3 ;
  wire \val_out_last_reg_116_reg[0] ;
  wire \val_out_last_reg_116_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hEFAAEFFFAAAAAAAA)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(Q[0]),
        .I1(\ap_CS_fsm[6]_i_3_n_3 ),
        .I2(\m_fu_52[5]_i_3_n_3 ),
        .I3(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .I4(ap_done_cache),
        .I5(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBAFFBAAAAAAAAAAA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(\ap_CS_fsm_reg[6] ),
        .I1(\ap_CS_fsm[6]_i_3_n_3 ),
        .I2(\m_fu_52[5]_i_3_n_3 ),
        .I3(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .I4(ap_done_cache),
        .I5(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \ap_CS_fsm[6]_i_3 
       (.I0(\m_fu_52_reg[0] ),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q[1]),
        .O(\ap_CS_fsm[6]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hA222FFFFA2220000)) 
    ap_done_cache_i_1__0
       (.I0(\m_fu_52[5]_i_3_n_3 ),
        .I1(\m_fu_52_reg[0] ),
        .I2(out_stream_TREADY_int_regslice),
        .I3(Q[1]),
        .I4(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .I5(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_3),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2020AA20AA20AA20)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(\m_fu_52[5]_i_3_n_3 ),
        .I2(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .I3(\m_fu_52_reg[0] ),
        .I4(out_stream_TREADY_int_regslice),
        .I5(Q[1]),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBBBBF3BB)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_loop_init_int),
        .I1(ap_rst_n),
        .I2(\m_fu_52[5]_i_3_n_3 ),
        .I3(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .I4(\ap_CS_fsm[6]_i_3_n_3 ),
        .O(ap_loop_init_int_i_1__0_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFAAAAAAFFFFAAAA)) 
    grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(out_stream_TREADY_int_regslice),
        .I3(\m_fu_52_reg[0] ),
        .I4(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .I5(\m_fu_52[5]_i_3_n_3 ),
        .O(\ap_CS_fsm_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_fu_52[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\m_fu_52_reg[4]_2 ),
        .O(add_ln106_fu_89_p2[0]));
  LUT3 #(
    .INIT(8'h12)) 
    \m_fu_52[1]_i_1 
       (.I0(\m_fu_52_reg[4]_1 ),
        .I1(ap_loop_init_int),
        .I2(\m_fu_52_reg[4]_2 ),
        .O(add_ln106_fu_89_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \m_fu_52[2]_i_1 
       (.I0(\m_fu_52_reg[4]_0 ),
        .I1(\m_fu_52_reg[4]_1 ),
        .I2(ap_loop_init_int),
        .I3(\m_fu_52_reg[4]_2 ),
        .O(add_ln106_fu_89_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \m_fu_52[3]_i_1 
       (.I0(\m_fu_52_reg[4]_3 ),
        .I1(\m_fu_52_reg[4]_2 ),
        .I2(ap_loop_init_int),
        .I3(\m_fu_52_reg[4]_1 ),
        .I4(\m_fu_52_reg[4]_0 ),
        .O(add_ln106_fu_89_p2[3]));
  LUT6 #(
    .INIT(64'h006A00AA00AA00AA)) 
    \m_fu_52[4]_i_1 
       (.I0(\m_fu_52_reg[4] ),
        .I1(\m_fu_52_reg[4]_0 ),
        .I2(\m_fu_52_reg[4]_1 ),
        .I3(\m_fu_52[4]_i_2_n_3 ),
        .I4(\m_fu_52_reg[4]_2 ),
        .I5(\m_fu_52_reg[4]_3 ),
        .O(add_ln106_fu_89_p2[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_fu_52[4]_i_2 
       (.I0(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .I1(ap_loop_init_int),
        .O(\m_fu_52[4]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h22020202)) 
    \m_fu_52[5]_i_1 
       (.I0(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .I1(\m_fu_52[5]_i_3_n_3 ),
        .I2(\m_fu_52_reg[0] ),
        .I3(out_stream_TREADY_int_regslice),
        .I4(Q[1]),
        .O(m_fu_52));
  LUT4 #(
    .INIT(16'hD222)) 
    \m_fu_52[5]_i_2 
       (.I0(\m_fu_52_reg[5] ),
        .I1(ap_loop_init_int),
        .I2(\m_fu_52[5]_i_4_n_3 ),
        .I3(\m_fu_52_reg[4] ),
        .O(add_ln106_fu_89_p2[5]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \m_fu_52[5]_i_3 
       (.I0(\m_fu_52[5]_i_5_n_3 ),
        .I1(\m_fu_52_reg[4]_1 ),
        .I2(\m_fu_52_reg[4]_2 ),
        .I3(\m_fu_52[4]_i_2_n_3 ),
        .I4(\m_fu_52_reg[4]_0 ),
        .I5(\m_fu_52_reg[4] ),
        .O(\m_fu_52[5]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \m_fu_52[5]_i_4 
       (.I0(\m_fu_52_reg[4]_3 ),
        .I1(\m_fu_52_reg[4]_2 ),
        .I2(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\m_fu_52_reg[4]_1 ),
        .I5(\m_fu_52_reg[4]_0 ),
        .O(\m_fu_52[5]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hD5FF)) 
    \m_fu_52[5]_i_5 
       (.I0(\m_fu_52_reg[5] ),
        .I1(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\m_fu_52_reg[4]_3 ),
        .O(\m_fu_52[5]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3AAA3333)) 
    \val_out_last_reg_116[0]_i_1 
       (.I0(\val_out_last_reg_116_reg[0]_0 ),
        .I1(\val_out_last_reg_116[0]_i_2_n_3 ),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\m_fu_52_reg[0] ),
        .I5(\m_fu_52[5]_i_3_n_3 ),
        .O(\val_out_last_reg_116_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \val_out_last_reg_116[0]_i_2 
       (.I0(\m_fu_52[5]_i_5_n_3 ),
        .I1(\m_fu_52_reg[4] ),
        .I2(\m_fu_52_reg[4]_0 ),
        .I3(\m_fu_52_reg[4]_1 ),
        .I4(\m_fu_52_reg[4]_2 ),
        .I5(\m_fu_52[4]_i_2_n_3 ),
        .O(\val_out_last_reg_116[0]_i_2_n_3 ));
endmodule

(* ORIG_REF_NAME = "mfcc_flow_control_loop_pipe_sequential_init" *) 
module mfcc_1_mfcc_flow_control_loop_pipe_sequential_init_1
   (D,
    E,
    \i_fu_46_reg[6] ,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[1] ,
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg,
    ap_rst_n_inv,
    ap_clk,
    Q,
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
    in_stream_TVALID_int_regslice,
    ap_rst_n,
    \ap_CS_fsm_reg[3] );
  output [9:0]D;
  output [0:0]E;
  output \i_fu_46_reg[6] ;
  output [1:0]\ap_CS_fsm_reg[2] ;
  output \ap_CS_fsm_reg[1] ;
  output grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input [9:0]Q;
  input grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg;
  input in_stream_TVALID_int_regslice;
  input ap_rst_n;
  input [1:0]\ap_CS_fsm_reg[3] ;

  wire \B_V_data_1_state[0]_i_3_n_3 ;
  wire \B_V_data_1_state[1]_i_4_n_3 ;
  wire \B_V_data_1_state[1]_i_5_n_3 ;
  wire [9:0]D;
  wire [0:0]E;
  wire [9:0]Q;
  wire \ap_CS_fsm_reg[1] ;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_3;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_3;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg;
  wire grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg;
  wire \i_fu_46[7]_i_2_n_3 ;
  wire \i_fu_46[7]_i_3_n_3 ;
  wire \i_fu_46[8]_i_2_n_3 ;
  wire \i_fu_46[9]_i_3_n_3 ;
  wire \i_fu_46[9]_i_4_n_3 ;
  wire \i_fu_46[9]_i_5_n_3 ;
  wire \i_fu_46_reg[6] ;
  wire in_stream_TVALID_int_regslice;

  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    \B_V_data_1_state[0]_i_2__0 
       (.I0(\B_V_data_1_state[1]_i_4_n_3 ),
        .I1(\B_V_data_1_state[0]_i_3_n_3 ),
        .I2(\B_V_data_1_state[1]_i_5_n_3 ),
        .I3(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I4(\ap_CS_fsm_reg[3] [1]),
        .I5(in_stream_TVALID_int_regslice),
        .O(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg));
  LUT4 #(
    .INIT(16'h3F2A)) 
    \B_V_data_1_state[0]_i_3 
       (.I0(Q[6]),
        .I1(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[7]),
        .O(\B_V_data_1_state[0]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h00000000A000A222)) 
    \B_V_data_1_state[1]_i_3 
       (.I0(\B_V_data_1_state[1]_i_4_n_3 ),
        .I1(Q[6]),
        .I2(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[7]),
        .I5(\B_V_data_1_state[1]_i_5_n_3 ),
        .O(\i_fu_46_reg[6] ));
  LUT6 #(
    .INIT(64'hFF000000FF010101)) 
    \B_V_data_1_state[1]_i_4 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .I4(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I5(Q[8]),
        .O(\B_V_data_1_state[1]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFFFFFF)) 
    \B_V_data_1_state[1]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(ap_loop_init_int),
        .I4(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I5(Q[9]),
        .O(\B_V_data_1_state[1]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[3] [0]),
        .I1(\i_fu_46_reg[6] ),
        .I2(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I3(ap_done_cache),
        .I4(\ap_CS_fsm_reg[3] [1]),
        .O(\ap_CS_fsm_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm_reg[3] [1]),
        .I1(ap_done_cache),
        .I2(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I3(\i_fu_46_reg[6] ),
        .O(\ap_CS_fsm_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1
       (.I0(\i_fu_46_reg[6] ),
        .I1(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_3),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF5DDDDD)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(in_stream_TVALID_int_regslice),
        .I3(\i_fu_46_reg[6] ),
        .I4(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .O(ap_loop_init_int_i_1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_i_1
       (.I0(\ap_CS_fsm_reg[3] [0]),
        .I1(\i_fu_46_reg[6] ),
        .I2(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .O(\ap_CS_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \i_fu_46[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(Q[0]),
        .I2(\i_fu_46_reg[6] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_46[1]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \i_fu_46[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(ap_loop_init_int),
        .I3(Q[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h12222222)) 
    \i_fu_46[3]_i_1 
       (.I0(Q[3]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h060A0A0A0A0A0A0A)) 
    \i_fu_46[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\i_fu_46[7]_i_2_n_3 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h44B4)) 
    \i_fu_46[5]_i_1 
       (.I0(\i_fu_46[7]_i_3_n_3 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(ap_loop_init_int),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00009AAA)) 
    \i_fu_46[6]_i_1 
       (.I0(Q[6]),
        .I1(\i_fu_46[7]_i_3_n_3 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(ap_loop_init_int),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h2222122222222222)) 
    \i_fu_46[7]_i_1 
       (.I0(Q[7]),
        .I1(\i_fu_46[7]_i_2_n_3 ),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\i_fu_46[7]_i_3_n_3 ),
        .I5(Q[6]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_46[7]_i_2 
       (.I0(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .O(\i_fu_46[7]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFF7F7F7FFFFFFFFF)) 
    \i_fu_46[7]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(Q[3]),
        .O(\i_fu_46[7]_i_3_n_3 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \i_fu_46[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\i_fu_46[8]_i_2_n_3 ),
        .I3(Q[7]),
        .I4(ap_loop_init_int),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00007000)) 
    \i_fu_46[8]_i_2 
       (.I0(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\i_fu_46[7]_i_3_n_3 ),
        .O(\i_fu_46[8]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \i_fu_46[9]_i_1 
       (.I0(\i_fu_46[9]_i_3_n_3 ),
        .I1(in_stream_TVALID_int_regslice),
        .I2(\i_fu_46_reg[6] ),
        .I3(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .O(E));
  LUT4 #(
    .INIT(16'h1540)) 
    \i_fu_46[9]_i_2 
       (.I0(ap_loop_init_int),
        .I1(Q[8]),
        .I2(\i_fu_46[9]_i_4_n_3 ),
        .I3(Q[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3F2A)) 
    \i_fu_46[9]_i_3 
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I3(Q[8]),
        .I4(\i_fu_46[9]_i_5_n_3 ),
        .I5(\B_V_data_1_state[1]_i_5_n_3 ),
        .O(\i_fu_46[9]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \i_fu_46[9]_i_4 
       (.I0(Q[7]),
        .I1(\i_fu_46[7]_i_2_n_3 ),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\i_fu_46[7]_i_3_n_3 ),
        .I5(Q[6]),
        .O(\i_fu_46[9]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00FEFEFE)) 
    \i_fu_46[9]_i_5 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(ap_loop_init_int),
        .I4(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I5(Q[6]),
        .O(\i_fu_46[9]_i_5_n_3 ));
endmodule

(* ORIG_REF_NAME = "mfcc_mfcc_Pipeline_task_2" *) 
module mfcc_1_mfcc_mfcc_Pipeline_task_2
   (\i_fu_46_reg[6]_0 ,
    D,
    \ap_CS_fsm_reg[1] ,
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg,
    ap_rst_n_inv,
    ap_clk,
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
    in_stream_TVALID_int_regslice,
    ap_rst_n,
    Q);
  output \i_fu_46_reg[6]_0 ;
  output [1:0]D;
  output \ap_CS_fsm_reg[1] ;
  output grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg;
  input in_stream_TVALID_int_regslice;
  input ap_rst_n;
  input [1:0]Q;

  wire [1:0]D;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg;
  wire grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg;
  wire i_fu_46;
  wire \i_fu_46_reg[6]_0 ;
  wire \i_fu_46_reg_n_3_[0] ;
  wire \i_fu_46_reg_n_3_[1] ;
  wire \i_fu_46_reg_n_3_[2] ;
  wire \i_fu_46_reg_n_3_[3] ;
  wire \i_fu_46_reg_n_3_[4] ;
  wire \i_fu_46_reg_n_3_[5] ;
  wire \i_fu_46_reg_n_3_[6] ;
  wire \i_fu_46_reg_n_3_[7] ;
  wire \i_fu_46_reg_n_3_[8] ;
  wire \i_fu_46_reg_n_3_[9] ;
  wire in_stream_TVALID_int_regslice;
  wire [9:0]p_0_in;

  mfcc_1_mfcc_flow_control_loop_pipe_sequential_init_1 flow_control_loop_pipe_sequential_init_U
       (.D({p_0_in[9:5],flow_control_loop_pipe_sequential_init_U_n_8,p_0_in[3],flow_control_loop_pipe_sequential_init_U_n_10,p_0_in[1:0]}),
        .E(i_fu_46),
        .Q({\i_fu_46_reg_n_3_[9] ,\i_fu_46_reg_n_3_[8] ,\i_fu_46_reg_n_3_[7] ,\i_fu_46_reg_n_3_[6] ,\i_fu_46_reg_n_3_[5] ,\i_fu_46_reg_n_3_[4] ,\i_fu_46_reg_n_3_[3] ,\i_fu_46_reg_n_3_[2] ,\i_fu_46_reg_n_3_[1] ,\i_fu_46_reg_n_3_[0] }),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[2] (D),
        .\ap_CS_fsm_reg[3] (Q),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg_reg),
        .\i_fu_46_reg[6] (\i_fu_46_reg[6]_0 ),
        .in_stream_TVALID_int_regslice(in_stream_TVALID_int_regslice));
  FDRE \i_fu_46_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(p_0_in[0]),
        .Q(\i_fu_46_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(p_0_in[1]),
        .Q(\i_fu_46_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(flow_control_loop_pipe_sequential_init_U_n_10),
        .Q(\i_fu_46_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(p_0_in[3]),
        .Q(\i_fu_46_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(flow_control_loop_pipe_sequential_init_U_n_8),
        .Q(\i_fu_46_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[5] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(p_0_in[5]),
        .Q(\i_fu_46_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[6] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(p_0_in[6]),
        .Q(\i_fu_46_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[7] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(p_0_in[7]),
        .Q(\i_fu_46_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[8] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(p_0_in[8]),
        .Q(\i_fu_46_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \i_fu_46_reg[9] 
       (.C(ap_clk),
        .CE(i_fu_46),
        .D(p_0_in[9]),
        .Q(\i_fu_46_reg_n_3_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mfcc_mfcc_Pipeline_task_6" *) 
module mfcc_1_mfcc_mfcc_Pipeline_task_6
   (ap_enable_reg_pp0_iter1,
    \val_out_last_reg_116_reg[0]_0 ,
    ap_enable_reg_pp0_iter1_reg_0,
    D,
    \ap_CS_fsm_reg[4] ,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg,
    out_stream_TREADY_int_regslice,
    Q,
    \ap_CS_fsm_reg[6] );
  output ap_enable_reg_pp0_iter1;
  output \val_out_last_reg_116_reg[0]_0 ;
  output ap_enable_reg_pp0_iter1_reg_0;
  output [1:0]D;
  output \ap_CS_fsm_reg[4] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg;
  input out_stream_TREADY_int_regslice;
  input [1:0]Q;
  input \ap_CS_fsm_reg[6] ;

  wire [1:0]D;
  wire [1:0]Q;
  wire [5:0]add_ln106_fu_89_p2;
  wire \ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[6] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire flow_control_loop_pipe_sequential_init_U_n_4;
  wire grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg;
  wire m_fu_52;
  wire \m_fu_52_reg_n_3_[0] ;
  wire \m_fu_52_reg_n_3_[1] ;
  wire \m_fu_52_reg_n_3_[2] ;
  wire \m_fu_52_reg_n_3_[3] ;
  wire \m_fu_52_reg_n_3_[4] ;
  wire \m_fu_52_reg_n_3_[5] ;
  wire out_stream_TREADY_int_regslice;
  wire \val_out_last_reg_116_reg[0]_0 ;

  LUT3 #(
    .INIT(8'h80)) 
    \B_V_data_1_state[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q[1]),
        .O(ap_enable_reg_pp0_iter1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_3),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  mfcc_1_mfcc_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .Q(Q),
        .add_ln106_fu_89_p2(add_ln106_fu_89_p2),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .\ap_CS_fsm_reg[6] (\ap_CS_fsm_reg[6] ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(flow_control_loop_pipe_sequential_init_U_n_3),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg(grp_mfcc_Pipeline_task_6_fu_64_ap_start_reg),
        .m_fu_52(m_fu_52),
        .\m_fu_52_reg[0] (ap_enable_reg_pp0_iter1),
        .\m_fu_52_reg[4] (\m_fu_52_reg_n_3_[4] ),
        .\m_fu_52_reg[4]_0 (\m_fu_52_reg_n_3_[2] ),
        .\m_fu_52_reg[4]_1 (\m_fu_52_reg_n_3_[1] ),
        .\m_fu_52_reg[4]_2 (\m_fu_52_reg_n_3_[0] ),
        .\m_fu_52_reg[4]_3 (\m_fu_52_reg_n_3_[3] ),
        .\m_fu_52_reg[5] (\m_fu_52_reg_n_3_[5] ),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice),
        .\val_out_last_reg_116_reg[0] (flow_control_loop_pipe_sequential_init_U_n_4),
        .\val_out_last_reg_116_reg[0]_0 (\val_out_last_reg_116_reg[0]_0 ));
  FDRE \m_fu_52_reg[0] 
       (.C(ap_clk),
        .CE(m_fu_52),
        .D(add_ln106_fu_89_p2[0]),
        .Q(\m_fu_52_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \m_fu_52_reg[1] 
       (.C(ap_clk),
        .CE(m_fu_52),
        .D(add_ln106_fu_89_p2[1]),
        .Q(\m_fu_52_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \m_fu_52_reg[2] 
       (.C(ap_clk),
        .CE(m_fu_52),
        .D(add_ln106_fu_89_p2[2]),
        .Q(\m_fu_52_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \m_fu_52_reg[3] 
       (.C(ap_clk),
        .CE(m_fu_52),
        .D(add_ln106_fu_89_p2[3]),
        .Q(\m_fu_52_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \m_fu_52_reg[4] 
       (.C(ap_clk),
        .CE(m_fu_52),
        .D(add_ln106_fu_89_p2[4]),
        .Q(\m_fu_52_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \m_fu_52_reg[5] 
       (.C(ap_clk),
        .CE(m_fu_52),
        .D(add_ln106_fu_89_p2[5]),
        .Q(\m_fu_52_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \val_out_last_reg_116_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_4),
        .Q(\val_out_last_reg_116_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mfcc_regslice_both" *) 
module mfcc_1_mfcc_regslice_both
   (in_stream_TREADY,
    in_stream_TVALID_int_regslice,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    in_stream_TVALID,
    \B_V_data_1_state_reg[0]_0 ,
    Q,
    grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg,
    \B_V_data_1_state_reg[1]_0 );
  output in_stream_TREADY;
  output in_stream_TVALID_int_regslice;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input in_stream_TVALID;
  input \B_V_data_1_state_reg[0]_0 ;
  input [0:0]Q;
  input grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg;
  input \B_V_data_1_state_reg[1]_0 ;

  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_3 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg;
  wire in_stream_TREADY;
  wire in_stream_TVALID;
  wire in_stream_TVALID_int_regslice;

  LUT5 #(
    .INIT(32'h8A80AAAA)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(in_stream_TVALID),
        .I2(in_stream_TREADY),
        .I3(in_stream_TVALID_int_regslice),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .O(\B_V_data_1_state[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h55D5FFFF55D555D5)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(in_stream_TVALID_int_regslice),
        .I1(Q),
        .I2(grp_mfcc_Pipeline_task_2_fu_52_ap_start_reg),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .I4(in_stream_TVALID),
        .I5(in_stream_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_3 ),
        .Q(in_stream_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(in_stream_TREADY),
        .R(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "mfcc_regslice_both" *) 
module mfcc_1_mfcc_regslice_both_0
   (out_stream_TREADY_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    \ap_CS_fsm_reg[6] ,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1,
    Q,
    out_stream_TREADY,
    ap_rst_n);
  output out_stream_TREADY_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output \ap_CS_fsm_reg[6] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1;
  input [1:0]Q;
  input out_stream_TREADY;
  input ap_rst_n;

  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_3 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[6] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;

  LUT6 #(
    .INIT(64'hA8A8088808880888)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(out_stream_TREADY_int_regslice),
        .I3(out_stream_TREADY),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(Q[0]),
        .O(\B_V_data_1_state[0]_i_1__0_n_3 ));
  LUT5 #(
    .INIT(32'hFFFF4CFF)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q[0]),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .I4(out_stream_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_3 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(out_stream_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h2A00)) 
    \ap_CS_fsm[6]_i_2 
       (.I0(Q[1]),
        .I1(out_stream_TREADY),
        .I2(out_stream_TREADY_int_regslice),
        .I3(\B_V_data_1_state_reg[0]_0 ),
        .O(\ap_CS_fsm_reg[6] ));
endmodule

(* ORIG_REF_NAME = "mfcc_regslice_both" *) 
module mfcc_1_mfcc_regslice_both__parameterized1
   (ap_rst_n_inv,
    out_stream_TLAST,
    ap_clk,
    ap_rst_n,
    out_stream_TREADY,
    Q,
    out_stream_TREADY_int_regslice,
    ap_enable_reg_pp0_iter1,
    \B_V_data_1_state_reg[0]_0 ,
    \B_V_data_1_payload_A_reg[0]_0 );
  output ap_rst_n_inv;
  output [0:0]out_stream_TLAST;
  input ap_clk;
  input ap_rst_n;
  input out_stream_TREADY;
  input [0:0]Q;
  input out_stream_TREADY_int_regslice;
  input ap_enable_reg_pp0_iter1;
  input \B_V_data_1_state_reg[0]_0 ;
  input \B_V_data_1_payload_A_reg[0]_0 ;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1_n_3 ;
  wire \B_V_data_1_payload_A_reg[0]_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1_n_3 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_3;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_3;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__1_n_3 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg_n_3_[0] ;
  wire \B_V_data_1_state_reg_n_3_[1] ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;

  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[0]_0 ),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_3_[1] ),
        .I3(\B_V_data_1_state_reg_n_3_[0] ),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1_n_3 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1_n_3 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \B_V_data_1_payload_B[0]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[0]_0 ),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_3_[1] ),
        .I3(\B_V_data_1_state_reg_n_3_[0] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1_n_3 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1_n_3 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1
       (.I0(\B_V_data_1_state_reg_n_3_[0] ),
        .I1(out_stream_TREADY),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_3));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_3),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    B_V_data_1_sel_wr_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q),
        .I3(\B_V_data_1_state_reg_n_3_[1] ),
        .I4(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_3));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_3),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state_reg_n_3_[0] ),
        .I2(\B_V_data_1_state_reg_n_3_[1] ),
        .I3(out_stream_TREADY),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .O(\B_V_data_1_state[0]_i_1__1_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hBFFFAAAAFFFFFFFF)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(out_stream_TREADY),
        .I1(Q),
        .I2(out_stream_TREADY_int_regslice),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\B_V_data_1_state_reg_n_3_[1] ),
        .I5(\B_V_data_1_state_reg_n_3_[0] ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_3 ),
        .Q(\B_V_data_1_state_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_3_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_stream_TLAST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(out_stream_TLAST));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
