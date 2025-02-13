# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Thu Feb 13 12:04:08 2025
# Host: CICS4.kletech.ac.in (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (16cores*24cpus*1physical cpu*13th Gen Intel(R) Core(TM) i7-13700 30720KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

clear
read_libs  /cad_area/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_physical -lef /cad_area/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
clear
read_hdl RTL/s298_Mod.v
clear
elaborate s298
write_hdl > outputs_90nm/elaborate.v
gui_show
ls
read_sdc RTL/constraints.sdc
check_timing_intent
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
set_db "design:s298" .dft_scan_map_mode tdrc_pass
set_db "design:s298" .dft_connect_shift_enable_during_mapping tie_off
set_db "design:s298" .dft_connect_shift_enable_during_mapping tie_off
set_db "design:s298" .dft_connect_scan_data_pins_during_mapping loopback
set_db "design:s298" .dft_scan_output_preference auto
set_db "design:s298" .dft_lockup_element_type preferred_level_sensitive
set_db "design:s298" .dft_lockup_element_type preferred_level_sensitive
set_db "design:s298" .dft_mix_clock_edges_in_scan_chains true
define_test_clock -name scanclk -period 18000 clk
define_test_clock -name scanclk -period 18000 scanclk
get_ports
define_test_clock -name scanclk -period 18000 CK
define_shift_enable -name se -active high scan_enset_dft_configuration -scan enable
set_dft_configuration -scan enable
clear
define_shift_enable -name se -active high d
define_shift_enable -name se -active high clk
define_shift_enable -name se -active high VDD
define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -shift_enable se -create_ports
check_dft_rules
check_dft_rules > reports_90nm/s298-tdrcs
report_scan_registers  > reports_90nm/s298-DFTRegs
report_scan_setup > reports_90nm/s298-DFTSetup_tdrcs
set_db / .syn_generic_effort medium
syn_generic
write_hdl > outputs_90nm/syn.v
time_info GENERIC
report_dp > reports_90nm/s298_datapath.rpt
syn_map
write_hdl > outputs_90nm/map.v
syn_opt
syn_map
syn_opt
write_hdl > outputs_90nm/opt.v
check_dft_rules -advanced
connect_scan_chains
-auto_create_chainsreport_scan_chains
report_scan_chains
Report_scan_setup
gui_sh
syn_opt -incremental
exit
