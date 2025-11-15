v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -300 340 -300 {lab=#net1}
N 320 -350 320 -300 {lab=#net1}
N 320 -350 370 -350 {lab=#net1}
N 370 -350 370 -330 {lab=#net1}
N 220 -660 300 -660 {lab=#net2}
N 220 -300 260 -300 {lab=#net1}
N 370 -640 370 -590 {lab=#net2}
N 320 -610 370 -610 {lab=#net2}
N 320 -660 320 -610 {lab=#net2}
N 320 -410 340 -410 {lab=#net3}
N 320 -510 340 -510 {lab=VBP}
N 370 -380 370 -360 {lab=#net1}
N 250 -480 250 -440 {lab=#net3}
N 250 -460 290 -460 {lab=#net3}
N 210 -660 220 -660 {lab=#net2}
N 210 -300 220 -300 {lab=#net1}
N 370 -580 370 -540 {lab=#net2}
N 280 -410 320 -410 {lab=#net3}
N 300 -460 300 -410 {lab=#net3}
N 290 -460 300 -460 {lab=#net3}
N 260 -300 300 -300 {lab=#net1}
N 280 -510 320 -510 {lab=VBP}
N 300 -660 340 -660 {lab=#net2}
N 370 -590 370 -580 {lab=#net2}
N 300 -610 300 -510 {lab=VBP}
N 180 -610 300 -610 {lab=VBP}
N 180 -630 180 -330 {lab=VBP}
N 370 -360 370 -350 {lab=#net1}
N 150 -610 180 -610 {lab=VBP}
N 320 -300 320 -200 {lab=#net1}
N 320 -200 340 -200 {lab=#net1}
N 400 -300 400 -200 {lab=V}
N 370 -330 370 -230 {lab=#net1}
N 370 -230 370 -130 {lab=#net1}
N 320 -200 320 -100 {lab=#net1}
N 320 -100 340 -100 {lab=#net1}
N 400 -200 400 -100 {lab=V}
C {madvlsi/nmos3.sym} 370 -300 1 0 {name=M5
L=12
W=4
body=VN
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
C {iopin.sym} 80 -470 2 1 {name=p2 lab=VN

}
C {iopin.sym} 80 -500 2 1 {name=p3 lab=VP
}
C {madvlsi/nmos3.sym} 370 -660 3 0 {name=M2
L=12
W=4
body=VN
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
C {lab_pin.sym} 80 -500 2 1 {name=p6 sig_type=std_logic lab=VP
}
C {lab_pin.sym} 80 -470 2 1 {name=p7 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 400 -410 2 0 {name=p5 sig_type=std_logic lab=VN
L=12
W=4
body=VN}
C {lab_pin.sym} 400 -510 2 0 {name=p8 sig_type=std_logic lab=VN
L=12
W=4
body=VN}
C {lab_pin.sym} 150 -300 0 0 {name=p1 sig_type=std_logic lab=VP
L=12
W=4}
C {lab_pin.sym} 150 -660 0 0 {name=p4 sig_type=std_logic lab=VP
L=12
W=4}
C {lab_pin.sym} 220 -510 0 0 {name=p11 sig_type=std_logic lab=VP
L=12
W=4}
C {lab_pin.sym} 220 -410 0 0 {name=p12 sig_type=std_logic lab=VP
L=12
W=4}
C {madvlsi/pmos3.sym} 180 -660 3 0 {name=M9
L=12
W=4
body=VP
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
C {madvlsi/pmos3.sym} 180 -300 1 0 {name=M1
L=12
W=4
body=VP
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
C {madvlsi/nmos3.sym} 370 -510 1 0 {name=M3
L=12
W=4
body=VN
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
C {madvlsi/nmos3.sym} 370 -410 3 0 {name=M4
L=12
W=4
body=VN
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
C {madvlsi/pmos3.sym} 250 -510 3 0 {name=M6
L=12
W=4
body=VP
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
C {madvlsi/pmos3.sym} 250 -410 1 0 {name=M7
L=12
W=4
body=VP
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
C {lab_pin.sym} 150 -610 0 0 {name=p13 sig_type=std_logic lab=VBP
L=12
W=4}
C {lab_pin.sym} 80 -440 2 1 {name=p15 sig_type=std_logic lab=VBP
}
C {opin.sym} 80 -440 0 0 {name=p20 lab=VBP}
C {madvlsi/nmos3.sym} 370 -200 1 0 {name=M8
L=12
W=4
body=VN
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
C {madvlsi/nmos3.sym} 370 -100 1 0 {name=M10
L=12
W=4
body=VN
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
C {lab_pin.sym} 400 -660 2 0 {name=p10 sig_type=std_logic lab=VN
L=12
W=4
body=VN}
C {iopin.sym} 400 -300 2 1 {name=p9 lab=V
L=12
W=4
body=VN}
