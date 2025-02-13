create_clock -name clk -period 10 [get_ports clk] 
set_clock_transition -rise 0.1 [get_clocks clk]   
set_clock_transition -fall 0.1 [get_clocks clk]   
set_clock_uncertainty -setup 0.2 [get_clocks clk] 
set_clock_uncertainty -hold 0.1 [get_clocks clk]  

set_input_delay -clock clk -max 1 [get_ports rst_n]

set_input_delay -clock clk -max 2 [get_ports a] 
set_input_delay -clock clk -max 2 [get_ports b] 

set_output_delay -clock clk -max 2 [get_ports y]

set_input_delay -clock clk -max 1 [get_ports scan_en]
set_input_delay -clock clk -max 1 [get_ports scan_in]
set_output_delay -clock clk -max 1 [get_ports scan_out]

