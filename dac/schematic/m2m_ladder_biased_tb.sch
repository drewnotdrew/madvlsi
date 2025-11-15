v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 670 -250 690 -250 {lab=GND}
N 690 -250 690 -230 {lab=GND}
N 720 -270 720 -260 {lab=#net1}
N 720 -250 720 -230 {lab=GND}
N 670 -270 720 -270 {lab=#net1}
N 390 -400 390 -380 {lab=I_in}
C {madvlsi/vsource.sym} 180 -120 0 0 {name=Vb0
value=1.8}
C {madvlsi/gnd.sym} 180 -90 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 180 -150 2 0 {name=l9 sig_type=std_logic lab=b0}
C {madvlsi/vsource.sym} 300 -120 0 0 {name=Vb1
value=1.8}
C {madvlsi/gnd.sym} 300 -90 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 300 -150 2 0 {name=l11 sig_type=std_logic lab=b1}
C {madvlsi/vsource.sym} 420 -120 0 0 {name=Vb2
value=1.8}
C {madvlsi/gnd.sym} 420 -90 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 420 -150 2 0 {name=l13 sig_type=std_logic lab=b2}
C {madvlsi/vsource.sym} 540 -120 0 0 {name=Vb3
value=1.8}
C {madvlsi/gnd.sym} 540 -90 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 540 -150 2 0 {name=l15 sig_type=std_logic lab=b3}
C {madvlsi/vsource.sym} 660 -120 0 0 {name=Vb4
value=1.8}
C {madvlsi/gnd.sym} 660 -90 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 660 -150 2 0 {name=l17 sig_type=std_logic lab=b4}
C {madvlsi/vsource.sym} 780 -120 0 0 {name=Vb5
value=1.8}
C {madvlsi/gnd.sym} 780 -90 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 780 -150 2 0 {name=l19 sig_type=std_logic lab=b5}
C {madvlsi/vsource.sym} 900 -120 0 0 {name=Vb6
value=1.8}
C {madvlsi/gnd.sym} 900 -90 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 900 -150 2 0 {name=l21 sig_type=std_logic lab=b6}
C {devices/code.sym} 730 -390 0 0 {name=SPICE only_toplevel=false value="
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
    wrdata ~/documents/git/madvlsi/dac/build/m2m_ladder_biased/m2m_ladder_biased_tb.txt i(Vout) i(V3) v(vbp) v(b0) v(b1) v(b2) v(b3) v(b4) v(b5) v(b6) 
    if code eq 0
      set appendwrite
      set wr_vecnames = FALSE
    end
    let code = code + 1
  end
  quit
.endc"}
C {madvlsi/gnd.sym} 580 -210 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 490 -350 0 0 {name=l3 sig_type=std_logic lab=b1}
C {devices/lab_pin.sym} 490 -330 0 0 {name=l4 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} 490 -310 0 0 {name=l5 sig_type=std_logic lab=b3}
C {devices/lab_pin.sym} 490 -370 0 0 {name=l6 sig_type=std_logic lab=b0}
C {devices/lab_pin.sym} 490 -290 0 0 {name=l7 sig_type=std_logic lab=b4}
C {devices/lab_pin.sym} 490 -270 0 0 {name=l22 sig_type=std_logic lab=b5}
C {devices/lab_pin.sym} 490 -250 0 0 {name=l23 sig_type=std_logic lab=b6}
C {madvlsi/gnd.sym} 690 -230 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 490 -420 0 0 {name=l28 sig_type=std_logic lab=I_in}
C {madvlsi/vdd.sym} 140 -380 0 0 {name=l31 lab=VDD}
C {madvlsi/vsource.sym} 140 -350 0 0 {name=V2
value=1.8}
C {madvlsi/gnd.sym} 140 -320 0 0 {name=l32 lab=GND}
C {madvlsi/vdd.sym} 580 -470 0 0 {name=l33 lab=VDD}
C {madvlsi/gnd.sym} 720 -230 0 0 {name=l34 lab=GND}
C {sky130_fd_pr/corner.sym} 850 -390 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/ammeter1.sym} 720 -260 0 0 {name=Vout}
C {madvlsi/gnd.sym} 240 -290 0 0 {name=l2 lab=GND}
C {madvlsi/vdd.sym} 240 -410 0 0 {name=l35 lab=VDD}
C {devices/lab_pin.sym} 290 -330 2 0 {name=l36 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 290 -370 2 0 {name=l37 sig_type=std_logic lab=vbp}
C {madvlsi/vsource.sym} 390 -350 0 0 {name=V3
value=1.8}
C {madvlsi/gnd.sym} 390 -320 0 0 {name=l26 lab=GND}
C {devices/lab_pin.sym} 390 -400 0 0 {name=l27 sig_type=std_logic lab=I_in}
C {m2m_ladder_pmos.sym} 480 -180 0 0 {name=X1 u_w=4 u_l=12}
C {bias_gen.sym} 200 -260 0 0 {name=X3 u_w=4 u_l=12 m=2 r=42.6175k}
C {devices/lab_pin.sym} 490 -400 0 0 {name=l25 sig_type=std_logic lab=vbp}
