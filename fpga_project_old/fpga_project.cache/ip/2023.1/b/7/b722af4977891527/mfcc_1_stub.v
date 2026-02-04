// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jan 20 12:47:10 2026
// Host        : audrey running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mfcc_1_stub.v
// Design      : mfcc_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mfcc,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, in_stream_TVALID, 
  in_stream_TREADY, in_stream_TDATA, in_stream_TLAST, in_stream_TKEEP, in_stream_TSTRB, 
  out_stream_TVALID, out_stream_TREADY, out_stream_TDATA, out_stream_TLAST, 
  out_stream_TKEEP, out_stream_TSTRB)
/* synthesis syn_black_box black_box_pad_pin="ap_rst_n,in_stream_TVALID,in_stream_TREADY,in_stream_TDATA[15:0],in_stream_TLAST[0:0],in_stream_TKEEP[1:0],in_stream_TSTRB[1:0],out_stream_TVALID,out_stream_TREADY,out_stream_TDATA[15:0],out_stream_TLAST[0:0],out_stream_TKEEP[1:0],out_stream_TSTRB[1:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  input in_stream_TVALID;
  output in_stream_TREADY;
  input [15:0]in_stream_TDATA;
  input [0:0]in_stream_TLAST;
  input [1:0]in_stream_TKEEP;
  input [1:0]in_stream_TSTRB;
  output out_stream_TVALID;
  input out_stream_TREADY;
  output [15:0]out_stream_TDATA;
  output [0:0]out_stream_TLAST;
  output [1:0]out_stream_TKEEP;
  output [1:0]out_stream_TSTRB;
endmodule
