v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ

.param temp=27

.save v(CLK_SH) v(notCLK_SH) v(CLK_comp)
.save v(Vinp) v(Vinn) v(v1p) v(V1n)
.save v(Von) v(Vop) v(Valid) v(settled_OK) v(settledBeforeDelay) v(validDelayed)
.save v(Ck9) v(Ck8) v(Ck7) v(Ck6) v(Ck5) v(Ck4) v(Ck3) v(Ck2) v(Ck1) v(Ck0)
.save v(Sn9) v(Sn8) v(Sn7) v(Sn6) v(Sn5) v(Sn4) v(Sn3) v(Sn2) v(Sn1) v(Sn0)
.save v(Sn9B) v(Sn8B) v(Sn7B) v(Sn6B) v(Sn5B) v(Sn4B) v(Sn3B) v(Sn2B) v(Sn1B) v(Sn0B)
.save v(P9) v(P8) v(P7) v(P6) v(P5) v(P4) v(P3) v(P2) v(P1) v(P0)
.save v(N9) v(N8) v(N7) v(N6) v(N5) v(N4) v(N3) v(N2) v(N1) v(N0)
.save v(P9_preDrv) v(P8_preDrv) v(P7_preDrv) v(P6_preDrv) v(P5_preDrv) v(P4_preDrv) v(P3_preDrv) v(P2_preDrv) v(P1_preDrv) v(P0_preDrv)
.save v(N9_preDrv) v(N8_preDrv) v(N7_preDrv) v(N6_preDrv) v(N5_preDrv) v(N4_preDrv) v(N3_preDrv) v(N2_preDrv) v(N1_preDrv) v(N0_preDrv)
.save v(P9_out) v(P8_out) v(P7_out) v(P6_out) v(P5_out) v(P4_out) v(P3_out) v(P2_out) v(P1_out) v(P0_out)
.save v(N9_out) v(N8_out) v(N7_out) v(N6_out) v(N5_out) v(N4_out) v(N3_out) v(N2_out) v(N1_out) v(N0_out)
.save v(doneEval) v(ValidDelayed)

.ic v(P9) = 0
.ic v(P8) = 0
.ic v(P7) = 0
.ic v(P6) = 0
.ic v(P5) = 0
.ic v(P4) = 0
.ic v(P3) = 0
.ic v(P2) = 0
.ic v(P1) = 0
.ic v(P0) = 0

.ic v(N9) = 0
.ic v(N8) = 0
.ic v(N7) = 0
.ic v(N6) = 0
.ic v(N5) = 0
.ic v(N4) = 0
.ic v(N3) = 0
.ic v(N2) = 0
.ic v(N1) = 0
.ic v(N0) = 0

.ic v(AlmostDoneEval) = 0
.ic v(DoneEval) = 0

.ic v(V1p) = 1.65
.ic v(V1n) = 1.65

.tran 0.1n 100u

.control
set num_threads 1
run
write testWhole_3.raw
.endc
"
spice_ignore=false
      } -170 -1655 0 0 0.2 0.2 {}
