# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Fri Feb 14 16:14:24 2025
# Host: CICS4.kletech.ac.in (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (16cores*24cpus*1physical cpu*13th Gen Intel(R) Core(TM) i7-13700 30720KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

read_libs LIB/sky/sky130_fd_sc_ms__ss_150C_1v60.lib
read_hdl RTL/mcrb.v
elaborate mcrb
write_hdl > OUTPUT/sky/elaborate.v
syn_generic
read_sdc RTL/constraints.sdc
syn_generic
gui_show
syn_generic
write_hdl > OUTPUT/sky/syn.v
syn_map
write_hdl > OUTPUT/sky/map.v
syn_opt
write_hdl > OUTPUT/sky/opt.v
gui_show
report_timing > REPORTS/sky/time.v
report_timing > REPORTS/sky/time.rpt
read_sdc RTL/constraints.sdc
clear
syn_generic
report_timing
exit
