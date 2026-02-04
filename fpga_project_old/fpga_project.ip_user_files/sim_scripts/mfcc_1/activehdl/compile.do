transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/the5t/OneDrive/Documents/GitHub/rwth-lab-fpga-WIP/fpga_project/fpga_project.cache/compile_simlib/activehdl}
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/hdl/verilog" -l xpm -l xil_defaultlib \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" -l xpm -l xil_defaultlib \
"../../../ipstatic/hdl/verilog/mfcc_flow_control_loop_pipe_sequential_init.v" \
"../../../ipstatic/hdl/verilog/mfcc_hls_deadlock_idx0_monitor.v" \
"../../../ipstatic/hdl/verilog/mfcc_mfcc_Pipeline_task_2.v" \
"../../../ipstatic/hdl/verilog/mfcc_mfcc_Pipeline_task_6.v" \
"../../../ipstatic/hdl/verilog/mfcc_regslice_both.v" \
"../../../ipstatic/hdl/verilog/mfcc.v" \
"../../../../fpga_project.gen/sources_1/ip/mfcc_1/sim/mfcc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

