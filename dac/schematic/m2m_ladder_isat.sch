v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -310 200 -310 {lab=VDD}
N 180 -330 180 -310 {lab=VDD}
N 180 -260 200 -260 {lab=VDD}
N 180 -320 180 -260 {lab=VDD}
N 180 -240 200 -240 {lab=VDD}
N 180 -260 180 -240 {lab=VDD}
N 180 -220 200 -220 {lab=VDD}
N 180 -240 180 -220 {lab=VDD}
N 180 -200 200 -200 {lab=VDD}
N 180 -220 180 -200 {lab=VDD}
N 180 -180 200 -180 {lab=VDD}
N 180 -200 180 -180 {lab=VDD}
N 180 -160 200 -160 {lab=VDD}
N 180 -180 180 -160 {lab=VDD}
N 180 -140 200 -140 {lab=VDD}
N 180 -160 180 -140 {lab=VDD}
N 160 -290 200 -290 {lab=V_gate}
N 380 -160 400 -160 {lab=#net1}
N 380 -140 400 -140 {lab=#net1}
N 400 -160 400 -120 {lab=#net1}
N -60 -120 -60 -110 {lab=V_gate}
N 400 -120 400 -110 {lab=#net1}
N 400 -100 400 -80 {lab=GND}
C {m2m_ladder.sym} 190 -70 0 0 {name=X1 u_w=3 u_l=3}
C {madvlsi/vsource.sym} 20 -80 0 0 {name=Vdd
value=1.8}
C {madvlsi/gnd.sym} 20 -50 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} 20 -110 0 0 {name=l4 lab=VDD}
C {madvlsi/vdd.sym} 290 -360 0 0 {name=l8 lab=VDD}
C {madvlsi/gnd.sym} 290 -100 0 0 {name=l9 lab=GND}
C {madvlsi/vdd.sym} 180 -330 0 0 {name=l1 lab=VDD}
C {lab_pin.sym} 160 -290 0 0 {name=p3 sig_type=std_logic lab=V_gate}
C {madvlsi/gnd.sym} 400 -80 0 0 {name=l2 lab=GND}
C {code_shown.sym} 460 -120 0 0 {name=SPICE only_toplevel=false value=".control
  set wr_vecnames
  set wr_singlescale
  dc Vgate 0 1.8 0.01
  wrdata ~/documents/git/madvlsi/and/and_tran.txt v(V_gate) i(Vout)
.endc"}
C {madvlsi/vsource.sym} -60 -80 0 0 {name=Vgate
value=1.8}
C {madvlsi/gnd.sym} -60 -50 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -60 -120 0 0 {name=p1 sig_type=std_logic lab=V_gate}
C {sky130_fd_pr/corner.sym} 470 -300 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/ammeter1.sym} 400 -110 0 0 {name=Vout}
