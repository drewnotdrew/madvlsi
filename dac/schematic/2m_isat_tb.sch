v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -260 80 -250 {lab=Vgate}
N 310 -170 310 -160 {lab=GND}
N 310 -190 310 -180 {lab=#net1}
C {madvlsi/vsource.sym} 160 -220 0 0 {name=Vdd
value=1.8}
C {madvlsi/gnd.sym} 160 -190 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} 160 -250 0 0 {name=l4 lab=VDD}
C {madvlsi/vdd.sym} 310 -250 0 0 {name=l8 lab=VDD}
C {madvlsi/gnd.sym} 310 -160 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 280 -220 0 0 {name=p3 sig_type=std_logic lab=Vgate}
C {madvlsi/vsource.sym} 80 -220 0 0 {name=Vgate
value=1.8}
C {madvlsi/gnd.sym} 80 -190 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 80 -260 0 0 {name=p1 sig_type=std_logic lab=Vgate}
C {sky130_fd_pr/corner.sym} 390 -260 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/ammeter1.sym} 310 -180 0 0 {name=Vout}
C {devices/code.sym} 520 -260 0 0 {name=SPICE only_toplevel=false value=".control
  set wr_vecnames
  set wr_singlescale
  dc Vgate 0 1.8 0.01
  wrdata ~/documents/git/madvlsi/dac/build/2m_isat/2m_isat_tb.txt i(Vout)
.endc"}
C {madvlsi/pmos3.sym} 310 -220 0 0 {name=M1
L=12
W=4
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
