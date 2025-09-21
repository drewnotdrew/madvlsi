v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -120 70 -100 {lab=VP}
N 70 -120 180 -120 {lab=VP}
N 180 -120 180 -100 {lab=VP}
N 70 -20 70 -0 {lab=VN}
N 70 -0 180 -0 {lab=VN}
N 180 -20 180 0 {lab=VN}
N 70 -0 70 10 {lab=VN}
N 70 -130 70 -120 {lab=VP}
C {nand.sym} 10 -10 0 0 {name=X1}
C {ipin.sym} 30 -70 0 0 {name=p1 lab=A}
C {ipin.sym} 30 -50 0 0 {name=p2 lab=B}
C {iopin.sym} 70 -130 3 0 {name=p3 lab=VP
}
C {iopin.sym} 70 10 1 0 {name=p4 lab=VN}
C {opin.sym} 240 -60 0 0 {name=p5 lab=Y}
C {inverter.sym} 120 -10 0 0 {name=X2}
