v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 290 -290 290 -240 {
lab=GND}
N 290 -680 290 -650 {
lab=vddl
}
N 290 -290 340 -290 {
lab=GND}
N 400 -290 430 -290 {
lab=inn}
N 290 -490 290 -290 {
lab=GND}
N 170 -610 170 -580 {
lab=vss
spice_ignore=true}
N 170 -520 170 -490 {
lab=GND}
N 170 -490 290 -490 {
lab=GND}
N 910 -120 910 -80 {
lab=GND}
N 910 -200 910 -180 {
lab=Vout}
N 850 -200 910 -200 {
lab=Vout}
N 290 -530 290 -490 {
lab=GND}
N 570 -510 590 -510 {lab=inp}
N 780 -570 780 -550 {lab=vddl}
N 890 -460 910 -460 {lab=Vout}
N 570 -480 590 -480 {lab=inn}
N 570 -430 590 -430 {lab=en_hv}
N 290 -530 340 -530 {
lab=GND}
N 400 -530 430 -530 {
lab=inp}
N 290 -590 290 -530 {
lab=GND}
N 130 -290 160 -290 {
lab=en_hv}
N 220 -290 290 -290 {lab=GND}
N 680 -570 680 -550 {lab=vddh}
N 740 -370 740 -340 {lab=GND}
N -20 -490 10 -490 {
lab=vddh
}
N 70 -490 170 -490 {lab=GND}
C {vsource.sym} 370 -290 1 0 {name=V_VIN value="PULSE(3.3 0 10n 100p 100p 20n 40n)" savecurrent=false}
C {vsource.sym} 290 -620 0 0 {name=VDD_L value="dc \{VDDL\}" savecurrent=false
}
C {gnd.sym} 290 -240 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 290 -680 0 0 {name=p24 sig_type=std_logic lab=vddl

}
C {lab_pin.sym} 430 -290 2 0 {name=p26 sig_type=std_logic lab=inn}
C {vsource.sym} 170 -550 0 0 {name=V_VSS value="dc 0" savecurrent=false
spice_ignore=true}
C {lab_pin.sym} 170 -610 0 0 {name=p28 sig_type=std_logic lab=vss

spice_ignore=true}
C {capa.sym} 910 -150 0 0 {name=COUT
m=1
value=\{CLOAD\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 910 -80 3 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} 850 -200 0 0 {name=p31 sig_type=std_logic lab=Vout}
C {code_shown.sym} -620 105 0 0 {name=MODELS2 only_toplevel=true
format="tcleval( @value )"
value="
.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOShv.lib mos_tt

"}
C {lab_pin.sym} 910 -460 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 570 -510 0 0 {name=p3 sig_type=std_logic lab=inp}
C {lab_pin.sym} 780 -570 0 0 {name=p5 sig_type=std_logic lab=vddl

}
C {code_shown.sym} 460 70 0 0 {name=s2 only_toplevel=false value="
.param VDDL=1.2
.param VDDH=3.3

.param CLOAD=5f
.save v(inp)
.save v(inn)
.save v(en_hv)

.save v(vddl)
.save v(vddh)

.save v(x1.enb)
.save v(x1.gatep)
.save v(x1.gaten)

.save v(x1.q)
.save v(x1.qb)

.save v(x1.xp)
.save v(x1.xn)

.save v(x1.hbuf)
.save v(x1.hbuf2)
.save v(x1.lvbuf)

.save v(Vout)

.save i(VDD_L)
.save i(VDD_H)

.options savecurrents
.options reltol=1e-4
.options abstol=1e-12
.options vntol=1e-6
.options method=gear
.options maxord=2
.options plotwinsize=0
.options itl4=500
"}
C {code.sym} 970 140 0 0 {name=s3
only_toplevel=true
value="
.control

set noaskquit

reset

alter COUT 5f
alter VDD_L 1.2

alter @V_VIN1[pulse] [ 0 3.3 10n 100p 100p 20n 40n ]
alter @V_VIN[pulse]  [ 3.3 0 10n 100p 100p 20n 40n ]

* Turn receiver on at 11ns and leave it on
alter @V_VIN2[pulse] [ 0 3.3 11n 50p 50p 100n 200n ]

tran 2p 70n 0 5p

meas tran c20 FIND v(Vout) AT=20n
meas tran c25 FIND v(Vout) AT=25n
meas tran c30 FIND v(Vout) AT=30n
meas tran c35 FIND v(Vout) AT=35n
meas tran c40 FIND v(Vout) AT=40n
meas tran c45 FIND v(Vout) AT=45n
meas tran c55 FIND v(Vout) AT=55n
meas tran c65 FIND v(Vout) AT=65n

print c20
print c25
print c30
print c35
print c40
print c45
print c55
print c65

plot v(inp) v(inn) v(en_hv)

plot v(x1.q) v(x1.qb)

plot v(x1.xp) v(x1.xn)

plot v(x1.yp) v(x1.yn)

plot v(x1.hbuf) v(x1.hbuf2)

plot v(x1.lvbuf) v(Vout)

.endc
"}
C {lab_pin.sym} 740 -340 3 0 {name=p1 sig_type=std_logic lab=GND}
C {lab_pin.sym} 570 -480 0 0 {name=p4 sig_type=std_logic lab=inn}
C {lab_pin.sym} 570 -430 0 0 {name=p6 sig_type=std_logic lab=en_hv}
C {vsource.sym} 370 -530 1 0 {name=V_VIN1 value="PULSE(0 3.3 10n 100p 100p 20n 40n)" savecurrent=false}
C {lab_pin.sym} 430 -530 2 0 {name=p7 sig_type=std_logic lab=inp}
C {vsource.sym} 190 -290 3 0 {name=V_VIN2 value="PULSE(0 3.3 11n 50p 50p 8n 20n)" savecurrent=false}
C {lab_pin.sym} 130 -290 0 0 {name=p8 sig_type=std_logic lab=en_hv}
C {level_shifter_3v3_to_1v2.sym} 740 -460 0 0 {name=x1}
C {lab_pin.sym} 680 -570 0 0 {name=p9 sig_type=std_logic lab=vddh

}
C {vsource.sym} 40 -490 3 0 {name=VDD_H value="dc \{VDDH\}" savecurrent=false
}
C {lab_pin.sym} -20 -490 3 0 {name=p10 sig_type=std_logic lab=vddh

}
