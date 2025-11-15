v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 580 -400 580 -380 {lab=GND}
N 560 -400 580 -400 {lab=GND}
N 560 -400 580 -400 {lab=GND}
N 120 -550 120 -530 {lab=I_in}
N 750 -400 770 -400 {lab=#net1}
N 770 -420 770 -400 {lab=#net1}
N 560 -420 600 -420 {lab=#net2}
N 610 -420 650 -420 {lab=#net3}
N 520 -280 550 -280 {lab=#net4}
N 570 -280 580 -280 {lab=ib}
N 770 -430 770 -420 {lab=#net1}
N 770 -460 770 -440 {lab=#net5}
N 770 -460 830 -460 {lab=#net5}
N 830 -460 830 -450 {lab=#net5}
N 520 -280 520 -270 {lab=#net4}
N 550 -280 560 -280 {lab=#net4}
N 580 -280 590 -280 {lab=ib}
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
C {devices/code.sym} 210 -290 0 0 {name=SPICE only_toplevel=false value="
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
    wrdata ~/documents/git/madvlsi/dac/build/m2m_ladder_pseudo_biased_mirrored/m2m_ladder_pseudo_biased_mirrored_tb.txt i(Vout) i(Vout1) i(Vout2) i(V3) v(b0) v(b1) v(b2) v(b3) v(b4) v(b5) v(b6) 
    if code eq 0
      set appendwrite
      set wr_vecnames = FALSE
    end
    let code = code + 1
  end
  quit
.endc"}
C {madvlsi/gnd.sym} 470 -360 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 380 -500 0 0 {name=l3 sig_type=std_logic lab=b1}
C {devices/lab_pin.sym} 380 -480 0 0 {name=l4 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} 380 -460 0 0 {name=l5 sig_type=std_logic lab=b3}
C {devices/lab_pin.sym} 380 -520 0 0 {name=l6 sig_type=std_logic lab=b0}
C {devices/lab_pin.sym} 380 -440 0 0 {name=l7 sig_type=std_logic lab=b4}
C {devices/lab_pin.sym} 380 -420 0 0 {name=l22 sig_type=std_logic lab=b5}
C {devices/lab_pin.sym} 380 -400 0 0 {name=l23 sig_type=std_logic lab=b6}
C {madvlsi/gnd.sym} 580 -380 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 380 -570 0 0 {name=l28 sig_type=std_logic lab=I_in}
C {madvlsi/vdd.sym} 30 -530 0 0 {name=l31 lab=VDD}
C {madvlsi/vsource.sym} 30 -500 0 0 {name=V2
value=1.8}
C {madvlsi/gnd.sym} 30 -470 0 0 {name=l32 lab=GND}
C {madvlsi/vdd.sym} 470 -620 0 0 {name=l33 lab=VDD}
C {sky130_fd_pr/corner.sym} 330 -290 0 0 {name=CORNER only_toplevel=false corner=tt}
C {madvlsi/gnd.sym} 210 -450 0 0 {name=l2 lab=GND}
C {madvlsi/vdd.sym} 210 -570 0 0 {name=l35 lab=VDD}
C {devices/lab_pin.sym} 260 -490 2 0 {name=l36 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 260 -530 2 0 {name=l37 sig_type=std_logic lab=vbp}
C {bias_gen.sym} 170 -420 0 0 {name=X2 u_w=4 u_l=12 m=2 r=42.6175k}
C {madvlsi/vsource.sym} 120 -500 0 0 {name=V3
value=1.8}
C {madvlsi/gnd.sym} 120 -470 0 0 {name=l26 lab=GND}
C {devices/lab_pin.sym} 120 -550 0 0 {name=l27 sig_type=std_logic lab=I_in}
C {m2m_ladder_pmos.sym} 370 -330 0 0 {name=X3 u_w=4 u_l=12}
C {devices/lab_pin.sym} 380 -550 0 0 {name=l29 sig_type=std_logic lab=vbp}
C {madvlsi/ammeter1.sym} 600 -420 3 0 {name=Vout2}
C {lvs_mirror.sym} 640 -310 0 0 {name=X1 u_w=4 u_l=12 m=2 r=1M}
C {devices/lab_pin.sym} 650 -380 0 0 {name=l30 sig_type=std_logic lab=ib}
C {madvlsi/isource.sym} 520 -240 2 0 {name=I1
value=1n}
C {madvlsi/gnd.sym} 520 -210 0 0 {name=l38 lab=GND}
C {madvlsi/gnd.sym} 700 -340 0 0 {name=l39 lab=GND}
C {madvlsi/ammeter1.sym} 770 -440 0 0 {name=Vout
spice_ignore=false}
C {madvlsi/vsource.sym} 830 -420 0 0 {name=V1
value=1.8}
C {madvlsi/gnd.sym} 830 -390 0 0 {name=l40 lab=GND}
C {madvlsi/ammeter1.sym} 560 -280 3 0 {name=Vout1}
C {devices/lab_pin.sym} 590 -280 2 0 {name=l25 sig_type=std_logic lab=ib}
