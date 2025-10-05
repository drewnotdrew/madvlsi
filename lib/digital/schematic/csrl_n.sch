v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -180 110 -180 {lab=Dn}
N 70 -240 110 -240 {lab=D}
N 200 -300 220 -300 {lab=Q}
N 170 -240 190 -240 {lab=Q}
N 220 -240 310 -240 {lab=Q}
N 190 -300 190 -250 {lab=Q}
N 310 -270 310 -250 {lab=Q}
N 200 -240 220 -240 {lab=Q}
N 250 -270 250 -190 {lab=#net1}
N 180 -180 250 -180 {lab=#net1}
N 340 -300 360 -300 {lab=#net1}
N 360 -300 360 -190 {lab=#net1}
N 250 -180 360 -180 {lab=#net1}
N 310 -240 310 -150 {lab=Q}
N 190 -250 190 -240 {lab=Q}
N 310 -250 310 -240 {lab=Q}
N 250 -190 250 -180 {lab=#net1}
N 360 -190 360 -180 {lab=#net1}
N 250 -180 250 -150 {lab=#net1}
N 200 -120 220 -120 {lab=Q}
N 190 -240 190 -120 {lab=Q}
N 190 -300 200 -300 {lab=Q}
N 190 -240 200 -240 {lab=Q}
N 170 -180 180 -180 {lab=#net1}
N 190 -120 200 -120 {lab=Q}
N 310 -240 390 -240 {lab=Q}
N 360 -180 390 -180 {lab=#net1}
N 340 -120 360 -120 {lab=#net1}
N 360 -180 360 -120 {lab=#net1}
N 250 -90 250 -60 {lab=VN}
N 250 -60 310 -60 {lab=VN}
N 310 -90 310 -60 {lab=VN}
N 280 -60 280 -50 {lab=VN}
N 250 -120 250 -90 {lab=VN}
N 310 -120 310 -90 {lab=VN}
N 250 -300 310 -300 {lab=VP}
N 280 -310 280 -300 {lab=VP}
N 250 -360 250 -330 {lab=#net2}
N 250 -360 310 -360 {lab=#net2}
N 310 -360 310 -330 {lab=#net2}
N 280 -390 280 -360 {lab=#net2}
N 280 -460 280 -450 {lab=VP}
N 280 -450 280 -420 {lab=VP}
N 140 -420 140 -270 {lab=clk}
N 140 -420 250 -420 {lab=clk}
N 140 -280 150 -280 {lab=clk}
N 140 -220 140 -210 {lab=clk}
N 140 -220 150 -220 {lab=clk}
N 150 -280 150 -220 {lab=clk}
N 70 -420 140 -420 {lab=clk}
N 140 -240 140 -230 {lab=VN}
N 130 -230 140 -230 {lab=VN}
N 130 -230 130 -180 {lab=VN}
N 140 -180 140 -130 {lab=VN}
N 130 -180 130 -170 {lab=VN}
N 130 -170 140 -170 {lab=VN}
N 140 -130 140 -120 {lab=VN}
C {iopin.sym} 120 -480 2 0 {name=p4 lab=VP}
C {lab_pin.sym} 120 -480 2 0 {name=p11 sig_type=std_logic lab=VP

}
C {iopin.sym} 120 -450 2 0 {name=p9 lab=VN}
C {lab_pin.sym} 120 -450 2 0 {name=p12 sig_type=std_logic lab=VN}
C {madvlsi/nmos4_1.sym} 140 -180 2 0 {name=M1
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
C {madvlsi/nmos4_3.sym} 140 -240 2 0 {name=M2
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
C {madvlsi/pmos4_3.sym} 310 -300 0 1 {name=M3
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
C {madvlsi/pmos4_3.sym} 250 -300 0 0 {name=M4
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
C {madvlsi/nmos4_2.sym} 250 -120 2 0 {name=M5
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
C {madvlsi/nmos4_2.sym} 310 -120 2 1 {name=M6
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
C {lab_pin.sym} 280 -50 3 0 {name=p18 sig_type=std_logic lab=VN}
C {madvlsi/pmos4_3.sym} 280 -420 0 0 {name=M7
L=0.15
W=2
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
C {lab_pin.sym} 280 -310 1 0 {name=p19 sig_type=std_logic lab=VP

}
C {lab_pin.sym} 280 -460 1 0 {name=p20 sig_type=std_logic lab=VP

}
C {ipin.sym} 70 -420 0 0 {name=p21 lab=clk}
C {lab_pin.sym} 140 -120 3 0 {name=p22 sig_type=std_logic lab=VN}
C {iopin.sym} 70 -240 2 0 {name=p1 lab=D}
C {iopin.sym} 70 -180 2 0 {name=p2 lab=Dn}
C {iopin.sym} 390 -240 0 0 {name=p3 lab=Q}
C {iopin.sym} 390 -180 0 0 {name=p5 lab=Qn}
