v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 -570 460 -530 {lab=#net1}
N 460 -550 510 -550 {lab=#net1}
N 510 -550 510 -500 {lab=#net1}
N 490 -500 510 -500 {lab=#net1}
N 820 -650 820 -570 {lab=VBN}
N 460 -650 460 -610 {lab=#net1}
N 750 -500 800 -500 {lab=VBN}
N 770 -550 770 -500 {lab=VBN}
N 770 -550 820 -550 {lab=VBN}
N 570 -550 570 -530 {lab=#net2}
N 670 -550 670 -530 {lab=VBP}
N 520 -500 540 -500 {lab=#net1}
N 600 -620 640 -620 {lab=#net2}
N 620 -620 620 -580 {lab=#net2}
N 820 -660 820 -650 {lab=VBN}
N 460 -660 460 -650 {lab=#net1}
N 700 -500 740 -500 {lab=VBN}
N 570 -590 570 -550 {lab=#net2}
N 570 -570 620 -570 {lab=#net2}
N 620 -580 620 -570 {lab=#net2}
N 460 -610 460 -570 {lab=#net1}
N 670 -590 670 -550 {lab=VBP}
N 820 -570 820 -530 {lab=VBN}
N 740 -500 750 -500 {lab=VBN}
N 670 -570 770 -570 {lab=VBP}
N 770 -690 770 -570 {lab=VBP}
N 490 -690 790 -690 {lab=VBP}
N 510 -500 520 -500 {lab=#net1}
N 770 -720 770 -690 {lab=VBP}
N 820 -550 850 -550 {lab=VBN}
N 730 -570 730 -470 {lab=VBP}
N 360 -550 460 -550 {lab=#net1}
N 360 -550 360 -530 {lab=#net1}
N 360 -470 460 -470 {lab=#net3}
N 390 -500 490 -500 {lab=#net1}
N 290 -500 390 -500 {lab=#net1}
N 260 -550 360 -550 {lab=#net1}
N 260 -550 260 -530 {lab=#net1}
N 260 -470 360 -470 {lab=#net3}
C {madvlsi/vsource.sym} 80 -240 0 1 {name=vdd
value=1.8}
C {madvlsi/gnd.sym} 80 -210 0 1 {name=l32 lab=GND}
C {sky130_fd_pr/corner.sym} 320 -290 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 320 -120 0 0 {name=SPICE only_toplevel=false value=".ic v(vbp)=0 v(vbn)=0
.option savecurrents
.control
  set wr_vecnames
  set wr_singlescale
  op
  wrdata ~/documents/git/madvlsi/dac/build/bias_gen_temp/bias_gen_tb_temp.txt v(VBN) v(VBP)
.endc"}
C {madvlsi/vdd.sym} 80 -270 0 0 {name=l5 lab=VDD}
C {madvlsi/resistor.sym} 460 -440 0 0 {name=R1
value=375k
m=1}
C {madvlsi/nmos3.sym} 460 -500 2 0 {name=M5
L=6
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {madvlsi/nmos3.sym} 820 -500 0 0 {name=M2
L=6
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 670 -650 1 0 {name=p11 sig_type=std_logic lab=VP
L=6
W=2}
C {lab_pin.sym} 570 -650 1 0 {name=p12 sig_type=std_logic lab=VP
L=6
W=2}
C {madvlsi/pmos3.sym} 820 -690 0 0 {name=M9
L=6
W=2
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
C {madvlsi/pmos3.sym} 460 -690 2 0 {name=M1
L=6
W=2
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
C {madvlsi/nmos3.sym} 670 -500 2 0 {name=M3
L=6
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {madvlsi/nmos3.sym} 570 -500 0 0 {name=M4
L=6
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {madvlsi/pmos3.sym} 670 -620 0 0 {name=M6
L=6
W=2
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
C {madvlsi/pmos3.sym} 570 -620 2 0 {name=M7
L=6
W=2
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
C {lab_pin.sym} 770 -720 1 0 {name=p13 sig_type=std_logic lab=VBP
L=6
W=2}
C {lab_pin.sym} 850 -550 2 0 {name=p14 sig_type=std_logic lab=VBN
L=6
W=2}
C {madvlsi/capacitor.sym} 730 -440 0 0 {name=C1
value=1pf
m=1}
C {madvlsi/nmos3.sym} 360 -500 2 0 {name=M8
L=6
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {madvlsi/nmos3.sym} 260 -500 2 0 {name=M10
L=6
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {madvlsi/vdd.sym} 820 -720 0 0 {name=l4 lab=VDD
L=6
W=2}
C {madvlsi/vsource.sym} 1140 -250 0 1 {name=vdd1
value=1.8}
C {madvlsi/gnd.sym} 1140 -220 0 1 {name=l6 lab=GND}
C {lab_pin.sym} 1140 -280 1 0 {name=p1 sig_type=std_logic lab=VP
L=u_l
W=u_w}
C {madvlsi/gnd.sym} 460 -410 0 0 {name=l9 lab=GND}
C {madvlsi/gnd.sym} 570 -470 0 0 {name=l10 lab=GND}
C {madvlsi/gnd.sym} 670 -470 0 0 {name=l11 lab=GND}
C {madvlsi/gnd.sym} 730 -410 0 0 {name=l12 lab=GND}
C {madvlsi/gnd.sym} 820 -470 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 460 -720 1 0 {name=p2 sig_type=std_logic lab=VP
L=u_l
W=u_w}
