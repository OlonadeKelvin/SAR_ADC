v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 330 -310 380 -310 {
lab=b}
N 380 -210 380 -130 {
lab=b}
N 330 -130 380 -130 {
lab=b}
N 230 -130 270 -130 {
lab=a}
N 230 -200 230 -130 {
lab=a}
N 230 -310 270 -310 {
lab=a}
N 300 -90 300 -50 {
lab=pg}
N 300 -390 300 -350 {
lab=ng}
N 300 -170 300 -130 {
lab=vdd}
N 300 -310 300 -270 {
lab=vss}
N 380 -210 480 -210 {
lab=b}
N 140 -200 230 -200 {
lab=a}
N 230 -310 230 -200 {
lab=a}
N 380 -310 380 -210 {
lab=b}
C {lab_pin.sym} 480 -210 2 0 {name=p14 sig_type=std_logic lab=b}
C {lab_pin.sym} 300 -390 0 0 {name=p2 sig_type=std_logic lab=ng}
C {lab_pin.sym} 300 -50 0 0 {name=p15 sig_type=std_logic lab=pg
}
C {lab_pin.sym} 300 -170 0 0 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 300 -270 0 0 {name=p17 sig_type=std_logic lab=vss}
C {lab_pin.sym} 140 -200 0 0 {name=p4 sig_type=std_logic lab=a}
C {ipin.sym} 550 -370 0 0 {name=p9 lab=ng
}
C {iopin.sym} 590 -330 0 0 {name=p11 lab=vdd}
C {ipin.sym} 550 -330 0 0 {name=p12 lab=pg}
C {iopin.sym} 590 -290 0 0 {name=p18 lab=a}
C {iopin.sym} 590 -250 0 0 {name=p1 lab=b}
C {iopin.sym} 590 -370 0 0 {name=p3 lab=vss}
C {title.sym} 160 0 0 0 {name=l1 author="Arjun Ananth"}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 300 -330 1 0 {name=M12
l=0.45u
w=2u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 300 -110 3 0 {name=M16
l=0.4u
w=2u
 ng=1
 m=2
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
