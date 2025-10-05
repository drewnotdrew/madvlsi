v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 370 -190 370 -170 {lab=Y}
N 370 -180 390 -180 {lab=Y}
N 370 -250 370 -220 {lab=#net1}
N 310 -120 310 -90 {lab=GND}
N 370 -310 370 -280 {lab=VDD}
N 310 -90 310 -80 {lab=GND}
N 310 -80 430 -80 {lab=GND}
N 430 -90 430 -80 {lab=GND}
N 370 -80 370 -70 {lab=GND}
N 430 -160 430 -150 {lab=Y}
N 310 -160 310 -150 {lab=Y}
N 310 -160 430 -160 {lab=Y}
N 370 -170 370 -160 {lab=Y}
N 390 -180 450 -180 {lab=Y}
N 450 -180 460 -180 {lab=Y}
N 430 -120 430 -90 {lab=GND}
C {madvlsi/gnd.sym} 370 -70 0 0 {name=l1 lab=GND}
C {madvlsi/nmos4.sym} 310 -120 0 0 {name=M1
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
C {madvlsi/pmos4.sym} 370 -280 0 0 {name=M2
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
C {madvlsi/vdd.sym} 370 -310 0 0 {name=l2 lab=VDD}
C {code_shown.sym} 520 -150 0 0 {name=SPICE only_toplevel=false value=".control
  set wr_vecnames
  set wr_singlescale
  tran 0.01n 50n
  wrdata ~/documents/git/madvlsi/and/inverter.txt v(A) v(B) v(Y)
.endc"}
C {sky130_fd_pr/corner.sym} 510 -310 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_pin.sym} 460 -180 2 0 {name=p2 sig_type=std_logic lab=Y
}
C {madvlsi/vsource.sym} 150 -260 0 0 {name=Vdd
value=1.8}
C {madvlsi/gnd.sym} 150 -230 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} 150 -290 0 0 {name=l4 lab=VDD}
C {madvlsi/vsource.sym} 150 -130 0 1 {name=A
value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"
}
C {madvlsi/gnd.sym} 150 -100 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 150 -160 2 0 {name=p3 sig_type=std_logic lab=A


}
C {madvlsi/pmos4.sym} 370 -220 0 0 {name=M3
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
C {madvlsi/nmos4.sym} 430 -120 2 0 {name=M5
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
C {lab_pin.sym} 340 -280 0 0 {name=p1 sig_type=std_logic lab=A
}
C {lab_pin.sym} 340 -220 0 0 {name=p4 sig_type=std_logic lab=B

}
C {lab_pin.sym} 280 -120 0 0 {name=p5 sig_type=std_logic lab=A
}
C {lab_pin.sym} 460 -120 2 0 {name=p6 sig_type=std_logic lab=B

}
C {madvlsi/vsource.sym} 150 0 0 1 {name=B
value="pulse(0 1.8 1ns 1ns 1ns 9ns 20ns)"
}
C {madvlsi/gnd.sym} 150 30 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 150 -30 2 0 {name=p7 sig_type=std_logic lab=B



}
