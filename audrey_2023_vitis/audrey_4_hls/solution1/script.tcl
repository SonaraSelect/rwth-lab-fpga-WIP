############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project audrey_4_hls
set_top mfcc
add_files audrey_4_hls/mel_filterbank.h
add_files audrey_4_hls/mfcc.cpp
add_files audrey_4_hls/mfcc.h
add_files -tb audrey_4_hls/tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7a100tcsg324-1}
create_clock -period 10 -name default
#source "./audrey_4_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
