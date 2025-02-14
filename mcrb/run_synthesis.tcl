
read_lib /cad_area/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_lef /cad_area/install/FOUNDRY/digital/90nm/dig/lef/gcslib090_macro.lef
read_hdl /home/kp/Desktop/FOLDER_NAME/filename.v
elaborate topmodule_name
read_sdc  ../constraints/filename.sdc
set_db / .syn_generic_effort medium
syn_gen
set_db / .syn_map_effort medium
syn_map
set_db / .syn_opt_effort medium
syn_opt
report area
report power
report gates
report timing -unconstrained
gui_show

write_hdl > design_syn.v
write_sdc > design_syn.sdc
