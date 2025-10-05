v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -200 110 -170 {lab=VP}
N 70 -170 80 -170 {lab=A}
N 70 -170 70 -90 {lab=A}
N 70 -90 80 -90 {lab=A}
N 110 -140 110 -120 {lab=y}
N 50 -130 70 -130 {lab=A}
N 110 -130 130 -130 {lab=y}
N 110 -90 110 -60 {lab=VN}
C {madvlsi/nmos4.sym} 110 -90 0 0 {name=M1
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
C {madvlsi/pmos4.sym} 110 -170 0 0 {name=M2
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
C {iopin.sym} 110 -200 3 0 {name=p2 lab=VP}
C {iopin.sym} 110 -60 1 0 {name=p3 lab=VN}
C {ipin.sym} 50 -130 0 0 {name=p4 lab=A}
C {opin.sym} 130 -130 0 0 {name=p1 lab=y}
