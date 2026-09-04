v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -260 220 -210 {
lab=Voutp}
N 220 -390 220 -370 {
lab=vdd}
N 220 -120 220 -70 {
lab=vss}
N 220 -180 250 -180 {
lab=vss}
N 150 -340 180 -340 {
lab=Vinn}
N 150 -260 150 -180 {
lab=Vinn}
N 150 -180 180 -180 {
lab=Vinn}
N 220 -340 250 -340 {
lab=vdd}
N 250 -390 250 -340 {
lab=vdd}
N 220 -390 250 -390 {
lab=vdd}
N 250 -180 250 -120 {
lab=vss}
N 220 -120 250 -120 {
lab=vss}
N 90 -260 150 -260 {
lab=Vinn}
N 220 -260 310 -260 {
lab=Voutp}
N 220 -470 220 -390 {
lab=vdd}
N 220 -150 220 -120 {
lab=vss}
N 150 -340 150 -260 {
lab=Vinn}
N 220 -310 220 -260 {
lab=Voutp}
C {iopin.sym} 220 -470 3 0 {name=p11 lab=vdd}
C {iopin.sym} 220 -70 1 0 {name=p18 lab=vss}
C {ipin.sym} 90 -260 0 0 {name=p9 lab=Vinn}
C {opin.sym} 310 -260 0 0 {name=p30 lab=Voutp}
C {title.sym} 160 0 0 0 {name=l1 author="Arjun Ananth"}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 200 -180 0 0 {name=M12
l=0.45u
w=2u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 200 -340 0 0 {name=M16
l=0.4u
w=2u
 ng=1
 m=2
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
