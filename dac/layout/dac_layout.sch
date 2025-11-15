v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 -260 220 -260 {lab=#net1}
N 400 -130 450 -130 {lab=#net2}
N 400 -110 420 -110 {lab=VN}
N 420 -110 420 -50 {lab=VN}
N 420 -30 500 -30 {lab=VN}
N 420 -50 420 -30 {lab=VN}
N 310 -70 310 -30 {lab=VN}
N 310 -30 420 -30 {lab=VN}
N 450 -130 460 -130 {lab=#net2}
N 500 -30 510 -30 {lab=VN}
N 510 -40 510 -30 {lab=VN}
N 510 -50 510 -40 {lab=VN}
N 440 -90 460 -90 {lab=#net3}
N 440 -330 460 -330 {lab=#net1}
N 520 -270 520 -180 {lab=VN}
N 520 -180 620 -180 {lab=VN}
N 630 -180 630 -30 {lab=VN}
N 510 -30 620 -30 {lab=VN}
N 310 -30 310 -10 {lab=VN}
N 110 -180 110 -30 {lab=VN}
N 110 -30 310 -30 {lab=VN}
N 520 -390 520 -370 {lab=VP}
N 310 -390 520 -390 {lab=VP}
N 310 -390 310 -330 {lab=VP}
N 110 -350 110 -300 {lab=VP}
N 310 -410 310 -390 {lab=VP}
N 580 -310 600 -310 {lab=#net3}
N 600 -310 600 -210 {lab=#net3}
N 440 -210 600 -210 {lab=#net3}
N 440 -210 440 -90 {lab=#net3}
N 210 -280 220 -280 {lab=VP}
N 200 -280 210 -280 {lab=VP}
N 180 -320 180 -260 {lab=#net1}
N 180 -330 180 -320 {lab=#net1}
N 620 -180 630 -180 {lab=VN}
N 620 -30 630 -30 {lab=VN}
N 200 -370 200 -280 {lab=VP}
N 200 -370 310 -370 {lab=VP}
N 400 -350 400 -330 {lab=#net1}
N 180 -350 180 -330 {lab=#net1}
N 400 -330 440 -330 {lab=#net1}
N 110 -370 110 -350 {lab=VP}
N 110 -370 200 -370 {lab=VP}
N 180 -350 400 -350 {lab=#net1}
C {iopin.sym} 60 -220 2 0 {name=p1 lab=V}
C {/home/drew/documents/git/madvlsi/dac/layout/bias_gen/bias_gen.sym} 70 -150 0 0 {name=X1 u_w=4 u_l=12 m=1 r=1M}
C {/home/drew/documents/git/madvlsi/dac/layout/current_divider/current_divider.sym} 470 -230 0 0 {name=X2 u_w=4 u_l=12}
C {/home/drew/documents/git/madvlsi/dac/layout/current_mirror/current_mirror.sym} 450 -20 0 0 {name=X3 u_w=4 u_l=12 m=1 r=1M}
C {/home/drew/documents/git/madvlsi/dac/layout/m2m_ladder/m2m_ladder.sym} 210 -40 0 0 {name=X4 u_w=4 u_l=12}
C {iopin.sym} 310 -10 1 0 {name=p2 lab=VN}
C {ipin.sym} 220 -230 0 0 {name=p33 lab=D0}
C {ipin.sym} 220 -210 0 0 {name=p3 lab=D1}
C {ipin.sym} 220 -190 0 0 {name=p4 lab=D2}
C {ipin.sym} 220 -170 0 0 {name=p5 lab=D3}
C {ipin.sym} 220 -150 0 0 {name=p6 lab=D4}
C {ipin.sym} 220 -130 0 0 {name=p7 lab=D5}
C {ipin.sym} 220 -110 0 0 {name=p8 lab=D6}
C {iopin.sym} 310 -410 3 0 {name=p9 lab=VP}
C {iopin.sym} 560 -110 0 0 {name=p10 lab=IOUT}
