v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1270 -940 2070 -540 {flags=graph
y1=0
y2=3.6
ypos1=0
ypos2=3.6
divy=6
subdivy=1
unity=1
x1=0
x2=6e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="v(clk) 
v(voutp) 
v(voutn)"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 1260 -440 2060 -40 {flags=graph
y1=1.64
y2=1.66
ypos1=1.64
ypos2=1.66
divy=4
subdivy=1
unity=1
x1=0
x2=6e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="v(Vinp) 
v(Vinn)"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0}
N 390 -760 390 -710 {
lab=GND}
N 390 -1150 390 -1120 {
lab=vdd}
N 390 -760 440 -760 {
lab=GND}
N 500 -760 530 -760 {
lab=Vinn}
N 500 -920 530 -920 {
lab=Vinp}
N 390 -920 390 -760 {
lab=GND}
N 390 -960 390 -920 {
lab=GND}
N 270 -1080 270 -1050 {
lab=vss}
N 270 -990 270 -960 {
lab=GND}
N 270 -960 390 -960 {
lab=GND}
N 270 -850 270 -820 {
lab=CLK}
N 1010 -590 1010 -550 {
lab=GND}
N 1010 -670 1010 -650 {
lab=Voutp}
N 950 -670 1010 -670 {
lab=Voutp}
N 1150 -590 1150 -550 {
lab=GND}
N 1150 -670 1150 -650 {
lab=Voutn}
N 1090 -670 1150 -670 {
lab=Voutn}
N 940 -1260 940 -1230 {
lab=vdd}
N 1070 -1150 1100 -1150 {
lab=Voutn}
N 1070 -1130 1100 -1130 {
lab=Voutp}
N 790 -1150 830 -1150 {
lab=Vinn}
N 790 -1170 830 -1170 {
lab=Vinp}
N 790 -1190 830 -1190 {
lab=CLK}
N 930 -1050 930 -1020 {
lab=vss}
N 270 -960 270 -910 {
lab=GND}
N 390 -920 440 -920 {
lab=GND}
N 390 -1060 390 -960 {
lab=GND}
C {vsource.sym} 470 -760 1 0 {name=V_VIN value="dc \{VCM - VDIFF/2\}" savecurrent=false}
C {vsource.sym} 390 -1090 0 0 {name=VDD_SRC value="dc \{VDD\}" savecurrent=false}
C {gnd.sym} 390 -710 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 390 -1150 0 0 {name=p24 sig_type=std_logic lab=vdd

}
C {lab_pin.sym} 530 -760 2 0 {name=p25 sig_type=std_logic lab=Vinn}
C {vsource.sym} 470 -920 1 0 {name=V_VINP value="dc \{VCM + VDIFF/2\}" savecurrent=false}
C {lab_pin.sym} 530 -920 2 0 {name=p26 sig_type=std_logic lab=Vinp}
C {vsource.sym} 270 -1020 0 0 {name=V_VSS value="dc 0" savecurrent=false}
C {lab_pin.sym} 270 -1080 0 0 {name=p28 sig_type=std_logic lab=vss

}
C {vsource.sym} 270 -880 2 0 {name=V_CLK value="PULSE(0 \{VDD\} 1n 20p 20p 3n 6n)" savecurrent=false}
C {lab_pin.sym} 270 -820 3 0 {name=p29 sig_type=std_logic lab=CLK}
C {code.sym} 1010 -390 0 0 {name=s1
only_toplevel=true
value="
.param VDD=3.3
.param VCM=1.65
.param VREF=3.3
.param NBITS=10
.param VLSB=3.22265625e-3
.param VHLSB=1.611328125e-3
.param VDIFF=10e-3
.param CLOAD=20f

.options savecurrents
.options reltol=1e-4 abstol=1e-12 vntol=1e-6 method=gear

.save v(CLK) v(Vinp) v(Vinn) v(Voutp) v(Voutn)
.save v(x1.net1) v(x1.net2) v(x1.net3) v(x1.net4) v(x1.vs_dp)
.save i(VDD_SRC)

.control
set filetype=binary

shell rm -f strongarm_results.txt
shell rm -f strongarm_tran_nominal.txt
shell rm -f strongarm_lsb_sweep.txt
shell rm -f strongarm_delay_sweep.txt
shell rm -f strongarm_vcm_sweep.txt
shell rm -f strongarm_vdd_sweep.txt

echo ============================================= > strongarm_results.txt
echo IHP SG13CMOS5L StrongARM comparator >> strongarm_results.txt
echo 10-bit SAR ADC comparator characterization >> strongarm_results.txt
echo ============================================= >> strongarm_results.txt
echo VREF = 3.3 V >> strongarm_results.txt
echo LSB = 3.22265625 mV >> strongarm_results.txt
echo 0.5 LSB = 1.611328125 mV >> strongarm_results.txt
echo . >> strongarm_results.txt


* Nominal transient

alterparam VDD=3.3
alterparam VCM=1.65
alterparam VDIFF=10e-3
reset

tran 1p 6n
write strong_arm_comp_tb.raw

meas tran voutp_samp FIND v(Voutp) AT=4n
meas tran voutn_samp FIND v(Voutn) AT=4n

meas tran net1_samp FIND v(x1.net1) AT=4n
meas tran net2_samp FIND v(x1.net2) AT=4n
meas tran net3_samp FIND v(x1.net3) AT=4n
meas tran net4_samp FIND v(x1.net4) AT=4n
meas tran vsdp_samp FIND v(x1.vs_dp) AT=4n

meas tran idd_avg AVG i(VDD_SRC) FROM=0n TO=6n
meas tran idd_eval AVG i(VDD_SRC) FROM=1n TO=4n

let vod_samp = voutp_samp - voutn_samp
let pavg = -3.3*idd_avg
let peval = -3.3*idd_eval
let e_cycle = pavg*6n
let e_eval = peval*3n

meas tran t_clk_rise WHEN v(CLK)=1.65 RISE=1
meas tran t_voutp_fall WHEN v(Voutp)=1.65 FALL=1
let td_pos = t_voutp_fall - t_clk_rise

echo Nominal result: VDIFF = +10 mV >> strongarm_results.txt
echo Voutp_4ns = $&voutp_samp V >> strongarm_results.txt
echo Voutn_4ns = $&voutn_samp V >> strongarm_results.txt
echo Vod_4ns = $&vod_samp V >> strongarm_results.txt
echo net1_4ns = $&net1_samp V >> strongarm_results.txt
echo net2_4ns = $&net2_samp V >> strongarm_results.txt
echo net3_4ns = $&net3_samp V >> strongarm_results.txt
echo net4_4ns = $&net4_samp V >> strongarm_results.txt
echo VS_dp_4ns = $&vsdp_samp V >> strongarm_results.txt
echo IDD_avg = $&idd_avg A >> strongarm_results.txt
echo Pavg = $&pavg W >> strongarm_results.txt
echo Energy_per_cycle = $&e_cycle J >> strongarm_results.txt
echo IDD_eval = $&idd_eval A >> strongarm_results.txt
echo Peval = $&peval W >> strongarm_results.txt
echo Eeval = $&e_eval J >> strongarm_results.txt
echo t_clk_rise = $&t_clk_rise s >> strongarm_results.txt
echo t_voutp_fall = $&t_voutp_fall s >> strongarm_results.txt
echo td_pos = $&td_pos s >> strongarm_results.txt
echo . >> strongarm_results.txt

wrdata strongarm_tran_nominal.txt time v(CLK) v(Vinp) v(Vinn) v(Voutp) v(Voutn) v(x1.net1) v(x1.net2) v(x1.net3) v(x1.net4) v(x1.vs_dp) i(VDD_SRC)


* Differential input sweep

echo ============================================= > strongarm_lsb_sweep.txt
echo Differential input sweep >> strongarm_lsb_sweep.txt
echo columns: VDIFF Voutp Voutn Vod net1 net2 net3 net4 VS_dp Pavg >> strongarm_lsb_sweep.txt
echo ============================================= >> strongarm_lsb_sweep.txt

foreach dv -10e-3 -5e-3 -3.22265625e-3 -1.611328125e-3 -1e-3 -500e-6 500e-6 1e-3 1.611328125e-3 3.22265625e-3 5e-3 10e-3

  alterparam VDD=3.3
  alterparam VCM=1.65
  alterparam VDIFF=$dv
  reset

  tran 1p 6n

  meas tran vop FIND v(Voutp) AT=4n
  meas tran von FIND v(Voutn) AT=4n

  meas tran vn1 FIND v(x1.net1) AT=4n
  meas tran vn2 FIND v(x1.net2) AT=4n
  meas tran vn3 FIND v(x1.net3) AT=4n
  meas tran vn4 FIND v(x1.net4) AT=4n
  meas tran vtail FIND v(x1.vs_dp) AT=4n

  meas tran ia AVG i(VDD_SRC) FROM=0n TO=6n

  let vod = vop - von
  let ppwr = -3.3*ia

  echo $dv $&vop $&von $&vod $&vn1 $&vn2 $&vn3 $&vn4 $&vtail $&ppwr >> strongarm_lsb_sweep.txt

end


* Delay versus positive differential input

echo ============================================= > strongarm_delay_sweep.txt
echo Delay versus positive VDIFF >> strongarm_delay_sweep.txt
echo columns: VDIFF tclk tout td Voutp4n Voutn4n Pavg >> strongarm_delay_sweep.txt
echo ============================================= >> strongarm_delay_sweep.txt

foreach dv 500e-6 1e-3 1.611328125e-3 3.22265625e-3 5e-3 10e-3 20e-3 50e-3

  alterparam VDD=3.3
  alterparam VCM=1.65
  alterparam VDIFF=$dv
  reset

  tran 1p 6n

  meas tran tclk WHEN v(CLK)=1.65 RISE=1
  meas tran tout WHEN v(Voutp)=1.65 FALL=1
  let td = tout - tclk

  meas tran vop4 FIND v(Voutp) AT=4n
  meas tran von4 FIND v(Voutn) AT=4n
  meas tran ia AVG i(VDD_SRC) FROM=0n TO=6n

  let ppwr = -3.3*ia

  echo $dv $&tclk $&tout $&td $&vop4 $&von4 $&ppwr >> strongarm_delay_sweep.txt

end


* Common-mode sweep at +0.5 LSB

echo ============================================= > strongarm_vcm_sweep.txt
echo Common-mode sweep at VDIFF = +0.5 LSB >> strongarm_vcm_sweep.txt
echo columns: VCM Voutp4n Voutn4n Vod4n Pavg >> strongarm_vcm_sweep.txt
echo ============================================= >> strongarm_vcm_sweep.txt

foreach cm 0.8 0.85 0.9 0.95 1.0 1.2 1.4 1.65 1.8 2.0 2.2 2.4 2.5 2.6 2.7

  alterparam VDD=3.3
  alterparam VCM=$cm
  alterparam VDIFF=1.611328125e-3
  reset

  tran 1p 6n

  meas tran vop4 FIND v(Voutp) AT=4n
  meas tran von4 FIND v(Voutn) AT=4n
  meas tran ia AVG i(VDD_SRC) FROM=0n TO=6n

  let vod4 = vop4 - von4
  let ppwr = -3.3*ia

  echo $cm $&vop4 $&von4 $&vod4 $&ppwr >> strongarm_vcm_sweep.txt

end


* Supply sweep at +0.5 LSB

echo ============================================= > strongarm_vdd_sweep.txt
echo Supply sweep at VDIFF = +0.5 LSB >> strongarm_vdd_sweep.txt
echo columns: VDD VCM Voutp4n Voutn4n Vod4n td Pavg >> strongarm_vdd_sweep.txt
echo ============================================= >> strongarm_vdd_sweep.txt


alterparam VDD=3.0
alterparam VCM=1.5
alterparam VDIFF=1.611328125e-3
reset

tran 1p 6n

meas tran vop4 FIND v(Voutp) AT=4n
meas tran von4 FIND v(Voutn) AT=4n
meas tran tclk WHEN v(CLK)=1.5 RISE=1
meas tran tout WHEN v(Voutp)=1.5 FALL=1
meas tran ia AVG i(VDD_SRC) FROM=0n TO=6n

let vod4 = vop4 - von4
let td = tout - tclk
let ppwr = -3.0*ia

echo 3.0 1.5 $&vop4 $&von4 $&vod4 $&td $&ppwr >> strongarm_vdd_sweep.txt


alterparam VDD=3.15
alterparam VCM=1.575
alterparam VDIFF=1.611328125e-3
reset

tran 1p 6n

meas tran vop4 FIND v(Voutp) AT=4n
meas tran von4 FIND v(Voutn) AT=4n
meas tran tclk WHEN v(CLK)=1.575 RISE=1
meas tran tout WHEN v(Voutp)=1.575 FALL=1
meas tran ia AVG i(VDD_SRC) FROM=0n TO=6n

let vod4 = vop4 - von4
let td = tout - tclk
let ppwr = -3.15*ia

echo 3.15 1.575 $&vop4 $&von4 $&vod4 $&td $&ppwr >> strongarm_vdd_sweep.txt


alterparam VDD=3.3
alterparam VCM=1.65
alterparam VDIFF=1.611328125e-3
reset

tran 1p 6n

meas tran vop4 FIND v(Voutp) AT=4n
meas tran von4 FIND v(Voutn) AT=4n
meas tran tclk WHEN v(CLK)=1.65 RISE=1
meas tran tout WHEN v(Voutp)=1.65 FALL=1
meas tran ia AVG i(VDD_SRC) FROM=0n TO=6n

let vod4 = vop4 - von4
let td = tout - tclk
let ppwr = -3.3*ia

echo 3.3 1.65 $&vop4 $&von4 $&vod4 $&td $&ppwr >> strongarm_vdd_sweep.txt


alterparam VDD=3.45
alterparam VCM=1.725
alterparam VDIFF=1.611328125e-3
reset

tran 1p 6n

meas tran vop4 FIND v(Voutp) AT=4n
meas tran von4 FIND v(Voutn) AT=4n
meas tran tclk WHEN v(CLK)=1.725 RISE=1
meas tran tout WHEN v(Voutp)=1.725 FALL=1
meas tran ia AVG i(VDD_SRC) FROM=0n TO=6n

let vod4 = vop4 - von4
let td = tout - tclk
let ppwr = -3.45*ia

echo 3.45 1.725 $&vop4 $&von4 $&vod4 $&td $&ppwr >> strongarm_vdd_sweep.txt


alterparam VDD=3.6
alterparam VCM=1.8
alterparam VDIFF=1.611328125e-3
reset

tran 1p 6n

meas tran vop4 FIND v(Voutp) AT=4n
meas tran von4 FIND v(Voutn) AT=4n
meas tran tclk WHEN v(CLK)=1.8 RISE=1
meas tran tout WHEN v(Voutp)=1.8 FALL=1
meas tran ia AVG i(VDD_SRC) FROM=0n TO=6n

let vod4 = vop4 - von4
let td = tout - tclk
let ppwr = -3.6*ia

echo 3.6 1.8 $&vop4 $&von4 $&vod4 $&td $&ppwr >> strongarm_vdd_sweep.txt


echo . >> strongarm_results.txt
echo Output files: >> strongarm_results.txt
echo strongarm_tran_nominal.txt >> strongarm_results.txt
echo strongarm_lsb_sweep.txt >> strongarm_results.txt
echo strongarm_delay_sweep.txt >> strongarm_results.txt
echo strongarm_vcm_sweep.txt >> strongarm_results.txt
echo strongarm_vdd_sweep.txt >> strongarm_results.txt

echo Simulation complete.

.endc
"
spice_ignore=true}
C {capa.sym} 1010 -620 0 0 {name=COUT
m=1
value=\{CLOAD\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1010 -550 3 0 {name=p17 sig_type=std_logic lab=GND}
C {capa.sym} 1150 -620 0 0 {name=COUT1
m=1
value=\{CLOAD\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1150 -550 3 0 {name=p27 sig_type=std_logic lab=GND}
C {lab_pin.sym} 950 -670 0 0 {name=p31 sig_type=std_logic lab=Voutp}
C {lab_pin.sym} 1090 -670 0 0 {name=p32 sig_type=std_logic lab=Voutn}
C {lab_pin.sym} 790 -1170 0 0 {name=p1 sig_type=std_logic lab=Vinp}
C {lab_pin.sym} 790 -1150 0 0 {name=p2 sig_type=std_logic lab=Vinn}
C {lab_pin.sym} 790 -1190 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 1100 -1130 2 0 {name=p4 sig_type=std_logic lab=Voutp}
C {lab_pin.sym} 1100 -1150 2 0 {name=p5 sig_type=std_logic lab=Voutn}
C {lab_pin.sym} 940 -1260 0 0 {name=p6 sig_type=std_logic lab=vdd

}
C {lab_pin.sym} 930 -1020 0 0 {name=p7 sig_type=std_logic lab=vss

}
C {launcher.sym} 1400 -1030 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/strong_arm_comp_tb.raw tran"
}
C {code_shown.sym} -100 -385 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerRES.lib res_typ
.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerRES.lib res_typ
"}
C {simple_comparator.sym} 980 -1140 0 0 {name=x1}
C {code.sym} 470 -130 0 0 {name=s2
only_toplevel=true
value="
.param VDD=3.3
.param VCM=1.65
.param VREF=3.3
.param NBITS=10
.param VLSB=3.22265625e-3
.param VHLSB=1.611328125e-3
.param VDIFF=10e-3
.param CLOAD=20f

.options savecurrents
.options reltol=1e-4 abstol=1e-12 vntol=1e-6 method=gear

.save v(CLK) v(Vinp) v(Vinn) v(Voutp) v(Voutn)
.save v(x1.net1) v(x1.net2) v(x1.net3) v(x1.net4) v(x1.vs_dp)
.save i(VDD_SRC)

.control

alterparam VDD=3.3
alterparam VCM=1.65
alterparam VDIFF=10e-3
reset

tran 1p 6n

write strong_arm_comp_tb.raw

.endc

"
}
