# tcsh
# source ~/cshrc

VERILOG_FILE=$1
TOP_MODULE=$2

genus

set_db common_ui false
set_attribute library /cad_area/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
set_attr lef_library /cad_area/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef



read_hdl VERILOG_FILE # verilog file

elaborate TOP_MODULE # top module name
write_hdl > test_elaborated.v	# save elaboration log

# optional constraints
# create_clock -name clk -period 2 [get_ports "clk"] 	# set clock for the design with 2ns period
# set_clock_transition -rise 0.01 [get_clocks "clk"]	# Set rise time of clock to 0.01ns
# set_clock_transition -fall 0.01 [get_clocks "clk"]	# Set fall time of clock to 0.01ns
# set_clock_uncertainty 0.05 [get_clocks "clk"]	# Set rise time of clock to 0.01ns

# Input and output delay

# set_input_delay -max 1.0 [get_ports "rst"] -clock [get_clocks "clk"] 
# set_output_delay -max 1.0 [get_ports "count"] -clock [get_clocks "clk"]

syn_gen
write_hdl > test_gen_syn.v

syn_map
write_hdl > test_syn_map.v

syn_opt
write_hdl > test_syn_opt.v

generate_report -outdir REPORTS -tag test	# to specific directory

report_area > test_area.rep
report_power > test_power.rep
report_gates > test_gates.rep
report_timing -unconstrained > test_timing.rep
report_qor -levels_of_logic -power -exclude_constant_nets > test_qor_all.rep

gui_show





# Verlog -> elaborate : Xor .... -> gen : nand, or, and 
