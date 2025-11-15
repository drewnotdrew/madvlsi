v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 630 -250 650 -250 {lab=GND}
N 650 -250 650 -230 {lab=GND}
N 150 -300 150 -280 {lab=I_in}
N 260 -300 260 -280 {lab=V_gate}
N 680 -270 680 -260 {lab=#net1}
N 680 -250 680 -230 {lab=GND}
N 630 -250 650 -250 {lab=GND}
N 630 -250 650 -250 {lab=GND}
N 630 -250 650 -250 {lab=GND}
N 630 -270 680 -270 {lab=#net1}
N 330 -430 330 -410 {lab=I_in}
C {madvlsi/vsource.sym} 50 -90 0 0 {name=Vb0
value=1.8}
C {madvlsi/gnd.sym} 50 -60 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 50 -120 2 0 {name=l9 sig_type=std_logic lab=b0}
C {madvlsi/vsource.sym} 170 -90 0 0 {name=Vb1
value=1.8}
C {madvlsi/gnd.sym} 170 -60 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 170 -120 2 0 {name=l11 sig_type=std_logic lab=b1}
C {madvlsi/vsource.sym} 290 -90 0 0 {name=Vb2
value=1.8}
C {madvlsi/gnd.sym} 290 -60 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 290 -120 2 0 {name=l13 sig_type=std_logic lab=b2}
C {madvlsi/vsource.sym} 410 -90 0 0 {name=Vb3
value=1.8}
C {madvlsi/gnd.sym} 410 -60 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 410 -120 2 0 {name=l15 sig_type=std_logic lab=b3}
C {madvlsi/vsource.sym} 530 -90 0 0 {name=Vb4
value=1.8}
C {madvlsi/gnd.sym} 530 -60 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 530 -120 2 0 {name=l17 sig_type=std_logic lab=b4}
C {madvlsi/vsource.sym} 650 -90 0 0 {name=Vb5
value=1.8}
C {madvlsi/gnd.sym} 650 -60 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 650 -120 2 0 {name=l19 sig_type=std_logic lab=b5}
C {madvlsi/vsource.sym} 770 -90 0 0 {name=Vb6
value=1.8}
C {madvlsi/gnd.sym} 770 -60 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 770 -120 2 0 {name=l21 sig_type=std_logic lab=b6}
C {devices/code.sym} 670 -420 0 0 {name=SPICE only_toplevel=false value="
.control
  set wr_vecnames
  set wr_singlescale
  let code = 0
  while code < 128
    if code eq 0
      let b0 = 0
    else
      let b0 = (code % 2) * 1.8
    end
    if floor(code / 2) eq 0
      let b1 = 0
    else
      let b1 = (floor(code / 2) % 2) * 1.8
    end
    if floor(code / 4) eq 0
      let b2 = 0
    else
      let b2 = (floor(code / 4) % 2) * 1.8
    end
    if floor(code / 8) eq 0
      let b3 = 0
    else
      let b3 = (floor(code / 8) % 2) * 1.8
    end
    if floor(code / 16) eq 0
      let b4 = 0
    else 
      let b4 = (floor(code / 16) % 2) * 1.8
    end
    if floor(code / 32) eq 0
      let b5 = 0
    else
      let b5 = (floor(code / 32) % 2) * 1.8
    end
    if floor(code / 64) eq 0
      let b6 = 0
    else
      let b6 = (floor(code / 64) % 2) * 1.8
    end
    alter vb0 $&b0
    alter vb1 $&b1
    alter vb2 $&b2
    alter vb3 $&b3
    alter vb4 $&b4
    alter vb5 $&b5
    alter vb6 $&b6
    save all
    op
    wrdata ~/documents/git/madvlsi/dac/build/m2m_ladder/m2m_ladder_tb.txt i(Vout) v(b0) v(b1) v(b2) v(b3) v(b4) v(b5) v(b6) 
    if code eq 0
      set appendwrite
      set wr_vecnames = FALSE
    end
    let code = code + 1
  end
  quit
.endc"}
C {madvlsi/gnd.sym} 540 -210 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 450 -350 0 0 {name=l3 sig_type=std_logic lab=b1}
C {devices/lab_pin.sym} 450 -330 0 0 {name=l4 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} 450 -310 0 0 {name=l5 sig_type=std_logic lab=b3}
C {devices/lab_pin.sym} 450 -370 0 0 {name=l6 sig_type=std_logic lab=b0}
C {devices/lab_pin.sym} 450 -290 0 0 {name=l7 sig_type=std_logic lab=b4}
C {devices/lab_pin.sym} 450 -270 0 0 {name=l22 sig_type=std_logic lab=b5}
C {devices/lab_pin.sym} 450 -250 0 0 {name=l23 sig_type=std_logic lab=b6}
C {madvlsi/gnd.sym} 650 -230 0 0 {name=l24 lab=GND}
C {madvlsi/isource.sym} 150 -250 2 0 {name=I1
value=5.1u}
C {madvlsi/vsource.sym} 260 -250 0 0 {name=V1
value=0.7}
C {madvlsi/gnd.sym} 260 -220 0 0 {name=l25 lab=GND}
C {madvlsi/gnd.sym} 150 -220 0 0 {name=l26 lab=GND}
C {devices/lab_pin.sym} 150 -300 0 0 {name=l27 sig_type=std_logic lab=I_in}
C {devices/lab_pin.sym} 450 -420 0 0 {name=l28 sig_type=std_logic lab=I_in}
C {devices/lab_pin.sym} 260 -300 0 0 {name=l29 sig_type=std_logic lab=V_gate}
C {devices/lab_pin.sym} 450 -400 0 0 {name=l30 sig_type=std_logic lab=V_gate}
C {madvlsi/vdd.sym} 50 -280 0 0 {name=l31 lab=VDD}
C {madvlsi/vsource.sym} 50 -250 0 0 {name=V2
value=1.8}
C {madvlsi/gnd.sym} 50 -220 0 0 {name=l32 lab=GND}
C {madvlsi/vdd.sym} 540 -470 0 0 {name=l33 lab=VDD}
C {madvlsi/gnd.sym} 680 -230 0 0 {name=l34 lab=GND}
C {sky130_fd_pr/corner.sym} 790 -420 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/ammeter1.sym} 680 -260 0 0 {name=Vout}
C {m2m_ladder.sym} 440 -180 0 0 {name=X1 u_w=3 u_l=3}
C {madvlsi/gnd.sym} 150 -400 0 0 {name=l2 lab=GND}
C {madvlsi/vdd.sym} 150 -520 0 0 {name=l35 lab=VDD}
C {devices/lab_pin.sym} 200 -440 2 0 {name=l36 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 200 -480 2 0 {name=l37 sig_type=std_logic lab=vbp}
C {bias_gen.sym} 110 -370 0 0 {name=X2 u_w=3 u_l=3 m=2 r=100k}
C {madvlsi/nmos3.sym} 330 -460 0 0 {name=M1
L=3
W=3
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
C {devices/lab_pin.sym} 300 -460 0 0 {name=l39 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 330 -410 0 0 {name=l38 sig_type=std_logic lab=I_in}
C {madvlsi/vdd.sym} 330 -490 0 0 {name=l40 lab=VDD}
