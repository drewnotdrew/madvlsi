v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {madvlsi/vsource.sym} 60 -120 0 1 {name=vdd
value=1.8}
C {madvlsi/gnd.sym} 60 -90 0 1 {name=l32 lab=GND}
C {sky130_fd_pr/corner.sym} 270 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/vdd.sym} 60 -150 0 0 {name=l5 lab=VDD}
C {madvlsi/gnd.sym} 150 -60 0 0 {name=l1 lab=GND}
C {madvlsi/vdd.sym} 150 -180 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 200 -100 2 0 {name=l7 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 200 -140 2 0 {name=l8 sig_type=std_logic lab=vbp}
C {bias_gen.sym} 110 -30 0 0 {name=X1 u_w=4 u_l=12 m=2 r=40k}
C {devices/code.sym} 390 -160 0 0 {name=SPICE only_toplevel=false value=".ic v(vbp)=0 v(vbn)=0
.control
  set wr_vecnames
  set wr_singlescale
  op
  wrdata ~/documents/git/madvlsi/dac/build/bias_gen/bias_gen_tb.txt v(vbn) v(vbp)
.endc"}