N -780 -150 -765 -150 {lab=VDD}
N -765 -265 -765 -150 {lab=VDD}
N -1435 40 -1435 275 {lab=0}
N -1170 190 -1170 205 {lab=#net1}
N -1220 125 -1220 275 {lab=0}
N -1095 50 -1095 190 {lab=#net1}
N -1260 195 -1260 275 {lab=0}
N -1435 -265 -765 -265 {lab=VDD}
N -1260 -150 -1260 135 {lab=CLK_SH}
N -1260 -150 -1080 -150 {lab=CLK_SH}
N -1220 -130 -1220 65 {lab=notCLK_SH}
N -1170 -110 -1080 -110 {lab=Vinn}
N -1170 -110 -1170 130 {lab=Vinn}
N -1095 -90 -1080 -90 {lab=Vinp}
N -1095 -90 -1095 -10 {lab=Vinp}
N -1260 275 -1220 275 {lab=0}
N -1435 275 -1260 275 {lab=0}
N -1170 265 -1170 275 {lab=0}
N -1220 275 -1170 275 {lab=0}
N -1170 275 -1095 275 {lab=0}
N -1095 275 -1095 290 {lab=0}
N -635 -205 -635 -130 {lab=V1p}
N -460 -205 -460 -130 {lab=V1p}
N -590 -130 -510 -130 {lab=V1p}
N 985 -195 1100 -195 {lab=P9_out}
N 985 -175 1100 -175 {lab=P8_out}
N 985 -155 1100 -155 {lab=P7_out}
N 985 -135 1100 -135 {lab=P6_out}
N 985 -115 1100 -115 {lab=P5_out}
N 985 -95 1100 -95 {lab=P4_out}
N 985 -75 1100 -75 {lab=P3_out}
N 985 -55 1100 -55 {lab=P2_out}
N 985 -35 1100 -35 {lab=P1_out}
N 985 -15 1100 -15 {lab=P0_out}
N 985 25 1100 25 {lab=N9_out}
N 985 45 1100 45 {lab=N8_out}
N 985 65 1100 65 {lab=N7_out}
N 985 85 1100 85 {lab=N6_out}
N 985 105 1100 105 {lab=N5_out}
N 985 125 1100 125 {lab=N4_out}
N 985 145 1100 145 {lab=N3_out}
N 985 165 1100 165 {lab=N2_out}
N 985 185 1100 185 {lab=N1_out}
N 985 205 1100 205 {lab=N0_out}
N -1170 190 -1095 190 {lab=#net1}
N -1105 -130 -1080 -130 {lab=notCLK_SH}
N -1435 -265 -1435 -20 {lab=VDD}
N -175 -110 -70 -110 {lab=V1n}
N -240 -130 -155 -130 {lab=V1p}
N -460 -130 -415 -130 {lab=V1p}
N -335 -150 -335 -130 {lab=V1p}
N -415 -130 -335 -130 {lab=V1p}
N -335 -130 -285 -130 {lab=V1p}
N -285 -205 -285 -130 {lab=V1p}
N -155 -150 -155 -130 {lab=V1p}
N -510 -130 -460 -130 {lab=V1p}
N -510 -150 -510 -130 {lab=V1p}
N -685 -150 -685 -130 {lab=V1p}
N -780 -130 -685 -130 {lab=V1p}
N -685 -130 -635 -130 {lab=V1p}
N -1435 -515 -1435 -265 {lab=VDD}
N -590 -260 -590 -130 {lab=V1p}
N -635 -130 -590 -130 {lab=V1p}
N -415 -260 -415 -130 {lab=V1p}
N -685 -475 -685 -210 {lab=P9}
N -635 -455 -635 -265 {lab=P8}
N -590 -435 -590 -320 {lab=P7}
N -510 -415 -510 -210 {lab=P6}
N -460 -395 -460 -265 {lab=P5}
N -415 -375 -415 -320 {lab=P4}
N -335 -355 -335 -210 {lab=P3}
N -285 -335 -285 -265 {lab=P2}
N -155 -295 -155 -210 {lab=P0}
N -1105 -505 -1105 -130 {lab=notCLK_SH}
N -1220 -130 -1105 -130 {lab=notCLK_SH}
N 985 -485 1235 -485 {lab=Ck9}
N 985 -455 1235 -455 {lab=Ck8}
N 985 -425 1235 -425 {lab=Ck7}
N 985 -395 1235 -395 {lab=Ck6}
N 985 -365 1235 -365 {lab=Ck5}
N 985 -335 1235 -335 {lab=Ck4}
N 985 -305 1235 -305 {lab=Ck3}
N 985 -275 1235 -275 {lab=Ck2}
N 985 -245 1235 -245 {lab=Ck1}
N 1215 -215 1235 -215 {lab=Ck0}
N 1450 -455 1450 -440 {lab=0}
N 1470 -475 1555 -475 {lab=settledBeforeDelay}
N 1700 150 1700 155 {lab=0}
N 1595 10 1620 10 {lab=VDD}
N 1595 -105 1595 10 {lab=VDD}
N 1670 -105 1700 -105 {lab=VDD}
N 1595 100 1620 100 {lab=dELatch}
N 1470 110 1485 110 {lab=Ck0}
N 1470 110 1470 195 {lab=Ck0}
N 1535 150 1700 150 {lab=0}
N 1700 140 1700 150 {lab=0}
N 1535 10 1595 10 {lab=VDD}
N 1535 10 1535 50 {lab=VDD}
N 1470 90 1485 90 {lab=settledBeforeDelay}
N 1470 -475 1470 90 {lab=settledBeforeDelay}
N 1450 -475 1470 -475 {lab=settledBeforeDelay}
N -155 -130 -70 -130 {lab=V1p}
N -70 -265 -70 -150 {lab=CLK_comp}
N 55 -130 115 -130 {lab=Vop}
N 55 -110 115 -110 {lab=Von}
N 240 -120 270 -120 {lab=Valid}
N -70 -265 685 -265 {lab=CLK_comp}
N -240 -315 -240 -305 {lab=P1}
N -240 -245 -240 -130 {lab=V1p}
N -285 -130 -240 -130 {lab=V1p}
N 165 -70 165 -60 {lab=0}
N 65 -60 165 -60 {lab=0}
N -15 -65 -15 -60 {lab=0}
N -175 -110 -175 -95 {lab=V1n}
N -260 -110 -175 -110 {lab=V1n}
N -260 -30 -260 -15 {lab=N1}
N -305 -10 -305 5 {lab=N2}
N -355 0 -355 25 {lab=N3}
N -355 -110 -355 -60 {lab=V1n}
N -435 -110 -355 -110 {lab=V1n}
N -305 -110 -305 -70 {lab=V1n}
N -355 -110 -305 -110 {lab=V1n}
N -260 -110 -260 -90 {lab=V1n}
N -305 -110 -260 -110 {lab=V1n}
N -435 -25 -435 45 {lab=N4}
N -435 -110 -435 -85 {lab=V1n}
N -480 -110 -435 -110 {lab=V1n}
N -15 -180 -15 -175 {lab=VDD}
N -480 15 -480 65 {lab=N5}
N -530 65 -530 85 {lab=N6}
N -610 25 -610 105 {lab=N7}
N -655 80 -655 125 {lab=N8}
N -705 130 -705 145 {lab=N9}
N -705 -110 -705 70 {lab=V1n}
N -780 -110 -705 -110 {lab=V1n}
N -655 -110 -655 20 {lab=V1n}
N -705 -110 -655 -110 {lab=V1n}
N -610 -110 -610 -35 {lab=V1n}
N -655 -110 -610 -110 {lab=V1n}
N -530 -110 -530 5 {lab=V1n}
N -610 -110 -530 -110 {lab=V1n}
N -480 -110 -480 -45 {lab=V1n}
N -530 -110 -480 -110 {lab=V1n}
N 165 -180 165 -170 {lab=VDD}
N -15 -180 165 -180 {lab=VDD}
N -15 -285 -15 -180 {lab=VDD}
N 605 -205 605 -60 {lab=ValidDelayed}
N 605 -225 685 -225 {lab=ValidDelayed}
N 605 -205 685 -205 {lab=ValidDelayed}
N 605 -225 605 -205 {lab=ValidDelayed}
N 660 -245 685 -245 {lab=notCLK_SH}
N 660 -505 660 -245 {lab=notCLK_SH}
N -1105 -505 660 -505 {lab=notCLK_SH}
N 585 -515 685 -515 {lab=VDD}
N 150 -35 685 -35 {lab=N0_preDrv}
N -175 -35 -10 -35 {lab=N0}
N 150 -15 685 -15 {lab=N1_preDrv}
N 150 5 685 5 {lab=N2_preDrv}
N 150 25 685 25 {lab=N3_preDrv}
N 150 45 685 45 {lab=N4_preDrv}
N 150 65 685 65 {lab=N5_preDrv}
N 150 85 685 85 {lab=N6_preDrv}
N 150 105 685 105 {lab=N7_preDrv}
N 150 125 685 125 {lab=N8_preDrv}
N 150 145 685 145 {lab=N9_preDrv}
N -260 -15 -10 -15 {lab=N1}
N -305 5 -10 5 {lab=N2}
N -355 25 -10 25 {lab=N3}
N -480 65 -10 65 {lab=N5}
N -435 45 -10 45 {lab=N4}
N -530 85 -10 85 {lab=N6}
N -610 105 -10 105 {lab=N7}
N -655 125 -10 125 {lab=N8}
N -705 145 -10 145 {lab=N9}
N 170 -295 685 -295 {lab=P0_preDrv}
N 170 -315 685 -315 {lab=P1_preDrv}
N 170 -335 685 -335 {lab=P2_preDrv}
N 170 -355 685 -355 {lab=P3_preDrv}
N 170 -375 685 -375 {lab=P4_preDrv}
N 170 -395 685 -395 {lab=P5_preDrv}
N 170 -415 685 -415 {lab=P6_preDrv}
N 170 -435 685 -435 {lab=P7_preDrv}
N 170 -455 685 -455 {lab=P8_preDrv}
N 170 -475 685 -475 {lab=P9_preDrv}
N -685 -475 10 -475 {lab=P9}
N -635 -455 10 -455 {lab=P8}
N -590 -435 10 -435 {lab=P7}
N -510 -415 10 -415 {lab=P6}
N -460 -395 10 -395 {lab=P5}
N -415 -375 10 -375 {lab=P4}
N -335 -355 10 -355 {lab=P3}
N -285 -335 10 -335 {lab=P2}
N -240 -315 10 -315 {lab=P1}
N -155 -295 10 -295 {lab=P0}
N 10 -515 10 -485 {lab=VDD}
N -15 -515 10 -515 {lab=VDD}
N -1435 -515 -15 -515 {lab=VDD}
N 10 -515 585 -515 {lab=VDD}
N 585 190 585 195 {lab=0}
N 585 195 685 195 {lab=0}
N -10 -60 -10 -45 {lab=0}
N -15 -60 -10 -60 {lab=0}
N 10 -285 10 -185 {lab=0}
N 10 -185 65 -185 {lab=0}
N 65 -185 65 -60 {lab=0}
N -10 -60 65 -60 {lab=0}
N -85 155 -10 155 {lab=VDD}
N -85 -285 -85 155 {lab=VDD}
N -780 190 -780 275 {lab=0}
N -1095 275 -780 275 {lab=0}
N 1250 -335 1305 -335 {lab=N9}
N 1250 -320 1305 -320 {lab=N8}
N 1250 -305 1305 -305 {lab=N7}
N 1250 -290 1305 -290 {lab=N6}
N 1250 -275 1305 -275 {lab=N5}
N 1250 -260 1305 -260 {lab=N4}
N 1250 -245 1305 -245 {lab=N3}
N 1250 -230 1305 -230 {lab=N2}
N 1250 -215 1305 -215 {lab=N1}
N 1250 -200 1305 -200 {lab=N0}
N 1250 -495 1305 -495 {lab=P9}
N 1250 -480 1305 -480 {lab=P8}
N 1250 -465 1305 -465 {lab=P7}
N 1250 -450 1305 -450 {lab=P6}
N 1250 -435 1305 -435 {lab=P5}
N 1250 -420 1305 -420 {lab=P4}
N 1250 -405 1305 -405 {lab=P3}
N 1250 -390 1305 -390 {lab=P2}
N 1250 -375 1305 -375 {lab=P1}
N 1250 -360 1305 -360 {lab=P0}
N 1250 -180 1305 -180 {lab=Sn9B}
N 1250 -165 1305 -165 {lab=Sn9}
N 1250 -145 1305 -145 {lab=Sn8B}
N 1250 -130 1305 -130 {lab=Sn8}
N 1250 -110 1305 -110 {lab=Sn7B}
N 1250 -95 1305 -95 {lab=Sn7}
N 1250 -75 1305 -75 {lab=Sn6B}
N 1250 -60 1305 -60 {lab=Sn6}
N 1250 -40 1305 -40 {lab=Sn5B}
N 1250 -25 1305 -25 {lab=Sn5}
N 1250 -5 1305 -5 {lab=Sn4B}
N 1250 10 1305 10 {lab=Sn4}
N 1250 30 1305 30 {lab=Sn3B}
N 1250 45 1305 45 {lab=Sn3}
N 1250 65 1305 65 {lab=Sn2B}
N 1250 80 1305 80 {lab=Sn2}
N 1250 100 1305 100 {lab=Sn1B}
N 1250 115 1305 115 {lab=Sn1}
N 1250 150 1305 150 {lab=Sn0}
N 1250 135 1305 135 {lab=Sn0B}
N 985 -505 1235 -505 {lab=Sn9B}
N 985 -475 1235 -475 {lab=Sn8B}
N 985 -445 1235 -445 {lab=Sn7B}
N 985 -415 1235 -415 {lab=Sn6B}
N 985 -385 1235 -385 {lab=Sn5B}
N 985 -355 1235 -355 {lab=Sn4B}
N 985 -325 1235 -325 {lab=Sn3B}
N 985 -295 1235 -295 {lab=Sn2B}
N 985 -265 1235 -265 {lab=Sn1B}
N 985 -235 1235 -235 {lab=Sn0B}
N 985 -495 1235 -495 {lab=Sn9}
N 985 -465 1235 -465 {lab=Sn8}
N 985 -435 1235 -435 {lab=Sn7}
N 985 -405 1235 -405 {lab=Sn6}
N 985 -375 1235 -375 {lab=Sn5}
N 985 -345 1235 -345 {lab=Sn4}
N 985 -315 1235 -315 {lab=Sn3}
N 985 -285 1235 -285 {lab=Sn2}
N 985 -255 1235 -255 {lab=Sn1}
N 985 -225 1235 -225 {lab=Sn0}
N 585 -515 585 -100 {lab=VDD}
N 620 -165 685 -165 {lab=doneEval}
N 625 -145 685 -145 {lab=Vop}
N 625 -125 685 -125 {lab=Von}
N 685 -570 685 -515 {lab=VDD}
N 685 -570 1450 -570 {lab=VDD}
N 1450 -520 1450 -495 {lab=VDD}
N 1450 -520 1670 -520 {lab=VDD}
N 1450 -570 1450 -520 {lab=VDD}
N 1670 -520 1670 -105 {lab=VDD}
N 1595 -105 1670 -105 {lab=VDD}
N 1570 60 1620 60 {lab=CLK_SH}
N 620 -165 620 -105 {lab=doneEval}
N 615 -165 620 -165 {lab=doneEval}
N 620 -105 685 -105 {lab=doneEval}
N 595 -185 685 -185 {lab=CLK_SH}
N 550 -185 595 -185 {lab=CLK_SH}
N 685 -85 685 -65 {lab=CLK_SH}
N 595 -85 685 -85 {lab=CLK_SH}
N 595 -185 595 -85 {lab=CLK_SH}
N 550 -525 550 -185 {lab=CLK_SH}
N -1080 -525 550 -525 {lab=CLK_SH}
N -1080 -525 -1080 -150 {lab=CLK_SH}
N -780 190 585 190 {lab=0}
N -780 -90 -780 190 {lab=0}
N 585 -80 585 190 {lab=0}
N 570 -60 605 -60 {lab=ValidDelayed}
N 570 -80 585 -80 {lab=0}
N 570 -100 585 -100 {lab=VDD}
N -85 -285 -15 -285 {lab=VDD}
N -15 -515 -15 -285 {lab=VDD}
N 1700 -105 1700 -40 {lab=VDD}
N 1780 10 1875 10 {lab=doneEval}
N 1215 -215 1215 195 {lab=Ck0}
N 985 -215 1215 -215 {lab=Ck0}
N 1215 195 1470 195 {lab=Ck0}
C {vsource.sym} -1220 95 0 1 {name=V2 value="PULSE(0 3.3 215n 1n 1n 780n 1000n)" savecurrent=false}
C {vsource.sym} -1095 20 0 0 {name=V5 value="sin(0 -1.65 70000)" savecurrent=false}
C {vsource.sym} -1170 235 0 0 {name=V6 value=1.65 savecurrent=false}
C {vsource.sym} -1170 160 0 0 {name=V7 value="sin(0 1.65 70000)" savecurrent=false}
C {vsource.sym} -1260 165 0 1 {name=V3 value="PULSE(0 3.3 0 1n 1n 200n 1000n)" savecurrent=false}
C {gnd.sym} -1095 290 0 0 {name=l3 lab=0}
C {lab_wire.sym} -1120 -150 0 0 {name=p1 sig_type=std_logic lab=CLK_SH}
C {lab_wire.sym} -1120 -130 0 0 {name=p2 sig_type=std_logic lab=notCLK_SH}
C {lab_wire.sym} -1120 -110 0 0 {name=p3 sig_type=std_logic lab=Vinn}
C {lab_wire.sym} -1095 -90 0 0 {name=p4 sig_type=std_logic lab=Vinp}
C {lab_wire.sym} -90 -110 0 0 {name=p5 sig_type=std_logic lab=V1n}
C {lab_wire.sym} -90 -130 0 0 {name=p6 sig_type=std_logic lab=V1p}
C {lab_wire.sym} 520 -265 0 0 {name=p7 sig_type=std_logic lab=CLK_comp}
C {lab_wire.sym} 100 -110 0 0 {name=p10 sig_type=std_logic lab=Von}
C {lab_wire.sym} 100 -130 0 0 {name=p11 sig_type=std_logic lab=Vop}
C {code_shown.sym} -1840 -1025 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ

.param temp=27

.save v(Vinp) v(Vinn) v(v1p) v(V1n)
.save v(Ck9) v(Ck8) v(Ck7) v(Ck6) v(Ck5) v(Ck4) v(Ck3) v(Ck2) v(Ck1) v(Ck0)
.save v(P9) v(P8) v(P7) v(P6) v(P5) v(P4) v(P3) v(P2) v(P1) v(P0)
.save v(N9) v(N8) v(N7) v(N6) v(N5) v(N4) v(N3) v(N2) v(N1) v(N0)
.save v(P9_out) v(P8_out) v(P7_out) v(P6_out) v(P5_out) v(P4_out) v(P3_out) v(P2_out) v(P1_out) v(P0_out)
.save v(N9_out) v(N8_out) v(N7_out) v(N6_out) v(N5_out) v(N4_out) v(N3_out) v(N2_out) v(N1_out) v(N0_out)
.save v(doneEval)

.ic v(P9) = 0
.ic v(P8) = 0
.ic v(P7) = 0
.ic v(P6) = 0
.ic v(P5) = 0
.ic v(P4) = 0
.ic v(P3) = 0
.ic v(P2) = 0
.ic v(P1) = 0
.ic v(P0) = 0

.ic v(N9) = 0
.ic v(N8) = 0
.ic v(N7) = 0
.ic v(N6) = 0
.ic v(N5) = 0
.ic v(N4) = 0
.ic v(N3) = 0
.ic v(N2) = 0
.ic v(N1) = 0
.ic v(N0) = 0

.ic v(AlmostDoneEval) = 0
.ic v(DoneEval) = 0

.ic v(V1p) = 1.65
.ic v(V1n) = 1.65

.tran 0.1n 100u

.control
set num_threads 1
run
write testWhole_7.raw
.endc
"
spice_ignore=false
      }
C {gnd.sym} 165 -60 0 0 {name=l1 lab=0}
C {sg13g2_pr/cap_cmim.sym} -705 100 0 0 {name=C1
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=256
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -655 50 0 0 {name=C5
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=128
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -610 -5 0 0 {name=C2
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=64
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -530 35 0 0 {name=C3
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=32
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -480 -15 0 0 {name=C4
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=16
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -435 -55 0 0 {name=C6
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=8
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -355 -30 0 0 {name=C7
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=4
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -305 -40 0 0 {name=C8
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=2
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -260 -60 0 0 {name=C9
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=1
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -175 -65 0 0 {name=C10
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=1
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -685 -180 2 1 {name=C11
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=256
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -635 -235 2 1 {name=C12
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=128
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -590 -290 2 1 {name=C13
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=64
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -510 -180 2 1 {name=C14
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=32
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -460 -235 2 1 {name=C15
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=16
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -415 -290 2 1 {name=C16
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=8
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -335 -180 2 1 {name=C17
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=4
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -285 -235 2 1 {name=C18
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=2
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -240 -275 2 1 {name=C19
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=1
  mm_ok=1
 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -155 -180 2 1 {name=C20
model=cap_cmim
 w=7.0e-6
 l=7.0e-6
 m=1
  mm_ok=1
 spiceprefix=X}
C {lab_wire.sym} 1095 -195 0 0 {name=p12 sig_type=std_logic lab=P9_out}
C {lab_wire.sym} 1095 -175 0 0 {name=p13 sig_type=std_logic lab=P8_out}
C {lab_wire.sym} 1095 -155 0 0 {name=p14 sig_type=std_logic lab=P7_out}
C {lab_wire.sym} 1095 -135 0 0 {name=p15 sig_type=std_logic lab=P6_out}
C {lab_wire.sym} 1095 -115 0 0 {name=p16 sig_type=std_logic lab=P5_out}
C {lab_wire.sym} 1095 -95 0 0 {name=p17 sig_type=std_logic lab=P4_out}
C {lab_wire.sym} 1095 -75 0 0 {name=p18 sig_type=std_logic lab=P3_out}
C {lab_wire.sym} 1095 -55 0 0 {name=p19 sig_type=std_logic lab=P2_out}
C {lab_wire.sym} 1095 -35 0 0 {name=p20 sig_type=std_logic lab=P1_out}
C {lab_wire.sym} 1095 -15 0 0 {name=p21 sig_type=std_logic lab=P0_out}
C {lab_wire.sym} 1095 25 0 0 {name=p22 sig_type=std_logic lab=N9_out}
C {lab_wire.sym} 1095 45 0 0 {name=p23 sig_type=std_logic lab=N8_out}
C {lab_wire.sym} 1095 65 0 0 {name=p24 sig_type=std_logic lab=N7_out}
C {lab_wire.sym} 1095 85 0 0 {name=p25 sig_type=std_logic lab=N6_out}
C {lab_wire.sym} 1095 105 0 0 {name=p26 sig_type=std_logic lab=N5_out}
C {lab_wire.sym} 1095 125 0 0 {name=p27 sig_type=std_logic lab=N4_out}
C {lab_wire.sym} 1095 145 0 0 {name=p28 sig_type=std_logic lab=N3_out}
C {lab_wire.sym} 1095 165 0 0 {name=p29 sig_type=std_logic lab=N2_out}
C {lab_wire.sym} 1095 185 0 0 {name=p30 sig_type=std_logic lab=N1_out}
C {lab_wire.sym} 1095 205 0 0 {name=p31 sig_type=std_logic lab=N0_out}
C {lab_wire.sym} -30 -475 0 0 {name=p34 sig_type=std_logic lab=P9}
C {lab_wire.sym} -30 -455 0 0 {name=p35 sig_type=std_logic lab=P8}
C {lab_wire.sym} -30 -435 0 0 {name=p36 sig_type=std_logic lab=P7}
C {lab_wire.sym} -30 -415 0 0 {name=p37 sig_type=std_logic lab=P6}
C {lab_wire.sym} -30 -395 0 0 {name=p38 sig_type=std_logic lab=P5}
C {lab_wire.sym} -30 -375 0 0 {name=p39 sig_type=std_logic lab=P4}
C {lab_wire.sym} -30 -355 0 0 {name=p40 sig_type=std_logic lab=P3}
C {lab_wire.sym} -30 -335 0 0 {name=p41 sig_type=std_logic lab=P2}
C {lab_wire.sym} -30 -315 0 0 {name=p42 sig_type=std_logic lab=P1}
C {lab_wire.sym} -30 -295 0 0 {name=p43 sig_type=std_logic lab=P0}
C {lab_wire.sym} -95 -35 0 0 {name=p44 sig_type=std_logic lab=N0}
C {lab_wire.sym} -95 145 0 0 {name=p45 sig_type=std_logic lab=N9}
C {lab_wire.sym} -95 125 0 0 {name=p46 sig_type=std_logic lab=N8}
C {lab_wire.sym} -95 105 0 0 {name=p47 sig_type=std_logic lab=N7}
C {lab_wire.sym} -95 85 0 0 {name=p48 sig_type=std_logic lab=N6}
C {lab_wire.sym} -95 65 0 0 {name=p49 sig_type=std_logic lab=N5}
C {lab_wire.sym} -95 45 0 0 {name=p50 sig_type=std_logic lab=N4}
C {lab_wire.sym} -95 25 0 0 {name=p51 sig_type=std_logic lab=N3}
C {lab_wire.sym} -95 5 0 0 {name=p52 sig_type=std_logic lab=N2}
C {lab_wire.sym} -95 -15 0 0 {name=p53 sig_type=std_logic lab=N1}
C {lab_wire.sym} 265 -120 0 0 {name=p54 sig_type=std_logic lab=Valid}
C {vsource.sym} -1435 10 0 1 {name=V1 value=3.3 savecurrent=false}
C {lab_wire.sym} 1215 -485 0 0 {name=p55 sig_type=std_logic lab=Ck9}
C {lab_wire.sym} 1215 -455 0 0 {name=p56 sig_type=std_logic lab=Ck8}
C {lab_wire.sym} 1215 -425 0 0 {name=p57 sig_type=std_logic lab=Ck7}
C {lab_wire.sym} 1215 -395 0 0 {name=p58 sig_type=std_logic lab=Ck6}
C {lab_wire.sym} 1215 -365 0 0 {name=p59 sig_type=std_logic lab=Ck5}
C {lab_wire.sym} 1215 -335 0 0 {name=p60 sig_type=std_logic lab=Ck4}
C {lab_wire.sym} 1215 -305 0 0 {name=p61 sig_type=std_logic lab=Ck3}
C {lab_wire.sym} 1215 -275 0 0 {name=p62 sig_type=std_logic lab=Ck2}
C {lab_wire.sym} 1215 -245 0 0 {name=p63 sig_type=std_logic lab=Ck1}
C {lab_wire.sym} 1215 -215 0 0 {name=p64 sig_type=std_logic lab=Ck0}
C {lab_wire.sym} -1310 -265 0 0 {name=p65 sig_type=std_logic lab=VDD}
C {gnd.sym} 1450 -440 0 0 {name=l4 lab=0}
C {lab_wire.sym} 1290 -180 0 0 {name=p71 sig_type=std_logic lab=Sn9B}
C {lab_wire.sym} 1295 -165 0 0 {name=p72 sig_type=std_logic lab=Sn9}
C {lab_wire.sym} 1290 -145 0 0 {name=p73 sig_type=std_logic lab=Sn8B}
C {lab_wire.sym} 1295 -130 0 0 {name=p74 sig_type=std_logic lab=Sn8}
C {lab_wire.sym} 1290 -110 0 0 {name=p75 sig_type=std_logic lab=Sn7B}
C {lab_wire.sym} 1295 -95 0 0 {name=p76 sig_type=std_logic lab=Sn7}
C {lab_wire.sym} 1290 -75 0 0 {name=p77 sig_type=std_logic lab=Sn6B}
C {lab_wire.sym} 1295 -60 0 0 {name=p78 sig_type=std_logic lab=Sn6}
C {lab_wire.sym} 1290 -40 0 0 {name=p79 sig_type=std_logic lab=Sn5B}
C {lab_wire.sym} 1295 -25 0 0 {name=p80 sig_type=std_logic lab=Sn5}
C {lab_wire.sym} 1290 -5 0 0 {name=p81 sig_type=std_logic lab=Sn4B}
C {lab_wire.sym} 1295 10 0 0 {name=p82 sig_type=std_logic lab=Sn4}
C {lab_wire.sym} 1290 30 0 0 {name=p83 sig_type=std_logic lab=Sn3B}
C {lab_wire.sym} 1295 45 0 0 {name=p84 sig_type=std_logic lab=Sn3}
C {lab_wire.sym} 1290 65 0 0 {name=p85 sig_type=std_logic lab=Sn2B}
C {lab_wire.sym} 1295 80 0 0 {name=p86 sig_type=std_logic lab=Sn2}
C {lab_wire.sym} 1290 100 0 0 {name=p87 sig_type=std_logic lab=Sn1B}
C {lab_wire.sym} 1295 115 0 0 {name=p88 sig_type=std_logic lab=Sn1}
C {lab_wire.sym} 1290 135 0 0 {name=p89 sig_type=std_logic lab=Sn0B}
C {lab_wire.sym} 1295 150 0 0 {name=p90 sig_type=std_logic lab=Sn0}
C {lab_wire.sym} 1540 -475 0 0 {name=p67 sig_type=std_logic lab=settledBeforeDelay
}
C {gnd.sym} 1700 155 0 0 {name=l8 lab=0}
C {lab_wire.sym} 1860 10 0 0 {name=p91 sig_type=std_logic lab=doneEval}
C {lab_wire.sym} 1600 60 0 0 {name=p94 sig_type=std_logic lab=CLK_SH}
C {lab_wire.sym} 1615 100 0 0 {name=p95 sig_type=std_logic lab=dELatch}
C {lab_wire.sym} 1285 -200 0 0 {name=p8 sig_type=std_logic lab=N0}
C {lab_wire.sym} 1285 -335 0 0 {name=p9 sig_type=std_logic lab=N9}
C {lab_wire.sym} 1285 -320 0 0 {name=p32 sig_type=std_logic lab=N8}
C {lab_wire.sym} 1285 -305 0 0 {name=p33 sig_type=std_logic lab=N7}
C {lab_wire.sym} 1285 -290 0 0 {name=p66 sig_type=std_logic lab=N6}
C {lab_wire.sym} 1285 -275 0 0 {name=p68 sig_type=std_logic lab=N5}
C {lab_wire.sym} 1285 -260 0 0 {name=p69 sig_type=std_logic lab=N4}
C {lab_wire.sym} 1285 -245 0 0 {name=p70 sig_type=std_logic lab=N3}
C {lab_wire.sym} 1285 -230 0 0 {name=p93 sig_type=std_logic lab=N2}
C {lab_wire.sym} 1285 -215 0 0 {name=p96 sig_type=std_logic lab=N1}
C {lab_wire.sym} 1285 -495 0 0 {name=p97 sig_type=std_logic lab=P9}
C {lab_wire.sym} 1285 -480 0 0 {name=p98 sig_type=std_logic lab=P8}
C {lab_wire.sym} 1285 -465 0 0 {name=p99 sig_type=std_logic lab=P7}
C {lab_wire.sym} 1285 -450 0 0 {name=p100 sig_type=std_logic lab=P6}
C {lab_wire.sym} 1285 -435 0 0 {name=p101 sig_type=std_logic lab=P5}
C {lab_wire.sym} 1285 -420 0 0 {name=p102 sig_type=std_logic lab=P4}
C {lab_wire.sym} 1285 -405 0 0 {name=p103 sig_type=std_logic lab=P3}
C {lab_wire.sym} 1285 -390 0 0 {name=p104 sig_type=std_logic lab=P2}
C {lab_wire.sym} 1285 -375 0 0 {name=p105 sig_type=std_logic lab=P1}
C {lab_wire.sym} 1285 -360 0 0 {name=p106 sig_type=std_logic lab=P0}
C {lab_wire.sym} 1045 -505 0 0 {name=p107 sig_type=std_logic lab=Sn9B}
C {lab_wire.sym} 1120 -495 0 0 {name=p108 sig_type=std_logic lab=Sn9}
C {lab_wire.sym} 1045 -475 0 0 {name=p109 sig_type=std_logic lab=Sn8B}
C {lab_wire.sym} 1120 -465 0 0 {name=p110 sig_type=std_logic lab=Sn8}
C {lab_wire.sym} 1045 -445 0 0 {name=p111 sig_type=std_logic lab=Sn7B}
C {lab_wire.sym} 1120 -435 0 0 {name=p112 sig_type=std_logic lab=Sn7}
C {lab_wire.sym} 1045 -415 0 0 {name=p113 sig_type=std_logic lab=Sn6B}
C {lab_wire.sym} 1120 -405 0 0 {name=p114 sig_type=std_logic lab=Sn6}
C {lab_wire.sym} 1045 -385 0 0 {name=p115 sig_type=std_logic lab=Sn5B}
C {lab_wire.sym} 1120 -375 0 0 {name=p116 sig_type=std_logic lab=Sn5}
C {lab_wire.sym} 1045 -355 0 0 {name=p117 sig_type=std_logic lab=Sn4B}
C {lab_wire.sym} 1120 -345 0 0 {name=p118 sig_type=std_logic lab=Sn4}
C {lab_wire.sym} 1045 -325 0 0 {name=p119 sig_type=std_logic lab=Sn3B}
C {lab_wire.sym} 1120 -315 0 0 {name=p120 sig_type=std_logic lab=Sn3}
C {lab_wire.sym} 1045 -295 0 0 {name=p121 sig_type=std_logic lab=Sn2B}
C {lab_wire.sym} 1120 -285 0 0 {name=p122 sig_type=std_logic lab=Sn2}
C {lab_wire.sym} 1045 -265 0 0 {name=p123 sig_type=std_logic lab=Sn1B}
C {lab_wire.sym} 1120 -255 0 0 {name=p124 sig_type=std_logic lab=Sn1}
C {lab_wire.sym} 1045 -235 0 0 {name=p125 sig_type=std_logic lab=Sn0B}
C {lab_wire.sym} 1120 -225 0 0 {name=p126 sig_type=std_logic lab=Sn0}
C {lab_wire.sym} 680 -165 0 0 {name=p127 sig_type=std_logic lab=doneEval}
C {lab_wire.sym} 670 -125 0 0 {name=p128 sig_type=std_logic lab=Von}
C {lab_wire.sym} 670 -145 0 0 {name=p129 sig_type=std_logic lab=Vop}
C {lab_wire.sym} 315 -475 0 0 {name=p92 sig_type=std_logic lab=P9_preDrv}
C {lab_wire.sym} 315 -455 0 0 {name=p130 sig_type=std_logic lab=P8_preDrv}
C {lab_wire.sym} 315 -435 0 0 {name=p131 sig_type=std_logic lab=P7_preDrv}
C {lab_wire.sym} 315 -415 0 0 {name=p132 sig_type=std_logic lab=P6_preDrv}
C {lab_wire.sym} 315 -395 0 0 {name=p133 sig_type=std_logic lab=P5_preDrv}
C {lab_wire.sym} 315 -375 0 0 {name=p134 sig_type=std_logic lab=P4_preDrv}
C {lab_wire.sym} 315 -355 0 0 {name=p135 sig_type=std_logic lab=P3_preDrv}
C {lab_wire.sym} 315 -335 0 0 {name=p136 sig_type=std_logic lab=P2_preDrv}
C {lab_wire.sym} 315 -315 0 0 {name=p137 sig_type=std_logic lab=P1_preDrv}
C {lab_wire.sym} 315 -295 0 0 {name=p138 sig_type=std_logic lab=P0_preDrv}
C {lab_wire.sym} 265 145 0 0 {name=p139 sig_type=std_logic lab=N9_preDrv}
C {lab_wire.sym} 265 125 0 0 {name=p140 sig_type=std_logic lab=N8_preDrv}
C {lab_wire.sym} 265 105 0 0 {name=p141 sig_type=std_logic lab=N7_preDrv}
C {lab_wire.sym} 265 85 0 0 {name=p142 sig_type=std_logic lab=N6_preDrv}
C {lab_wire.sym} 265 65 0 0 {name=p143 sig_type=std_logic lab=N5_preDrv}
C {lab_wire.sym} 265 45 0 0 {name=p144 sig_type=std_logic lab=N4_preDrv}
C {lab_wire.sym} 265 25 0 0 {name=p145 sig_type=std_logic lab=N3_preDrv}
C {lab_wire.sym} 265 5 0 0 {name=p146 sig_type=std_logic lab=N2_preDrv}
C {lab_wire.sym} 265 -15 0 0 {name=p147 sig_type=std_logic lab=N1_preDrv}
C {lab_wire.sym} 265 -35 0 0 {name=p148 sig_type=std_logic lab=N0_preDrv}
C {lab_wire.sym} 675 -225 0 0 {name=p149 sig_type=std_logic lab=ValidDelayed}
C {/foss/designs/sarADC/sampleAndHold.sym} -930 -120 0 0 {name=x4}
C {/foss/designs/sarADC/comparator.sym} -15 -120 0 0 {name=x1}
C {/foss/designs/sarADC/nand2.sym} 165 -120 0 0 {name=x2}
C {/foss/designs/sarADC/capDrivers.sym} 160 -385 0 1 {name=x5}
C {/foss/designs/sarADC/capDrivers.sym} 140 55 2 0 {name=x6}
C {/foss/designs/sarADC/delayWithDFF.sym} 420 -100 0 0 {name=x7}
C {/foss/designs/sarADC/DFF_array.sym} 835 205 0 0 {name=x3}
C {/foss/designs/sarADC/DFF.sym} 1700 50 0 0 {name=x9}
C {/foss/designs/sarADC/cdacSettleCheck.sym} 1390 -150 0 0 {name=x8}
C {/foss/designs/sarADC/and2.sym} 1545 100 0 0 {name=x10}
