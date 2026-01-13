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


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 13 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {u_gen/data0[1]} {u_gen/data0[2]} {u_gen/data0[3]} {u_gen/data0[4]} {u_gen/data0[5]} {u_gen/data0[6]} {u_gen/data0[7]} {u_gen/data0[8]} {u_gen/data0[9]} {u_gen/data0[10]} {u_gen/data0[11]} {u_gen/data0[12]} {u_gen/data0[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {state[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list arstn_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list uart_tx_OBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
