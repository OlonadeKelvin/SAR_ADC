v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 40 -120 {}
N -70 -80 -30 -80 {lab=#net1}
N -70 0 -70 80 {lab=#net1}
N -70 80 -30 80 {lab=#net1}
N 30 80 80 80 {lab=TxGOut}
N 80 0 80 80 {lab=TxGOut}
N 30 -80 80 -80 {lab=TxGOut}
N -70 -80 -70 0 {lab=#net1}
N 80 0 240 0 {lab=TxGOut}
N 80 -80 80 0 {lab=TxGOut}
N 0 -150 0 -120 {lab=Ngate}
N -130 -150 0 -150 {lab=Ngate}
N 0 120 0 160 {lab=Pgate}
N -130 160 0 160 {lab=Pgate}
N -280 -100 -280 -60 {lab=VDD}
N -360 -100 -280 -100 {lab=VDD}
N -390 -100 -390 -60 {lab=VDD}
N -390 -30 -360 -30 {lab=VDD}
N -360 -100 -360 -30 {lab=VDD}
N -390 -100 -360 -100 {lab=VDD}
N -390 20 -320 20 {lab=#net2}
N -320 -30 -320 20 {lab=#net2}
N -320 20 -320 50 {lab=#net2}
N -280 0 -280 20 {lab=#net1}
N -280 0 -70 0 {lab=#net1}
N -250 -100 -110 -100 {lab=VDD}
N -110 -100 -110 -30 {lab=VDD}
N -130 -30 -110 -30 {lab=VDD}
N -280 -30 -250 -30 {lab=VDD}
N -250 -100 -250 -30 {lab=VDD}
N -280 -100 -250 -100 {lab=VDD}
N -390 80 -390 120 {lab=VSS}
N -100 30 -100 120 {lab=VSS}
N -130 30 -100 30 {lab=VSS}
N -280 80 -280 120 {lab=VSS}
N -360 120 -280 120 {lab=VSS}
N -390 50 -360 50 {lab=VSS}
N -360 50 -360 120 {lab=VSS}
N -390 120 -360 120 {lab=VSS}
N -280 50 -250 50 {lab=VSS}
N -250 50 -250 120 {lab=VSS}
N -280 120 -250 120 {lab=VSS}
N -390 -0 -390 20 {lab=#net2}
N -430 10 -430 50 {lab=TxGIn}
N -480 10 -430 10 {lab=TxGIn}
N -430 -30 -430 10 {lab=TxGIn}
N 0 -80 -0 -60 {lab=VSS}
N -110 -30 0 -30 {lab=VDD}
N 0 -30 0 80 {lab=VDD}
N -100 120 -100 150 {lab=VSS}
N -250 120 -100 120 {lab=VSS}
N -100 150 40 150 {lab=VSS}
N 40 -60 40 150 {lab=VSS}
N 0 -60 40 -60 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 -100 1 0 {name=M13
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 0 100 3 0 {name=M14
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -130 -150 0 0 {name=p28 lab=Ngate}
C {ipin.sym} -130 160 0 0 {name=p29 lab=Pgate}
C {ipin.sym} -480 10 0 0 {name=p30 lab=TxGIn}
C {opin.sym} 240 0 0 0 {name=p1 lab=TxGOut}
C {iopin.sym} -130 -30 0 1 {name=p2 lab=VDD}
C {iopin.sym} -130 30 0 1 {name=p3 lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -300 50 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -300 -30 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -410 50 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -410 -30 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
