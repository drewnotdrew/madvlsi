v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 250 -130 250 -30 {lab=IB}
N 170 -30 170 -20 {lab=IB}
N 170 -20 250 -20 {lab=IB}
N 250 -30 250 -20 {lab=IB}
N 130 -20 170 -20 {lab=IB}
N 130 -60 130 -20 {lab=IB}
N 130 -60 140 -60 {lab=IB}
N 200 -60 210 -60 {lab=#net1}
N 210 -160 210 -60 {lab=#net1}
N 200 -160 210 -160 {lab=#net1}
N 210 -160 220 -160 {lab=#net1}
N 130 -160 140 -160 {lab=IIN}
N 250 -230 250 -130 {lab=IB}
N 170 -230 170 -190 {lab=IIN}
N 200 -280 220 -280 {lab=#net2}
N 130 -280 140 -280 {lab=IOUT}
N 110 -60 130 -60 {lab=IB}
N 110 -160 130 -160 {lab=IIN}
N 110 -280 130 -280 {lab=IOUT}
N 250 -250 250 -230 {lab=IB}
N 170 -250 170 -230 {lab=IIN}
N 130 -210 170 -210 {lab=IIN}
N 130 -210 130 -160 {lab=IIN}
C {madvlsi/nmos3.sym} 170 -60 3 0 {name=M1
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
C {madvlsi/nmos3.sym} 250 -160 3 0 {name=M2
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
C {madvlsi/nmos3.sym} 250 -280 3 0 {name=M3
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
C {madvlsi/nmos3.sym} 170 -160 1 0 {name=M4
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
C {madvlsi/nmos3.sym} 170 -280 3 0 {name=M5
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
C {iopin.sym} 50 -220 2 1 {name=p18 lab=VN

}
C {lab_pin.sym} 50 -220 2 1 {name=p23 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 280 -160 2 0 {name=p24 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 280 -280 2 0 {name=p1 sig_type=std_logic lab=VN
}
C {iopin.sym} 110 -280 0 1 {name=p2 lab=IOUT
}
C {iopin.sym} 110 -160 0 1 {name=p3 lab=IIN

}
C {iopin.sym} 110 -60 0 1 {name=p4 lab=IB

}
