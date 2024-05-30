v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 40 -40 840 360 {flags=graph
y1=0.45
y2=0.83
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.3
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vref_out
pin_out
pin_out_parax"
color="4 6 10"

unitx=1
logx=0
logy=0
rainbow=1
dataset=0}
B 2 40 420 840 820 {flags=graph
y1=0.71
y2=0.72
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=10
x2=100
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vref_out
pin_out
pin_out_parax"
color="4 6 10"

unitx=1
logx=0
logy=0
dataset=1}
N -1040 300 -830 300 {
lab=vref_out}
N -830 300 -830 320 {
lab=vref_out}
N -830 320 -790 320 {
lab=vref_out}
N -1040 280 -980 280 {
lab=VDD}
N -1040 320 -980 320 {
lab=VSS}
N -310 -40 -310 -30 {
lab=VSS}
N -200 -40 -200 -30 {
lab=VDD}
N -310 30 -310 40 {
lab=GND}
N -200 30 -200 40 {
lab=GND}
N -490 380 -360 380 {
lab=#net1}
N -360 380 -360 580 {
lab=#net1}
N -830 580 -360 580 {
lab=#net1}
N -830 440 -830 580 {
lab=#net1}
N -830 440 -790 440 {
lab=#net1}
N -250 380 -210 380 {
lab=pin_out}
N -210 380 -170 380 {
lab=pin_out}
N -360 380 -310 380 {
lab=#net1}
N -830 210 -820 210 {
lab=vref_out}
N -830 210 -830 300 {
lab=vref_out}
N -1270 720 -1060 720 {
lab=vref_out_parax}
N -1060 720 -1060 740 {
lab=vref_out_parax}
N -1060 740 -1020 740 {
lab=vref_out_parax}
N -1270 700 -1210 700 {
lab=VDD}
N -1270 740 -1210 740 {
lab=VSS}
N -720 800 -590 800 {
lab=#net2}
N -590 800 -590 1000 {
lab=#net2}
N -1060 1000 -590 1000 {
lab=#net2}
N -1060 860 -1060 1000 {
lab=#net2}
N -1060 860 -1020 860 {
lab=#net2}
N -480 800 -440 800 {
lab=pin_out_parax}
N -440 800 -400 800 {
lab=pin_out_parax}
N -590 800 -540 800 {
lab=#net2}
N -1060 630 -1050 630 {
lab=vref_out_parax}
N -1060 630 -1060 720 {
lab=vref_out_parax}
C {devices/lab_pin.sym} -820 210 0 1 {name=p16 sig_type=std_logic lab=vref_out
}
C {bandgap.sym} -1190 300 0 0 {name=x2}
C {devices/lab_pin.sym} -980 280 2 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -980 320 2 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/launcher.sym} -150 820 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_bandgap.raw"
}
C {devices/code.sym} -750 -50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt


"
spice_ignore=false}
C {devices/code.sym} -900 -60 0 0 {name=SIMULATION
only_toplevel=false 
value="

.control

 dc v1 1.3 2 0.01
 write tb_bandgap.raw
 set appendwrite

 reset
 dc temp 10 100 1
 write tb_bandgap.raw

.endc

"}
C {devices/vsource.sym} -200 0 0 0 {name=V1 value="1.8" savecurrent=false}
C {devices/gnd.sym} -200 40 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -200 -40 2 1 {name=p17 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} -310 0 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -310 40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -310 -40 2 1 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} -430 0 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -430 -30 2 1 {name=p19 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} -430 30 0 0 {name=l4 lab=GND}
C {p3_opamp.sym} -670 370 0 0 {name=x1}
C {devices/lab_pin.sym} -640 310 2 0 {name=p3 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -640 450 2 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -170 380 2 0 {name=p5 sig_type=std_logic lab=pin_out}
C {devices/res.sym} -280 380 1 0 {name=R1
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -210 410 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -210 440 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -1050 630 0 1 {name=p6 sig_type=std_logic lab=vref_out_parax
}
C {bandgap.sym} -1420 720 0 0 {name=x3
schematic=bandgap_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/bandgap.sim.spice])"
tclcommand="textwindow [file normalize ../mag/bandgap.sim.spice]"}
C {devices/lab_pin.sym} -1210 700 2 0 {name=p7 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -1210 740 2 0 {name=p8 sig_type=std_logic lab=VSS
}
C {p3_opamp.sym} -900 790 0 0 {name=x4
schematic=p3_opamp_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/p3_opamp.sim.spice])"
tclcommand="textwindow [file normalize ../mag/p3_opamp.sim.spice]"}
C {devices/lab_pin.sym} -870 730 2 0 {name=p9 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -870 870 2 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -400 800 2 0 {name=p11 sig_type=std_logic lab=pin_out_parax}
C {devices/res.sym} -510 800 1 0 {name=R2
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -440 830 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -440 860 0 0 {name=l1 lab=GND}
