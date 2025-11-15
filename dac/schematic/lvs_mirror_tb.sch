v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 290 -110 310 -110 {lab=#net1}
C {devices/lab_pin.sym} 190 -90 0 0 {name=l30 sig_type=std_logic lab=ib}
C {devices/lab_pin.sym} 60 -130 0 0 {name=l34 sig_type=std_logic lab=ib}
C {madvlsi/isource.sym} 60 -100 2 0 {name=I1
value=10p}
C {madvlsi/gnd.sym} 60 -70 0 0 {name=l38 lab=GND}
C {madvlsi/gnd.sym} 240 -50 0 0 {name=l39 lab=GND}
C {devices/lab_pin.sym} 130 -130 0 0 {name=l1 sig_type=std_logic lab=iin}
C {madvlsi/isource.sym} 130 -100 2 0 {name=I2
value=1u
lab=iin}
C {devices/lab_pin.sym} 190 -130 0 0 {name=l3 sig_type=std_logic lab=iin}
C {madvlsi/gnd.sym} 130 -70 0 0 {name=l2 lab=GND}
C {madvlsi/vsource.sym} 310 -80 0 0 {name=V2
value=1.8}
C {sky130_fd_pr/corner.sym} 360 -130 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/gnd.sym} 310 -50 0 0 {name=l4 lab=GND}
C {lvs_mirror.sym} 180 -20 0 0 {name=X1 u_w=4 u_l=12 m=2 r=1M}
C {devices/code.sym} 480 -130 0 0 {name=SPICE only_toplevel=false value=".control
  set wr_vecnames
  set wr_singlescale
  dc V2 0 1.8 0.01
  wrdata ~/documents/git/madvlsi/dac/build/lvs_mirror/lvs_mirror_tb.txt i(V2)
.endc"}
