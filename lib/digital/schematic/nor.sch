v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -185 150 -165 {lab=Y}
N 150 -175 170 -175 {lab=Y}
N 150 -245 150 -215 {lab=#net1}
N 90 -115 90 -85 {lab=VN}
N 150 -305 150 -275 {lab=VP}
N 90 -85 90 -75 {lab=VN}
N 90 -75 210 -75 {lab=VN}
N 210 -85 210 -75 {lab=VN}
N 150 -75 150 -65 {lab=VN}
N 210 -155 210 -145 {lab=Y}
N 90 -155 90 -145 {lab=Y}
N 90 -155 210 -155 {lab=Y}
N 150 -165 150 -155 {lab=Y}
N 170 -175 230 -175 {lab=Y}
N 230 -175 240 -175 {lab=Y}
N 210 -115 210 -85 {lab=VN}
C {madvlsi/nmos4.sym} 90 -115 0 0 {name=M1
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
C {madvlsi/pmos4.sym} 150 -275 0 0 {name=M2
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
C {madvlsi/pmos4.sym} 150 -215 0 0 {name=M3
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
C {madvlsi/nmos4.sym} 210 -115 2 0 {name=M5
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
C {ipin.sym} 65 -225 0 0 {name=p5 lab=B}
C {iopin.sym} 150 -305 3 0 {name=p2 lab=VP}
C {iopin.sym} 150 -65 1 0 {name=p3 lab=VN}
C {ipin.sym} 65 -250 0 0 {name=p4 lab=A}
C {opin.sym} 240 -175 0 0 {name=p8 lab=Y}
C {lab_pin.sym} 120 -275 0 0 {name=p6 sig_type=std_logic lab=A}
C {lab_pin.sym} 120 -215 0 0 {name=p9 sig_type=std_logic lab=B}
C {lab_pin.sym} 60 -115 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 240 -115 2 0 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} 65 -225 2 0 {name=p10 sig_type=std_logic lab=B}
C {lab_pin.sym} 65 -250 2 0 {name=p11 sig_type=std_logic lab=A}
