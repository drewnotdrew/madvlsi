v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {devices/code.sym} 10 -130 0 0 {name=SPICE only_toplevel=false value="
.control
  set wr_vecnames
  set wr_singlescale
  dc V2 0 3.6 0.01
  wrdata ~/documents/git/madvlsi/dac/build/bias_gen_supply_voltage/bias_gen_supply_voltage_tb.txt v(vbp)
.endc"}
C {madvlsi/vdd.sym} 60 -300 0 0 {name=l31 lab=VDD}
C {madvlsi/vsource.sym} 60 -270 0 0 {name=V2
value=1.8}
C {madvlsi/gnd.sym} 60 -240 0 0 {name=l32 lab=GND}
C {sky130_fd_pr/corner.sym} 130 -130 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/gnd.sym} 150 -220 0 0 {name=l2 lab=GND}
C {madvlsi/vdd.sym} 150 -340 0 0 {name=l35 lab=VDD}
C {devices/lab_pin.sym} 200 -260 2 0 {name=l36 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 200 -300 2 0 {name=l37 sig_type=std_logic lab=vbp}
C {bias_gen.sym} 110 -190 0 0 {name=X2 u_w=4 u_l=12 m=2 r=42.6175k}
