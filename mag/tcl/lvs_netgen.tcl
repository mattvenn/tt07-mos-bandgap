set layout [readnet spice $project.lvs.spice]
set source [readnet spice /dev/null]
readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice $source
# add any spice files of your analog blocks:
readnet spice ../xschem/simulation/twin_tee_osc.spice $source
# top level GL verilog
readnet verilog ../src/project.v $source
readnet verilog ../verilog/gl/osc_counter.v $source
lvs "$layout $project" "$source $project" $::env(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs.report -blackbox
