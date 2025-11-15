v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 500 -270 500 -250 {lab=GND}
N 480 -270 500 -270 {lab=GND}
N 480 -270 500 -270 {lab=GND}
N 670 -270 690 -270 {lab=#net1}
N 690 -290 690 -270 {lab=#net1}
N 480 -290 520 -290 {lab=#net2}
N 530 -290 570 -290 {lab=#net3}
N 690 -300 690 -290 {lab=#net1}
N 690 -330 690 -310 {lab=#net4}
N 690 -330 750 -330 {lab=#net4}
N 750 -330 750 -320 {lab=#net4}
N 300 -390 300 -270 {lab=VDD}
N 240 -390 300 -390 {lab=VDD}
N 240 -450 240 -390 {lab=VDD}
N 240 -440 300 -440 {lab=VDD}
N 550 -100 570 -100 {lab=#net5}
N 580 -100 600 -100 {lab=ib}
C {devices/code.sym} 130 -160 0 0 {name=SPICE only_toplevel=false value="
.control
  set wr_vecnames
  set wr_singlescale
  dc V2 0 1.8 0.01
  wrdata ~/documents/git/madvlsi/dac/build/dac_supply_voltage/dac_supply_voltage_tb.txt i(Vout)
.endc"}
C {madvlsi/gnd.sym} 390 -230 0 0 {name=l1 lab=GND}
C {madvlsi/gnd.sym} 500 -250 0 0 {name=l24 lab=GND}
C {madvlsi/vdd.sym} 40 -400 0 0 {name=l31 lab=VDD}
C {madvlsi/vsource.sym} 40 -370 0 0 {name=V2
value=1.8}
C {madvlsi/gnd.sym} 40 -340 0 0 {name=l32 lab=GND}
C {madvlsi/vdd.sym} 390 -490 0 0 {name=l33 lab=VDD}
C {sky130_fd_pr/corner.sym} 250 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/gnd.sym} 130 -320 0 0 {name=l2 lab=GND}
C {madvlsi/vdd.sym} 130 -440 0 0 {name=l35 lab=VDD}
C {devices/lab_pin.sym} 180 -360 2 0 {name=l36 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 180 -400 2 0 {name=l37 sig_type=std_logic lab=vbp}
C {bias_gen.sym} 90 -290 0 0 {name=X2 u_w=4 u_l=12 m=2 r=42.6175k}
C {m2m_ladder_pmos.sym} 290 -200 0 0 {name=X3 u_w=4 u_l=12}
C {devices/lab_pin.sym} 300 -420 0 0 {name=l29 sig_type=std_logic lab=vbp}
C {madvlsi/ammeter1.sym} 520 -290 3 0 {name=Vout2}
C {lvs_mirror.sym} 560 -180 0 0 {name=X1 u_w=4 u_l=12 m=2 r=1M}
C {devices/lab_pin.sym} 570 -250 0 0 {name=l30 sig_type=std_logic lab=ib}
C {madvlsi/gnd.sym} 620 -210 0 0 {name=l39 lab=GND}
C {madvlsi/ammeter1.sym} 690 -310 0 0 {name=Vout
spice_ignore=false}
C {madvlsi/vsource.sym} 750 -290 0 0 {name=V1
value=1.8}
C {madvlsi/gnd.sym} 750 -260 0 0 {name=l40 lab=GND}
C {madvlsi/vdd.sym} 240 -450 0 0 {name=l3 lab=VDD}
C {devices/lab_pin.sym} 600 -100 2 0 {name=l5 sig_type=std_logic lab=ib
}
C {current_divider.sym} 440 -20 0 0 {name=X5 u_w=4 u_l=12
}
C {devices/lab_pin.sym} 430 -120 0 0 {name=l6 sig_type=std_logic lab=vbp
}
C {madvlsi/gnd.sym} 490 -60 0 0 {name=l7 lab=GND
}
C {madvlsi/vdd.sym} 490 -160 0 0 {name=l8 lab=VDD
}
C {madvlsi/ammeter1.sym} 570 -100 3 0 {name=Vout3
}
