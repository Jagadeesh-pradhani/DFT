# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Wed Feb 19 02:36:16 EST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design counter

create_clock -name "clk" -period 2.0 -waveform {0.0 1.0} [get_ports clk]
set_clock_transition 0.05 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports reset]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {count[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {count[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {count[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {count[0]}]
