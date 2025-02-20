
set VERILOG s298_Mod
set TOP_MODULE s298

read_libs LIB/slow.lib
read_physical -lef LEF/gsclib090_translated.lef
clear
read_hdl RTL/${VERILOG}.v

elaborate ${TOP_MODULE}
write_hdl > OUTPUTS/elaborate.v
read_sdc RTL/constraints.sdc

set_db dft_scan_style muxed_scan
set_db dft_prefix dft_
define_shift_enable  -name SE -active high -create_port SE
check_dft_rules
syn_generic
write_hdl > OUTPUTS/syn.v
syn_map
write_hdl > OUTPUTS/map.v
syn_opt
write_hdl > OUTPUTS/opt.v

report_area > REPORTS/${TOP_MODULE}_area.rep
report_power > REPORTS/${TOP_MODULE}_power.rep
report_gates > REPORTS/${TOP_MODULE}_gates.rep
report_timing > REPORTS/${TOP_MODULE}_timing.rep
report_qor -levels_of_logic -power -exclude_constant_nets > REPORTS/${TOP_MODULE}_qor_all.rep

check_dft_rules
set_db design:${TOP_MODULE} .dft_min_number_of_scan_chains 1
define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -create_ports
connect_scan_chains -auto_create_chains
syn_opt -incr
report_scan_chains
write_dft_atpg -library LIB/slow.v
write_hdl > OUTPUTS/${TOP_MODULE}_netlist_dft.v
write_sdc > OUTPUTS/${TOP_MODULE}_sdc_dft.sdc
write_sdf -nonegchecks -edges check_edge -timescale ns -recrem split -setuphold split > OUTPUTS/dft_delays.sdf
write_scandef > OUTPUTS/${TOP_MODULE}_scanDEF.scandef
gui_show