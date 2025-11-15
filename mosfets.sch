v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {madvlsi/pmos4.sym} 50 -70 0 0 {name=M2
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
C {madvlsi/nmos4.sym} 260 -70 0 0 {name=M3
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
C {iopin.sym} 50 -100 3 0 {name=p1 lab=SOURCE}
C {iopin.sym} 50 -40 1 0 {name=p2 lab=DRAIN}
C {iopin.sym} 20 -70 2 0 {name=p3 lab=GATE}
C {iopin.sym} 50 -70 0 0 {name=p4 lab=BODY}
C {iopin.sym} 230 -70 2 0 {name=p5 lab=GATE}
C {iopin.sym} 260 -70 0 0 {name=p6 lab=BODY}
C {iopin.sym} 260 -40 1 0 {name=p7 lab=SOURCE}
C {iopin.sym} 260 -100 3 0 {name=p8 lab=DRAIN}
