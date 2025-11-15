v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 580 -400 580 -380 {lab=GND}
N 560 -400 580 -400 {lab=GND}
N 560 -400 580 -400 {lab=GND}
N 750 -400 770 -400 {lab=#net1}
N 770 -420 770 -400 {lab=#net1}
N 560 -420 600 -420 {lab=#net2}
N 610 -420 650 -420 {lab=#net3}
N 770 -430 770 -420 {lab=#net1}
N 770 -460 770 -440 {lab=#net4}
N 770 -460 830 -460 {lab=#net4}
N 830 -460 830 -450 {lab=#net4}
N 380 -520 380 -400 {lab=VDD}
N 320 -520 380 -520 {lab=VDD}
N 320 -580 320 -520 {lab=VDD}
N 320 -570 380 -570 {lab=VDD}
N 630 -230 650 -230 {lab=#net5}
N 660 -230 680 -230 {lab=ib}
C {devices/code.sym} 210 -290 0 0 {name=SPICE only_toplevel=false value="
.control
  set wr_vecnames
  set wr_singlescale
  dc V2 1.75 1.85 0.005
  wrdata ~/documents/git/madvlsi/dac/build/dac_supply_voltage/dac_supply_voltage_tb.txt i(Vout)
.endc"}
C {madvlsi/gnd.sym} 470 -360 0 0 {name=l1 lab=GND}
C {madvlsi/gnd.sym} 580 -380 0 0 {name=l24 lab=GND}
C {madvlsi/vdd.sym} 120 -530 0 0 {name=l31 lab=VDD}
C {madvlsi/vsource.sym} 120 -500 0 0 {name=V2
value=1.8}
C {madvlsi/gnd.sym} 120 -470 0 0 {name=l32 lab=GND}
C {madvlsi/vdd.sym} 470 -620 0 0 {name=l33 lab=VDD}
C {sky130_fd_pr/corner.sym} 330 -290 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/gnd.sym} 210 -450 0 0 {name=l2 lab=GND}
C {madvlsi/vdd.sym} 210 -570 0 0 {name=l35 lab=VDD}
C {devices/lab_pin.sym} 260 -490 2 0 {name=l36 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 260 -530 2 0 {name=l37 sig_type=std_logic lab=vbp}
C {bias_gen.sym} 170 -420 0 0 {name=X2 u_w=4 u_l=12 m=2 r=42.6175k}
C {m2m_ladder_pmos.sym} 370 -330 0 0 {name=X3 u_w=4 u_l=12}
C {devices/lab_pin.sym} 380 -550 0 0 {name=l29 sig_type=std_logic lab=vbp}
C {madvlsi/ammeter1.sym} 600 -420 3 0 {name=Vout2}
C {lvs_mirror.sym} 640 -310 0 0 {name=X1 u_w=4 u_l=12 m=2 r=1M}
C {devices/lab_pin.sym} 650 -380 0 0 {name=l30 sig_type=std_logic lab=ib}
C {madvlsi/gnd.sym} 700 -340 0 0 {name=l39 lab=GND}
C {madvlsi/ammeter1.sym} 770 -440 0 0 {name=Vout
spice_ignore=false}
C {madvlsi/vsource.sym} 830 -420 0 0 {name=V1
value=1.8}
C {madvlsi/gnd.sym} 830 -390 0 0 {name=l40 lab=GND}
C {madvlsi/vdd.sym} 320 -580 0 0 {name=l3 lab=VDD}
C {devices/lab_pin.sym} 680 -230 2 0 {name=l5 sig_type=std_logic lab=ib
}
C {current_divider.sym} 520 -150 0 0 {name=X5 u_w=4 u_l=12
}
C {devices/lab_pin.sym} 510 -250 0 0 {name=l6 sig_type=std_logic lab=vbp
}
C {madvlsi/gnd.sym} 570 -190 0 0 {name=l7 lab=GND
}
C {madvlsi/vdd.sym} 570 -290 0 0 {name=l8 lab=VDD
}
C {madvlsi/ammeter1.sym} 650 -230 3 0 {name=Vout3
}
