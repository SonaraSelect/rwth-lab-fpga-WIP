create_clock -period 10.000 -name clk [get_ports clk]

#set IO_DELAY 0.2

#set_max_delay [expr {(1 - ${IO_DELAY}) * 50*${TCLK_eff}}] -from [get_ports i2s_*]
#set_max_delay [expr {(1 - ${IO_DELAY}) * 50*${TCLK_eff}}] -to   [get_ports i2s_*]
#set_min_delay [expr              {0.01 * 50*${TCLK_eff}}] -from [get_ports i2s_*]
#set_min_delay [expr             {-0.01 * ${TCLK_eff}}] -to   [get_ports i2s_*]

#set_input_delay             -max -clock clk 0 [get_ports arstn]
#set_input_delay  -add_delay -min -clock clk 0 [get_ports arstn]
#set_max_delay [expr {(1 - ${IO_DELAY}) * ${TCLK_eff}}] -from   [get_ports arstn]
#set_min_delay [expr             {-0.01 * ${TCLK_eff}}] -from   [get_ports arstn]

#set_false_path -to [get_ports led*]
#set_false_path -to [get_cells */*async_reg*]

set_clock_groups -asynchronous \
  -group [get_clocks clk] \
  -group [get_clocks clk_out1_clk_wiz_0]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list i2spcm0/inst/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {tdata_pcm[0]} {tdata_pcm[1]} {tdata_pcm[2]} {tdata_pcm[3]} {tdata_pcm[4]} {tdata_pcm[5]} {tdata_pcm[6]} {tdata_pcm[7]} {tdata_pcm[8]} {tdata_pcm[9]} {tdata_pcm[10]} {tdata_pcm[11]} {tdata_pcm[12]} {tdata_pcm[13]} {tdata_pcm[14]} {tdata_pcm[15]}]]
set_property C_CLK_INPUT_FREQ_HZ 100000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out1]
