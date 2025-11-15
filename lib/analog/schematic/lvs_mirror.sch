v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -80 120 -80 {lab=IB}
N 10 -160 20 -160 {lab=IB}
N 10 -160 10 -80 {lab=IB}
N 10 -80 20 -80 {lab=IB}
N 10 -200 10 -160 {lab=IB}
N 10 -200 50 -200 {lab=IB}
N 50 -200 50 -190 {lab=IB}
N 50 -130 50 -120 {lab=#net1}
N 50 -120 150 -120 {lab=#net1}
N 150 -130 150 -120 {lab=#net1}
N 150 -120 150 -110 {lab=#net1}
N 150 -200 150 -190 {lab=IIN}
N 120 -80 220 -80 {lab=IB}
N 180 -160 220 -160 {lab=IIN}
N 270 -130 270 -110 {lab=#net2}
N 270 -200 270 -190 {lab=IOUT}
N 50 -220 50 -200 {lab=IB}
N 150 -220 150 -200 {lab=IIN}
N 270 -220 270 -200 {lab=IOUT}
N 220 -80 240 -80 {lab=IB}
N 220 -160 240 -160 {lab=IIN}
N 200 -160 200 -150 {lab=IIN}
N 200 -90 200 -80 {lab=IB}
N 200 -200 200 -160 {lab=IIN}
N 150 -200 200 -200 {lab=IIN}
C {madvlsi/nmos3.sym} 50 -160 0 0 {name=M1
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
C {madvlsi/nmos3.sym} 150 -80 0 0 {name=M2
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
C {madvlsi/nmos3.sym} 270 -80 0 0 {name=M3
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
C {madvlsi/nmos3.sym} 150 -160 2 0 {name=M4
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
C {madvlsi/nmos3.sym} 270 -160 0 0 {name=M5
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
C {iopin.sym} 70 -280 2 1 {name=p18 lab=VN

}
C {lab_pin.sym} 70 -280 2 1 {name=p23 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 150 -50 3 0 {name=p24 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 270 -50 3 0 {name=p1 sig_type=std_logic lab=VN
}
C {iopin.sym} 270 -220 1 1 {name=p2 lab=IOUT
}
C {iopin.sym} 150 -220 1 1 {name=p3 lab=IIN

}
C {iopin.sym} 50 -220 1 1 {name=p4 lab=IB

}
C {madvlsi/capacitor.sym} 200 -120 0 0 {name=C1
value=1p
m=1}
