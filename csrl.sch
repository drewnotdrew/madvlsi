v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -180 90 -180 {lab=#net1}
N 90 -220 90 -140 {lab=#net1}
N -10 -110 60 -110 {lab=GND}
N -10 -110 -10 -80 {lab=GND}
N 120 -450 160 -450 {lab=VDD}
N 140 -470 140 -450 {lab=VDD}
N -30 -350 60 -350 {lab=#net2}
N -30 -250 60 -250 {lab=#net3}
N 40 -450 60 -450 {lab=#net4}
N 40 -450 40 -270 {lab=#net4}
N 40 -270 120 -270 {lab=#net4}
N 120 -350 240 -350 {lab=#net5}
N 220 -450 240 -450 {lab=#net5}
N 240 -450 240 -350 {lab=#net5}
N 90 -420 90 -400 {lab=#net5}
N 90 -400 140 -400 {lab=#net5}
N 140 -400 140 -350 {lab=#net5}
N 120 -250 140 -250 {lab=#net4}
N 120 -270 140 -270 {lab=#net4}
N 140 -270 140 -250 {lab=#net4}
N 190 -420 190 -250 {lab=#net4}
N 140 -250 190 -250 {lab=#net4}
N 140 -180 160 -180 {lab=#net6}
N 140 -180 140 -110 {lab=#net6}
N 120 -110 140 -110 {lab=#net6}
N 140 -110 140 -70 {lab=#net6}
N 140 -70 160 -70 {lab=#net6}
N 90 -320 90 -300 {lab=#net7}
N -30 -300 90 -300 {lab=#net7}
N 190 -150 190 -120 {lab=#net5}
N 190 -120 240 -120 {lab=#net5}
N 240 -120 240 -70 {lab=#net5}
N 220 -70 240 -70 {lab=#net5}
N 190 -40 190 -20 {lab=#net4}
N 190 -20 260 -20 {lab=#net4}
N 260 -180 260 -20 {lab=#net4}
N 220 -180 260 -180 {lab=#net4}
N 190 -250 260 -250 {lab=#net4}
N 260 -250 260 -180 {lab=#net4}
N 240 -350 240 -120 {lab=#net5}
C {madvlsi/pmos4_1.sym} 90 -350 0 0 {name=M1
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
C {madvlsi/pmos4_1.sym} 90 -250 0 0 {name=M2
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
C {madvlsi/nmos4_1.sym} 90 -110 2 0 {name=M7
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
C {madvlsi/nmos4_1.sym} 190 -70 0 0 {name=M6
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
C {madvlsi/nmos4_1.sym} 190 -180 0 0 {name=M5
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
C {madvlsi/pmos4_1.sym} 90 -450 0 1 {name=M3
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
C {madvlsi/pmos4_1.sym} 190 -450 0 0 {name=M4
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
C {madvlsi/gnd.sym} -10 -80 0 0 {name=l1 lab=GND}
C {madvlsi/vdd.sym} 140 -470 0 0 {name=l2 lab=VDD}
