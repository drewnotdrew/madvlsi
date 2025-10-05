v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 330 -180 330 -160 {lab=Vout}
N 290 -210 300 -210 {lab=#net1}
N 290 -210 290 -130 {lab=#net1}
N 290 -130 300 -130 {lab=#net1}
N 270 -170 290 -170 {lab=#net1}
N 330 -170 350 -170 {lab=Vout}
N 330 -240 330 -210 {lab=VDD}
N 330 -130 330 -100 {lab=GND}
C {madvlsi/gnd.sym} 330 -100 0 0 {name=l1 lab=GND}
C {madvlsi/nmos4.sym} 330 -130 0 0 {name=M1
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
C {madvlsi/pmos4.sym} 330 -210 0 0 {name=M2
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
C {madvlsi/vdd.sym} 330 -240 0 0 {name=l2 lab=VDD}
C {code_shown.sym} 420 -140 0 0 {name=SPICE only_toplevel=false value=".control
  set wr_vecnames
  set wr_singlescale
  tran 0.01n 50n
  wrdata ~/documents/git/madvlsi/and/inverter.txt v(Vin) v(Vout)
.endc"}
C {lab_pin.sym} 270 -170 0 0 {name=p1 sig_type=std_logic lab=Vin

}
C {sky130_fd_pr/corner.sym} 410 -300 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_pin.sym} 350 -170 2 0 {name=p2 sig_type=std_logic lab=Vout
}
C {madvlsi/vsource.sym} 40 -240 0 0 {name=Vdd
value=1.8}
C {madvlsi/gnd.sym} 40 -210 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} 40 -270 0 0 {name=l4 lab=VDD}
C {madvlsi/vsource.sym} 40 -110 0 0 {name=Vin
value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"
}
C {madvlsi/gnd.sym} 40 -80 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 40 -140 2 0 {name=p3 sig_type=std_logic lab=Vin

}
