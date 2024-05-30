v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 30 130 220 {
lab=vref}
N 130 280 130 350 {
lab=r1_m8}
N -220 40 -220 120 {
lab=top_gate}
N -30 30 -30 120 {
lab=n_gate}
N -180 0 -70 0 {
lab=top_gate}
N 50 -0 90 -0 {
lab=top_gate}
N 50 0 50 40 {
lab=top_gate}
N -80 40 50 40 {
lab=top_gate}
N -80 -0 -80 40 {
lab=top_gate}
N -180 150 -70 150 {
lab=n_gate}
N -80 80 -30 80 {
lab=n_gate}
N -80 80 -80 150 {
lab=n_gate}
N -170 -0 -170 50 {
lab=top_gate}
N -220 50 -170 50 {
lab=top_gate}
N -220 30 -220 40 {
lab=top_gate}
N -220 180 -220 220 {
lab=Va}
N -220 280 -220 350 {
lab=r4_m6}
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
C {sky130_fd_pr/pfet_01v8.sym} -200 0 0 1 {name=M1
L=10
W=10
nf=1
mult=1
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
L=10
W=10
nf=1
mult=1
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
L=10
W=10
nf=1
mult=1
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
C {sky130_fd_pr/res_high_po_0p69.sym} -220 250 0 0 {name=R4
L=204
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 130 250 0 0 {name=R1
L=204
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -80 0 0 0 {name=p13 sig_type=std_logic lab=top_gate}
C {devices/lab_wire.sym} -80 80 0 0 {name=p14 sig_type=std_logic lab=n_gate}
C {devices/lab_wire.sym} 130 330 0 0 {name=p15 sig_type=std_logic lab=r1_m8}
C {devices/lab_wire.sym} -220 350 0 0 {name=p16 sig_type=std_logic lab=r4_m6}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -200 150 0 1 {name=M9
L=5
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -50 150 0 0 {name=M4
L=5
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -200 380 0 1 {name=M5
L=5
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 110 380 0 0 {name=M6
L=5
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -50 380 0 0 {name=M7
L=5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
