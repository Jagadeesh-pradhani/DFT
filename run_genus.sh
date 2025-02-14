#!/bin/bash

# Usage:
# chmod +x run_genus.sh
# ./run_genus.sh /home/adld21ee114/genus/and and_gate.v and_gate

# Required arguments
FOLDER=$1
VERILOG_FILE=$2
TOP_MODULE=$3

# Optional arguments (default values)
OUTPUT_DIR=${4:-"OUTPUTS"}
REPORT_DIR=${5:-"REPORTS"}

# Create output and report directories if they don't exist
mkdir -p "$FOLDER/$OUTPUT_DIR"
mkdir -p "$FOLDER/$REPORT_DIR"

# Create a TCL script for Genus commands
TCL_SCRIPT="$FOLDER/run_genus.tcl"

cat <<EOT > $TCL_SCRIPT
set_db common_ui false
set_attribute library /cad_area/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
set_attr lef_library /cad_area/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef

read_hdl $FOLDER/$VERILOG_FILE
elaborate $TOP_MODULE
write_hdl > $FOLDER/$OUTPUT_DIR/${TOP_MODULE}_elaborated.v

syn_gen
write_hdl > $FOLDER/$OUTPUT_DIR/${TOP_MODULE}_gen_syn.v

syn_map
write_hdl > $FOLDER/$OUTPUT_DIR/${TOP_MODULE}_syn_map.v

syn_opt
write_hdl > $FOLDER/$OUTPUT_DIR/${TOP_MODULE}_syn_opt.v

generate_report -outdir $FOLDER/$REPORT_DIR -tag $TOP_MODULE

report_area > $FOLDER/$REPORT_DIR/${TOP_MODULE}_area.rep
report_power > $FOLDER/$REPORT_DIR/${TOP_MODULE}_power.rep
report_gates > $FOLDER/$REPORT_DIR/${TOP_MODULE}_gates.rep
report_timing > $FOLDER/$REPORT_DIR/${TOP_MODULE}_timing.rep
report_qor -levels_of_logic -power -exclude_constant_nets > $FOLDER/$REPORT_DIR/${TOP_MODULE}_qor_all.rep
EOT

# Run Genus with the TCL script
genus -files $TCL_SCRIPT
