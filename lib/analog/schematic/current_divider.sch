v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -100 120 -100 {lab=VGATE}
N 150 -150 150 -130 {lab=VP}
N 100 -150 150 -150 {lab=VP}
N 150 -150 200 -150 {lab=VP}
N 230 -120 230 -100 {lab=VGATE}
N 120 -100 230 -100 {lab=VGATE}
N 320 -150 320 -130 {lab=#net1}
N 320 -150 370 -150 {lab=#net1}
N 260 -150 320 -150 {lab=#net1}
N 230 -100 290 -100 {lab=VGATE}
N 290 -100 400 -100 {lab=VGATE}
N 400 -120 400 -100 {lab=VGATE}
N 490 -150 490 -130 {lab=#net2}
N 490 -150 540 -150 {lab=#net2}
N 430 -150 490 -150 {lab=#net2}
N 400 -100 460 -100 {lab=VGATE}
N 460 -100 570 -100 {lab=VGATE}
N 570 -120 570 -100 {lab=VGATE}
N 660 -150 660 -130 {lab=#net3}
N 660 -150 710 -150 {lab=#net3}
N 600 -150 660 -150 {lab=#net3}
N 570 -100 630 -100 {lab=VGATE}
N 630 -100 740 -100 {lab=VGATE}
N 740 -120 740 -100 {lab=VGATE}
N 830 -150 830 -130 {lab=#net4}
N 830 -150 880 -150 {lab=#net4}
N 770 -150 830 -150 {lab=#net4}
N 740 -100 800 -100 {lab=VGATE}
N 800 -100 910 -100 {lab=VGATE}
N 910 -120 910 -100 {lab=VGATE}
N 1000 -150 1000 -130 {lab=#net5}
N 1000 -150 1050 -150 {lab=#net5}
N 940 -150 1000 -150 {lab=#net5}
N 910 -100 970 -100 {lab=VGATE}
N 970 -100 1080 -100 {lab=VGATE}
N 1080 -120 1080 -100 {lab=VGATE}
N 1170 -150 1170 -130 {lab=#net6}
N 1170 -150 1220 -150 {lab=#net6}
N 1110 -150 1170 -150 {lab=#net6}
N 1080 -100 1140 -100 {lab=VGATE}
N 1140 -100 1250 -100 {lab=VGATE}
N 1250 -120 1250 -100 {lab=VGATE}
N 1340 -150 1340 -130 {lab=#net7}
N 1340 -150 1390 -150 {lab=#net7}
N 1280 -150 1340 -150 {lab=#net7}
N 1250 -100 1310 -100 {lab=VGATE}
N 1310 -100 1420 -100 {lab=VGATE}
N 1420 -120 1420 -100 {lab=VGATE}
N 1510 -150 1510 -130 {lab=#net8}
N 1510 -150 1560 -150 {lab=#net8}
N 1450 -150 1510 -150 {lab=#net8}
N 1420 -100 1480 -100 {lab=VGATE}
N 1480 -100 1590 -100 {lab=VGATE}
N 1590 -120 1590 -100 {lab=VGATE}
N 1680 -150 1680 -130 {lab=#net9}
N 1680 -150 1730 -150 {lab=#net9}
N 1620 -150 1680 -150 {lab=#net9}
N 1590 -100 1650 -100 {lab=VGATE}
N 1650 -100 1760 -100 {lab=VGATE}
N 1760 -120 1760 -100 {lab=VGATE}
N 1850 -150 1850 -130 {lab=#net10}
N 1850 -150 1900 -150 {lab=#net10}
N 1790 -150 1850 -150 {lab=#net10}
N 1760 -100 1820 -100 {lab=VGATE}
N 1820 -100 1930 -100 {lab=VGATE}
N 1930 -120 1930 -100 {lab=VGATE}
N 2020 -150 2020 -130 {lab=#net11}
N 2020 -150 2070 -150 {lab=#net11}
N 1960 -150 2020 -150 {lab=#net11}
N 1930 -100 1990 -100 {lab=VGATE}
N 1990 -100 2100 -100 {lab=VGATE}
N 2100 -120 2100 -100 {lab=VGATE}
N 2190 -150 2190 -130 {lab=#net12}
N 2190 -150 2240 -150 {lab=#net12}
N 2130 -150 2190 -150 {lab=#net12}
N 2100 -100 2160 -100 {lab=VGATE}
N 2160 -100 2270 -100 {lab=VGATE}
N 2270 -120 2270 -100 {lab=VGATE}
N 2360 -150 2360 -130 {lab=#net13}
N 2300 -150 2360 -150 {lab=#net13}
N 2270 -100 2330 -100 {lab=VGATE}
C {madvlsi/pmos3.sym} 230 -150 3 0 {name=M30
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 100 -100 0 0 {name=p4 lab=VGATE}
C {madvlsi/pmos3.sym} 150 -100 0 0 {name=M4
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 400 -150 3 0 {name=M5
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 320 -100 0 0 {name=M8
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 570 -150 3 0 {name=M9
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 490 -100 0 0 {name=M10
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 740 -150 3 0 {name=M13
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 660 -100 0 0 {name=M14
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 910 -150 3 0 {name=M16
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 830 -100 0 0 {name=M18
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1080 -150 3 0 {name=M19
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1000 -100 0 0 {name=M22
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1250 -150 3 0 {name=M23
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1170 -100 0 0 {name=M26
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1420 -150 3 0 {name=M27
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1340 -100 0 0 {name=M29
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1590 -150 3 0 {name=M31
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1510 -100 0 0 {name=M32
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1760 -150 3 0 {name=M1
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1680 -100 0 0 {name=M2
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1930 -150 3 0 {name=M3
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 1850 -100 0 0 {name=M6
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 2100 -150 3 0 {name=M7
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 2020 -100 0 0 {name=M11
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 2270 -150 3 0 {name=M12
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 2190 -100 0 0 {name=M15
L=u_l
W=u_w
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 2360 -100 0 0 {name=M20
L=u_l
W=u_w
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 320 -70 3 0 {name=p1 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 660 -70 3 0 {name=p5 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 1000 -70 3 0 {name=p7 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 1340 -70 3 0 {name=p9 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 1680 -70 3 0 {name=p12 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 2020 -70 3 0 {name=p14 sig_type=std_logic lab=VN
}
C {iopin.sym} 100 -150 2 0 {name=p18 lab=VP

}
C {iopin.sym} 110 -220 2 0 {name=p20 lab=VN

}
C {lab_pin.sym} 110 -220 2 0 {name=p22 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 150 -70 3 0 {name=p19 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 830 -70 3 0 {name=p3 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 490 -70 3 0 {name=p21 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 1170 -70 3 0 {name=p2 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 1510 -70 3 0 {name=p6 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 1850 -70 3 0 {name=p8 sig_type=std_logic lab=VN
}
C {lab_pin.sym} 2190 -70 3 0 {name=p11 sig_type=std_logic lab=VN
}
C {opin.sym} 2360 -70 1 0 {name=p15 lab=IOUT}
