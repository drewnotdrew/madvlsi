v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -290 320 -290 {lab=VDD}
N 300 -310 300 -290 {lab=VDD}
N 300 -240 320 -240 {lab=VDD}
N 300 -300 300 -240 {lab=VDD}
N 300 -220 320 -220 {lab=VDD}
N 300 -240 300 -220 {lab=VDD}
N 300 -200 320 -200 {lab=VDD}
N 300 -220 300 -200 {lab=VDD}
N 300 -180 320 -180 {lab=VDD}
N 300 -200 300 -180 {lab=VDD}
N 300 -160 320 -160 {lab=VDD}
N 300 -180 300 -160 {lab=VDD}
N 300 -140 320 -140 {lab=VDD}
N 300 -160 300 -140 {lab=VDD}
N 300 -120 320 -120 {lab=VDD}
N 300 -140 300 -120 {lab=VDD}
N 280 -270 320 -270 {lab=Vgate}
N 500 -140 520 -140 {lab=#net1}
N 500 -120 520 -120 {lab=#net1}
N 520 -140 520 -100 {lab=#net1}
N 80 -260 80 -250 {lab=Vgate}
N 520 -100 520 -90 {lab=#net1}
N 520 -80 520 -60 {lab=GND}
C {madvlsi/vsource.sym} 160 -220 0 0 {name=Vdd
value=1.8}
C {madvlsi/gnd.sym} 160 -190 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} 160 -250 0 0 {name=l4 lab=VDD}
C {madvlsi/vdd.sym} 410 -340 0 0 {name=l8 lab=VDD}
C {madvlsi/gnd.sym} 410 -80 0 0 {name=l9 lab=GND}
C {madvlsi/vdd.sym} 300 -310 0 0 {name=l1 lab=VDD}
C {lab_pin.sym} 280 -270 0 0 {name=p3 sig_type=std_logic lab=Vgate}
C {madvlsi/gnd.sym} 520 -60 0 0 {name=l2 lab=GND}
C {madvlsi/vsource.sym} 80 -220 0 0 {name=Vgate
value=1.8}
C {madvlsi/gnd.sym} 80 -190 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 80 -260 0 0 {name=p1 sig_type=std_logic lab=Vgate}
C {sky130_fd_pr/corner.sym} 540 -250 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/ammeter1.sym} 520 -90 0 0 {name=Vout}
C {m2m_ladder_pmos.sym} 310 -50 0 0 {name=X1 u_w=4 u_l=12}
C {devices/code.sym} 670 -250 0 0 {name=SPICE only_toplevel=false value=".control
  set wr_vecnames
  set wr_singlescale
  dc Vgate 0 1.8 0.01
  wrdata ~/documents/git/madvlsi/dac/build/m2m_ladder_isat/m2m_ladder_isat_tb.txt i(Vout)
.endc"}
