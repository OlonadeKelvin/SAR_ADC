v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -300 200 -250 {lab=inb}
N 200 -180 200 -140 {lab=vss}
N 200 -420 200 -400 {lab=vddl}
N 120 -370 160 -370 {lab=in}
N 120 -300 120 -220 {lab=in}
N 120 -220 160 -220 {lab=in}
N 60 -300 120 -300 {lab=in}
N 120 -370 120 -300 {lab=in}
N 200 -370 230 -370 {lab=vddl}
N 230 -420 230 -370 {lab=vddl}
N 200 -420 230 -420 {lab=vddl}
N 200 -440 200 -420 {lab=vddl}
N 200 -220 220 -220 {lab=vss}
N 220 -220 220 -180 {lab=vss}
N 200 -180 220 -180 {lab=vss}
N 200 -190 200 -180 {lab=vss}
N 200 -300 240 -300 {lab=inb}
N 200 -340 200 -300 {lab=inb}
N 430 -300 430 -240 {lab=a}
N 430 -180 430 -140 {lab=vss}
N 520 -140 610 -140 {lab=vss}
N 610 -180 610 -140 {lab=vss}
N 610 -320 610 -240 {lab=b}
N 430 -410 430 -400 {lab=vddh}
N 430 -440 610 -440 {lab=vddh}
N 610 -410 610 -400 {lab=vddh}
N 520 -210 610 -210 {lab=vss}
N 520 -210 520 -140 {lab=vss}
N 430 -210 520 -210 {lab=vss}
N 430 -140 520 -140 {lab=vss}
N 400 -370 430 -370 {lab=vddh}
N 400 -410 400 -370 {lab=vddh}
N 400 -410 430 -410 {lab=vddh}
N 430 -440 430 -410 {lab=vddh}
N 610 -370 630 -370 {lab=vddh}
N 630 -410 630 -370 {lab=vddh}
N 610 -410 630 -410 {lab=vddh}
N 610 -440 610 -410 {lab=vddh}
N 470 -370 490 -370 {lab=b}
N 490 -370 490 -320 {lab=b}
N 490 -320 610 -320 {lab=b}
N 610 -340 610 -320 {lab=b}
N 550 -370 570 -370 {lab=a}
N 550 -370 550 -300 {lab=a}
N 430 -300 550 -300 {lab=a}
N 430 -340 430 -300 {lab=a}
N 360 -210 390 -210 {lab=in}
N 650 -210 680 -210 {lab=inb}
N 910 -290 910 -240 {
lab=out}
N 910 -420 910 -400 {
lab=vddh}
N 910 -150 910 -100 {
lab=vss}
N 910 -210 940 -210 {
lab=vss}
N 840 -370 870 -370 {
lab=a}
N 840 -290 840 -210 {
lab=a}
N 840 -210 870 -210 {
lab=a}
N 910 -370 940 -370 {
lab=vddh}
N 940 -420 940 -370 {
lab=vddh}
N 910 -420 940 -420 {
lab=vddh}
N 940 -210 940 -150 {
lab=vss}
N 910 -150 940 -150 {
lab=vss}
N 780 -290 840 -290 {
lab=a}
N 910 -290 1000 -290 {
lab=out}
N 910 -500 910 -420 {
lab=vddh}
N 910 -180 910 -150 {
lab=vss}
N 840 -370 840 -290 {
lab=a}
N 910 -340 910 -290 {
lab=out}
C {iopin.sym} 1000 -530 0 0 {name=p11 lab=vddl}
C {iopin.sym} 1000 -490 0 0 {name=p18 lab=vddh}
C {iopin.sym} 1000 -450 0 0 {name=p1 lab=out
}
C {iopin.sym} 1000 -570 0 0 {name=p3 lab=vss}
C {iopin.sym} 1000 -410 0 0 {name=p5 lab=in
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 180 -220 0 0 {name=M1
l=0.13u
w=0.6u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 180 -370 0 0 {name=M2
l=0.13u
w=1.2u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 60 -300 0 0 {name=p6 sig_type=std_logic lab=in}
C {lab_pin.sym} 240 -300 2 0 {name=p7 sig_type=std_logic lab=inb}
C {lab_pin.sym} 200 -440 0 0 {name=p8 sig_type=std_logic lab=vddl}
C {lab_pin.sym} 200 -140 0 0 {name=p9 sig_type=std_logic lab=vss}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 410 -210 0 0 {name=M3
l=0.45u
w=2u
 ng=1
 m=4
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 630 -210 0 1 {name=M4
l=0.45u
w=2u
 ng=1
 m=4
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 590 -370 0 0 {name=M5
l=0.4u
w=2u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 450 -370 0 1 {name=M6
l=0.4u
w=2u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 510 -440 1 0 {name=p10 sig_type=std_logic lab=vddh}
C {lab_pin.sym} 510 -140 3 0 {name=p12 sig_type=std_logic lab=vss}
C {lab_pin.sym} 430 -290 0 0 {name=p13 sig_type=std_logic lab=a}
C {lab_pin.sym} 610 -280 2 0 {name=p19 sig_type=std_logic lab=b}
C {lab_pin.sym} 360 -210 0 0 {name=p20 sig_type=std_logic lab=in}
C {lab_pin.sym} 680 -210 2 0 {name=p21 sig_type=std_logic lab=inb}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 890 -210 0 0 {name=M12
l=0.45u
w=2u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 890 -370 0 0 {name=M16
l=0.4u
w=2u
 ng=1
 m=2
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 910 -500 1 0 {name=p2 sig_type=std_logic lab=vddh}
C {lab_pin.sym} 910 -100 3 0 {name=p4 sig_type=std_logic lab=vss}
C {lab_pin.sym} 780 -290 0 0 {name=p14 sig_type=std_logic lab=a}
C {lab_pin.sym} 1000 -290 2 0 {name=p15 sig_type=std_logic lab=out}
