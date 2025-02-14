# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Fri Feb 14 16:06:11 2025
# Host: CICS4.kletech.ac.in (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (16cores*24cpus*1physical cpu*13th Gen Intel(R) Core(TM) i7-13700 30720KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

read_libs LIB/NanGate/45nm/FreePDK45_lib_v1.0_typical.lib
read_physical -lef LEF/FreePDK45_lib_v1.0.lef
read_hdl RTL/mcrb.v
elaborate mcrb
read_sdc RTL/constraints.sdc
syn_gen
syn_map
syn_opt
report_timing
report_area > REPORTS/NANGATE_45nm/area.rep
report_power > REPORTS/NANGATE_45nm/power.rep
report_gates > REPORTS/NANGATE_45nm/gates.rep
report_qor -levels_of_logic -power -exclude_constant_nets > test_qor_all.rep
report_qor -levels_of_logic -power -exclude_constant_nets > REPORTS/NANGATE_45nm/test_qor_all.rep
exit
