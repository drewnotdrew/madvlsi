v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 450 -280 450 -260 {lab=#net1}
N 430 -280 450 -280 {lab=#net1}
N 450 -250 450 -240 {lab=GND}
C {madvlsi/vsource.sym} 60 -280 0 1 {name=vdd
value=1.8}
C {madvlsi/gnd.sym} 60 -250 0 1 {name=l32 lab=GND}
C {sky130_fd_pr/corner.sym} 110 -130 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/vdd.sym} 60 -310 0 0 {name=l5 lab=VDD}
C {madvlsi/gnd.sym} 150 -220 0 0 {name=l1 lab=GND}
C {madvlsi/vdd.sym} 150 -340 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 200 -260 2 0 {name=l7 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 200 -300 2 0 {name=l8 sig_type=std_logic lab=vbp}
C {bias_gen.sym} 110 -190 0 0 {name=X1 u_w=4 u_l=12 m=2 r=42.6175k}
C {madvlsi/gnd.sym} 370 -240 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} 370 -340 0 0 {name=l4 lab=VDD}
C {devices/lab_pin.sym} 310 -300 0 0 {name=l6 sig_type=std_logic lab=vbp}
C {madvlsi/ammeter1.sym} 450 -260 0 0 {name=Vout
spice_ignore=false}
C {madvlsi/gnd.sym} 450 -240 0 0 {name=l9 lab=GND}
C {current_divider.sym} 320 -200 0 0 {name=X2 u_w=4 u_l=12}
C {devices/code.sym} 250 -130 0 0 {name=SPICE only_toplevel=false value=".ic v(vbp)=0 v(vbn)=0
.control
  set wr_vecnames
  set wr_singlescale
  op
  wrdata ~/documents/git/madvlsi/dac/build/current_divider/current_divider_tb.txt i(Vout)
.endc"}
