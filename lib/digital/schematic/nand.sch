v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 135 -195 225 -195 {lab=Y}
N 135 -205 135 -195 {lab=Y}
N 65 -285 65 -245 {lab=VP}
N 135 -285 205 -285 {lab=VP}
N 205 -285 205 -245 {lab=VP}
N 135 -295 135 -285 {lab=VP}
N 65 -285 135 -285 {lab=VP}
N 65 -215 65 -205 {lab=Y}
N 135 -205 205 -205 {lab=Y}
N 205 -215 205 -205 {lab=Y}
N 65 -205 135 -205 {lab=Y}
N 135 -65 135 -55 {lab=VN}
N 135 -195 135 -185 {lab=Y}
N 135 -95 135 -65 {lab=VN}
N 135 -155 140 -155 {lab=VN}
N 140 -155 145 -155 {lab=VN}
N 145 -155 145 -65 {lab=VN}
N 135 -65 145 -65 {lab=VN}
C {madvlsi/nmos4.sym} 135 -155 0 0 {name=M1
L=0.15
W=0.5
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
C {madvlsi/pmos4.sym} 65 -245 0 0 {name=M2
L=0.15
W=0.5
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
C {madvlsi/pmos4.sym} 205 -245 2 0 {name=M3
L=0.15
W=0.5
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
C {madvlsi/nmos4.sym} 135 -95 0 0 {name=M5
L=0.15
W=0.5
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
C {ipin.sym} 40 -105 0 0 {name=p5 lab=B}
C {iopin.sym} 135 -295 3 0 {name=p2 lab=VP}
C {iopin.sym} 135 -55 1 0 {name=p3 lab=VN}
C {ipin.sym} 40 -130 0 0 {name=p4 lab=A}
C {opin.sym} 225 -195 0 0 {name=p8 lab=Y}
C {lab_pin.sym} 35 -245 0 0 {name=p6 sig_type=std_logic lab=A}
C {lab_pin.sym} 235 -245 2 0 {name=p9 sig_type=std_logic lab=B}
C {lab_pin.sym} 105 -155 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 105 -95 0 0 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} 40 -105 2 0 {name=p10 sig_type=std_logic lab=B}
C {lab_pin.sym} 40 -130 2 0 {name=p11 sig_type=std_logic lab=A}
