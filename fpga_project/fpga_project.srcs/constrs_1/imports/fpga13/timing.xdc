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
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list vga0/clk_wiz_i/inst/clk_pixel]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list vga0/hor_sync]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list vga0/ver_sync]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list fft0/u_serial_fft/clk_0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 16 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {fft0/fft_ser[tdata][r_value][0]} {fft0/fft_ser[tdata][r_value][1]} {fft0/fft_ser[tdata][r_value][2]} {fft0/fft_ser[tdata][r_value][3]} {fft0/fft_ser[tdata][r_value][4]} {fft0/fft_ser[tdata][r_value][5]} {fft0/fft_ser[tdata][r_value][6]} {fft0/fft_ser[tdata][r_value][7]} {fft0/fft_ser[tdata][r_value][8]} {fft0/fft_ser[tdata][r_value][9]} {fft0/fft_ser[tdata][r_value][10]} {fft0/fft_ser[tdata][r_value][11]} {fft0/fft_ser[tdata][r_value][12]} {fft0/fft_ser[tdata][r_value][13]} {fft0/fft_ser[tdata][r_value][14]} {fft0/fft_ser[tdata][r_value][15]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 1 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list uart_tx_OBUF]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe2]
set_property port_width 1 [get_debug_ports u_ila_1/probe2]
connect_debug_port u_ila_1/probe2 [get_nets [list fft0/u_serial_fft/fft_ready]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe3]
set_property port_width 1 [get_debug_ports u_ila_1/probe3]
connect_debug_port u_ila_1/probe3 [get_nets [list {fft0/fft_ser[tlast]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe4]
set_property port_width 1 [get_debug_ports u_ila_1/probe4]
connect_debug_port u_ila_1/probe4 [get_nets [list fft0/fft_ser_ready]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_1_clk_0]
