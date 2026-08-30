v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 5 417.5 117.5 422.5 122.5 {name="Vinn"
dir=inout}
B 5 557.5 -62.5 562.5 -57.5 {name="CLK"
dir=inout}
B 5 -132.5 117.5 -127.5 122.5 {name="Vinp"
dir=inout}
P 4 1 510 230 {}
N 10 85 10 90 {lab=Debug_NC_Vleft_gm}
N 290 85 290 90 {lab=Debug_NC_Vright_gm}
N 290 -30 290 -10 {lab=Voutn}
N 50 -10 290 -10 {lab=Voutn}
N 50 -10 50 20 {lab=Voutn}
N 50 -70 50 -10 {lab=Voutn}
N 10 -20 10 -10 {lab=Voutp}
N 250 -30 250 20 {lab=Voutp}
N 10 -30 250 -30 {lab=Voutp}
N 10 -40 10 -30 {lab=Voutp}
N 250 -70 250 -30 {lab=Voutp}
N 10 190 150 190 {lab=VS_dp}
N 10 150 10 190 {lab=VS_dp}
N 150 190 150 210 {lab=VS_dp}
N 150 190 290 190 {lab=VS_dp}
N 290 150 290 190 {lab=VS_dp}
N 175 240 200 240 {lab=VSS_comparator}
N 200 240 200 285 {lab=VSS_comparator}
N 150 285 200 285 {lab=VSS_comparator}
N 150 270 150 285 {lab=VSS_comparator}
N 175 120 290 120 {lab=VSS_comparator}
N 175 120 175 240 {lab=VSS_comparator}
N 10 120 175 120 {lab=VSS_comparator}
N 150 240 175 240 {lab=VSS_comparator}
N -40 20 10 20 {lab=VSS_comparator}
N -40 20 -40 65 {lab=VSS_comparator}
N -40 65 175 65 {lab=VSS_comparator}
N 175 65 175 120 {lab=VSS_comparator}
N 175 65 365 65 {lab=VSS_comparator}
N 365 20 365 65 {lab=VSS_comparator}
N 290 20 365 20 {lab=VSS_comparator}
N 140 -100 340 -100 {lab=VDD_comparator}
N -60 -100 -60 -70 {lab=VDD_comparator}
N -60 -70 15 -70 {lab=VDD_comparator}
N 285 -70 340 -70 {lab=VDD_comparator}
N 340 -100 340 -70 {lab=VDD_comparator}
N -90 -100 -60 -100 {lab=VDD_comparator}
N 60 240 110 240 {lab=CLK}
N 200 285 375 285 {lab=VSS_comparator}
N -125 -100 -125 -80 {lab=VDD_comparator}
N -130 -50 -90 -50 {lab=VDD_comparator}
N -90 -100 -90 -50 {lab=VDD_comparator}
N -125 -100 -90 -100 {lab=VDD_comparator}
N 10 -30 10 -20 {lab=Voutp}
N -95 -20 10 -20 {lab=Voutp}
N -200 -50 -165 -50 {lab=CLK}
N 450 -100 450 -90 {lab=VDD_comparator}
N 415 -100 450 -100 {lab=VDD_comparator}
N 390 -30 450 -30 {lab=Voutn}
N 290 -40 290 -30 {lab=Voutn}
N 415 -60 450 -60 {lab=VDD_comparator}
N 415 -100 415 -60 {lab=VDD_comparator}
N 340 -100 415 -100 {lab=VDD_comparator}
N 490 -60 560 -60 {lab=CLK}
N 10 285 150 285 {lab=VSS_comparator}
N -125 85 10 85 {lab=Debug_NC_Vleft_gm}
N 10 50 10 85 {lab=Debug_NC_Vleft_gm}
N 290 85 405 85 {lab=Debug_NC_Vright_gm}
N 290 50 290 85 {lab=Debug_NC_Vright_gm}
N 330 120 420 120 {lab=Vinn}
N -130 120 -30 120 {lab=Vinp}
N -60 -100 140 -100 {lab=VDD_comparator}
N 140 -130 185 -130 {lab=VDD_comparator}
N 140 -130 140 -100 {lab=VDD_comparator}
N -130 20 -95 20 {lab=Voutp}
N -95 -20 -95 20 {lab=Voutp}
N -125 -20 -95 -20 {lab=Voutp}
N 390 15 410 15 {lab=Voutn}
N 390 -30 390 15 {lab=Voutn}
N 290 -30 390 -30 {lab=Voutn}
C {sg13g2_pr/sg13_hv_pmos.sym} 30 -70 0 1 {name=M1
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -10 120 0 0 {name=M2
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 30 20 0 1 {name=M3
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 310 120 0 1 {name=M4
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 270 20 0 0 {name=M5
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 270 -70 0 0 {name=M6
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 130 240 0 0 {name=M7
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 90 240 0 0 {name=p1 sig_type=std_logic lab="CLK"}
C {lab_wire.sym} 130 -30 0 0 {name=p4 sig_type=std_logic lab="Voutp"}
C {lab_wire.sym} 210 -10 0 0 {name=p5 sig_type=std_logic lab="Voutn"}
C {sg13g2_pr/sg13_hv_pmos.sym} 470 -60 0 1 {name=M8
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -145 -50 0 0 {name=M9
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {lab_wire.sym} -175 -50 0 0 {name=p6 sig_type=std_logic lab="CLK"}
C {lab_wire.sym} 150 190 0 0 {name=p8 sig_type=std_logic lab="VS_dp"}
C {lab_wire.sym} 125 -100 0 0 {name=p9 sig_type=std_logic lab="VDD_comparator"}
C {lab_wire.sym} 280 285 0 0 {name=p10 sig_type=std_logic lab="VSS_comparator"}
C {lab_wire.sym} -20 85 0 0 {name=p11 sig_type=std_logic lab="Debug_NC_Vleft_gm"}
C {lab_wire.sym} 400 85 0 0 {name=p12 sig_type=std_logic lab="Debug_NC_Vright_gm"}
C {ipin.sym} 560 -60 0 1 {name=p15 lab="CLK"}
C {ipin.sym} -130 120 0 0 {name=p16 lab="Vinp"}
C {iopin.sym} 375 285 0 0 {name=p14 lab="VSS_comparator"}
C {iopin.sym} 185 -130 0 0 {name=p17 lab="VDD_comparator"}
C {ipin.sym} 420 120 0 1 {name=p13 lab="Vinn"}
C {opin.sym} 405 85 0 0 {name=p18 lab="Debug_NC_Vright_gm"}
C {opin.sym} -125 85 0 1 {name=p19 lab="Debug_NC_Vleft_gm"}
C {opin.sym} -130 20 0 1 {name=p20 lab="Voutp"}
C {opin.sym} 410 15 0 0 {name=p21 lab="Voutn"}
