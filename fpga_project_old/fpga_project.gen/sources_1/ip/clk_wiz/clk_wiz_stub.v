// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Dec  9 10:20:05 2025
// Host        : FPGA13L running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fpga13/group_admi/fpga_project/fpga_project.gen/sources_1/ip/clk_wiz/clk_wiz_stub.v
// Design      : clk_wiz
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz(clk_pixel, resetn, locked, clk)
/* synthesis syn_black_box black_box_pad_pin="resetn,locked,clk" */
/* synthesis syn_force_seq_prim="clk_pixel" */;
  output clk_pixel /* synthesis syn_isclock = 1 */;
  input resetn;
  output locked;
  input clk;
endmodule
