v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 70 -340 870 60 {flags=graph
y1=0.7
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.6
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x2.r1_m8
vdd"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
B 2 40 420 840 820 {flags=graph
y1=0.9
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.6
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vref_out
color=4

unitx=1
logx=0
logy=0
dataset=0}
B 2 -850 420 -50 820 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.6
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0



unitx=1
logx=0
logy=0
dataset=1
color=6
node=vref_out}
N -580 260 -370 260 {
lab=vref_out}
N -370 260 -370 280 {
lab=vref_out}
N -370 280 -330 280 {
lab=vref_out}
N -580 240 -520 240 {
lab=VDD}
N -580 280 -520 280 {
lab=VSS}
N -330 280 310 340 {
lab=vref_out}
N -540 -370 -540 -360 {
lab=VSS}
N -430 -370 -430 -360 {
lab=VDD}
N -540 -300 -540 -290 {
lab=GND}
N -430 -300 -430 -290 {
lab=GND}
C {devices/lab_pin.sym} 310 340 0 1 {name=p16 sig_type=std_logic lab=vref_out
}
C {devices/launcher.sym} -200 -20 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/bandgap.raw tran"
}
C {bandgap.sym} -730 260 0 0 {name=x2}
C {devices/lab_pin.sym} -520 240 2 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -520 280 2 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/launcher.sym} -220 100 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/bandgap.raw dc"
}
C {devices/code.sym} -980 -380 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt


"
spice_ignore=false}
C {devices/code.sym} -1130 -390 0 0 {name=SIMULATION
only_toplevel=false 
value="
.param top_l = 10
.param top_w = 30
.param top_m = 10

.param mid_l = 10
.param mid_w = 9
.param mid_m = 1

.param bot_l = 2
.param bot_w = 9
.param bot_m = 10

.control

dc v1 3 4 0.1 

write bandgap.raw

.endc

"}
C {devices/vsource.sym} -430 -330 0 0 {name=V1 value="3" savecurrent=false}
C {devices/gnd.sym} -430 -290 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -430 -370 2 1 {name=p17 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} -540 -330 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -540 -290 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -540 -370 2 1 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} -660 -330 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -660 -360 2 1 {name=p19 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} -660 -300 0 0 {name=l4 lab=GND}
