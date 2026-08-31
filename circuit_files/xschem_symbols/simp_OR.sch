v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 190 -60 200 {lab=#net1}
N -60 90 -60 110 {lab=#net2}
N -210 190 -60 190 {lab=#net1}
N -60 170 -60 190 {lab=#net1}
N -210 190 -210 200 {lab=#net1}
N -60 140 -10 140 {lab=VDD_OR}
N -10 60 -10 140 {lab=VDD_OR}
N -60 60 -10 60 {lab=VDD_OR}
N -10 -20 -10 60 {lab=VDD_OR}
N -210 230 -180 230 {lab=VSS_OR}
N -180 230 -180 270 {lab=VSS_OR}
N -60 260 -60 270 {lab=VSS_OR}
N -180 270 -60 270 {lab=VSS_OR}
N -60 230 -10 230 {lab=VSS_OR}
N -10 230 -10 270 {lab=VSS_OR}
N -60 270 -10 270 {lab=VSS_OR}
N -210 260 -210 270 {lab=VSS_OR}
N -210 270 -180 270 {lab=VSS_OR}
N -60 -60 -60 30 {lab=VDD_OR}
N -10 -60 -10 -20 {lab=VDD_OR}
N -120 230 -100 230 {lab=A}
N -120 160 -120 230 {lab=A}
N -120 140 -100 140 {lab=A}
N -210 160 -120 160 {lab=A}
N -120 140 -120 160 {lab=A}
N -250 60 -100 60 {lab=B}
N -250 160 -250 230 {lab=B}
N -280 160 -250 160 {lab=B}
N -250 60 -250 160 {lab=B}
N -60 270 -60 300 {lab=VSS_OR}
N -60 -60 -10 -60 {lab=VDD_OR}
N 250 160 250 270 {lab=VSS_OR}
N 250 80 250 100 {lab=OR_out}
N 250 130 280 130 {lab=VSS_OR}
N 280 130 280 270 {lab=VSS_OR}
N 250 270 280 270 {lab=VSS_OR}
N 250 40 290 40 {lab=VDD_OR}
N 290 10 290 40 {lab=VDD_OR}
N 250 10 290 10 {lab=VDD_OR}
N 250 -20 250 10 {lab=VDD_OR}
N -10 -20 250 -20 {lab=VDD_OR}
N 210 80 210 130 {lab=#net1}
N 250 80 330 80 {lab=OR_out}
N 250 70 250 80 {lab=OR_out}
N 110 80 210 80 {lab=#net1}
N 210 40 210 80 {lab=#net1}
N 110 80 110 190 {lab=#net1}
N -60 190 110 190 {lab=#net1}
N -10 270 250 270 {lab=VSS_OR}
C {sg13g2_pr/sg13_hv_pmos.sym} -80 60 0 0 {name=M2
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -80 140 0 0 {name=M3
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -80 230 0 0 {name=M4
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -230 230 0 0 {name=M6
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} -10 -60 0 0 {name=p1 lab=VDD_OR}
C {iopin.sym} -60 300 0 0 {name=p2 lab=VSS_OR}
C {sg13g2_pr/sg13_hv_pmos.sym} 230 40 0 0 {name=M7
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 230 130 0 0 {name=M8
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {opin.sym} 330 80 0 0 {name=p3 lab=OR_out}
C {ipin.sym} -280 160 0 0 {name=p5 lab=B}
C {ipin.sym} -210 160 0 0 {name=p6 lab=A}
