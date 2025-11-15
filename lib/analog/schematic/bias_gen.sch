v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {V} 120 -120 0 0 0.4 0.4 {}
N 110 -210 110 -170 {lab=V}
N 110 -190 160 -190 {lab=V}
N 160 -190 160 -140 {lab=V}
N 140 -140 160 -140 {lab=V}
N 470 -290 470 -210 {lab=VBN}
N 110 -290 110 -250 {lab=V}
N 400 -140 450 -140 {lab=VBN}
N 420 -190 420 -140 {lab=VBN}
N 420 -190 470 -190 {lab=VBN}
N 220 -190 220 -170 {lab=#net1}
N 320 -190 320 -170 {lab=VBP}
N 170 -140 190 -140 {lab=V}
N 250 -260 290 -260 {lab=#net1}
N 270 -260 270 -220 {lab=#net1}
N 470 -300 470 -290 {lab=VBN}
N 110 -300 110 -290 {lab=V}
N 350 -140 390 -140 {lab=VBN}
N 220 -230 220 -190 {lab=#net1}
N 220 -210 270 -210 {lab=#net1}
N 270 -220 270 -210 {lab=#net1}
N 110 -250 110 -210 {lab=V}
N 320 -230 320 -190 {lab=VBP}
N 470 -210 470 -170 {lab=VBN}
N 390 -140 400 -140 {lab=VBN}
N 320 -210 420 -210 {lab=VBP}
N 420 -330 420 -210 {lab=VBP}
N 140 -330 440 -330 {lab=VBP}
N 160 -140 170 -140 {lab=V}
N 420 -360 420 -330 {lab=VBP}
N 470 -190 500 -190 {lab=VBN}
N 380 -210 380 -110 {lab=VBP}
N 10 -190 110 -190 {lab=V}
N 10 -190 10 -170 {lab=V}
N 10 -110 110 -110 {lab=#net2}
N 40 -140 140 -140 {lab=V}
N -60 -140 40 -140 {lab=V}
N -90 -190 10 -190 {lab=V}
N -90 -190 -90 -170 {lab=V}
N -90 -110 10 -110 {lab=#net2}
C {madvlsi/resistor.sym} 110 -80 0 0 {name=R1
value=r
m=1}
C {madvlsi/nmos3.sym} 110 -140 2 0 {name=M5
L=u_l
W=u_w
body=GND
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
C {iopin.sym} 110 -480 2 1 {name=p2 lab=VN

}
C {iopin.sym} 110 -510 2 1 {name=p3 lab=VP
}
C {madvlsi/nmos3.sym} 470 -140 0 0 {name=M2
L=u_l
W=u_w
body=GND
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
C {lab_pin.sym} 110 -510 2 1 {name=p6 sig_type=std_logic lab=VP
}
C {lab_pin.sym} 110 -480 2 1 {name=p7 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 110 -50 3 0 {name=p9 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 220 -110 3 0 {name=p5 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 320 -110 3 0 {name=p8 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 110 -360 1 0 {name=p1 sig_type=std_logic lab=VP
}
C {lab_pin.sym} 470 -360 1 0 {name=p4 sig_type=std_logic lab=VP
}
C {lab_pin.sym} 320 -290 1 0 {name=p11 sig_type=std_logic lab=VP
L=u_l
W=u_w}
C {lab_pin.sym} 220 -290 1 0 {name=p12 sig_type=std_logic lab=VP
L=u_l
W=u_w}
C {madvlsi/pmos3.sym} 470 -330 0 0 {name=M9
L=u_l
W=u_w
body=VDD
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
C {madvlsi/pmos3.sym} 110 -330 2 0 {name=M1
L=u_l
W=u_w
body=VDD
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
C {madvlsi/nmos3.sym} 320 -140 2 0 {name=M3
L=u_l
W=u_w
body=GND
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
C {madvlsi/nmos3.sym} 220 -140 0 0 {name=M4
L=u_l
W=u_w
body=GND
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
C {madvlsi/pmos3.sym} 320 -260 0 0 {name=M6
L=u_l
W=u_w
body=VDD
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
C {madvlsi/pmos3.sym} 220 -260 2 0 {name=M7
L=u_l
W=u_w
body=VDD
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
C {lab_pin.sym} 420 -360 1 0 {name=p13 sig_type=std_logic lab=VBP
}
C {lab_pin.sym} 110 -450 2 1 {name=p15 sig_type=std_logic lab=VBP
}
C {lab_pin.sym} 110 -420 2 1 {name=p16 sig_type=std_logic lab=VBN
}
C {lab_pin.sym} 500 -190 2 0 {name=p14 sig_type=std_logic lab=VBN
L=u_l
W=u_w}
C {madvlsi/capacitor.sym} 380 -80 0 0 {name=C1
value=1pf
m=1}
C {lab_pin.sym} 380 -50 3 0 {name=p19 sig_type=std_logic lab=VN
}
C {opin.sym} 110 -450 0 0 {name=p20 lab=VBP}
C {opin.sym} 110 -420 0 0 {name=p17 lab=VBN}
C {madvlsi/nmos3.sym} 10 -140 2 0 {name=M8
L=u_l
W=u_w
body=GND
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
C {madvlsi/nmos3.sym} -90 -140 2 0 {name=M10
L=u_l
W=u_w
body=GND
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
C {lab_pin.sym} 470 -110 3 0 {name=p10 sig_type=std_logic lab=VN
}
