v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 270 -140 {}
N 40 -115 40 -75 {lab=VDD}
N -40 -115 40 -115 {lab=VDD}
N -70 -115 -70 -75 {lab=VDD}
N -70 -45 -40 -45 {lab=VDD}
N -40 -115 -40 -45 {lab=VDD}
N -70 -115 -40 -115 {lab=VDD}
N -70 5 0 5 {lab=#net1}
N 0 -45 0 5 {lab=#net1}
N 0 5 0 35 {lab=#net1}
N 40 -45 70 -45 {lab=VDD}
N 40 -115 70 -115 {lab=VDD}
N -70 35 -40 35 {lab=VSS}
N -40 35 -40 125 {lab=VSS}
N 40 35 70 35 {lab=VSS}
N -70 -15 -70 5 {lab=#net1}
N -110 -5 -110 35 {lab=BufferIn}
N -160 -5 -110 -5 {lab=BufferIn}
N -110 -45 -110 -5 {lab=BufferIn}
N -20 -145 40 -145 {lab=VDD}
N 40 -145 40 -115 {lab=VDD}
N 40 -0 40 5 {lab=BufferOut}
N 70 -115 70 -45 {lab=VDD}
N 40 -0 75 -0 {lab=BufferOut}
N 40 -15 40 -0 {lab=BufferOut}
N -70 125 -40 125 {lab=VSS}
N -40 155 -40 195 {lab=VSS}
N -70 155 -40 155 {lab=VSS}
N -40 125 -40 155 {lab=VSS}
N -70 65 -70 95 {lab=#net3}
N -115 125 -110 125 {lab=Enable}
N 70 35 70 125 {lab=VSS}
N 40 125 70 125 {lab=VSS}
N 70 125 70 155 {lab=VSS}
N 40 65 40 95 {lab=#net4}
N -15 125 0 125 {lab=Enable}
N -40 155 70 155 {lab=VSS}
N -115 80 -115 125 {lab=Enable}
N -125 125 -115 125 {lab=Enable}
N -115 80 -15 80 {lab=Enable}
N -15 80 -15 125 {lab=Enable}
C {ipin.sym} -160 -5 0 0 {name=p30 lab=BufferIn}
C {opin.sym} 75 0 0 0 {name=p1 lab=BufferOut}
C {iopin.sym} -20 -145 0 1 {name=p2 lab=VDD}
C {iopin.sym} -40 195 0 1 {name=p3 lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 35 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -45 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -90 35 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -90 -45 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -90 125 0 0 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -125 125 0 0 {name=p28 lab=Enable}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 125 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
