v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 5 157.5 -42.5 162.5 -37.5 {name=VN
dir=inout}
N 210 -240 210 -220 {lab=VP}
N 110 -240 210 -240 {lab=VP}
N 110 -240 110 -220 {lab=VP}
N 160 -260 160 -240 {lab=VP}
N 220 -80 220 -60 {lab=VN}
N 220 -100 220 -80 {lab=VN}
N 200 -100 200 -80 {lab=clk}
N 100 -80 200 -80 {lab=clk}
N 100 -100 100 -80 {lab=clk}
N 40 -80 100 -80 {lab=clk}
N 120 -100 120 -60 {lab=VN}
N 260 -140 280 -140 {lab=D}
N 260 -180 280 -180 {lab=Dn}
N 40 -180 60 -180 {lab=Qn}
N 40 -140 60 -140 {lab=Q}
N 120 -60 220 -60 {lab=VN}
N 160 -60 160 -40 {lab=VN}
C {csrl.sym} 60 -100 0 0 {name=X1}
C {ipin.sym} 40 -80 0 0 {name=p21 lab=clk}
C {iopin.sym} 280 -140 0 0 {name=p5 lab=D}
C {iopin.sym} 280 -180 0 0 {name=p6 lab=Dn}
C {iopin.sym} 40 -140 2 0 {name=p7 lab=Q}
C {iopin.sym} 40 -180 2 0 {name=p8 lab=Qn}
C {csrl_n.sym} 160 -100 0 0 {name=X2}
C {lab_pin.sym} 355 -190 1 0 {name=p1 sig_type=std_logic lab=VP}
C {lab_pin.sym} 355 -130 3 0 {name=p13 sig_type=std_logic lab=VN}
C {capa.sym} 355 -160 0 0 {name=C2
m=1
value=2.43427ff
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 70 -305 2 0 {name=p10 sig_type=std_logic lab=VN}
C {lab_pin.sym} 70 -330 2 0 {name=p11 sig_type=std_logic lab=VP}
C {iopin.sym} 70 -330 2 0 {name=p12 lab=VP}
C {iopin.sym} 70 -305 2 0 {name=p2 lab=VN}
C {lab_pin.sym} 160 -40 3 0 {name=p3 sig_type=std_logic lab=VN}
C {lab_pin.sym} 160 -260 1 0 {name=p14 sig_type=std_logic lab=VP}
