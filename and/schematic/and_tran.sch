v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 380 -210 430 -210 {lab=Y}
C {madvlsi/gnd.sym} 330 -170 0 0 {name=l1 lab=GND}
C {madvlsi/vdd.sym} 330 -250 0 0 {name=l2 lab=VDD}
C {code_shown.sym} 470 -170 0 0 {name=SPICE only_toplevel=false value=".control
  set wr_vecnames
  set wr_singlescale
  tran 0.01n 100n
  wrdata ~/documents/git/madvlsi/and/and_tran.txt v(A) v(B) v(Y)
.endc"}
C {sky130_fd_pr/corner.sym} 460 -330 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/vsource.sym} 210 -340 0 0 {name=Vdd
value=1.8}
C {madvlsi/gnd.sym} 210 -310 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} 210 -370 0 0 {name=l4 lab=VDD}
C {madvlsi/vsource.sym} 210 -210 0 1 {name=vA
value="pulse(0 1.8 0ns 1ns 1ns 9ns 20ns)"
}
C {madvlsi/gnd.sym} 210 -180 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 210 -240 2 0 {name=p3 sig_type=std_logic lab=A


}
C {lab_pin.sym} 290 -220 0 0 {name=p1 sig_type=std_logic lab=A
}
C {lab_pin.sym} 290 -200 0 0 {name=p4 sig_type=std_logic lab=B

}
C {madvlsi/vsource.sym} 210 -80 0 1 {name=vB
value="pulse(0 1.8 0 1ns 1ns 19ns 40ns)"
}
C {madvlsi/gnd.sym} 210 -50 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 210 -110 2 0 {name=p7 sig_type=std_logic lab=B



}
C {and.sym} 270 -160 0 0 {name=X1}
C {lab_pin.sym} 430 -210 2 0 {name=p2 sig_type=std_logic lab=Y
}
C {capa.sym} 400 -180 0 0 {name=C1
m=1
value=200ff
footprint=1206
device="ceramic capacitor"}
C {madvlsi/gnd.sym} 400 -150 0 0 {name=l7 lab=GND}
