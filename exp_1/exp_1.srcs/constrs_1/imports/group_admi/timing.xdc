set TCLK_eff 10.0
create_clock -name clk -period ${TCLK_eff} [get_ports clk]

#set IO_DELAY 0.2

#set_max_delay [expr {(1 - ${IO_DELAY}) * 50*${TCLK_eff}}] -from [get_ports i2s_*]
#set_max_delay [expr {(1 - ${IO_DELAY}) * 50*${TCLK_eff}}] -to   [get_ports i2s_*]
#set_min_delay [expr              {0.01 * 50*${TCLK_eff}}] -from [get_ports i2s_*]
#set_min_delay [expr             {-0.01 * ${TCLK_eff}}] -to   [get_ports i2s_*]

#set_input_delay             -max -clock clk 0 [get_ports arstn]
#set_input_delay  -add_delay -min -clock clk 0 [get_ports arstn]
#set_max_delay [expr {(1 - ${IO_DELAY}) * ${TCLK_eff}}] -from   [get_ports arstn]
#set_min_delay [expr             {-0.01 * ${TCLK_eff}}] -from   [get_ports arstn]

set_false_path -to [get_ports led*]
set_false_path -to [get_cells */*async_reg*]