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
N 120 -550 120 -530 {lab=I_in}
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
N 640 -230 660 -230 {lab=#net5}
N 670 -230 690 -230 {lab=ib}
C {devices/code.sym} 210 -290 0 0 {name=SPICE only_toplevel=false value="
.control
  set wr_vecnames
  set wr_singlescale
  dc V1 0 1.8 0.01
  wrdata ~/documents/git/madvlsi/dac/build/dac_output_voltage/dac_output_voltage_tb.txt i(Vout)
.endc"}
C {madvlsi/gnd.sym} 470 -360 0 0 {name=l1 lab=GND}
C {madvlsi/gnd.sym} 580 -380 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 380 -570 0 0 {name=l28 sig_type=std_logic lab=I_in}
C {madvlsi/vdd.sym} 30 -530 0 0 {name=l31 lab=VDD}
C {madvlsi/vsource.sym} 30 -500 0 0 {name=V2
value=1.8}
C {madvlsi/gnd.sym} 30 -470 0 0 {name=l32 lab=GND}
C {madvlsi/vdd.sym} 470 -620 0 0 {name=l33 lab=VDD}
C {sky130_fd_pr/corner.sym} 330 -290 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/gnd.sym} 210 -450 0 0 {name=l2 lab=GND}
C {madvlsi/vdd.sym} 210 -570 0 0 {name=l35 lab=VDD}
C {devices/lab_pin.sym} 260 -490 2 0 {name=l36 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 260 -530 2 0 {name=l37 sig_type=std_logic lab=vbp}
C {bias_gen.sym} 170 -420 0 0 {name=X2 u_w=4 u_l=12 m=2 r=42.6175k}
C {madvlsi/vsource.sym} 120 -500 0 0 {name=V3
value=1.8}
C {madvlsi/gnd.sym} 120 -470 0 0 {name=l26 lab=GND}
C {devices/lab_pin.sym} 120 -550 0 0 {name=l27 sig_type=std_logic lab=I_in}
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
C {devices/lab_pin.sym} 690 -230 2 0 {name=l34 sig_type=std_logic lab=ib
}
C {current_divider.sym} 530 -150 0 0 {name=X4 u_w=4 u_l=12
}
C {devices/lab_pin.sym} 520 -250 0 0 {name=l4 sig_type=std_logic lab=vbp
}
C {madvlsi/gnd.sym} 580 -190 0 0 {name=l41 lab=GND
}
C {madvlsi/vdd.sym} 580 -290 0 0 {name=l42 lab=VDD
}
C {madvlsi/ammeter1.sym} 660 -230 3 0 {name=Vout1
}
