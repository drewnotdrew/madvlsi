v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 280 -450 280 -440 {lab=VP}
N 250 -430 250 -400 {lab=VP}
N 310 -430 310 -400 {lab=VP}
N 140 -300 150 -300 {lab=clk}
N 150 -300 150 -240 {lab=clk}
N 140 -240 150 -240 {lab=clk}
N 140 -250 140 -240 {lab=clk}
N 140 -310 140 -300 {lab=clk}
N 200 -400 220 -400 {lab=Q}
N 170 -340 190 -340 {lab=Q}
N 220 -340 310 -340 {lab=Q}
N 190 -400 190 -350 {lab=Q}
N 310 -370 310 -350 {lab=Q}
N 250 -440 280 -440 {lab=VP}
N 280 -440 310 -440 {lab=VP}
N 250 -440 250 -430 {lab=VP}
N 310 -440 310 -430 {lab=VP}
N 200 -340 220 -340 {lab=Q}
N 250 -370 250 -290 {lab=Qn}
N 180 -280 250 -280 {lab=Qn}
N 340 -400 360 -400 {lab=Qn}
N 360 -400 360 -290 {lab=Qn}
N 250 -280 360 -280 {lab=Qn}
N 310 -340 310 -250 {lab=Q}
N 190 -350 190 -340 {lab=Q}
N 310 -350 310 -340 {lab=Q}
N 250 -290 250 -280 {lab=Qn}
N 360 -290 360 -280 {lab=Qn}
N 250 -280 250 -250 {lab=Qn}
N 250 -190 250 -160 {lab=#net1}
N 250 -160 310 -160 {lab=#net1}
N 310 -190 310 -160 {lab=#net1}
N 280 -160 280 -130 {lab=#net1}
N 140 -240 140 -100 {lab=clk}
N 150 -100 250 -100 {lab=clk}
N 70 -100 140 -100 {lab=clk}
N 70 -280 110 -280 {lab=Dn}
N 70 -340 110 -340 {lab=D}
N 200 -220 220 -220 {lab=Q}
N 190 -340 190 -220 {lab=Q}
N 190 -400 200 -400 {lab=Q}
N 190 -340 200 -340 {lab=Q}
N 170 -280 180 -280 {lab=Qn}
N 190 -220 200 -220 {lab=Q}
N 280 -70 280 -60 {lab=VN}
N 130 -280 140 -280 {lab=#net2}
N 130 -340 130 -280 {lab=#net2}
N 130 -340 140 -340 {lab=#net2}
N 250 -220 310 -220 {lab=VN}
N 280 -100 280 -70 {lab=VN}
N 140 -390 140 -340 {lab=#net2}
N 140 -100 150 -100 {lab=clk}
N 310 -340 390 -340 {lab=Q}
N 360 -280 390 -280 {lab=Qn}
N 340 -220 360 -220 {lab=Qn}
N 360 -280 360 -220 {lab=Qn}
C {madvlsi/pmos4_3.sym} 310 -400 0 1 {name=M8
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
C {madvlsi/pmos4_3.sym} 250 -400 0 0 {name=M9
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
C {iopin.sym} 280 -450 3 0 {name=p2 lab=VP}
C {madvlsi/pmos4_1.sym} 140 -340 0 1 {name=M10
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
C {madvlsi/pmos4_4.sym} 140 -280 0 1 {name=M11
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
C {madvlsi/nmos4_2.sym} 250 -220 2 0 {name=M12
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
C {madvlsi/nmos4_2.sym} 310 -220 2 1 {name=M13
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
C {madvlsi/nmos4_2.sym} 280 -100 2 0 {name=M14
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
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 280 -60 1 0 {name=p3 lab=VN}
C {iopin.sym} 280 -220 1 0 {name=p1 lab=VN}
C {iopin.sym} 90 -500 2 0 {name=p4 lab=VP}
C {ipin.sym} 70 -340 0 0 {name=p5 lab=D}
C {ipin.sym} 70 -280 0 0 {name=p6 lab=Dn}
C {ipin.sym} 70 -100 0 0 {name=p7 lab=clk}
C {opin.sym} 390 -340 0 0 {name=p10 lab=Q}
C {opin.sym} 390 -280 0 0 {name=p8 lab=Qn}
C {lab_pin.sym} 90 -500 2 0 {name=p11 sig_type=std_logic lab=VP

}
C {iopin.sym} 90 -470 2 0 {name=p9 lab=VN}
C {lab_pin.sym} 90 -470 2 0 {name=p12 sig_type=std_logic lab=VN}
