v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -830 -310 -830 -260 {
lab=GND}
N -830 -700 -830 -670 {
lab=vddl}
N -830 -310 -780 -310 {
lab=GND}
N -720 -310 -690 -310 {
lab=in}
N -720 -470 -690 -470 {
lab=vddh}
N -830 -470 -830 -310 {
lab=GND}
N -830 -510 -830 -470 {
lab=GND}
N -950 -630 -950 -600 {
lab=vss}
N -950 -540 -950 -510 {
lab=GND}
N -950 -510 -830 -510 {
lab=GND}
N -210 -140 -210 -100 {
lab=GND}
N -210 -220 -210 -200 {
lab=Vout}
N -270 -220 -210 -220 {
lab=Vout}
N -830 -470 -780 -470 {
lab=GND}
N -830 -610 -830 -510 {
lab=GND}
N -470 -500 -450 -500 {lab=in}
N -380 -590 -380 -570 {lab=vddl}
N -240 -590 -240 -570 {lab=vddh}
N -150 -500 -130 -500 {lab=Vout}
N -300 -430 -300 -400 {lab=vss}
C {level_shifter_1v2_to_3v3.sym} -300 -500 0 0 {name=x1}
C {vsource.sym} -750 -310 1 0 {name=V_VIN value="PULSE(0 \{VDDL\} 10n 100p 100p 20n 40n)" savecurrent=false}
C {vsource.sym} -830 -640 0 0 {name=VDD_L value="dc \{VDDL\}" savecurrent=false}
C {gnd.sym} -830 -260 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -830 -700 0 0 {name=p24 sig_type=std_logic lab=vddl

}
C {lab_pin.sym} -690 -470 2 0 {name=p25 sig_type=std_logic lab=vddh}
C {vsource.sym} -750 -470 1 0 {name=VDD_H value="dc \{VDDH\}" savecurrent=false}
C {lab_pin.sym} -690 -310 2 0 {name=p26 sig_type=std_logic lab=in}
C {vsource.sym} -950 -570 0 0 {name=V_VSS value="dc 0" savecurrent=false}
C {lab_pin.sym} -950 -630 0 0 {name=p28 sig_type=std_logic lab=vss

}
C {capa.sym} -210 -170 0 0 {name=COUT
m=1
value=\{CLOAD\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -210 -100 3 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} -270 -220 0 0 {name=p31 sig_type=std_logic lab=Vout}
C {code_shown.sym} -1740 85 0 0 {name=MODELS2 only_toplevel=true
format="tcleval( @value )"
value="
.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerRES.lib res_typ

.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /home/arjun/eda/pdks/IHP-Open-PDK/ihp-sg13cmos5l/libs.tech/ngspice/models/cornerMOShv.lib mos_tt

"}
C {lab_pin.sym} -300 -400 0 0 {name=p1 sig_type=std_logic lab=vss

}
C {lab_pin.sym} -130 -500 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {lab_pin.sym} -470 -500 0 0 {name=p3 sig_type=std_logic lab=in}
C {lab_pin.sym} -240 -590 2 0 {name=p4 sig_type=std_logic lab=vddh}
C {lab_pin.sym} -380 -590 0 0 {name=p5 sig_type=std_logic lab=vddl

}
C {code_shown.sym} -660 50 0 0 {name=s2 only_toplevel=false value="
.param VDDL=1.2
.param VDDH=3.3
.param CLOAD=50f

.options savecurrents
.options reltol=1e-4 abstol=1e-12 vntol=1e-6
.options method=gear maxord=2
.options plotwinsize=0

.save v(in)
.save v(x1.inb)
.save v(x1.a)
.save v(x1.b)
.save v(Vout)

.save i(VDD_L)
.save i(VDD_H)
"}
C {code.sym} -150 120 0 0 {name=s3
only_toplevel=true
value="
.control

set noaskquit
set filetype=binary
set wr_singlescale
set wr_vecnames

* ============================================================
* CLEAN OLD RESULT FILES
* ============================================================

shell rm -f level_shifter_results.txt
shell rm -f level_shifter_nominal.txt
shell rm -f level_shifter_nominal.raw
shell rm -f level_shifter_load_sweep.txt
shell rm -f level_shifter_vddl_sweep.txt
shell rm -f level_shifter_vddh_sweep.txt


* ============================================================
* RESULT FILE HEADER
* ============================================================

echo ============================================================= > level_shifter_results.txt
echo IHP SG13CMOS5L 1.2V-to-3.3V Level Shifter Qualification >> level_shifter_results.txt
echo ============================================================= >> level_shifter_results.txt
echo . >> level_shifter_results.txt
echo Nominal VDDL  = 1.2 V >> level_shifter_results.txt
echo Nominal VDDH  = 3.3 V >> level_shifter_results.txt
echo Nominal CLOAD = 50 fF >> level_shifter_results.txt
echo . >> level_shifter_results.txt


* ============================================================
* 1. NOMINAL TRANSIENT
*
* Expected input source:
*
* V_VIN in 0 PULSE(0 \{VDDL\} 10n 100p 100p 20n 40n)
*
* RISE 1 = 10 ns
* FALL 1 = 30 ns
* RISE 2 = 50 ns
* FALL 2 = 70 ns
* ============================================================

alterparam VDDL=1.2
alterparam VDDH=3.3
alterparam CLOAD=50f

reset

tran 10p 90n


* ============================================================
* SAVE NOMINAL RAW FILE
* ============================================================

write level_shifter_nominal.raw


* ============================================================
* 2. NOMINAL STATIC LOGIC LEVELS
*
* t = 25 ns -> input HIGH
* t = 45 ns -> input LOW
* ============================================================

meas tran in_hi   FIND v(in)     AT=25n
meas tran inb_lo  FIND v(x1.inb) AT=25n
meas tran a_lo    FIND v(x1.a)   AT=25n
meas tran b_hi    FIND v(x1.b)   AT=25n
meas tran out_hi  FIND v(Vout)   AT=25n

meas tran in_lo   FIND v(in)     AT=45n
meas tran inb_hi  FIND v(x1.inb) AT=45n
meas tran a_hi    FIND v(x1.a)   AT=45n
meas tran b_lo    FIND v(x1.b)   AT=45n
meas tran out_lo  FIND v(Vout)   AT=45n


* ============================================================
* 3. PROPAGATION DELAY
*
* Use second complete cycle to avoid startup-state effects.
*
* Input 50%:
*     1.2 / 2 = 0.6 V
*
* Output 50%:
*     3.3 / 2 = 1.65 V
* ============================================================

meas tran tplh TRIG v(in) VAL=0.6 RISE=2 TARG v(Vout) VAL=1.65 RISE=2

meas tran tphl TRIG v(in) VAL=0.6 FALL=2 TARG v(Vout) VAL=1.65 FALL=2


* ============================================================
* 4. OUTPUT RISE/FALL TIME
*
* 10% VDDH = 0.33 V
* 90% VDDH = 2.97 V
* ============================================================

meas tran tr_out TRIG v(Vout) VAL=0.33 RISE=2 TARG v(Vout) VAL=2.97 RISE=2

meas tran tf_out TRIG v(Vout) VAL=2.97 FALL=2 TARG v(Vout) VAL=0.33 FALL=2


* ============================================================
* 5. INPUT INVERTER RISE/FALL
*
* Useful for determining whether the LV inverter itself
* becomes the speed bottleneck.
* ============================================================

meas tran tr_inb TRIG v(x1.inb) VAL=0.12 RISE=2 TARG v(x1.inb) VAL=1.08 RISE=2

meas tran tf_inb TRIG v(x1.inb) VAL=1.08 FALL=2 TARG v(x1.inb) VAL=0.12 FALL=2


* ============================================================
* 6. INTERNAL LEVEL-SHIFTER REGENERATION DELAY
*
* Measure how quickly A/B switch after input transition.
* ============================================================

meas tran t_in_rise WHEN v(in)=0.6 RISE=2
meas tran t_a_fall WHEN v(x1.a)=1.65 FALL=2
let t_regen_rise = t_a_fall - t_in_rise

meas tran t_in_fall WHEN v(in)=0.6 FALL=2
meas tran t_a_rise WHEN v(x1.a)=1.65 RISE=2
let t_regen_fall = t_a_rise - t_in_fall


* ============================================================
* 7. AVERAGE POWER
*
* Measure over two complete 40-ns input periods:
* 10 ns -> 90 ns
* ============================================================

meas tran iddl_avg AVG i(VDD_L) FROM=10n TO=90n
meas tran iddh_avg AVG i(VDD_H) FROM=10n TO=90n

let pavg_vddl = -1.2*iddl_avg
let pavg_vddh = -3.3*iddh_avg
let pavg_total = pavg_vddl + pavg_vddh

* Energy associated with one full 40 ns HIGH+LOW input cycle
let energy_cycle = pavg_total*40n


* ============================================================
* 8. STATIC POWER - INPUT HIGH
*
* Input is stable HIGH between ~10.1 and 30 ns.
* Use 20-28 ns, well away from edges.
* ============================================================

meas tran iddl_static_hi AVG i(VDD_L) FROM=20n TO=28n
meas tran iddh_static_hi AVG i(VDD_H) FROM=20n TO=28n

let pstatic_hi_l = -1.2*iddl_static_hi
let pstatic_hi_h = -3.3*iddh_static_hi
let pstatic_hi = pstatic_hi_l + pstatic_hi_h


* ============================================================
* 9. STATIC POWER - INPUT LOW
*
* Input is stable LOW from ~30.1 to 50 ns.
* ============================================================

meas tran iddl_static_lo AVG i(VDD_L) FROM=40n TO=48n
meas tran iddh_static_lo AVG i(VDD_H) FROM=40n TO=48n

let pstatic_lo_l = -1.2*iddl_static_lo
let pstatic_lo_h = -3.3*iddh_static_lo
let pstatic_lo = pstatic_lo_l + pstatic_lo_h


* ============================================================
* 10. NOMINAL FUNCTIONAL PASS CHECK
*
* Requirements:
*
* OUT HIGH > 90% VDDH = 2.97 V
* OUT LOW  < 10% VDDH = 0.33 V
*
* Internal A/B nodes must also resolve correctly.
* ============================================================

let functional_pass = 0

if out_hi > 2.97
  if out_lo < 0.33
    if a_lo < 0.33
      if a_hi > 2.97
        if b_hi > 2.97
          if b_lo < 0.33
            let functional_pass = 1
          end
        end
      end
    end
  end
end


* ============================================================
* 11. WRITE NOMINAL RESULTS
* ============================================================

echo ------------------------------------------------------------- >> level_shifter_results.txt
echo NOMINAL LOGIC LEVELS >> level_shifter_results.txt
echo ------------------------------------------------------------- >> level_shifter_results.txt

echo IN_high          = $&in_hi V >> level_shifter_results.txt
echo INB_low          = $&inb_lo V >> level_shifter_results.txt
echo A_low            = $&a_lo V >> level_shifter_results.txt
echo B_high           = $&b_hi V >> level_shifter_results.txt
echo OUT_high         = $&out_hi V >> level_shifter_results.txt

echo . >> level_shifter_results.txt

echo IN_low           = $&in_lo V >> level_shifter_results.txt
echo INB_high         = $&inb_hi V >> level_shifter_results.txt
echo A_high           = $&a_hi V >> level_shifter_results.txt
echo B_low            = $&b_lo V >> level_shifter_results.txt
echo OUT_low          = $&out_lo V >> level_shifter_results.txt

echo . >> level_shifter_results.txt


echo ------------------------------------------------------------- >> level_shifter_results.txt
echo TIMING >> level_shifter_results.txt
echo ------------------------------------------------------------- >> level_shifter_results.txt

echo TPLH             = $&tplh s >> level_shifter_results.txt
echo TPHL             = $&tphl s >> level_shifter_results.txt
echo OUT_rise_10_90   = $&tr_out s >> level_shifter_results.txt
echo OUT_fall_90_10   = $&tf_out s >> level_shifter_results.txt
echo INB_rise_10_90   = $&tr_inb s >> level_shifter_results.txt
echo INB_fall_90_10   = $&tf_inb s >> level_shifter_results.txt
echo Regen_input_rise = $&t_regen_rise s >> level_shifter_results.txt
echo Regen_input_fall = $&t_regen_fall s >> level_shifter_results.txt

echo . >> level_shifter_results.txt


echo ------------------------------------------------------------- >> level_shifter_results.txt
echo POWER >> level_shifter_results.txt
echo ------------------------------------------------------------- >> level_shifter_results.txt

echo IDDL_average      = $&iddl_avg A >> level_shifter_results.txt
echo IDDH_average      = $&iddh_avg A >> level_shifter_results.txt

echo Pavg_VDDL         = $&pavg_vddl W >> level_shifter_results.txt
echo Pavg_VDDH         = $&pavg_vddh W >> level_shifter_results.txt
echo Pavg_total        = $&pavg_total W >> level_shifter_results.txt

echo Energy_per_cycle  = $&energy_cycle J >> level_shifter_results.txt

echo . >> level_shifter_results.txt

echo Pstatic_IN_HIGH   = $&pstatic_hi W >> level_shifter_results.txt
echo Pstatic_IN_LOW    = $&pstatic_lo W >> level_shifter_results.txt

echo . >> level_shifter_results.txt


echo ------------------------------------------------------------- >> level_shifter_results.txt
echo FUNCTIONAL RESULT >> level_shifter_results.txt
echo ------------------------------------------------------------- >> level_shifter_results.txt

echo FUNCTIONAL_PASS   = $&functional_pass >> level_shifter_results.txt

echo . >> level_shifter_results.txt


* ============================================================
* 12. SAVE NOMINAL ASCII WAVEFORM
* ============================================================

wrdata level_shifter_nominal.txt v(in) v(x1.inb) v(x1.a) v(x1.b) v(Vout)


* ============================================================
* 13. OUTPUT LOAD SWEEP
*
* Tests whether the output buffer can drive increasingly
* heavy gate/capacitive loads.
* ============================================================

echo ============================================================= > level_shifter_load_sweep.txt
echo IHP SG13CMOS5L LEVEL SHIFTER OUTPUT LOAD SWEEP >> level_shifter_load_sweep.txt
echo VDDL=1.2V VDDH=3.3V >> level_shifter_load_sweep.txt
echo Columns: CLOAD TPLH TPHL TRISE TFALL OUT_HIGH OUT_LOW PAVG ENERGY PASS >> level_shifter_load_sweep.txt
echo ============================================================= >> level_shifter_load_sweep.txt

foreach cl 20f 50f 100f 200f 500f 1p

  alterparam VDDL=1.2
  alterparam VDDH=3.3
  alterparam CLOAD=$cl

  reset

  tran 10p 90n

  meas tran d_lh TRIG v(in) VAL=0.6 RISE=2 TARG v(Vout) VAL=1.65 RISE=2

  meas tran d_hl TRIG v(in) VAL=0.6 FALL=2 TARG v(Vout) VAL=1.65 FALL=2

  meas tran rtime TRIG v(Vout) VAL=0.33 RISE=2 TARG v(Vout) VAL=2.97 RISE=2

  meas tran ftime TRIG v(Vout) VAL=2.97 FALL=2 TARG v(Vout) VAL=0.33 FALL=2

  meas tran oh FIND v(Vout) AT=25n
  meas tran ol FIND v(Vout) AT=45n

  meas tran il AVG i(VDD_L) FROM=10n TO=90n
  meas tran ih AVG i(VDD_H) FROM=10n TO=90n

  let p_l = -1.2*il
  let p_h = -3.3*ih
  let p_total = p_l + p_h
  let e_toggle = p_total*40n

  let pass_load = 0

  if oh > 2.97
    if ol < 0.33
      let pass_load = 1
    end
  end

  echo $cl $&d_lh $&d_hl $&rtime $&ftime $&oh $&ol $&p_total $&e_toggle $&pass_load >> level_shifter_load_sweep.txt

end


* ============================================================
* 14. VDDL SWEEP
*
* Characterize low-voltage digital supply variation.
*
* Nominal standard-cell domain:
*       1.20 V
*
* Test:
*       1.08 -> 1.32 V
* ============================================================

echo ============================================================= > level_shifter_vddl_sweep.txt
echo IHP SG13CMOS5L LEVEL SHIFTER VDDL SWEEP >> level_shifter_vddl_sweep.txt
echo VDDH=3.3V CLOAD=50f >> level_shifter_vddl_sweep.txt
echo Columns: VDDL TPLH TPHL OUT_HIGH OUT_LOW A_LOW A_HIGH B_HIGH B_LOW PASS >> level_shifter_vddl_sweep.txt
echo ============================================================= >> level_shifter_vddl_sweep.txt

foreach vl 1.08 1.14 1.20 1.26 1.32

  alterparam VDDL=$vl
  alterparam VDDH=3.3
  alterparam CLOAD=50f

  reset

  tran 10p 90n

  let vl50 = 0.5*$vl

  meas tran d_lh TRIG v(in) VAL=$&vl50 RISE=2 TARG v(Vout) VAL=1.65 RISE=2

  meas tran d_hl TRIG v(in) VAL=$&vl50 FALL=2 TARG v(Vout) VAL=1.65 FALL=2

  meas tran oh FIND v(Vout) AT=25n
  meas tran ol FIND v(Vout) AT=45n

  meas tran al FIND v(x1.a) AT=25n
  meas tran ah FIND v(x1.a) AT=45n

  meas tran bh FIND v(x1.b) AT=25n
  meas tran bl FIND v(x1.b) AT=45n

  let pass_vl = 0

  if oh > 2.97
    if ol < 0.33
      if al < 0.33
        if ah > 2.97
          if bh > 2.97
            if bl < 0.33
              let pass_vl = 1
            end
          end
        end
      end
    end
  end

  echo $vl $&d_lh $&d_hl $&oh $&ol $&al $&ah $&bh $&bl $&pass_vl >> level_shifter_vddl_sweep.txt

end


* ============================================================
* 15. VDDH SWEEP
*
* Characterize HV-domain supply range.
* ============================================================

echo ============================================================= > level_shifter_vddh_sweep.txt
echo IHP SG13CMOS5L LEVEL SHIFTER VDDH SWEEP >> level_shifter_vddh_sweep.txt
echo VDDL=1.2V CLOAD=50f >> level_shifter_vddh_sweep.txt
echo Columns: VDDH TPLH TPHL OUT_HIGH OUT_LOW PAVG PASS >> level_shifter_vddh_sweep.txt
echo ============================================================= >> level_shifter_vddh_sweep.txt

foreach vh 3.0 3.15 3.3 3.45 3.6

  alterparam VDDL=1.2
  alterparam VDDH=$vh
  alterparam CLOAD=50f

  reset

  tran 10p 90n

  let vh50 = 0.5*$vh
  let vh90 = 0.9*$vh
  let vh10 = 0.1*$vh

  meas tran d_lh TRIG v(in) VAL=0.6 RISE=2 TARG v(Vout) VAL=$&vh50 RISE=2

  meas tran d_hl TRIG v(in) VAL=0.6 FALL=2 TARG v(Vout) VAL=$&vh50 FALL=2

  meas tran oh FIND v(Vout) AT=25n
  meas tran ol FIND v(Vout) AT=45n

  meas tran il AVG i(VDD_L) FROM=10n TO=90n
  meas tran ih AVG i(VDD_H) FROM=10n TO=90n

  let p_l = -1.2*il
  let p_h = -$vh*ih
  let p_total = p_l + p_h

  let pass_vh = 0

  if oh > vh90
    if ol < vh10
      let pass_vh = 1
    end
  end

  echo $vh $&d_lh $&d_hl $&oh $&ol $&p_total $&pass_vh >> level_shifter_vddh_sweep.txt

end


* ============================================================
* 16. RESTORE NOMINAL CONDITIONS FOR FINAL PLOTS
* ============================================================

alterparam VDDL=1.2
alterparam VDDH=3.3
alterparam CLOAD=50f

reset

tran 10p 90n


* ============================================================
* 17. SHOW PLOTS
* ============================================================

plot v(in) v(x1.inb) title '1.2-V Input and Complement'

plot v(x1.a) v(x1.b) v(Vout) title '3.3-V Level-Shifter Core and Output'


* ============================================================
* 18. FINAL CONSOLE SUMMARY
* ============================================================

echo .
echo =============================================================
echo LEVEL SHIFTER QUALIFICATION COMPLETE
echo =============================================================
echo .
echo Nominal qualification:
echo   level_shifter_results.txt
echo .
echo Nominal waveform data:
echo   level_shifter_nominal.txt
echo   level_shifter_nominal.raw
echo .
echo Output-load sweep:
echo   level_shifter_load_sweep.txt
echo .
echo Low-voltage supply sweep:
echo   level_shifter_vddl_sweep.txt
echo .
echo High-voltage supply sweep:
echo   level_shifter_vddh_sweep.txt
echo .
echo =============================================================

.endc
"}
