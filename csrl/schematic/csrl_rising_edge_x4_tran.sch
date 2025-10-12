v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 -560 460 -550 {lab=VDD}
N 400 -390 450 -390 {lab=clk}
N 450 -410 450 -390 {lab=clk}
N 390 -490 410 -490 {lab=D}
N 810 -450 830 -450 {lab=Qn3}
N 810 -490 830 -490 {lab=Q3}
N 450 -390 750 -390 {lab=clk}
N 750 -410 750 -390 {lab=clk}
N 650 -410 650 -390 {lab=clk}
N 550 -410 550 -390 {lab=clk}
N 470 -410 470 -350 {lab=GND}
N 570 -410 570 -370 {lab=GND}
N 470 -370 570 -370 {lab=GND}
N 570 -370 670 -370 {lab=GND}
N 670 -410 670 -370 {lab=GND}
N 670 -370 770 -370 {lab=GND}
N 770 -410 770 -370 {lab=GND}
N 460 -550 460 -530 {lab=VDD}
N 460 -550 760 -550 {lab=VDD}
N 760 -550 760 -530 {lab=VDD}
N 660 -550 660 -530 {lab=VDD}
N 560 -550 560 -530 {lab=VDD}
N 510 -450 510 -440 {lab=Qn0}
N 610 -450 610 -440 {lab=Qn1}
N 710 -450 710 -440 {lab=Qn2}
N 510 -500 510 -490 {lab=Q0}
N 610 -500 610 -490 {lab=Q1}
N 710 -500 710 -490 {lab=Q2}
N 390 -450 410 -450 {lab=Dn}
C {code_shown.sym} 360 -120 0 0 {name=SPICE only_toplevel=false value=
".ic v(Q0)=0 v(Q1)=0 v(Q2)=0 v(Q3)=0
.ic v(x1.x2.net1)=0 v(x2.x2.net1)=0 v(x3.x2.net1)=0 v(x4.x2.net1)=0
.control
  set wr_vecnames
  set wr_singlescale
  tran 0.01n 200n
  wrdata ~/documents/git/madvlsi/csrl/report/data/csrl_rising_edge_x4_ff.txt v(clk) v(D) v(Dn) v(Q0) v(Qn0) v(Q1) v(Qn1) v(Q2) v(Qn2) v(Q3) v(Qn3)
.endc"}
C {sky130_fd_pr/corner.sym} 350 -280 0 0 {name=CORNER only_toplevel=false corner=ff}
C {madvlsi/vsource.sym} 290 -430 0 0 {name=Vdd
value=1.8}
C {madvlsi/gnd.sym} 290 -400 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} 290 -460 0 0 {name=l4 lab=VDD}
C {madvlsi/vsource.sym} 290 -300 0 1 {name=vclk
value="pulse(0 1.8 5ns 1ns 1ns 9ns 20ns)"
}
C {madvlsi/gnd.sym} 290 -270 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 290 -330 2 0 {name=p3 sig_type=std_logic lab=clk
}
C {madvlsi/vsource.sym} 290 -180 0 1 {name=vD
value="pwl(0 0 25ns 0 26ns 1.8 40ns 1.8 41n 0)"
}
C {madvlsi/gnd.sym} 290 -150 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 290 -210 2 0 {name=p7 sig_type=std_logic lab=D


}
C {madvlsi/vdd.sym} 460 -560 0 0 {name=l8 lab=VDD}
C {madvlsi/gnd.sym} 470 -350 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 400 -390 0 0 {name=p5 sig_type=std_logic lab=clk
}
C {lab_pin.sym} 390 -490 0 0 {name=p6 sig_type=std_logic lab=D


}
C {lab_pin.sym} 830 -450 2 0 {name=p11 sig_type=std_logic lab=Qn3


}
C {lab_pin.sym} 830 -490 2 0 {name=p12 sig_type=std_logic lab=Q3


}
C {lab_pin.sym} 390 -450 0 0 {name=p1 sig_type=std_logic lab=Dn


}
C {lab_pin.sym} 510 -440 3 0 {name=p4 sig_type=std_logic lab=Qn0


}
C {lab_pin.sym} 610 -440 3 0 {name=p8 sig_type=std_logic lab=Qn1



}
C {lab_pin.sym} 710 -440 3 0 {name=p9 sig_type=std_logic lab=Qn2



}
C {lab_pin.sym} 710 -500 1 0 {name=p10 sig_type=std_logic lab=Q2

}
C {lab_pin.sym} 610 -500 1 0 {name=p13 sig_type=std_logic lab=Q1



}
C {lab_pin.sym} 510 -500 1 0 {name=p14 sig_type=std_logic lab=Q0



}
C {madvlsi/vsource.sym} 290 -60 0 1 {name=vDn
value="pwl(0 1.8 25ns 1.8 26ns 0 40ns 0 41ns 1.8)"
}
C {madvlsi/gnd.sym} 290 -30 0 0 {name=vDn1 lab=GND
value="pwl(0 1.8 25ns 1.8 26ns 0 40ns 0 41ns 1.8)"}
C {lab_pin.sym} 290 -90 2 0 {name=vDn2 sig_type=std_logic lab=Dn


value="pwl(0 1.8 25ns 1.8 26ns 0 40ns 0 41ns 1.8)"}
C {csrl_rising_edge.sym} 410 -410 0 0 {name=X1}
C {csrl_rising_edge.sym} 510 -410 0 0 {name=X2}
C {csrl_rising_edge.sym} 610 -410 0 0 {name=X3}
C {csrl_rising_edge.sym} 710 -410 0 0 {name=X4}
