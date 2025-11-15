v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -120 80 -110 {lab=IIN}
N 180 -120 180 -110 {lab=VN}
N 80 -140 80 -120 {lab=IIN}
N 180 -140 180 -120 {lab=VN}
N 130 -120 130 -80 {lab=IIN}
N 80 -120 130 -120 {lab=IIN}
N 110 -80 150 -80 {lab=IIN}
C {madvlsi/nmos3.sym} 80 -80 2 0 {name=M4
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
C {madvlsi/nmos3.sym} 180 -80 0 0 {name=M5
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
C {iopin.sym} 100 -220 2 1 {name=p18 lab=VN

}
C {lab_pin.sym} 100 -220 2 1 {name=p23 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 80 -50 3 0 {name=p24 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 180 -50 3 0 {name=p1 sig_type=std_logic lab=VN
}
C {iopin.sym} 80 -140 1 1 {name=p2 lab=IIN

}
C {iopin.sym} 180 -140 1 1 {name=p3 lab=IOUT

}
