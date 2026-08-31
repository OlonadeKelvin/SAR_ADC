v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -525 -400 -525 -80 {}
L 4 2245 -400 2245 -80 {}
L 4 -525 -80 2245 -80 {}
L 4 -525 -400 2245 -400 {}
L 4 -455 65 2015 65 {}
L 4 -455 65 -455 435 {}
L 4 -455 435 2015 435 {}
L 4 2015 65 2015 435 {}
L 4 -460 590 2010 590 {}
L 4 -460 590 -460 960 {}
L 4 -460 960 2010 960 {}
L 4 2010 590 2010 960 {}
L 4 -225 980 2245 980 {}
L 4 -225 980 -225 1350 {}
L 4 -225 1350 2245 1350 {}
L 4 2245 980 2245 1350 {}
L 4 -220 1380 2250 1380 {}
L 4 -220 1380 -220 1750 {}
L 4 -220 1750 2250 1750 {}
L 4 2250 1380 2250 1750 {}
T {Generates clock based on Valid signals} -480 -380 0 0 0.3 0.3 {}
T {Decision (positive)} -430 125 0 0 0.3 0.3 {}
T {Decision (negative)} -425 595 0 0 0.3 0.3 {}
T {Output (negative)} -200 1390 0 0 0.3 0.3 {}
T {Output (positive)} -205 995 0 0 0.3 0.3 {}
T {Reset output DFFs} -185 1480 0 0 0.3 0.3 {}
T {Clock for output} -205 1335 0 0 0.3 0.3 {}
T {VSS} -355 -125 0 0 0.3 0.3 {}
T {Active High (___/=========\\_)} -505 -300 0 0 0.3 0.3 {}
T {Settled (post-valid)} 2005 -165 0 0 0.3 0.3 {}
T {Reset (_/=\\_____\}} 2005 -50 0 0 0.3 0.3 {}
T {Last bit clock} 2000 -215 0 0 0.3 0.3 {}
T {Active Low (_/=\\__________)} -455 -55 0 0 0.3 0.3 {}
T {Reset non-outputs only} -460 5 0 0 0.3 0.3 {}
N -310 -265 -240 -265 {lab=CompB}
N -260 -195 -240 -195 {lab=Valid_DFF}
N 1640 120 1840 120 {lab=VDD_array}
N 1750 235 1760 235 {lab=Reset_decision}
N 1550 235 1560 235 {lab=Reset_decision}
N 1350 235 1360 235 {lab=Reset_decision}
N 950 235 960 235 {lab=Reset_decision}
N 750 235 760 235 {lab=Reset_decision}
N 550 235 560 235 {lab=Reset_decision}
N 350 235 360 235 {lab=Reset_decision}
N 150 235 160 235 {lab=Reset_decision}
N -50 235 -40 235 {lab=Reset_decision}
N 1740 185 1760 185 {lab=Comp_outP}
N 1545 185 1560 185 {lab=Comp_outP}
N 1345 185 1360 185 {lab=Comp_outP}
N 1150 185 1160 185 {lab=Comp_outP}
N 945 185 960 185 {lab=Comp_outP}
N 745 185 760 185 {lab=Comp_outP}
N 545 185 560 185 {lab=Comp_outP}
N 340 185 360 185 {lab=Comp_outP}
N 145 185 160 185 {lab=Comp_outP}
N 140 1565 160 1565 {lab=Output_all}
N 340 1565 360 1565 {lab=Output_all}
N 540 1565 560 1565 {lab=Output_all}
N 740 1565 760 1565 {lab=Output_all}
N 940 1565 960 1565 {lab=Output_all}
N 1140 1565 1160 1565 {lab=Output_all}
N 1340 1565 1360 1565 {lab=Output_all}
N 1540 1565 1560 1565 {lab=Output_all}
N 1740 1565 1760 1565 {lab=Output_all}
N 1940 1565 1960 1565 {lab=Output_all}
N 240 1425 2160 1425 {lab=VDD_array}
N 125 1475 160 1475 {lab=N9_cap}
N 140 1525 160 1525 {lab=Rst_output_DFFs}
N 140 1465 140 1525 {lab=Rst_output_DFFs}
N 330 1345 330 1525 {lab=Rst_output_DFFs}
N 330 1525 360 1525 {lab=Rst_output_DFFs}
N 540 1525 560 1525 {lab=Rst_output_DFFs}
N 540 1345 540 1525 {lab=Rst_output_DFFs}
N 740 1525 760 1525 {lab=Rst_output_DFFs}
N 740 1345 740 1525 {lab=Rst_output_DFFs}
N 940 1345 940 1525 {lab=Rst_output_DFFs}
N 940 1525 960 1525 {lab=Rst_output_DFFs}
N 1140 1525 1160 1525 {lab=Rst_output_DFFs}
N 1140 1345 1140 1525 {lab=Rst_output_DFFs}
N 1340 1345 1340 1525 {lab=Rst_output_DFFs}
N 1340 1525 1360 1525 {lab=Rst_output_DFFs}
N 1540 1525 1560 1525 {lab=Rst_output_DFFs}
N 1540 1345 1540 1525 {lab=Rst_output_DFFs}
N 1940 1345 1940 1525 {lab=Rst_output_DFFs}
N 1940 1525 1960 1525 {lab=Rst_output_DFFs}
N 1740 1525 1760 1525 {lab=Rst_output_DFFs}
N 1740 1345 1740 1525 {lab=Rst_output_DFFs}
N 110 1325 110 1625 {lab=Output_all}
N -70 1325 110 1325 {lab=Output_all}
N 140 1565 140 1625 {lab=Output_all}
N 110 1625 140 1625 {lab=Output_all}
N 340 1565 340 1625 {lab=Output_all}
N 140 1625 340 1625 {lab=Output_all}
N 540 1565 540 1625 {lab=Output_all}
N 340 1625 540 1625 {lab=Output_all}
N 740 1565 740 1625 {lab=Output_all}
N 540 1625 740 1625 {lab=Output_all}
N 940 1565 940 1625 {lab=Output_all}
N 740 1625 940 1625 {lab=Output_all}
N 1140 1565 1140 1625 {lab=Output_all}
N 940 1625 1140 1625 {lab=Output_all}
N 1340 1565 1340 1625 {lab=Output_all}
N 1140 1625 1340 1625 {lab=Output_all}
N 1540 1565 1540 1625 {lab=Output_all}
N 1340 1625 1540 1625 {lab=Output_all}
N 1740 1565 1740 1625 {lab=Output_all}
N 1540 1625 1740 1625 {lab=Output_all}
N 1940 1565 1940 1625 {lab=Output_all}
N 1740 1625 1940 1625 {lab=Output_all}
N 320 1475 320 1635 {lab=N9_out}
N 320 1635 2350 1635 {lab=N9_out}
N 520 1475 520 1645 {lab=N8_out}
N 520 1645 2250 1645 {lab=N8_out}
N 720 1475 720 1655 {lab=N7_out}
N 720 1655 2350 1655 {lab=N7_out}
N 920 1475 920 1665 {lab=N6_out}
N 920 1665 2250 1665 {lab=N6_out}
N 1120 1475 1120 1675 {lab=N5_out}
N 1120 1675 2350 1675 {lab=N5_out}
N 1320 1475 1320 1685 {lab=N4_out}
N 1320 1685 2250 1685 {lab=N4_out}
N 1520 1475 1520 1695 {lab=N3_out}
N 1520 1695 2350 1695 {lab=N3_out}
N 1720 1475 1720 1705 {lab=N2_out}
N 1720 1705 2250 1705 {lab=N2_out}
N 1920 1475 1920 1715 {lab=N1_out}
N 1920 1715 2350 1715 {lab=N1_out}
N 2120 1475 2120 1725 {lab=N0_out}
N 2120 1725 2250 1725 {lab=N0_out}
N -160 -130 40 -130 {lab=VSS_array}
N 130 325 2320 325 {lab=P9_cap}
N 120 185 120 325 {lab=P9_cap}
N 2220 245 2220 315 {lab=VSS_array}
N 2150 185 2180 185 {lab=#net1}
N 2140 205 2180 205 {lab=Comp}
N 2290 185 2340 185 {lab=CLK_comp}
N -160 -345 -160 -335 {lab=VDD_array}
N -360 -345 -160 -345 {lab=VDD_array}
N 40 120 40 135 {lab=VDD_array}
N 240 120 240 135 {lab=VDD_array}
N 40 120 240 120 {lab=VDD_array}
N 440 120 440 135 {lab=VDD_array}
N 240 120 440 120 {lab=VDD_array}
N 1840 120 1840 135 {lab=VDD_array}
N 1640 120 1640 135 {lab=VDD_array}
N 1440 120 1640 120 {lab=VDD_array}
N 1440 120 1440 135 {lab=VDD_array}
N 1240 120 1440 120 {lab=VDD_array}
N 1040 120 1040 135 {lab=VDD_array}
N 840 120 1040 120 {lab=VDD_array}
N 840 120 840 135 {lab=VDD_array}
N 640 120 840 120 {lab=VDD_array}
N 640 120 640 135 {lab=VDD_array}
N 440 120 640 120 {lab=VDD_array}
N -90 -265 -40 -265 {lab=S9}
N -260 -195 -260 -145 {lab=Valid_DFF}
N -320 -195 -260 -195 {lab=Valid_DFF}
N 40 -155 40 -130 {lab=VSS_array}
N -40 -195 -40 -145 {lab=Valid_DFF}
N -260 -145 -40 -145 {lab=Valid_DFF}
N 40 -345 40 -335 {lab=VDD_array}
N -160 -345 40 -345 {lab=VDD_array}
N 240 -155 240 -130 {lab=VSS_array}
N 310 -265 360 -265 {lab=S7}
N 160 -195 160 -145 {lab=Valid_DFF}
N 440 -155 440 -130 {lab=VSS_array}
N 360 -195 360 -145 {lab=Valid_DFF}
N 240 -130 440 -130 {lab=VSS_array}
N -40 -145 160 -145 {lab=Valid_DFF}
N 110 -265 160 -265 {lab=S8}
N 40 -130 240 -130 {lab=VSS_array}
N 160 -145 360 -145 {lab=Valid_DFF}
N 510 -265 560 -265 {lab=S6}
N 540 -195 560 -195 {lab=Valid_DFF}
N 640 -155 640 -130 {lab=VSS_array}
N 710 -265 760 -265 {lab=S5}
N 540 -195 540 -145 {lab=Valid_DFF}
N 840 -155 840 -130 {lab=VSS_array}
N 760 -195 760 -145 {lab=Valid_DFF}
N 1040 -155 1040 -130 {lab=VSS_array}
N 1110 -265 1160 -265 {lab=S3}
N 960 -195 960 -145 {lab=Valid_DFF}
N 1240 -155 1240 -130 {lab=VSS_array}
N 1160 -195 1160 -145 {lab=Valid_DFF}
N 910 -265 960 -265 {lab=S4}
N 1310 -265 1360 -265 {lab=S2}
N 440 -130 640 -130 {lab=VSS_array}
N 360 -145 540 -145 {lab=Valid_DFF}
N 640 -130 840 -130 {lab=VSS_array}
N 540 -145 760 -145 {lab=Valid_DFF}
N 840 -130 1040 -130 {lab=VSS_array}
N 760 -145 960 -145 {lab=Valid_DFF}
N 1040 -130 1240 -130 {lab=VSS_array}
N 960 -145 1160 -145 {lab=Valid_DFF}
N 1440 -155 1440 -130 {lab=VSS_array}
N 1510 -265 1560 -265 {lab=S1}
N 1360 -195 1360 -145 {lab=Valid_DFF}
N 1640 -155 1640 -130 {lab=VSS_array}
N 1560 -195 1560 -145 {lab=Valid_DFF}
N 1240 -130 1440 -130 {lab=VSS_array}
N 1160 -145 1360 -145 {lab=Valid_DFF}
N 1440 -130 1640 -130 {lab=VSS_array}
N 1360 -145 1560 -145 {lab=Valid_DFF}
N 240 -345 240 -335 {lab=VDD_array}
N 40 -345 240 -345 {lab=VDD_array}
N 440 -345 440 -335 {lab=VDD_array}
N 240 -345 440 -345 {lab=VDD_array}
N 640 -345 640 -335 {lab=VDD_array}
N 440 -345 640 -345 {lab=VDD_array}
N 840 -345 840 -335 {lab=VDD_array}
N 640 -345 840 -345 {lab=VDD_array}
N 1040 -345 1040 -335 {lab=VDD_array}
N 840 -345 1040 -345 {lab=VDD_array}
N 1640 -345 1640 -335 {lab=VDD_array}
N 1440 -345 1640 -345 {lab=VDD_array}
N 1440 -345 1440 -335 {lab=VDD_array}
N 1240 -345 1440 -345 {lab=VDD_array}
N 1240 -345 1240 -335 {lab=VDD_array}
N 1040 -345 1240 -345 {lab=VDD_array}
N 320 185 320 335 {lab=P8_cap}
N 330 335 2240 335 {lab=P8_cap}
N 540 345 2320 345 {lab=P7_cap}
N 1840 -345 2220 -345 {lab=VDD_array}
N 2220 -345 2220 125 {lab=VDD_array}
N 520 185 520 345 {lab=P7_cap}
N 720 185 720 355 {lab=P6_cap}
N 740 355 2240 355 {lab=P6_cap}
N 920 185 920 365 {lab=P5_cap}
N 935 365 2320 365 {lab=P5_cap}
N 1120 185 1120 375 {lab=P4_cap}
N 1135 375 2240 375 {lab=P4_cap}
N 1320 185 1320 385 {lab=P3_cap}
N 1335 385 2320 385 {lab=P3_cap}
N 1520 185 1520 395 {lab=P2_cap}
N 1535 395 2240 395 {lab=P2_cap}
N 1720 185 1720 405 {lab=P1_cap}
N 1730 405 2320 405 {lab=P1_cap}
N 1920 185 1920 415 {lab=P0_cap}
N 1935 415 2240 415 {lab=P0_cap}
N -90 -195 -90 275 {lab=Ck9}
N -90 275 -40 275 {lab=Ck9}
N 1840 -345 1840 120 {lab=VDD_array}
N 1640 -345 1840 -345 {lab=VDD_array}
N 110 275 160 275 {lab=Ck8}
N 310 275 360 275 {lab=Ck7}
N 310 -195 310 275 {lab=Ck7}
N 510 -195 510 275 {lab=Ck6}
N 510 275 560 275 {lab=Ck6}
N 710 275 760 275 {lab=Ck5}
N 910 275 960 275 {lab=Ck4}
N 1110 275 1160 275 {lab=Ck3}
N 1310 275 1360 275 {lab=Ck2}
N 1510 275 1560 275 {lab=Ck1}
N 1510 -195 1510 275 {lab=Ck1}
N 1710 275 1760 275 {lab=Ck0}
N 1240 120 1240 135 {lab=VDD_array}
N 1040 120 1240 120 {lab=VDD_array}
N -160 -130 -160 315 {lab=VSS_array}
N -160 -155 -160 -130 {lab=VSS_array}
N 1965 315 2220 315 {lab=VSS_array}
N -70 95 -70 185 {lab=Comp_outP}
N 1545 95 1740 95 {lab=Comp_outP}
N -70 185 -40 185 {lab=Comp_outP}
N -325 95 -70 95 {lab=Comp_outP}
N 1710 -195 1710 275 {lab=Ck0}
N 1740 95 1740 185 {lab=Comp_outP}
N 1545 95 1545 185 {lab=Comp_outP}
N 1345 95 1545 95 {lab=Comp_outP}
N 1345 95 1345 185 {lab=Comp_outP}
N 1150 95 1345 95 {lab=Comp_outP}
N 1150 95 1150 185 {lab=Comp_outP}
N 945 95 1150 95 {lab=Comp_outP}
N 945 95 945 185 {lab=Comp_outP}
N 745 95 945 95 {lab=Comp_outP}
N 745 95 745 185 {lab=Comp_outP}
N 545 95 745 95 {lab=Comp_outP}
N 545 95 545 185 {lab=Comp_outP}
N 340 95 545 95 {lab=Comp_outP}
N 340 95 340 185 {lab=Comp_outP}
N 145 95 340 95 {lab=Comp_outP}
N 145 95 145 185 {lab=Comp_outP}
N -70 95 145 95 {lab=Comp_outP}
N -350 -130 -160 -130 {lab=VSS_array}
N 2150 -145 2150 185 {lab=#net1}
N -190 35 -50 35 {lab=Reset_decision}
N 1550 35 1750 35 {lab=Reset_decision}
N -50 35 -50 235 {lab=Reset_decision}
N 150 35 150 235 {lab=Reset_decision}
N -50 35 150 35 {lab=Reset_decision}
N 350 35 350 235 {lab=Reset_decision}
N 150 35 350 35 {lab=Reset_decision}
N 550 35 550 235 {lab=Reset_decision}
N 350 35 550 35 {lab=Reset_decision}
N 750 35 750 235 {lab=Reset_decision}
N 550 35 750 35 {lab=Reset_decision}
N 950 35 950 235 {lab=Reset_decision}
N 750 35 950 35 {lab=Reset_decision}
N 1750 35 1750 235 {lab=Reset_decision}
N 1350 35 1350 235 {lab=Reset_decision}
N 1140 35 1350 35 {lab=Reset_decision}
N 1550 35 1550 235 {lab=Reset_decision}
N 1350 35 1550 35 {lab=Reset_decision}
N 1140 235 1160 235 {lab=Reset_decision}
N 1140 35 1140 235 {lab=Reset_decision}
N 950 35 1140 35 {lab=Reset_decision}
N 1640 655 1840 655 {lab=VDD_array}
N 1750 770 1760 770 {lab=Reset_decision}
N 1550 770 1560 770 {lab=Reset_decision}
N 1350 770 1360 770 {lab=Reset_decision}
N 950 770 960 770 {lab=Reset_decision}
N 750 770 760 770 {lab=Reset_decision}
N 550 770 560 770 {lab=Reset_decision}
N 350 770 360 770 {lab=Reset_decision}
N 150 770 160 770 {lab=Reset_decision}
N -50 770 -40 770 {lab=Reset_decision}
N 1740 720 1760 720 {lab=Comp_outN}
N 1545 720 1560 720 {lab=Comp_outN}
N 1345 720 1360 720 {lab=Comp_outN}
N 1150 720 1160 720 {lab=Comp_outN}
N 945 720 960 720 {lab=Comp_outN}
N 745 720 760 720 {lab=Comp_outN}
N 545 720 560 720 {lab=Comp_outN}
N 340 720 360 720 {lab=Comp_outN}
N 145 720 160 720 {lab=Comp_outN}
N 120 720 120 860 {lab=N9_cap}
N 40 655 40 670 {lab=VDD_array}
N 240 655 240 670 {lab=VDD_array}
N 40 655 240 655 {lab=VDD_array}
N 440 655 440 670 {lab=VDD_array}
N 240 655 440 655 {lab=VDD_array}
N 1840 655 1840 670 {lab=VDD_array}
N 1640 655 1640 670 {lab=VDD_array}
N 1440 655 1640 655 {lab=VDD_array}
N 1440 655 1440 670 {lab=VDD_array}
N 1240 655 1440 655 {lab=VDD_array}
N 1040 655 1040 670 {lab=VDD_array}
N 840 655 1040 655 {lab=VDD_array}
N 840 655 840 670 {lab=VDD_array}
N 640 655 840 655 {lab=VDD_array}
N 640 655 640 670 {lab=VDD_array}
N 440 655 640 655 {lab=VDD_array}
N 320 720 320 870 {lab=N8_cap}
N 520 720 520 880 {lab=N7_cap}
N 720 720 720 890 {lab=N6_cap}
N 920 720 920 900 {lab=N5_cap}
N 1120 720 1120 910 {lab=N4_cap}
N 1320 720 1320 920 {lab=N3_cap}
N 1520 720 1520 930 {lab=N2_cap}
N 1720 720 1720 940 {lab=N1_cap}
N 1920 720 1920 950 {lab=N0_cap}
N -90 810 -40 810 {lab=Ck9}
N 110 810 160 810 {lab=Ck8}
N 310 810 360 810 {lab=Ck7}
N 510 810 560 810 {lab=Ck6}
N 710 810 760 810 {lab=Ck5}
N 910 810 960 810 {lab=Ck4}
N 1110 810 1160 810 {lab=Ck3}
N 1310 810 1360 810 {lab=Ck2}
N 1510 810 1560 810 {lab=Ck1}
N 1710 810 1760 810 {lab=Ck0}
N 1240 655 1240 670 {lab=VDD_array}
N 1040 655 1240 655 {lab=VDD_array}
N -70 630 -70 720 {lab=Comp_outN}
N 1545 630 1740 630 {lab=Comp_outN}
N -70 720 -40 720 {lab=Comp_outN}
N -325 630 -70 630 {lab=Comp_outN}
N 1740 630 1740 720 {lab=Comp_outN}
N 1545 630 1545 720 {lab=Comp_outN}
N 1345 630 1545 630 {lab=Comp_outN}
N 1345 630 1345 720 {lab=Comp_outN}
N 1150 630 1345 630 {lab=Comp_outN}
N 1150 630 1150 720 {lab=Comp_outN}
N 945 630 1150 630 {lab=Comp_outN}
N 945 630 945 720 {lab=Comp_outN}
N 745 630 945 630 {lab=Comp_outN}
N 745 630 745 720 {lab=Comp_outN}
N 545 630 745 630 {lab=Comp_outN}
N 545 630 545 720 {lab=Comp_outN}
N 340 630 545 630 {lab=Comp_outN}
N 340 630 340 720 {lab=Comp_outN}
N 145 630 340 630 {lab=Comp_outN}
N 145 630 145 720 {lab=Comp_outN}
N -70 630 145 630 {lab=Comp_outN}
N -190 570 -50 570 {lab=Reset_decision}
N 1550 570 1750 570 {lab=Reset_decision}
N -50 570 -50 770 {lab=Reset_decision}
N 150 570 150 770 {lab=Reset_decision}
N -50 570 150 570 {lab=Reset_decision}
N 350 570 350 770 {lab=Reset_decision}
N 150 570 350 570 {lab=Reset_decision}
N 550 570 550 770 {lab=Reset_decision}
N 350 570 550 570 {lab=Reset_decision}
N 750 570 750 770 {lab=Reset_decision}
N 550 570 750 570 {lab=Reset_decision}
N 950 570 950 770 {lab=Reset_decision}
N 750 570 950 570 {lab=Reset_decision}
N 1750 570 1750 770 {lab=Reset_decision}
N 1350 570 1350 770 {lab=Reset_decision}
N 1140 570 1350 570 {lab=Reset_decision}
N 1550 570 1550 770 {lab=Reset_decision}
N 1350 570 1550 570 {lab=Reset_decision}
N 1140 770 1160 770 {lab=Reset_decision}
N 1140 570 1140 770 {lab=Reset_decision}
N 950 570 1140 570 {lab=Reset_decision}
N -190 35 -190 570 {lab=Reset_decision}
N -335 35 -190 35 {lab=Reset_decision}
N 1840 655 1950 655 {lab=VDD_array}
N 1950 120 1950 655 {lab=VDD_array}
N 1840 120 1950 120 {lab=VDD_array}
N -90 275 -90 810 {lab=Ck9}
N 110 275 110 810 {lab=Ck8}
N 110 -195 110 275 {lab=Ck8}
N 310 275 310 810 {lab=Ck7}
N 510 275 510 810 {lab=Ck6}
N 710 275 710 810 {lab=Ck5}
N 710 -195 710 275 {lab=Ck5}
N 910 275 910 810 {lab=Ck4}
N 910 -195 910 275 {lab=Ck4}
N 1110 275 1110 810 {lab=Ck3}
N 1110 -195 1110 275 {lab=Ck3}
N 1310 275 1310 810 {lab=Ck2}
N 1310 -195 1310 275 {lab=Ck2}
N 1710 275 1710 810 {lab=Ck0}
N 1510 275 1510 810 {lab=Ck1}
N 1965 315 1965 850 {lab=VSS_array}
N -160 315 1965 315 {lab=VSS_array}
N 40 850 1965 850 {lab=VSS_array}
N 1350 1345 1540 1345 {lab=Rst_output_DFFs}
N 1750 1345 1940 1345 {lab=Rst_output_DFFs}
N 1550 1345 1740 1345 {lab=Rst_output_DFFs}
N 1150 1345 1340 1345 {lab=Rst_output_DFFs}
N 950 1345 1140 1345 {lab=Rst_output_DFFs}
N 150 1345 330 1345 {lab=Rst_output_DFFs}
N 350 1345 540 1345 {lab=Rst_output_DFFs}
N 550 1345 740 1345 {lab=Rst_output_DFFs}
N 750 1345 940 1345 {lab=Rst_output_DFFs}
N 140 1130 160 1130 {lab=Output_all}
N 340 1130 360 1130 {lab=Output_all}
N 540 1130 560 1130 {lab=Output_all}
N 740 1130 760 1130 {lab=Output_all}
N 940 1130 960 1130 {lab=Output_all}
N 1140 1130 1160 1130 {lab=Output_all}
N 1340 1130 1360 1130 {lab=Output_all}
N 1540 1130 1560 1130 {lab=Output_all}
N 1740 1130 1760 1130 {lab=Output_all}
N 1940 1130 1960 1130 {lab=Output_all}
N 240 990 2160 990 {lab=VDD_array}
N 130 1040 160 1040 {lab=P9_cap}
N 150 1090 160 1090 {lab=Rst_output_DFFs}
N 350 1090 360 1090 {lab=Rst_output_DFFs}
N 550 1090 560 1090 {lab=Rst_output_DFFs}
N 750 1090 760 1090 {lab=Rst_output_DFFs}
N 950 1090 960 1090 {lab=Rst_output_DFFs}
N 1150 1090 1160 1090 {lab=Rst_output_DFFs}
N 1350 1090 1360 1090 {lab=Rst_output_DFFs}
N 1550 1090 1560 1090 {lab=Rst_output_DFFs}
N 1950 1090 1960 1090 {lab=Rst_output_DFFs}
N 1750 1090 1760 1090 {lab=Rst_output_DFFs}
N 140 1130 140 1190 {lab=Output_all}
N 110 1190 140 1190 {lab=Output_all}
N 340 1130 340 1190 {lab=Output_all}
N 140 1190 340 1190 {lab=Output_all}
N 540 1130 540 1190 {lab=Output_all}
N 340 1190 540 1190 {lab=Output_all}
N 740 1130 740 1190 {lab=Output_all}
N 540 1190 740 1190 {lab=Output_all}
N 940 1130 940 1190 {lab=Output_all}
N 740 1190 940 1190 {lab=Output_all}
N 1140 1130 1140 1190 {lab=Output_all}
N 940 1190 1140 1190 {lab=Output_all}
N 1340 1130 1340 1190 {lab=Output_all}
N 1140 1190 1340 1190 {lab=Output_all}
N 1540 1130 1540 1190 {lab=Output_all}
N 1340 1190 1540 1190 {lab=Output_all}
N 1740 1130 1740 1190 {lab=Output_all}
N 1540 1190 1740 1190 {lab=Output_all}
N 1940 1130 1940 1190 {lab=Output_all}
N 1740 1190 1940 1190 {lab=Output_all}
N 320 1040 320 1200 {lab=P9_out}
N 320 1200 2350 1200 {lab=P9_out}
N 520 1040 520 1210 {lab=P8_out}
N 520 1210 2250 1210 {lab=P8_out}
N 720 1040 720 1220 {lab=P7_out}
N 720 1220 2350 1220 {lab=P7_out}
N 920 1040 920 1230 {lab=P6_out}
N 920 1230 2250 1230 {lab=P6_out}
N 1120 1040 1120 1240 {lab=P5_out}
N 1120 1240 2350 1240 {lab=P5_out}
N 1320 1040 1320 1250 {lab=P4_out}
N 1320 1250 2250 1250 {lab=P4_out}
N 1520 1040 1520 1260 {lab=P3_out}
N 1520 1260 2350 1260 {lab=P3_out}
N 1720 1040 1720 1270 {lab=P2_out}
N 1720 1270 2250 1270 {lab=P2_out}
N 1920 1040 1920 1280 {lab=P1_out}
N 1920 1280 2350 1280 {lab=P1_out}
N 2120 1040 2120 1290 {lab=P0_out}
N 2120 1290 2250 1290 {lab=P0_out}
N 110 1190 110 1325 {lab=Output_all}
N 40 850 40 1170 {lab=VSS_array}
N 40 1170 2040 1170 {lab=VSS_array}
N 40 1170 40 1605 {lab=VSS_array}
N 40 1605 2040 1605 {lab=VSS_array}
N 2160 990 2160 1425 {lab=VDD_array}
N 2160 655 2160 990 {lab=VDD_array}
N 1950 655 2160 655 {lab=VDD_array}
N 150 1090 150 1345 {lab=Rst_output_DFFs}
N 140 1345 150 1345 {lab=Rst_output_DFFs}
N 350 1090 350 1345 {lab=Rst_output_DFFs}
N 330 1345 350 1345 {lab=Rst_output_DFFs}
N 550 1090 550 1345 {lab=Rst_output_DFFs}
N 540 1345 550 1345 {lab=Rst_output_DFFs}
N 750 1090 750 1345 {lab=Rst_output_DFFs}
N 740 1345 750 1345 {lab=Rst_output_DFFs}
N 950 1090 950 1345 {lab=Rst_output_DFFs}
N 940 1345 950 1345 {lab=Rst_output_DFFs}
N 1150 1090 1150 1345 {lab=Rst_output_DFFs}
N 1140 1345 1150 1345 {lab=Rst_output_DFFs}
N 1350 1090 1350 1345 {lab=Rst_output_DFFs}
N 1340 1345 1350 1345 {lab=Rst_output_DFFs}
N 1550 1090 1550 1345 {lab=Rst_output_DFFs}
N 1540 1345 1550 1345 {lab=Rst_output_DFFs}
N 1750 1090 1750 1345 {lab=Rst_output_DFFs}
N 1740 1345 1750 1345 {lab=Rst_output_DFFs}
N 1950 1090 1950 1345 {lab=Rst_output_DFFs}
N 1940 1345 1950 1345 {lab=Rst_output_DFFs}
N 125 860 2320 860 {lab=N9_cap}
N 335 870 2240 870 {lab=N8_cap}
N 530 880 2320 880 {lab=N7_cap}
N 725 890 2240 890 {lab=N6_cap}
N 930 900 2320 900 {lab=N5_cap}
N 1130 910 2240 910 {lab=N4_cap}
N 1325 920 2320 920 {lab=N3_cap}
N 1530 930 2240 930 {lab=N2_cap}
N 1735 940 2320 940 {lab=N1_cap}
N 1930 950 2240 950 {lab=N0_cap}
N 130 325 130 1040 {lab=P9_cap}
N 120 325 130 325 {lab=P9_cap}
N 320 335 330 335 {lab=P8_cap}
N 330 1040 360 1040 {lab=P8_cap}
N 330 335 330 1040 {lab=P8_cap}
N 520 345 540 345 {lab=P7_cap}
N 540 1040 560 1040 {lab=P7_cap}
N 540 345 540 1040 {lab=P7_cap}
N 740 1040 760 1040 {lab=P6_cap}
N 740 355 740 1040 {lab=P6_cap}
N 720 355 740 355 {lab=P6_cap}
N 935 365 935 1040 {lab=P5_cap}
N 920 365 935 365 {lab=P5_cap}
N 935 1040 960 1040 {lab=P5_cap}
N 1135 1040 1160 1040 {lab=P4_cap}
N 1135 375 1135 1040 {lab=P4_cap}
N 1120 375 1135 375 {lab=P4_cap}
N 1335 385 1335 1040 {lab=P3_cap}
N 1320 385 1335 385 {lab=P3_cap}
N 1335 1040 1360 1040 {lab=P3_cap}
N 1535 395 1535 1040 {lab=P2_cap}
N 1520 395 1535 395 {lab=P2_cap}
N 1535 1040 1560 1040 {lab=P2_cap}
N 1730 405 1730 1040 {lab=P1_cap}
N 1720 405 1730 405 {lab=P1_cap}
N 1730 1040 1760 1040 {lab=P1_cap}
N 1935 1040 1960 1040 {lab=P0_cap}
N 1935 415 1935 1040 {lab=P0_cap}
N 1920 415 1935 415 {lab=P0_cap}
N 125 860 125 1475 {lab=N9_cap}
N 120 860 125 860 {lab=N9_cap}
N 335 1475 360 1475 {lab=N8_cap}
N 335 870 335 1475 {lab=N8_cap}
N 320 870 335 870 {lab=N8_cap}
N 530 1475 560 1475 {lab=N7_cap}
N 530 880 530 1475 {lab=N7_cap}
N 520 880 530 880 {lab=N7_cap}
N 725 890 725 1475 {lab=N6_cap}
N 720 890 725 890 {lab=N6_cap}
N 725 1475 760 1475 {lab=N6_cap}
N 930 1475 960 1475 {lab=N5_cap}
N 930 900 930 1475 {lab=N5_cap}
N 920 900 930 900 {lab=N5_cap}
N 1130 1475 1160 1475 {lab=N4_cap}
N 1130 910 1130 1475 {lab=N4_cap}
N 1120 910 1130 910 {lab=N4_cap}
N 1325 920 1325 1475 {lab=N3_cap}
N 1320 920 1325 920 {lab=N3_cap}
N 1325 1475 1360 1475 {lab=N3_cap}
N 1520 930 1530 930 {lab=N2_cap}
N 1530 1475 1560 1475 {lab=N2_cap}
N 1530 930 1530 1475 {lab=N2_cap}
N 1735 1475 1760 1475 {lab=N1_cap}
N 1735 940 1735 1475 {lab=N1_cap}
N 1720 940 1735 940 {lab=N1_cap}
N 1930 950 1930 1475 {lab=N0_cap}
N 1920 950 1930 950 {lab=N0_cap}
N 1930 1475 1960 1475 {lab=N0_cap}
N 2160 -195 2160 165 {lab=Ck0}
N -335 -30 2140 -30 {lab=Comp}
N 2140 -30 2140 205 {lab=Comp}
N 1710 -195 2160 -195 {lab=Ck0}
N 1710 -265 1780 -265 {lab=S0}
N 2160 165 2180 165 {lab=Ck0}
N 140 1345 140 1465 {lab=Rst_output_DFFs}
N -25 1465 140 1465 {lab=Rst_output_DFFs}
N 1710 -225 1750 -225 {lab=Sn0}
N 1710 -245 1750 -245 {lab=Sn0b}
N 1510 -225 1515 -225 {lab=Sn1}
N 1510 -245 1515 -245 {lab=Sn1b}
N 1310 -225 1315 -225 {lab=Sn2}
N 1310 -245 1315 -245 {lab=Sn2b}
N 1110 -225 1115 -225 {lab=Sn3}
N 1110 -245 1115 -245 {lab=Sn3b}
N -90 -225 -85 -225 {lab=Sn9}
N -90 -245 -85 -245 {lab=Sn9b}
N 110 -225 115 -225 {lab=Sn8}
N 110 -245 115 -245 {lab=Sn8b}
N 310 -225 315 -225 {lab=Sn7}
N 310 -245 315 -245 {lab=Sn7b}
N 510 -225 515 -225 {lab=Sn6}
N 510 -245 515 -245 {lab=Sn6b}
N 710 -225 715 -225 {lab=Sn5}
N 710 -245 715 -245 {lab=Sn5b}
N 910 -225 915 -225 {lab=Sn4}
N 910 -245 915 -245 {lab=Sn4b}
N 1970 -145 2150 -145 {lab=#net1}
C {opin.sym} 2240 415 0 0 {name=p21 lab=P0_cap}
C {opin.sym} 2320 325 0 0 {name=p22 lab=P9_cap}
C {opin.sym} 2240 335 0 0 {name=p23 lab=P8_cap}
C {opin.sym} 2320 345 0 0 {name=p24 lab=P7_cap}
C {opin.sym} 2240 355 0 0 {name=p25 lab=P6_cap}
C {opin.sym} 2320 365 0 0 {name=p26 lab=P5_cap}
C {opin.sym} 2320 385 0 0 {name=p27 lab=P3_cap}
C {opin.sym} 2320 405 0 0 {name=p28 lab=P1_cap}
C {opin.sym} 2240 375 0 0 {name=p29 lab=P4_cap}
C {opin.sym} 2320 860 0 0 {name=p30 lab=N9_cap}
C {opin.sym} 2240 950 0 0 {name=p31 lab=N0_cap}
C {opin.sym} 2240 395 0 0 {name=p32 lab=P2_cap}
C {opin.sym} 2320 880 0 0 {name=p33 lab=N7_cap}
C {opin.sym} 2240 870 0 0 {name=p34 lab=N8_cap}
C {opin.sym} 2320 900 0 0 {name=p35 lab=N5_cap}
C {opin.sym} 2240 890 0 0 {name=p36 lab=N6_cap}
C {opin.sym} 2320 920 0 0 {name=p37 lab=N3_cap}
C {opin.sym} 2240 910 0 0 {name=p38 lab=N4_cap}
C {opin.sym} 2320 940 0 0 {name=p39 lab=N1_cap}
C {opin.sym} 2240 930 0 0 {name=p40 lab=N2_cap}
C {opin.sym} 2340 1200 0 0 {name=p41 lab=P9_out}
C {opin.sym} 2250 1210 0 0 {name=p42 lab=P8_out}
C {opin.sym} 2340 1220 0 0 {name=p43 lab=P7_out}
C {opin.sym} 2250 1230 0 0 {name=p44 lab=P6_out}
C {opin.sym} 2340 1240 0 0 {name=p45 lab=P5_out}
C {opin.sym} 2250 1250 0 0 {name=p46 lab=P4_out}
C {opin.sym} 2250 1270 0 0 {name=p47 lab=P2_out}
C {opin.sym} 2250 1290 0 0 {name=p48 lab=P0_out}
C {opin.sym} 2340 1280 0 0 {name=p49 lab=P1_out}
C {opin.sym} 2340 1260 0 0 {name=p50 lab=P3_out}
C {opin.sym} 2350 1635 0 0 {name=p1 lab=N9_out}
C {opin.sym} 2350 1655 0 0 {name=p2 lab=N7_out}
C {opin.sym} 2350 1675 0 0 {name=p3 lab=N5_out}
C {opin.sym} 2350 1695 0 0 {name=p4 lab=N3_out}
C {opin.sym} 2350 1715 0 0 {name=p5 lab=N1_out}
C {opin.sym} 2250 1645 0 0 {name=p6 lab=N8_out}
C {opin.sym} 2250 1665 0 0 {name=p7 lab=N6_out}
C {opin.sym} 2250 1685 0 0 {name=p8 lab=N4_out}
C {opin.sym} 2250 1705 0 0 {name=p9 lab=N2_out}
C {opin.sym} 2250 1725 0 0 {name=p10 lab=N0_out}
C {iopin.sym} -360 -345 0 1 {name=p11 lab=VDD_array}
C {ipin.sym} -310 -265 0 0 {name=p13 lab=CompB}
C {ipin.sym} -320 -195 0 0 {name=p14 lab=Valid_DFF}
C {iopin.sym} -350 -130 0 1 {name=p15 lab=VSS_array}
C {ipin.sym} -325 95 0 0 {name=p16 lab=Comp_outP}
C {ipin.sym} -325 630 0 0 {name=p17 lab=Comp_outN}
C {ipin.sym} -70 1325 0 0 {name=p18 lab=Output_all}
C {ipin.sym} -25 1465 0 0 {name=p19 lab=Rst_output_DFFs}
C {opin.sym} 2340 185 0 0 {name=p20 lab=CLK_comp}
C {iopin.sym} -335 35 0 1 {name=p51 lab=Reset_decision}
C {ipin.sym} -335 -30 0 0 {name=p12 lab=Comp}
C {opin.sym} -90 -100 0 0 {name=p52 lab=Ck9}
C {opin.sym} 110 -100 0 0 {name=p53 lab=Ck8}
C {opin.sym} 310 -100 0 0 {name=p54 lab=Ck7}
C {opin.sym} 510 -100 0 0 {name=p55 lab=Ck6}
C {opin.sym} 710 -100 0 0 {name=p56 lab=Ck5}
C {opin.sym} 910 -100 0 0 {name=p57 lab=Ck4}
C {opin.sym} 1110 -100 0 0 {name=p58 lab=Ck3}
C {opin.sym} 1310 -100 0 0 {name=p59 lab=Ck2}
C {opin.sym} 1510 -100 0 0 {name=p60 lab=Ck1}
C {opin.sym} 1710 -100 0 0 {name=p61 lab=Ck0}
C {lab_wire.sym} -50 -265 0 0 {name=p62 sig_type=std_logic lab=S9}
C {lab_wire.sym} 145 -265 0 0 {name=p63 sig_type=std_logic lab=S8}
C {lab_wire.sym} 345 -265 0 0 {name=p64 sig_type=std_logic lab=S7}
C {lab_wire.sym} 545 -265 0 0 {name=p65 sig_type=std_logic lab=S6}
C {lab_wire.sym} 745 -265 0 0 {name=p66 sig_type=std_logic lab=S5}
C {lab_wire.sym} 945 -265 0 0 {name=p67 sig_type=std_logic lab=S4}
C {lab_wire.sym} 1140 -265 0 0 {name=p68 sig_type=std_logic lab=S3}
C {lab_wire.sym} 1340 -265 0 0 {name=p69 sig_type=std_logic lab=S2}
C {lab_wire.sym} 1540 -265 0 0 {name=p70 sig_type=std_logic lab=S1}
C {lab_wire.sym} 1740 -265 0 0 {name=p71 sig_type=std_logic lab=S0}
C {/foss/designs/xschem_symbols/simp_DFF_yannan.sym} -160 -235 0 0 {name=x1}
C {/foss/designs/xschem_symbols/simp_DFF_yannan.sym} 40 -235 0 0 {name=x2}
C {/foss/designs/xschem_symbols/simp_DFF_yannan.sym} 240 -235 0 0 {name=x3}
C {/foss/designs/xschem_symbols/simp_DFF_yannan.sym} 440 -235 0 0 {name=x4}
C {/foss/designs/xschem_symbols/simp_DFF_yannan.sym} 640 -235 0 0 {name=x5}
C {/foss/designs/xschem_symbols/simp_DFF_yannan.sym} 840 -235 0 0 {name=x6}
C {/foss/designs/xschem_symbols/simp_DFF_yannan.sym} 1040 -235 0 0 {name=x7}
C {/foss/designs/xschem_symbols/simp_DFF_yannan.sym} 1240 -235 0 0 {name=x8}
C {/foss/designs/xschem_symbols/simp_DFF_yannan.sym} 1440 -235 0 0 {name=x9}
C {/foss/designs/xschem_symbols/simp_DFF_yannan.sym} 1640 -235 0 0 {name=x10}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 40 225 0 0 {name=x11}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 240 225 0 0 {name=x12}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 440 225 0 0 {name=x13}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 640 225 0 0 {name=x14}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 840 225 0 0 {name=x15}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1040 225 0 0 {name=x16}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1240 225 0 0 {name=x17}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1440 225 0 0 {name=x18}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1640 225 0 0 {name=x19}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1840 225 0 0 {name=x20}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 40 760 0 0 {name=x21}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 240 760 0 0 {name=x22}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 440 760 0 0 {name=x23}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 640 760 0 0 {name=x24}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 840 760 0 0 {name=x25}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1040 760 0 0 {name=x26}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1240 760 0 0 {name=x27}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1440 760 0 0 {name=x28}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1640 760 0 0 {name=x29}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1840 760 0 0 {name=x30}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 240 1080 0 0 {name=x31}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 440 1080 0 0 {name=x32}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 640 1080 0 0 {name=x33}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 840 1080 0 0 {name=x34}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1040 1080 0 0 {name=x35}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1240 1080 0 0 {name=x36}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1440 1080 0 0 {name=x37}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1640 1080 0 0 {name=x38}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1840 1080 0 0 {name=x39}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 2040 1080 0 0 {name=x40}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 240 1515 0 0 {name=x41}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 440 1515 0 0 {name=x42}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 640 1515 0 0 {name=x43}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 840 1515 0 0 {name=x44}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1040 1515 0 0 {name=x45}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1240 1515 0 0 {name=x46}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1440 1515 0 0 {name=x47}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1640 1515 0 0 {name=x48}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 1840 1515 0 0 {name=x49}
C {/foss/designs/xschem_symbols/simp_DFF.sym} 2040 1515 0 0 {name=x50}
C {/foss/designs/xschem_symbols/simp_NOR3.sym} 2220 185 0 0 {name=x51}
C {opin.sym} 1750 -225 0 0 {name=p82 lab=Sn0}
C {opin.sym} 1750 -245 0 0 {name=p77 lab=Sn0b}
C {opin.sym} 1515 -225 0 0 {name=p72 lab=Sn1}
C {opin.sym} 1515 -245 0 0 {name=p73 lab=Sn1b}
C {opin.sym} 1315 -225 0 0 {name=p74 lab=Sn2}
C {opin.sym} 1315 -245 0 0 {name=p75 lab=Sn2b}
C {opin.sym} 1115 -225 0 0 {name=p76 lab=Sn3}
C {opin.sym} 1115 -245 0 0 {name=p78 lab=Sn3b}
C {opin.sym} -85 -225 0 0 {name=p79 lab=Sn9}
C {opin.sym} -85 -245 0 0 {name=p80 lab=Sn9b}
C {opin.sym} 115 -225 0 0 {name=p81 lab=Sn8}
C {opin.sym} 115 -245 0 0 {name=p83 lab=Sn8b}
C {opin.sym} 315 -225 0 0 {name=p84 lab=Sn7}
C {opin.sym} 315 -245 0 0 {name=p85 lab=Sn7b}
C {opin.sym} 515 -225 0 0 {name=p86 lab=Sn6}
C {opin.sym} 515 -245 0 0 {name=p87 lab=Sn6b}
C {opin.sym} 715 -225 0 0 {name=p88 lab=Sn5}
C {opin.sym} 715 -245 0 0 {name=p89 lab=Sn5b}
C {opin.sym} 915 -225 0 0 {name=p90 lab=Sn4}
C {opin.sym} 915 -245 0 0 {name=p91 lab=Sn4b}
C {ipin.sym} 1970 -145 0 0 {name=p92 lab=settled_OK}
