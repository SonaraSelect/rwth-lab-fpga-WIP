vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../ipstatic/hdl/verilog" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" \
"../../../ipstatic/hdl/verilog/mfcc_flow_control_loop_pipe_sequential_init.v" \
"../../../ipstatic/hdl/verilog/mfcc_hls_deadlock_idx0_monitor.v" \
"../../../ipstatic/hdl/verilog/mfcc_mfcc_Pipeline_task_2.v" \
"../../../ipstatic/hdl/verilog/mfcc_mfcc_Pipeline_task_6.v" \
"../../../ipstatic/hdl/verilog/mfcc_regslice_both.v" \
"../../../ipstatic/hdl/verilog/mfcc.v" \
"../../../../fpga_project.gen/sources_1/ip/mfcc_1/sim/mfcc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

