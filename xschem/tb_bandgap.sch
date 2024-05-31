v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 40 -40 840 360 {flags=graph
y1=0.28
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
vref_out_dtmos
pin_out
pin_out_parax"
color="4 6 10 4"

unitx=1
logx=0
logy=0
rainbow=1
dataset=0}
B 2 40 420 840 820 {flags=graph
y1=0.71292616
y2=0.72092616
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
B 2 40 890 840 1290 {flags=graph
y1=-0.00053
y2=-0.00019
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
node=i(v1)
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 890 420 1690 820 {flags=graph
y1=0.50773665
y2=0.51573665
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
node=vref_out_dtmos
color=4

unitx=1
logx=0
logy=0
dataset=1}
N -1200 230 -990 230 {
lab=vref_out}
N -990 230 -990 250 {
lab=vref_out}
N -990 250 -950 250 {
lab=vref_out}
N -1200 210 -1140 210 {
lab=VDD}
N -1200 250 -1140 250 {
lab=VSS}
N -310 -40 -310 -30 {
lab=VSS}
N -200 -40 -200 -30 {
lab=VDD}
N -310 30 -310 40 {
lab=GND}
N -200 30 -200 40 {
lab=GND}
N -650 310 -520 310 {
lab=#net1}
N -520 310 -520 510 {
lab=#net1}
N -990 510 -520 510 {
lab=#net1}
N -990 370 -990 510 {
lab=#net1}
N -990 370 -950 370 {
lab=#net1}
N -410 310 -370 310 {
lab=pin_out}
N -370 310 -330 310 {
lab=pin_out}
N -520 310 -470 310 {
lab=#net1}
N -990 140 -980 140 {
lab=vref_out}
N -990 140 -990 230 {
lab=vref_out}
N -1210 1130 -1000 1130 {
lab=vref_out_parax}
N -1000 1130 -1000 1150 {
lab=vref_out_parax}
N -1000 1150 -960 1150 {
lab=vref_out_parax}
N -1210 1110 -1150 1110 {
lab=VDD}
N -1210 1150 -1150 1150 {
lab=VSS}
N -660 1210 -530 1210 {
lab=#net2}
N -530 1210 -530 1410 {
lab=#net2}
N -1000 1410 -530 1410 {
lab=#net2}
N -1000 1270 -1000 1410 {
lab=#net2}
N -1000 1270 -960 1270 {
lab=#net2}
N -420 1210 -380 1210 {
lab=pin_out_parax}
N -380 1210 -340 1210 {
lab=pin_out_parax}
N -530 1210 -480 1210 {
lab=#net2}
N -1000 1040 -990 1040 {
lab=vref_out_parax}
N -1000 1040 -1000 1130 {
lab=vref_out_parax}
N -1200 680 -990 680 {
lab=vref_out_dtmos}
N -990 680 -990 700 {
lab=vref_out_dtmos}
N -990 700 -950 700 {
lab=vref_out_dtmos}
N -1200 660 -1140 660 {
lab=VDD}
N -1200 700 -1140 700 {
lab=VSS}
N -650 760 -520 760 {
lab=#net3}
N -520 760 -520 960 {
lab=#net3}
N -990 960 -520 960 {
lab=#net3}
N -990 820 -990 960 {
lab=#net3}
N -990 820 -950 820 {
lab=#net3}
N -410 760 -370 760 {
lab=pin_out_dtmos}
N -370 760 -330 760 {
lab=pin_out_dtmos}
N -520 760 -470 760 {
lab=#net3}
N -990 590 -980 590 {
lab=vref_out_dtmos}
N -990 590 -990 680 {
lab=vref_out_dtmos}
C {devices/lab_pin.sym} -980 140 0 1 {name=p16 sig_type=std_logic lab=vref_out
}
C {bandgap.sym} -1350 230 0 0 {name=x2}
C {devices/lab_pin.sym} -1140 210 2 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -1140 250 2 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/launcher.sym} 120 1380 0 0 {name=h1
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
C {p3_opamp.sym} -830 300 0 0 {name=x1}
C {devices/lab_pin.sym} -800 240 2 0 {name=p3 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -800 380 2 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -330 310 2 0 {name=p5 sig_type=std_logic lab=pin_out}
C {devices/res.sym} -440 310 1 0 {name=R1
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -370 340 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -370 370 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -990 1040 0 1 {name=p6 sig_type=std_logic lab=vref_out_parax
}
C {bandgap.sym} -1360 1130 0 0 {name=x3
schematic=bandgap_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/bandgap.sim.spice])"
tclcommand="textwindow [file normalize ../mag/bandgap.sim.spice]"}
C {devices/lab_pin.sym} -1150 1110 2 0 {name=p7 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -1150 1150 2 0 {name=p8 sig_type=std_logic lab=VSS
}
C {p3_opamp.sym} -840 1200 0 0 {name=x4
schematic=p3_opamp_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/p3_opamp.sim.spice])"
tclcommand="textwindow [file normalize ../mag/p3_opamp.sim.spice]"}
C {devices/lab_pin.sym} -810 1140 2 0 {name=p9 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -810 1280 2 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -340 1210 2 0 {name=p11 sig_type=std_logic lab=pin_out_parax}
C {devices/res.sym} -450 1210 1 0 {name=R2
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -380 1240 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -380 1270 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -980 590 0 1 {name=p12 sig_type=std_logic lab=vref_out_dtmos
}
C {devices/lab_pin.sym} -1140 660 2 0 {name=p13 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -1140 700 2 0 {name=p14 sig_type=std_logic lab=VSS
}
C {p3_opamp.sym} -830 750 0 0 {name=x6}
C {devices/lab_pin.sym} -800 690 2 0 {name=p15 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -800 830 2 0 {name=p20 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -330 760 2 0 {name=p21 sig_type=std_logic lab=pin_out_dtmos}
C {devices/res.sym} -440 760 1 0 {name=R3
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -370 790 0 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -370 820 0 0 {name=l5 lab=GND}
C {bandgap_dtmos.sym} -1350 680 0 0 {name=x7}
