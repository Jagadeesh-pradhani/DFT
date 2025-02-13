# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Thu Feb 13 10:30:25 2025
# Host: CICS4.kletech.ac.in (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (16cores*24cpus*1physical cpu*13th Gen Intel(R) Core(TM) i7-13700 30720KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

read_libs /cad_area/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_physical -lef /cad_area/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
clear
read_hdl su/s298_Mod.v
clear
elaborate s298
time_info Elaboration
check_design -unresolved
clear
read_sdc su/constraints.sdc
clear
check_timing_intent
clear
if {[llength [all_registers]] > 0} { 
  define_cost_group -name I2C -design s298
  define_cost_group -name C2O -design s298
  define_cost_group -name C2C -design s298
  path_group -from [all_registers] -to [all_registers] -group C2C -name C2C
  path_group -from [all_registers] -to [all_outputs] -group C2O -name C2O
  path_group -from [all_inputs]  -to [all_registers] -group I2C -name I2C
}
define_cost_group -name I2O -design s298
path_group -from [all_inputs]  -to [all_outputs] -group I2O -name I2O
foreach cg [vfind / -cost_group *] {
  report_timing -group [list $cg] >> reports_45nm/s298_pretim.rpt
}
llength[all_registers]
[llength [all_registers]]
get_ports
clear
read_sdc su/constraints.sdc
check_timing_intent
clear
if {[llength [all_registers]] > 0} { 
  define_cost_group -name I2C -design s298
  define_cost_group -name C2O -design s298
  define_cost_group -name C2C -design s298
  path_group -from [all_registers] -to [all_registers] -group C2C -name C2C
  path_group -from [all_registers] -to [all_outputs] -group C2O -name C2O
  path_group -from [all_inputs]  -to [all_registers] -group I2C -name I2C
}
define_cost_group -name I2O -design s298
path_group -from [all_inputs]  -to [all_outputs] -group I2O -name I2O
foreach cg [vfind / -cost_group *] {
  report_timing -group [list $cg] >> reports_45nm/s298_pretim.rpt
}
clear
set_db / .dft_scan_style muxed_scan
set_db / .dft_prefix DFT_
set_db / .dft_identify_top_level_test_clocks true
set_db / .dft_identify_test_signals true
set_db / .dft_identify_internal_test_clocks false
set_db / .use_scan_seqs_for_non_dft false
set_db "design:s298" .dft_scan_map_mode tdrc_pass
set_db "design:s298" .dft_connect_shift_enable_during_mapping tie_off
set_db "design:s298" .dft_connect_shift_enable_during_mapping tie_off
set_db "design:s298" .dft_connect_scan_data_pins_during_mapping loopback
set_db "design:s298" .dft_scan_output_preference auto
set_db "design:s298" .dft_lockup_element_type preferred_level_sensitive
set_db "design:s298" .dft_lockup_element_type preferred_level_sensitive
set_db "design:s298" .dft_mix_clock_edges_in_scan_chains true
define_test_clock -name scanclk -period 18000 scan_clk
clear
gui_show
define_test_clock -name scanclk -period 18000 scan_clk
define_test_clock -name scanclk -period 18000 scanclk
clear
define_test_clock -name scanclk -period 18000 CK
define_shift_enable -name se -active high scan_en
define_shift_enable -name se -active high D
get_ports
define_shift_enable -name se -active high G0
define_test_mode -name tm -active high test_mode
define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -shift_enable se -create_ports
check_dft_rules
gui_show
syn_generic
syn_map
syn_opt
clear
report_timing
check_dft_rules -advanced
exit
