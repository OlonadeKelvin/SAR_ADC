v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 180 -200 {}
T {NAND Gate} -10 -160 0 1 0.3 0.3 {}
N 90 20 90 40 {lab=#net1}
N 150 -70 150 -60 {lab=A_NAND_B}
N 40 -60 90 -60 {lab=A_NAND_B}
N 40 -70 40 -60 {lab=A_NAND_B}
N 90 -60 90 -40 {lab=A_NAND_B}
N 90 -60 150 -60 {lab=A_NAND_B}
N 150 -100 190 -100 {lab=VDD_NAND}
N 190 -130 190 -100 {lab=VDD_NAND}
N 70 -130 70 -100 {lab=VDD_NAND}
N 70 -130 150 -130 {lab=VDD_NAND}
N 40 -100 70 -100 {lab=VDD_NAND}
N 150 -150 150 -130 {lab=VDD_NAND}
N 150 -130 190 -130 {lab=VDD_NAND}
N 90 -10 150 -10 {lab=xxx}
N 90 70 150 70 {lab=xxx}
N 150 -10 150 70 {lab=xxx}
N 40 -130 70 -130 {lab=VDD_NAND}
N 90 100 90 130 {lab=xxx}
N 90 100 150 100 {lab=xxx}
N 150 70 150 100 {lab=xxx}
N -60 -100 -0 -100 {lab=A}
N -60 -10 50 -10 {lab=A}
N -60 -60 -60 -10 {lab=A}
N -110 -60 -60 -60 {lab=A}
N -60 -100 -60 -60 {lab=A}
N 110 -100 110 -50 {lab=B}
N 10 -50 110 -50 {lab=B}
N 10 10 10 70 {lab=B}
N 10 70 50 70 {lab=B}
N -110 10 10 10 {lab=B}
N 10 -50 10 10 {lab=B}
N 150 -60 250 -60 {lab=A_NAND_B}
C {sg13g2_pr/sg13_hv_pmos.sym} 130 -100 0 0 {name=M11
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 -100 0 0 {name=M12
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 70 -10 0 0 {name=M13
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 70 70 0 0 {name=M14
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {opin.sym} 250 -60 0 0 {name=p1 lab=A_NAND_B}
C {ipin.sym} -110 -60 0 0 {name=p2 lab=A}
C {ipin.sym} -110 10 0 0 {name=p3 lab=B}
C {iopin.sym} 150 -150 0 0 {name=p4 lab=VDD_NAND}
C {iopin.sym} 90 130 0 0 {name=p5 lab=VSS_NAND}
