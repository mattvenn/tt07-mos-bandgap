v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 340 -60 1140 340 {flags=graph
y1=0.7
y2=0.73
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.1284713e-07
x2=4.7668549e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vref_out
vref"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
N 130 30 130 220 {
lab=vref}
N 130 280 130 350 {
lab=#net1}
N -220 40 -220 120 {
lab=#net2}
N -30 30 -30 120 {
lab=#net3}
N -180 0 -70 0 {
lab=#net2}
N 50 -0 90 -0 {
lab=#net2}
N 50 0 50 40 {
lab=#net2}
N -80 40 50 40 {
lab=#net2}
N -80 -0 -80 40 {
lab=#net2}
N -180 150 -70 150 {
lab=#net3}
N -80 80 -30 80 {
lab=#net3}
N -80 80 -80 150 {
lab=#net3}
N -170 -0 -170 50 {
lab=#net2}
N -220 50 -170 50 {
lab=#net2}
N -220 30 -220 40 {
lab=#net2}
N -220 180 -220 220 {
lab=Va}
N -220 280 -220 350 {
lab=#net4}
N -30 180 -30 350 {
lab=Vb}
N -180 380 -70 380 {
lab=VSS}
N -220 410 -220 430 {
lab=VSS}
N -220 430 130 430 {
lab=VSS}
N 130 410 130 430 {
lab=VSS}
N -30 410 -30 430 {
lab=VSS}
N 90 380 90 430 {
lab=VSS}
N -220 -50 -220 -30 {
lab=VDD}
N -220 -50 130 -50 {
lab=VDD}
N 130 -50 130 -30 {
lab=VDD}
N -30 -50 -30 -30 {
lab=VDD}
N 130 120 160 120 {
lab=vref}
N -30 430 -30 450 {
lab=VSS}
N -30 -80 -30 -50 {
lab=VDD}
N -290 150 -220 150 {
lab=VSS}
N -30 150 40 150 {
lab=VSS}
N 130 -0 160 -0 {
lab=VDD}
N 160 -50 160 -0 {
lab=VDD}
N 130 -50 160 -50 {
lab=VDD}
N -30 -0 -0 -0 {
lab=VDD}
N -0 -50 0 -0 {
lab=VDD}
N -250 -0 -220 0 {
lab=VDD}
N -250 -50 -250 -0 {
lab=VDD}
N -250 -50 -220 -50 {
lab=VDD}
N -290 380 -220 380 {
lab=VDD}
N -30 380 30 380 {
lab=VDD}
N 130 380 190 380 {
lab=VDD}
N -290 250 -240 250 {
lab=VSS}
N 70 250 110 250 {
lab=VSS}
N -290 200 -220 200 {
lab=Va}
N -80 200 -30 200 {
lab=Vb}
N -120 380 -120 430 {
lab=VSS}
N -600 240 -600 250 {
lab=VSS}
N -490 240 -490 250 {
lab=VDD}
N -600 310 -600 320 {
lab=GND}
N -490 310 -490 320 {
lab=GND}
N 100 730 230 730 {
lab=#net5}
N 230 730 230 900 {
lab=#net5}
N -290 900 230 900 {
lab=#net5}
N -290 790 -290 900 {
lab=#net5}
N -290 790 -200 790 {
lab=#net5}
N 490 760 490 780 {
lab=vref_out}
N 490 730 490 760 {
lab=vref_out}
N 360 730 400 730 {
lab=vref_out}
N 400 730 440 730 {
lab=vref_out}
N 230 730 300 730 {
lab=#net5}
N 440 730 550 730 {
lab=vref_out}
C {sky130_fd_pr/pfet_01v8.sym} -200 0 0 1 {name=M1
L=\{mos_l\}
W=\{mos_w\}
nf=1
mult=\{mos_mult\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -50 0 0 0 {name=M2
L=\{mos_l\}
W=\{mos_w\}
nf=1
mult=\{mos_mult\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 110 0 0 0 {name=M3
L=\{mos_l\}
W=\{mos_w\}
nf=1
mult=\{mos_mult\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -200 150 0 1 {name=M4
L=\{mos_l\}
W=\{mos_w\}
nf=1 
mult=\{mos_mult\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -50 150 0 0 {name=M5
L=\{mos_l\}
W=\{mos_w\}
nf=1 
mult=\{mos_mult\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -200 380 0 1 {name=M6
L=\{mos_l\}
W=\{mos_w\}
nf=1
mult=\{mos_mult\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -50 380 0 0 {name=M7
L=\{mos_l\}
W=\{mos_w\}
nf=1
mult=\{mos_mult\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 110 380 0 0 {name=M8
L=\{mos_l\}
W=\{mos_w\}
nf=1
mult=\{mos_mult\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -30 450 0 0 {name=p1 lab=VSS}
C {devices/iopin.sym} -30 -80 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 160 120 0 0 {name=p4 lab=vref}
C {devices/lab_wire.sym} 40 150 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -290 380 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 30 380 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 190 380 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -290 150 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -290 250 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 70 250 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -290 200 0 0 {name=p2 sig_type=std_logic lab=Va}
C {devices/lab_wire.sym} -80 200 0 0 {name=p12 sig_type=std_logic lab=Vb}
C {devices/code.sym} -540 -10 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt


"
spice_ignore=false}
C {devices/code.sym} -690 -20 0 0 {name=SIMULATION
only_toplevel=false 
value="
*.option  METHOD = GEAR
*.param mc_mm_switch=0
.control
.param mos_mult = 1
.param mos_w = 1
.param mos_l = 0.15
let tempv = 10            ; create a vector vddc and assign 1.8
repeat 20
  set temp = $&tempv         ; alter the voltage V1 using vector vddc
  tran 50p 0.5u uic
  let tempv = tempv + 5   ; update vddc
  write bandgap.raw  
  set appendwrite 
  reset 
end
.endc

"}
C {devices/vsource.sym} -490 280 0 0 {name=V1 value="1.8" savecurrent=false}
C {devices/gnd.sym} -490 320 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -490 240 2 1 {name=p13 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} -600 280 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -600 320 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -600 240 2 1 {name=p14 sig_type=std_logic lab=VSS
}
C {devices/launcher.sym} 450 450 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/bandgap.raw tran"
}
C {devices/iopin.sym} -200 670 0 1 {name=p15 lab=vref}
C {sky130_fd_pr/res_high_po_0p69.sym} -220 250 0 0 {name=R4
L=10
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 130 250 0 0 {name=R1
L=10
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {p3_opamp.sym} -80 720 0 0 {name=x1}
C {devices/lab_pin.sym} 550 730 0 1 {name=p16 sig_type=std_logic lab=vref_out
}
C {devices/lab_wire.sym} -50 660 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -50 800 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -720 280 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -720 250 2 1 {name=p19 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} -720 310 0 0 {name=l4 lab=GND}
C {devices/res.sym} 490 810 0 0 {name=R2
value=1000k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 490 840 0 0 {name=l5 lab=GND}
C {devices/res.sym} 330 730 1 0 {name=R3
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 400 760 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 400 790 0 0 {name=l6 lab=GND}
