v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 70 -340 870 60 {flags=graph
y1=0.4
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-13
x2=5e-07
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
N -260 -290 -260 -280 {
lab=VSS}
N -150 -290 -150 -280 {
lab=VDD}
N -260 -220 -260 -210 {
lab=GND}
N -150 -220 -150 -210 {
lab=GND}
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
C {devices/code.sym} -700 -300 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt


"
spice_ignore=false}
C {devices/code.sym} -850 -310 0 0 {name=SIMULATION
only_toplevel=false 
value="
*.option  METHOD = GEAR
*.param mc_mm_switch=0
.control
.param mos_mult = 1
.param mos_w = 1
.param mos_l = 0.15
let tempv = 40            ; create a vector vddc and assign 1.8
let vddv = 1.6
repeat 5
 * set temp = $&tempv         ; alter the voltage V1 using vector vddc
alter V1 = $&vddv
  tran 50p 0.5u uic
   let vddv = vddv + 0.1
*  let tempv = tempv + 5   ; update vddc
  write bandgap.raw  
  set appendwrite 
  reset 
end
.endc

"}
C {devices/vsource.sym} -150 -250 0 0 {name=V1 value="1.8" savecurrent=false}
C {devices/gnd.sym} -150 -210 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -150 -290 2 1 {name=p13 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} -260 -250 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -260 -210 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -260 -290 2 1 {name=p14 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} -380 -250 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -380 -280 2 1 {name=p19 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} -380 -220 0 0 {name=l4 lab=GND}
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
