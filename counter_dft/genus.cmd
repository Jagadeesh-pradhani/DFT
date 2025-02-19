# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Wed Feb 19 02:29:31 2025
# Host: APL25.kletech.ac.in (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (16cores*24cpus*1physical cpu*13th Gen Intel(R) Core(TM) i7-13700 30720KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

read_libs LIB/slow.lib
read_physical -lef LEF/gsclib090_translated.lef
clear
read_hdl RTL/counter.v
clear
elaborate counter
clear
write_hdl > OUTPUTS/elaborate.v
read_sdc RTL/constraints.sdc
clear
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
check_dft_rules
set_db design:counter .dft_min_number_of_scan_chains 1
define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -create_ports
connect_scan_chains -auto_create_chains
syn_opt -incr
report_scan_chains
write_dft_atpg -library LIB/slow.v
write_hdl > OUTPUTS/counter_netlist_dft.v
write_sdc > OUTPUTS/counter_sdc_dft.sdc
write_sdf -nonegchecks -edges check_edge -timescale ns -recrem split -setuphold split > OUTPUTS/dft_delays.sdf
write_scandef > OUTPUTS/counter_scanDEF.scandef
gui_show
exit
