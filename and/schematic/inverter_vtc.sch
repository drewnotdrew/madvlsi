v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 190 -150 190 -130 {lab=Vout}
N 150 -180 160 -180 {lab=Vin}
N 150 -180 150 -100 {lab=Vin}
N 150 -100 160 -100 {lab=Vin}
N 130 -140 150 -140 {lab=Vin}
N 190 -140 210 -140 {lab=Vout}
N 190 -210 190 -180 {lab=VDD}
N 190 -100 190 -70 {lab=GND}
C {madvlsi/gnd.sym} 190 -70 0 0 {name=l1 lab=GND}
C {madvlsi/nmos4.sym} 190 -100 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {madvlsi/pmos4.sym} 190 -180 0 0 {name=M2
L=0.15
W=1
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
C {madvlsi/vdd.sym} 190 -210 0 0 {name=l2 lab=VDD}
C {code_shown.sym} 280 -60 0 0 {name=SPICE only_toplevel=false value=".dc Vin 0 1.8 0.01 
.save all"}
C {lab_pin.sym} 130 -140 0 0 {name=p1 sig_type=std_logic lab=Vin

}
C {sky130_fd_pr/corner.sym} 310 -220 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_pin.sym} 210 -140 2 0 {name=p2 sig_type=std_logic lab=Vout
}
C {madvlsi/vsource.sym} 30 -210 0 0 {name=Vdd
value=1.8}
C {madvlsi/gnd.sym} 30 -180 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} 30 -240 0 0 {name=l4 lab=VDD}
C {madvlsi/vsource.sym} 30 -80 0 0 {name=Vin
value=1}
C {madvlsi/gnd.sym} 30 -50 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 30 -110 2 0 {name=p3 sig_type=std_logic lab=Vin

}
