v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -310 -390 -310 -360 {
lab=GND}
N -310 -360 -310 -260 {
lab=GND}
N -310 -700 -310 -670 {
lab=vdd}
N -310 -310 -260 -310 {
lab=GND}
N -200 -310 -170 -310 {
lab=ainn}
N -200 -470 -170 -470 {
lab=ainp}
N -310 -490 -310 -390 {
lab=GND}
N -310 -610 -310 -490 {
lab=GND}
N -430 -630 -430 -600 {
lab=vss}
N -430 -540 -430 -510 {
lab=GND}
N -430 -510 -310 -510 {
lab=GND}
N -430 -400 -430 -370 {
lab=CLK}
N -430 -490 -430 -460 {
lab=GND}
N -430 -510 -430 -490 {
lab=GND}
N -310 -470 -260 -470 {
lab=GND}
N -220 -570 -190 -570 {
lab=vcm}
N -310 -570 -280 -570 {
lab=GND}
N -310 -260 -310 -40 {
lab=GND}
N -430 -130 -400 -130 {
lab=vrefp}
N -340 -130 -310 -130 {
lab=GND}
N -310 -155 -305 -155 {
lab=GND}
N -650 -510 -430 -510 {
lab=GND}
N -650 -420 -650 -390 {
lab=RSTN}
N -650 -510 -650 -480 {
lab=GND}
N -650 -620 -650 -590 {
lab=START}
N -650 -530 -650 -510 {
lab=GND}
N 240 -530 240 -500 {
lab=vdd}
N 60 -470 90 -470 {
lab=RSTN}
N 60 -430 90 -430 {
lab=START}
N 60 -390 90 -390 {
lab=vrefp}
N 60 -350 90 -350 {
lab=ainn}
N 60 -310 90 -310 {
lab=ainp}
N 60 -270 90 -270 {
lab=vcm}
N 60 -210 80 -210 {
lab=CLK}
N 80 -210 90 -210 {
lab=CLK}
N 240 -160 240 -140 {
lab=vss}
N 390 -470 420 -470 {
lab=busy}
N 390 -450 420 -450 {
lab=valid}
N 390 -430 420 -430 {
lab=C0}
N 390 -410 420 -410 {
lab=C1}
N 390 -390 420 -390 {
lab=C2}
N 390 -370 420 -370 {
lab=C3}
N 390 -350 420 -350 {
lab=C4}
N 390 -330 420 -330 {
lab=C5}
N 390 -310 420 -310 {
lab=C6}
N 390 -290 420 -290 {
lab=C7}
N 390 -270 420 -270 {
lab=C8}
N 390 -250 420 -250 {
lab=C9}
N 390 -210 420 -210 {
lab=Voutn}
C {sar_10_bit.sym} 240 -330 0 0 {name=x1}
C {vsource.sym} -230 -310 1 0 {name=V_VIN value="dc \{VCM - VDIFF/2\}" savecurrent=false}
C {vsource.sym} -310 -640 0 0 {name=VDD_SRC value="dc \{VDD\}" savecurrent=false}
C {gnd.sym} -310 -40 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -310 -700 0 0 {name=p24 sig_type=std_logic lab=vdd

}
C {lab_pin.sym} -170 -310 2 0 {name=p25 sig_type=std_logic lab=ainn}
C {vsource.sym} -230 -470 1 0 {name=V_VINP value="dc \{VCM + VDIFF/2\}" savecurrent=false}
C {lab_pin.sym} -170 -470 2 0 {name=p26 sig_type=std_logic lab=ainp}
C {vsource.sym} -430 -570 0 0 {name=V_VSS value="dc 0" savecurrent=false}
C {lab_pin.sym} -430 -630 0 0 {name=p28 sig_type=std_logic lab=vss

}
C {vsource.sym} -430 -430 2 0 {name=V_CLK value="PULSE(0 3.3 0n 20p 20p 10n 20n)" savecurrent=false}
C {lab_pin.sym} -430 -370 3 0 {name=p29 sig_type=std_logic lab=CLK}
C {vsource.sym} -250 -570 1 0 {name=V_VCM1 value="dc \{VCM\}" savecurrent=false}
C {lab_pin.sym} -190 -570 1 0 {name=V_VCM sig_type=std_logic lab=vcm

}
C {vsource.sym} -370 -130 3 0 {name=VREFP_SRC value="dc \{VDD\}" savecurrent=false}
C {lab_pin.sym} -430 -130 3 0 {name=V_VCM5 sig_type=std_logic lab=vrefp

}
C {vsource.sym} -650 -450 2 0 {name=V_RSTN value="PULSE(0 3.3 70n 1n 1n 10u 20u)" savecurrent=false}
C {lab_pin.sym} -650 -390 3 0 {name=p8 sig_type=std_logic lab=RSTN}
C {vsource.sym} -650 -560 0 0 {name=V_START value="PULSE(0 3.3 90n 1n 1n 20n 2u)" savecurrent=false}
C {lab_pin.sym} -650 -620 1 0 {name=p9 sig_type=std_logic lab=START}
C {code_shown.sym} 50 125 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice

.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice diode_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical

.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_io/spice/gf180mcu_fd_io.spice
"}
C {code.sym} 880 145 0 0 {name=s1
only_toplevel=true
value="
* ============================================================
* GF180 / SAR FSM + Comparator + CDAC mixed-signal testbench
* REAL DAC-switch version
* ============================================================

* Standard-cell SPICE and SAR FSM wrapper
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
.include /media/sf_LNA_chipathon/sar_adc_gf180/src/sar_fsm/sar_fsm_wrapper_fixed.spice

* ------------------------------------------------------------
* Main parameters
* ------------------------------------------------------------
.param VDD=3.3
.param VCM=1.65
.param VDIFF=0.001611328125



* ============================================================
* SAR ADC FULL-RANGE RAMP DEBUG THROUGH sar_10_bit SYMBOL
* Top ADC instance name: x1
*
* Top-level visible:
*   CLK RSTN START ainp ainn busy valid C9..C0 Voutn
*
* Internal to sar_10_bit:
*   x1.vcp, x1.vcn, x1.voutp
*   x1.sample, x1.sampleb, x1.comp_clk
*   x1.dbp9..x1.dbp0, x1.dbn9..x1.dbn0
*   x1.bp9..x1.bp0,   x1.bn9..x1.bn0
* ============================================================


.options reltol=1e-3 abstol=1e-10 vntol=1e-5
.options method=gear maxord=2
*.options plotwinsize=0
.options interp

.save i(VDD_SRC) i(VREFP_SRC) i(V_VCM1)
.save v(CLK) v(RSTN) v(START) v(busy) v(valid)
.save v(ainp) v(ainn) v(vdd) v(vrefp) v(vcm)
.save v(C9) v(C8) v(C7) v(C6) v(C5)
.save v(C4) v(C3) v(C2) v(C1) v(C0)
.save v(x1.sample) v(x1.sampleb) v(x1.comp_clk)
.save v(x1.vcp) v(x1.vcn) v(x1.voutp) v(Voutn)

.control
set num_threads=7
option klu
set noaskquit
set numdgt=12
set hcopydevtype=postscript
set wr_singlescale
set wr_vecnames

shell rm -f sar_adc_detailed.txt
shell rm -f sar_adc_summary.txt
shell rm -f sar_adc_progress.txt
shell rm -f sar_adc_code_linearity.txt
shell rm -f sar_transfer_plot.txt
shell rm -f sar_ramp_input_output_plot.txt
shell rm -f sar_protocol_plot.txt
shell rm -f sar_analog_plot.txt
shell rm -f sar_linearity_plot.txt
shell rm -f sar_power_plot.txt
shell rm -f sar_energy_plot.txt
shell rm -f sar_current_plot.txt
shell rm -f sar_bits_plot.txt
shell rm -f sar_low_waveforms.txt
shell rm -f sar_mid_waveforms.txt
shell rm -f sar_high_waveforms.txt
shell rm -f sar_transfer.ps
shell rm -f sar_reconstructed_output.ps
shell rm -f sar_ramp_input_output.ps
shell rm -f sar_code_error.ps
shell rm -f sar_abs_code_error.ps
shell rm -f sar_code_step.ps
shell rm -f sar_code_histogram.ps
shell rm -f sar_dnl.ps
shell rm -f sar_inl.ps
shell rm -f sar_protocol_flags.ps
shell rm -f sar_latency_vs_input.ps
shell rm -f sar_final_cdac_nodes.ps
shell rm -f sar_residue_vs_input.ps
shell rm -f sar_residue_lsb.ps
shell rm -f sar_comparator_result.ps
shell rm -f sar_power_total.ps
shell rm -f sar_power_breakdown.ps
shell rm -f sar_energy_total.ps
shell rm -f sar_energy_breakdown.ps
shell rm -f sar_peak_currents.ps
shell rm -f sar_output_bits_vs_input.ps
shell rm -f sar_low_timing.ps
shell rm -f sar_low_bits.ps
shell rm -f sar_low_cdac.ps
shell rm -f sar_low_comparator.ps
shell rm -f sar_low_input_output.ps
shell rm -f sar_low_power.ps
shell rm -f sar_low_current.ps
shell rm -f sar_mid_timing.ps
shell rm -f sar_mid_bits.ps
shell rm -f sar_mid_cdac.ps
shell rm -f sar_mid_comparator.ps
shell rm -f sar_mid_input_output.ps
shell rm -f sar_mid_power.ps
shell rm -f sar_mid_current.ps
shell rm -f sar_high_timing.ps
shell rm -f sar_high_bits.ps
shell rm -f sar_high_cdac.ps
shell rm -f sar_high_comparator.ps
shell rm -f sar_high_input_output.ps
shell rm -f sar_high_power.ps
shell rm -f sar_high_current.ps

* ---------------------------------------------------------------------
* Create visible report files before the long loop starts.
* The detailed file is appended after every completed conversion.
* ---------------------------------------------------------------------

echo SAR_ADC_RUN_STATUS = STARTED > sar_adc_summary.txt
echo Reports_are_written_in_ngspice_input_directory >> sar_adc_summary.txt
echo Simulation_mode = CONST_CALIBRATED_4096_POINT_SIGNOFF >> sar_adc_summary.txt

echo INDEX VIN_CMD_V VIN_MEAS_V IDEAL_CODE ADC_CODE ERROR_LSB ABS_ERROR_LSB CODE_STEP HAMMING_DISTANCE VALID BUSY STABLE VALID_AT_START_V VALID_PEAK_V VALID_RESULT_V BUSY_PEAK_V T_VALID_S LATENCY_S VCP_V VCN_V RESIDUE_V RESIDUE_LSB VOUTP_V VOUTN_V COMP_LOW_V COMP_HIGH_V VRECON_V P_IDLE_W P_DYNAMIC_W P_VDD_W P_VREF_W P_VCM_W P_TOTAL_W E_VDD_J E_VREF_J E_VCM_J E_TOTAL_J I_VDD_PEAK_A I_VREF_PEAK_A I_VCM_PEAK_A C9 C8 C7 C6 C5 C4 C3 C2 C1 C0 > sar_adc_detailed.txt

echo SAR_ADC_PROGRESS_REPORT > sar_adc_progress.txt
echo Completed_conversions Last_input_V Last_code >> sar_adc_progress.txt

echo CODE COUNT DNL_LSB INL_RAW_LSB INL_ENDPOINT_CORRECTED_LSB > sar_adc_code_linearity.txt

unset wr_vecnames

* ---------------------------------------------------------------------
* Configuration
* ---------------------------------------------------------------------
setplot const

let nbit             = 10
let ncode            = 1024
let vdiff_min        = -1.65
let vdiff_max        = 1.65
let vspan            = vdiff_max-vdiff_min
let lsb              = vspan/ncode

* OSR 4 gives four samples per ideal code and 0.25 LSB input steps.
* Set OSR to 1 for a faster functional smoke test.
let osr              = 4
let npoints          = ncode*osr
let ramp_step        = vspan/npoints

echo Expected_conversions = $&npoints >> sar_adc_summary.txt

let logic_th         = 1.65
let t_start_accept   = 100n
let t_cal_stop       = 2u
let t_sample_delay   = 2n
let t_stable_delay   = 12n
let t_post_margin    = 20n

* Persistent timing calibration values. These are created in plot const
* before any transient run, so reset and destroy cannot remove them.
let calibration_ok    = 0
let t_valid_ref       = -1
let t_read_ref        = -1
let t_read_late_ref   = -1
let t_run_stop        = t_cal_stop

* Review limits. Edit these to match the ADC specification.
let dnl_limit        = 1
let inl_limit        = 2
let code_err_limit   = 2

* ---------------------------------------------------------------------
* Aggregate conversion vectors
* ---------------------------------------------------------------------
let sample_index_vec = unitvec($&npoints)*0
let vin_cmd_vec      = unitvec($&npoints)*0
let vin_meas_vec     = unitvec($&npoints)*0
let ideal_code_vec   = unitvec($&npoints)*0
let adc_code_vec     = unitvec($&npoints)*0
let err_lsb_vec      = unitvec($&npoints)*0
let abs_err_vec      = unitvec($&npoints)*0
let code_step_vec    = unitvec($&npoints)*0
let hamming_vec      = unitvec($&npoints)*0

let valid_flag_vec   = unitvec($&npoints)*0
let busy_flag_vec    = unitvec($&npoints)*0
let stable_flag_vec  = unitvec($&npoints)*0
let valid_start_vec    = unitvec($&npoints)*0
let valid_peak_vec   = unitvec($&npoints)*0
let valid_result_vec = unitvec($&npoints)*0
let busy_peak_vec    = unitvec($&npoints)*0
let t_valid_vec      = unitvec($&npoints)*0
let latency_vec      = unitvec($&npoints)*0

let vcp_vec          = unitvec($&npoints)*0
let vcn_vec          = unitvec($&npoints)*0
let residue_vec      = unitvec($&npoints)*0
let residue_lsb_vec  = unitvec($&npoints)*0
let comp_low_vec     = unitvec($&npoints)*0
let comp_high_vec    = unitvec($&npoints)*0
let voutp_vec        = unitvec($&npoints)*0
let voutn_vec        = unitvec($&npoints)*0
let vrecon_vec       = unitvec($&npoints)*0

let p_idle_vec       = unitvec($&npoints)*0
let p_vdd_vec        = unitvec($&npoints)*0
let p_vref_vec       = unitvec($&npoints)*0
let p_vcm_vec        = unitvec($&npoints)*0
let p_total_vec      = unitvec($&npoints)*0
let p_dynamic_vec    = unitvec($&npoints)*0
let e_vdd_vec        = unitvec($&npoints)*0
let e_vref_vec       = unitvec($&npoints)*0
let e_vcm_vec        = unitvec($&npoints)*0
let energy_vec       = unitvec($&npoints)*0

let i_vdd_peak_vec   = unitvec($&npoints)*0
let i_vref_peak_vec  = unitvec($&npoints)*0
let i_vcm_peak_vec   = unitvec($&npoints)*0

let c9_vec           = unitvec($&npoints)*0
let c8_vec           = unitvec($&npoints)*0
let c7_vec           = unitvec($&npoints)*0
let c6_vec           = unitvec($&npoints)*0
let c5_vec           = unitvec($&npoints)*0
let c4_vec           = unitvec($&npoints)*0
let c3_vec           = unitvec($&npoints)*0
let c2_vec           = unitvec($&npoints)*0
let c1_vec           = unitvec($&npoints)*0
let c0_vec           = unitvec($&npoints)*0

* ---------------------------------------------------------------------
* Code-density vectors
* ---------------------------------------------------------------------
let code_index_vec   = unitvec($&ncode)*0
let histogram_vec    = unitvec($&ncode)*0
let dnl_vec          = unitvec($&ncode)*0
let inl_raw_vec      = unitvec($&ncode)*0
let inl_ep_vec       = unitvec($&ncode)*0

* ---------------------------------------------------------------------
* Counters and accumulators
* ---------------------------------------------------------------------
let run_index             = 0
let previous_code         = -1

let valid_fail_count      = 0
let busy_fail_count       = 0
let unstable_count        = 0
let monotonic_fail_count  = 0
let jump_gt1_count        = 0

let sum_err               = 0
let sum_err2              = 0
let max_abs_err           = 0
let err_min               = 1e99
let err_max               = -1e99

let sum_residue           = 0
let sum_residue2          = 0
let residue_min           = 1e99
let residue_max           = -1e99
let residue_abs_max       = 0

let code_min_seen         = 1024
let code_max_seen         = -1
let first_code_seen       = -1
let last_code_seen        = -1

let total_hamming         = 0
let max_hamming           = 0
let max_code_step         = 0
let code0_count           = 0
let code1023_count        = 0

let sum_idle_power        = 0
let sum_vdd_power         = 0
let sum_vref_power        = 0
let sum_vcm_power         = 0
let sum_total_power       = 0
let sum_e_vdd             = 0
let sum_e_vref            = 0
let sum_e_vcm             = 0
let sum_energy            = 0
let sum_latency           = 0
let valid_conversion_count = 0

let pmin                  = 1e99
let pmax                  = -1e99
let emin                  = 1e99
let emax                  = -1e99
let latmin                = 1e99
let latmax                = -1e99

let max_i_vdd_peak        = 0
let max_i_vref_peak       = 0
let max_i_vcm_peak        = 0
let comp_result_min       = 1e99
let comp_result_max       = -1e99

let prev_c9               = 0
let prev_c8               = 0
let prev_c7               = 0
let prev_c6               = 0
let prev_c5               = 0
let prev_c4               = 0
let prev_c3               = 0
let prev_c2               = 0
let prev_c1               = 0
let prev_c0               = 0

let next_progress         = 255

let found_transition_1    = 0
let found_transition_512  = 0
let found_transition_1023 = 0
let vt1                   = 999
let vt512                 = 999
let vt1023                = 999

echo ============================================================
echo Starting_SAR_ADC_static_ramp_characterization
echo Number_of_conversions = $&npoints
echo Input_step_V = $&ramp_step
echo ============================================================

* =====================================================================
* Timing calibration using one midscale conversion
* =====================================================================
echo Calibration_status = STARTED >> sar_adc_summary.txt
echo Calibration_storage = const_plot_persistent_vectors >> sar_adc_summary.txt

alterparam VDIFF = 0
reset
tran 500p $&t_cal_stop 0 500p

meas tran cal_valid_start_m FIND v(valid) AT=100n
meas tran cal_valid_peak_m MAX v(valid) FROM=100n TO=$&t_cal_stop
meas tran cal_busy_peak_m MAX v(busy) FROM=90n TO=$&t_cal_stop

let const.calibration_ok = 0
let const.t_valid_ref = -1
let const.t_read_ref = -1
let const.t_read_late_ref = -1
let const.t_run_stop = t_cal_stop

if cal_valid_start_m < logic_th
  if cal_valid_peak_m > logic_th
    meas tran cal_valid_edge_m WHEN v(valid)=1.65 RISE=1 TD=100n
    let const.t_valid_ref = cal_valid_edge_m
    let const.t_read_ref = cal_valid_edge_m+t_sample_delay
    let const.t_read_late_ref = cal_valid_edge_m+t_stable_delay
    let const.t_run_stop = cal_valid_edge_m+t_stable_delay+t_post_margin
    let const.calibration_ok = 1
  end
end

echo Calibration_valid_at_start_V = $&cal_valid_start_m >> sar_adc_summary.txt
echo Calibration_valid_peak_V = $&cal_valid_peak_m >> sar_adc_summary.txt
echo Calibration_busy_peak_V = $&cal_busy_peak_m >> sar_adc_summary.txt
echo Calibration_valid_edge_s = $&t_valid_ref >> sar_adc_summary.txt
echo Calibrated_ramp_stop_time_s = $&t_run_stop >> sar_adc_summary.txt

if calibration_ok < 0.5
  echo SAR_ADC_RUN_STATUS = CALIBRATION_FAILED >> sar_adc_summary.txt
  echo ERROR = No_VALID_rising_edge_found_before_2us >> sar_adc_summary.txt
  echo Check_RSTN_START_busy_valid_and_FSM_timing >> sar_adc_summary.txt
  echo Calibration_failed_no_ramp_started
  quit
end

echo Calibration_status = PASS >> sar_adc_summary.txt

destroy $curplot
setplot const

* =====================================================================
* Static-ramp conversion loop
* =====================================================================
while run_index < npoints

  let input_command = vdiff_min+(run_index+0.5)*ramp_step
  let ideal_now = floor(run_index/osr)

  alterparam VDIFF = $&input_command
  reset
  tran 500p $&t_run_stop 0 500p

  * ------------------------------------------------------------
  * Output bits are decoded after VALID using scalar measurements.
  * This avoids threshold_comparison inside LET expressions.
  * ------------------------------------------------------------

  * ------------------------------------------------------------
  * Protocol checks using the calibrated synchronous conversion time.
  * No conditional per-run edge measurement is used.
  * ------------------------------------------------------------
  meas tran valid_start_m FIND v(valid) AT=100n
  meas tran valid_peak_m MAX v(valid) FROM=100n TO=$&t_run_stop
  meas tran busy_peak_m MAX v(busy) FROM=90n TO=$&t_run_stop
  meas tran valid_result_m FIND v(valid) AT=$&t_read_ref

  let valid_now = 0
  let busy_now = 0
  let tvalid_now = -1
  let latency_now = -1

  if busy_peak_m > logic_th
    let busy_now = 1
  end

  if valid_start_m < logic_th
    if valid_peak_m > logic_th
      if valid_result_m > logic_th
        let valid_now = 1
        let tvalid_now = t_valid_ref
        let latency_now = t_valid_ref-t_start_accept
      end
    end
  end

  * ------------------------------------------------------------
  * Output code and stability after VALID.
  * Measure each bit as a scalar, then threshold it with IF.
  * ------------------------------------------------------------
  meas tran c9_read_m FIND v(C9) AT=$&t_read_ref
  meas tran c8_read_m FIND v(C8) AT=$&t_read_ref
  meas tran c7_read_m FIND v(C7) AT=$&t_read_ref
  meas tran c6_read_m FIND v(C6) AT=$&t_read_ref
  meas tran c5_read_m FIND v(C5) AT=$&t_read_ref
  meas tran c4_read_m FIND v(C4) AT=$&t_read_ref
  meas tran c3_read_m FIND v(C3) AT=$&t_read_ref
  meas tran c2_read_m FIND v(C2) AT=$&t_read_ref
  meas tran c1_read_m FIND v(C1) AT=$&t_read_ref
  meas tran c0_read_m FIND v(C0) AT=$&t_read_ref

  meas tran c9_late_m FIND v(C9) AT=$&t_read_late_ref
  meas tran c8_late_m FIND v(C8) AT=$&t_read_late_ref
  meas tran c7_late_m FIND v(C7) AT=$&t_read_late_ref
  meas tran c6_late_m FIND v(C6) AT=$&t_read_late_ref
  meas tran c5_late_m FIND v(C5) AT=$&t_read_late_ref
  meas tran c4_late_m FIND v(C4) AT=$&t_read_late_ref
  meas tran c3_late_m FIND v(C3) AT=$&t_read_late_ref
  meas tran c2_late_m FIND v(C2) AT=$&t_read_late_ref
  meas tran c1_late_m FIND v(C1) AT=$&t_read_late_ref
  meas tran c0_late_m FIND v(C0) AT=$&t_read_late_ref

  let c9_now = 0
  let c8_now = 0
  let c7_now = 0
  let c6_now = 0
  let c5_now = 0
  let c4_now = 0
  let c3_now = 0
  let c2_now = 0
  let c1_now = 0
  let c0_now = 0

  if c9_read_m > logic_th
    let c9_now = 1
  end
  if c8_read_m > logic_th
    let c8_now = 1
  end
  if c7_read_m > logic_th
    let c7_now = 1
  end
  if c6_read_m > logic_th
    let c6_now = 1
  end
  if c5_read_m > logic_th
    let c5_now = 1
  end
  if c4_read_m > logic_th
    let c4_now = 1
  end
  if c3_read_m > logic_th
    let c3_now = 1
  end
  if c2_read_m > logic_th
    let c2_now = 1
  end
  if c1_read_m > logic_th
    let c1_now = 1
  end
  if c0_read_m > logic_th
    let c0_now = 1
  end

  let adc_now = 512*c9_now+256*c8_now+128*c7_now+64*c6_now
  let adc_now = adc_now+32*c5_now+16*c4_now+8*c3_now+4*c2_now
  let adc_now = adc_now+2*c1_now+c0_now

  let c9_late = 0
  let c8_late = 0
  let c7_late = 0
  let c6_late = 0
  let c5_late = 0
  let c4_late = 0
  let c3_late = 0
  let c2_late = 0
  let c1_late = 0
  let c0_late = 0

  if c9_late_m > logic_th
    let c9_late = 1
  end
  if c8_late_m > logic_th
    let c8_late = 1
  end
  if c7_late_m > logic_th
    let c7_late = 1
  end
  if c6_late_m > logic_th
    let c6_late = 1
  end
  if c5_late_m > logic_th
    let c5_late = 1
  end
  if c4_late_m > logic_th
    let c4_late = 1
  end
  if c3_late_m > logic_th
    let c3_late = 1
  end
  if c2_late_m > logic_th
    let c2_late = 1
  end
  if c1_late_m > logic_th
    let c1_late = 1
  end
  if c0_late_m > logic_th
    let c0_late = 1
  end

  let adc_late = 512*c9_late+256*c8_late+128*c7_late+64*c6_late
  let adc_late = adc_late+32*c5_late+16*c4_late+8*c3_late+4*c2_late
  let adc_late = adc_late+2*c1_late+c0_late

  let stable_now = 1
  if adc_late != adc_now
    let stable_now = 0
  end

  * ------------------------------------------------------------
  * Analog state at the conversion result.
  * ------------------------------------------------------------
  meas tran ainp_m FIND v(ainp) AT=$&t_read_ref
  meas tran ainn_m FIND v(ainn) AT=$&t_read_ref
  meas tran vcp_m FIND v(x1.vcp) AT=$&t_read_ref
  meas tran vcn_m FIND v(x1.vcn) AT=$&t_read_ref
  meas tran voutp_m FIND v(x1.voutp) AT=$&t_read_ref
  meas tran voutn_m FIND v(Voutn) AT=$&t_read_ref

  let vin_now = ainp_m-ainn_m
  let residue_now = vcp_m-vcn_m
  let err_now = adc_now-ideal_now
  let abs_err_now = abs(err_now)
  let vrecon_now = vdiff_min+(adc_now+0.5)*lsb
  let residue_lsb_now = residue_now/lsb
  let comp_low_now = voutp_m
  let comp_high_now = voutn_m
  if voutn_m < voutp_m
    let comp_low_now = voutn_m
    let comp_high_now = voutp_m
  end

  let code_step_now = 0
  let hamming_now = 0
  if run_index > 0
    let code_step_now = adc_now-previous_code
    let hamming_now = abs(c9_now-prev_c9)+abs(c8_now-prev_c8)
    let hamming_now = hamming_now+abs(c7_now-prev_c7)+abs(c6_now-prev_c6)
    let hamming_now = hamming_now+abs(c5_now-prev_c5)+abs(c4_now-prev_c4)
    let hamming_now = hamming_now+abs(c3_now-prev_c3)+abs(c2_now-prev_c2)
    let hamming_now = hamming_now+abs(c1_now-prev_c1)+abs(c0_now-prev_c0)
  end

  * Bit values c9_now through c0_now were decoded above.

  * ------------------------------------------------------------
  * Power, current, and conversion energy.
  *
  * Positive source power means net power delivered into the ADC.
  * VCM power is signed because charge may return to the VCM source.
  * ------------------------------------------------------------
  let p_vdd_inst = -v(vdd)*i(VDD_SRC)
  let p_vref_inst = -v(vrefp)*i(VREFP_SRC)
  let p_vcm_inst = -v(vcm)*i(V_VCM1)
  let p_total_inst = p_vdd_inst+p_vref_inst+p_vcm_inst

  let i_vdd_draw = -i(VDD_SRC)
  let i_vref_draw = -i(VREFP_SRC)
  let i_vcm_draw = -i(V_VCM1)

  meas tran p_idle_m AVG p_total_inst FROM=75n TO=85n
  meas tran p_vdd_m AVG p_vdd_inst FROM=$&t_start_accept TO=$&t_valid_ref
  meas tran p_vref_m AVG p_vref_inst FROM=$&t_start_accept TO=$&t_valid_ref
  meas tran p_vcm_m AVG p_vcm_inst FROM=$&t_start_accept TO=$&t_valid_ref
  meas tran p_total_m AVG p_total_inst FROM=$&t_start_accept TO=$&t_valid_ref
  meas tran e_vdd_m INTEG p_vdd_inst FROM=$&t_start_accept TO=$&t_valid_ref
  meas tran e_vref_m INTEG p_vref_inst FROM=$&t_start_accept TO=$&t_valid_ref
  meas tran e_vcm_m INTEG p_vcm_inst FROM=$&t_start_accept TO=$&t_valid_ref
  meas tran energy_m INTEG p_total_inst FROM=$&t_start_accept TO=$&t_valid_ref

  let p_dynamic_m = p_total_m-p_idle_m

  meas tran i_vdd_peak_m MAX i_vdd_draw FROM=$&t_start_accept TO=$&t_valid_ref
  meas tran i_vref_peak_m MAX i_vref_draw FROM=$&t_start_accept TO=$&t_valid_ref
  meas tran i_vcm_peak_m MAX i_vcm_draw FROM=$&t_start_accept TO=$&t_valid_ref

  * ------------------------------------------------------------
  * Checks.
  * ------------------------------------------------------------
  if valid_now < 0.5
    let const.valid_fail_count = const.valid_fail_count+1
  end

  if busy_now < 0.5
    let const.busy_fail_count = const.busy_fail_count+1
  end

  if stable_now < 0.5
    let const.unstable_count = const.unstable_count+1
  end

  if run_index > 0
    if adc_now < previous_code
      let const.monotonic_fail_count = const.monotonic_fail_count+1
    end

    if adc_now > previous_code+1
      let const.jump_gt1_count = const.jump_gt1_count+1
    end
  end

  if abs_err_now > max_abs_err
    let const.max_abs_err = abs_err_now
  end

  let const.sum_err = const.sum_err+err_now
  let const.sum_err2 = const.sum_err2+err_now*err_now
  let const.sum_residue = const.sum_residue+residue_now
  let const.sum_residue2 = const.sum_residue2+residue_now*residue_now
  let const.total_hamming = const.total_hamming+hamming_now

  if err_now < err_min
    let const.err_min = err_now
  end
  if err_now > err_max
    let const.err_max = err_now
  end

  if residue_now < residue_min
    let const.residue_min = residue_now
  end
  if residue_now > residue_max
    let const.residue_max = residue_now
  end
  if abs(residue_now) > residue_abs_max
    let const.residue_abs_max = abs(residue_now)
  end

  if adc_now < code_min_seen
    let const.code_min_seen = adc_now
  end
  if adc_now > code_max_seen
    let const.code_max_seen = adc_now
  end
  if run_index < 0.5
    let const.first_code_seen = adc_now
  end
  let const.last_code_seen = adc_now

  if hamming_now > max_hamming
    let const.max_hamming = hamming_now
  end
  if abs(code_step_now) > max_code_step
    let const.max_code_step = abs(code_step_now)
  end

  if adc_now < 0.5
    let const.code0_count = const.code0_count+1
  end
  if adc_now > 1022.5
    let const.code1023_count = const.code1023_count+1
  end

  if i_vdd_peak_m > max_i_vdd_peak
    let const.max_i_vdd_peak = i_vdd_peak_m
  end
  if i_vref_peak_m > max_i_vref_peak
    let const.max_i_vref_peak = i_vref_peak_m
  end
  if i_vcm_peak_m > max_i_vcm_peak
    let const.max_i_vcm_peak = i_vcm_peak_m
  end

  if comp_low_now < comp_result_min
    let const.comp_result_min = comp_low_now
  end
  if comp_high_now > comp_result_max
    let const.comp_result_max = comp_high_now
  end

  if found_transition_1 < 0.5
    if adc_now >= 1
      let const.vt1 = vin_now
      let const.found_transition_1 = 1
    end
  end

  if found_transition_512 < 0.5
    if adc_now >= 512
      let const.vt512 = vin_now
      let const.found_transition_512 = 1
    end
  end

  if found_transition_1023 < 0.5
    if adc_now >= 1023
      let const.vt1023 = vin_now
      let const.found_transition_1023 = 1
    end
  end

  * ------------------------------------------------------------
  * Store this conversion in persistent const vectors.
  * ------------------------------------------------------------
  let const.sample_index_vec[$&run_index] = run_index
  let const.vin_cmd_vec[$&run_index] = input_command
  let const.vin_meas_vec[$&run_index] = vin_now
  let const.ideal_code_vec[$&run_index] = ideal_now
  let const.adc_code_vec[$&run_index] = adc_now
  let const.err_lsb_vec[$&run_index] = err_now
  let const.abs_err_vec[$&run_index] = abs_err_now
  let const.code_step_vec[$&run_index] = code_step_now
  let const.hamming_vec[$&run_index] = hamming_now

  let const.valid_flag_vec[$&run_index] = valid_now
  let const.busy_flag_vec[$&run_index] = busy_now
  let const.stable_flag_vec[$&run_index] = stable_now
  let const.valid_start_vec[$&run_index] = valid_start_m
  let const.valid_peak_vec[$&run_index] = valid_peak_m
  let const.valid_result_vec[$&run_index] = valid_result_m
  let const.busy_peak_vec[$&run_index] = busy_peak_m
  let const.t_valid_vec[$&run_index] = tvalid_now
  let const.latency_vec[$&run_index] = latency_now

  let const.vcp_vec[$&run_index] = vcp_m
  let const.vcn_vec[$&run_index] = vcn_m
  let const.residue_vec[$&run_index] = residue_now
  let const.residue_lsb_vec[$&run_index] = residue_lsb_now
  let const.comp_low_vec[$&run_index] = comp_low_now
  let const.comp_high_vec[$&run_index] = comp_high_now
  let const.voutp_vec[$&run_index] = voutp_m
  let const.voutn_vec[$&run_index] = voutn_m
  let const.vrecon_vec[$&run_index] = vrecon_now

  let const.p_idle_vec[$&run_index] = p_idle_m
  let const.p_vdd_vec[$&run_index] = p_vdd_m
  let const.p_vref_vec[$&run_index] = p_vref_m
  let const.p_vcm_vec[$&run_index] = p_vcm_m
  let const.p_total_vec[$&run_index] = p_total_m
  let const.p_dynamic_vec[$&run_index] = p_dynamic_m
  let const.e_vdd_vec[$&run_index] = e_vdd_m
  let const.e_vref_vec[$&run_index] = e_vref_m
  let const.e_vcm_vec[$&run_index] = e_vcm_m
  let const.energy_vec[$&run_index] = energy_m

  let const.i_vdd_peak_vec[$&run_index] = i_vdd_peak_m
  let const.i_vref_peak_vec[$&run_index] = i_vref_peak_m
  let const.i_vcm_peak_vec[$&run_index] = i_vcm_peak_m

  let const.c9_vec[$&run_index] = c9_now
  let const.c8_vec[$&run_index] = c8_now
  let const.c7_vec[$&run_index] = c7_now
  let const.c6_vec[$&run_index] = c6_now
  let const.c5_vec[$&run_index] = c5_now
  let const.c4_vec[$&run_index] = c4_now
  let const.c3_vec[$&run_index] = c3_now
  let const.c2_vec[$&run_index] = c2_now
  let const.c1_vec[$&run_index] = c1_now
  let const.c0_vec[$&run_index] = c0_now

  let const.histogram_vec[$&adc_now] = const.histogram_vec[$&adc_now]+1

  if valid_now > 0.5
    let const.sum_idle_power = const.sum_idle_power+p_idle_m
    let const.sum_vdd_power = const.sum_vdd_power+p_vdd_m
    let const.sum_vref_power = const.sum_vref_power+p_vref_m
    let const.sum_vcm_power = const.sum_vcm_power+p_vcm_m
    let const.sum_total_power = const.sum_total_power+p_total_m
    let const.sum_e_vdd = const.sum_e_vdd+e_vdd_m
    let const.sum_e_vref = const.sum_e_vref+e_vref_m
    let const.sum_e_vcm = const.sum_e_vcm+e_vcm_m
    let const.sum_energy = const.sum_energy+energy_m
    let const.sum_latency = const.sum_latency+latency_now
    let const.valid_conversion_count = const.valid_conversion_count+1

    if p_total_m < pmin
      let const.pmin = p_total_m
    end

    if p_total_m > pmax
      let const.pmax = p_total_m
    end

    if energy_m < emin
      let const.emin = energy_m
    end

    if energy_m > emax
      let const.emax = energy_m
    end

    if latency_now < latmin
      let const.latmin = latency_now
    end

    if latency_now > latmax
      let const.latmax = latency_now
    end
  end

  * ------------------------------------------------------------
  * Append one exact row immediately.
  * Echo is used so INDEX is the actual loop value, not an implicit scale.
  * ------------------------------------------------------------
  echo $&run_index $&input_command $&vin_now $&ideal_now $&adc_now $&err_now $&abs_err_now $&code_step_now $&hamming_now $&valid_now $&busy_now $&stable_now $&valid_start_m $&valid_peak_m $&valid_result_m $&busy_peak_m $&tvalid_now $&latency_now $&vcp_m $&vcn_m $&residue_now $&residue_lsb_now $&voutp_m $&voutn_m $&comp_low_now $&comp_high_now $&vrecon_now $&p_idle_m $&p_dynamic_m $&p_vdd_m $&p_vref_m $&p_vcm_m $&p_total_m $&e_vdd_m $&e_vref_m $&e_vcm_m $&energy_m $&i_vdd_peak_m $&i_vref_peak_m $&i_vcm_peak_m $&c9_now $&c8_now $&c7_now $&c6_now $&c5_now $&c4_now $&c3_now $&c2_now $&c1_now $&c0_now >> sar_adc_detailed.txt

  let const.previous_code = adc_now
  let const.prev_c9 = c9_now
  let const.prev_c8 = c8_now
  let const.prev_c7 = c7_now
  let const.prev_c6 = c6_now
  let const.prev_c5 = c5_now
  let const.prev_c4 = c4_now
  let const.prev_c3 = c3_now
  let const.prev_c2 = c2_now
  let const.prev_c1 = c1_now
  let const.prev_c0 = c0_now
  let const.run_index = const.run_index+1

  if run_index > next_progress
    echo $&run_index $&input_command $&adc_now >> sar_adc_progress.txt
    let const.next_progress = const.next_progress+256
  end

  * Detailed report is appended after each completed conversion.

  * Current plot is the just-completed transient plot.
  destroy $curplot
  setplot const
end

* =====================================================================
* DNL and endpoint-corrected INL
* =====================================================================
let code_k = 0
while code_k < ncode
  let code_index_vec[$&code_k] = code_k
  let code_k = code_k+1
end

let missing_code_count = 0
let dnl_min = 1e99
let dnl_max = -1e99
let cumulative_dnl = 0

let code_k = 1
while code_k < 1023

  let dnl_now = histogram_vec[$&code_k]/osr-1
  let dnl_vec[$&code_k] = dnl_now
  let cumulative_dnl = cumulative_dnl+dnl_now
  let inl_raw_vec[$&code_k] = cumulative_dnl

  if histogram_vec[$&code_k] < 0.5
    let missing_code_count = missing_code_count+1
  end

  if dnl_now < dnl_min
    let dnl_min = dnl_now
  end

  if dnl_now > dnl_max
    let dnl_max = dnl_now
  end

  let code_k = code_k+1
end

let cumulative_end = cumulative_dnl
let inl_min = 1e99
let inl_max = -1e99

let code_k = 1
while code_k < 1023

  let inl_now = inl_raw_vec[$&code_k]-((code_k-1)/1021)*cumulative_end
  let inl_ep_vec[$&code_k] = inl_now

  if inl_now < inl_min
    let inl_min = inl_now
  end

  if inl_now > inl_max
    let inl_max = inl_now
  end

  let code_k = code_k+1
end

let code_k = 0
while code_k < ncode
  let code_count_now = histogram_vec[$&code_k]
  let code_dnl_now = dnl_vec[$&code_k]
  let code_inl_raw_now = inl_raw_vec[$&code_k]
  let code_inl_ep_now = inl_ep_vec[$&code_k]
  echo $&code_k $&code_count_now $&code_dnl_now $&code_inl_raw_now $&code_inl_ep_now >> sar_adc_code_linearity.txt
  let code_k = code_k+1
end

* =====================================================================
* Summary calculations
* =====================================================================
let mean_err = sum_err/npoints
let rms_err = sqrt(sum_err2/npoints)
let mean_residue = sum_residue/npoints
let rms_residue = sqrt(sum_residue2/npoints)
let avg_hamming = total_hamming/(npoints-1)
let residue_abs_max_lsb = residue_abs_max/lsb

let avg_idle_power = 0
let avg_vdd_power = 0
let avg_vref_power = 0
let avg_vcm_power = 0
let avg_total_power = 0
let avg_e_vdd = 0
let avg_e_vref = 0
let avg_e_vcm = 0
let avg_energy = 0
let avg_latency = 0
let conversion_rate = 0
let energy_per_bit = 0
let vref_energy_percent = 0

if valid_conversion_count > 0
  let avg_idle_power = sum_idle_power/valid_conversion_count
  let avg_vdd_power = sum_vdd_power/valid_conversion_count
  let avg_vref_power = sum_vref_power/valid_conversion_count
  let avg_vcm_power = sum_vcm_power/valid_conversion_count
  let avg_total_power = sum_total_power/valid_conversion_count
  let avg_e_vdd = sum_e_vdd/valid_conversion_count
  let avg_e_vref = sum_e_vref/valid_conversion_count
  let avg_e_vcm = sum_e_vcm/valid_conversion_count
  let avg_energy = sum_energy/valid_conversion_count
  let avg_latency = sum_latency/valid_conversion_count
  if avg_latency > 0
    let conversion_rate = 1/avg_latency
  end
  let energy_per_bit = avg_energy/nbit
  if avg_energy > 0
    let vref_energy_percent = 100*avg_e_vref/avg_energy
  end
end

let midscale_offset_v = vt512
let midscale_offset_lsb = vt512/lsb

let endpoint_gain_error_percent = 999
if found_transition_1 > 0.5
  if found_transition_1023 > 0.5
    let measured_transition_span = vt1023-vt1
    let ideal_transition_span = 1022*lsb
    let endpoint_gain_error_percent = 100*(measured_transition_span/ideal_transition_span-1)
  end
end

let overall_fail = valid_fail_count+busy_fail_count
let overall_fail = overall_fail+unstable_count
let overall_fail = overall_fail+monotonic_fail_count
let overall_fail = overall_fail+missing_code_count

if dnl_max > dnl_limit
  let overall_fail = overall_fail+1
end

if dnl_min < -dnl_limit
  let overall_fail = overall_fail+1
end

if inl_max > inl_limit
  let overall_fail = overall_fail+1
end

if inl_min < -inl_limit
  let overall_fail = overall_fail+1
end

if max_abs_err > code_err_limit
  let overall_fail = overall_fail+1
end

* =====================================================================
* Detailed report.
*
* wrdata is used instead of echoing a long row. This guarantees one
* named column per vector and prevents zero fields from disappearing.
* =====================================================================
setplot const
setscale sample_index_vec
set wr_singlescale
set wr_vecnames
option numdgt=12

* Detailed report was written incrementally in the conversion loop.

* =====================================================================
* Summary report
* =====================================================================
echo SAR_ADC_SUMMARY_REPORT > sar_adc_summary.txt
echo Test = 10_bit_differential_static_staircase_ramp >> sar_adc_summary.txt
echo Simulation_mode = CONST_CALIBRATED_4096_POINT_SIGNOFF >> sar_adc_summary.txt
echo Calibrated_VALID_edge_s = $&t_valid_ref >> sar_adc_summary.txt
echo Calibrated_transient_stop_s = $&t_run_stop >> sar_adc_summary.txt
echo Output_directory = $inputdir >> sar_adc_summary.txt
echo Number_of_conversions = $&npoints >> sar_adc_summary.txt
echo Samples_per_ideal_code = $&osr >> sar_adc_summary.txt
echo Differential_input_min_V = $&vdiff_min >> sar_adc_summary.txt
echo Differential_input_max_V = $&vdiff_max >> sar_adc_summary.txt
echo Ideal_LSB_V = $&lsb >> sar_adc_summary.txt
echo Input_step_V = $&ramp_step >> sar_adc_summary.txt
echo ------------------------------------------------------------ >> sar_adc_summary.txt
echo Valid_conversions = $&valid_conversion_count >> sar_adc_summary.txt
echo VALID_failures = $&valid_fail_count >> sar_adc_summary.txt
echo BUSY_failures = $&busy_fail_count >> sar_adc_summary.txt
echo Output_unstable_after_VALID = $&unstable_count >> sar_adc_summary.txt
echo Monotonicity_failures = $&monotonic_fail_count >> sar_adc_summary.txt
echo Output_jumps_greater_than_1_code = $&jump_gt1_count >> sar_adc_summary.txt
echo Missing_internal_codes = $&missing_code_count >> sar_adc_summary.txt
echo First_output_code = $&first_code_seen >> sar_adc_summary.txt
echo Last_output_code = $&last_code_seen >> sar_adc_summary.txt
echo Minimum_output_code_seen = $&code_min_seen >> sar_adc_summary.txt
echo Maximum_output_code_seen = $&code_max_seen >> sar_adc_summary.txt
echo Number_of_code_0_samples = $&code0_count >> sar_adc_summary.txt
echo Number_of_code_1023_samples = $&code1023_count >> sar_adc_summary.txt
echo Maximum_absolute_code_step = $&max_code_step >> sar_adc_summary.txt
echo Average_Hamming_distance_per_conversion = $&avg_hamming >> sar_adc_summary.txt
echo Maximum_Hamming_distance = $&max_hamming >> sar_adc_summary.txt
echo ------------------------------------------------------------ >> sar_adc_summary.txt
echo Mean_code_error_LSB = $&mean_err >> sar_adc_summary.txt
echo RMS_code_error_LSB = $&rms_err >> sar_adc_summary.txt
echo Minimum_code_error_LSB = $&err_min >> sar_adc_summary.txt
echo Maximum_code_error_LSB = $&err_max >> sar_adc_summary.txt
echo Maximum_absolute_code_error_LSB = $&max_abs_err >> sar_adc_summary.txt
echo Code_0_to_1_transition_V = $&vt1 >> sar_adc_summary.txt
echo Midscale_transition_V = $&vt512 >> sar_adc_summary.txt
echo Midscale_offset_V = $&midscale_offset_v >> sar_adc_summary.txt
echo Midscale_offset_LSB = $&midscale_offset_lsb >> sar_adc_summary.txt
echo Code_1022_to_1023_transition_V = $&vt1023 >> sar_adc_summary.txt
echo Endpoint_span_gain_error_percent = $&endpoint_gain_error_percent >> sar_adc_summary.txt
echo DNL_min_LSB_internal_codes = $&dnl_min >> sar_adc_summary.txt
echo DNL_max_LSB_internal_codes = $&dnl_max >> sar_adc_summary.txt
echo INL_min_LSB_endpoint_corrected = $&inl_min >> sar_adc_summary.txt
echo INL_max_LSB_endpoint_corrected = $&inl_max >> sar_adc_summary.txt
echo Mean_final_residue_V = $&mean_residue >> sar_adc_summary.txt
echo RMS_final_residue_V = $&rms_residue >> sar_adc_summary.txt
echo Minimum_final_residue_V = $&residue_min >> sar_adc_summary.txt
echo Maximum_final_residue_V = $&residue_max >> sar_adc_summary.txt
echo Maximum_absolute_final_residue_V = $&residue_abs_max >> sar_adc_summary.txt
echo Maximum_absolute_final_residue_LSB = $&residue_abs_max_lsb >> sar_adc_summary.txt
echo Minimum_comparator_result_voltage_V = $&comp_result_min >> sar_adc_summary.txt
echo Maximum_comparator_result_voltage_V = $&comp_result_max >> sar_adc_summary.txt
echo ------------------------------------------------------------ >> sar_adc_summary.txt
echo Average_idle_power_clock_running_W = $&avg_idle_power >> sar_adc_summary.txt
echo Average_VDD_power_W = $&avg_vdd_power >> sar_adc_summary.txt
echo Average_VREF_power_W = $&avg_vref_power >> sar_adc_summary.txt
echo Average_VCM_net_power_W = $&avg_vcm_power >> sar_adc_summary.txt
echo Average_total_power_W = $&avg_total_power >> sar_adc_summary.txt
echo Minimum_total_power_W = $&pmin >> sar_adc_summary.txt
echo Maximum_total_power_W = $&pmax >> sar_adc_summary.txt
echo Average_VDD_energy_per_conversion_J = $&avg_e_vdd >> sar_adc_summary.txt
echo Average_VREF_energy_per_conversion_J = $&avg_e_vref >> sar_adc_summary.txt
echo Average_VCM_net_energy_per_conversion_J = $&avg_e_vcm >> sar_adc_summary.txt
echo Average_energy_per_conversion_J = $&avg_energy >> sar_adc_summary.txt
echo Average_energy_per_nominal_bit_J = $&energy_per_bit >> sar_adc_summary.txt
echo VREF_fraction_of_total_energy_percent = $&vref_energy_percent >> sar_adc_summary.txt
echo Minimum_energy_per_conversion_J = $&emin >> sar_adc_summary.txt
echo Maximum_energy_per_conversion_J = $&emax >> sar_adc_summary.txt
echo Average_conversion_latency_s = $&avg_latency >> sar_adc_summary.txt
echo Minimum_conversion_latency_s = $&latmin >> sar_adc_summary.txt
echo Maximum_conversion_latency_s = $&latmax >> sar_adc_summary.txt
echo Estimated_max_conversion_rate_Hz = $&conversion_rate >> sar_adc_summary.txt
echo Maximum_VDD_peak_current_A = $&max_i_vdd_peak >> sar_adc_summary.txt
echo Maximum_VREF_peak_current_A = $&max_i_vref_peak >> sar_adc_summary.txt
echo Maximum_VCM_peak_current_A = $&max_i_vcm_peak >> sar_adc_summary.txt
echo ------------------------------------------------------------ >> sar_adc_summary.txt
echo Review_DNL_limit_LSB = $&dnl_limit >> sar_adc_summary.txt
echo Review_INL_limit_LSB = $&inl_limit >> sar_adc_summary.txt
echo Review_max_code_error_limit_LSB = $&code_err_limit >> sar_adc_summary.txt

if overall_fail > 0
  echo OVERALL_REVIEW_STATUS = FAIL >> sar_adc_summary.txt
else
  echo OVERALL_REVIEW_STATUS = PASS >> sar_adc_summary.txt
end

echo NOTE_1 = Endpoint_codes_0_and_1023_are_excluded_from_DNL_extrema >> sar_adc_summary.txt
echo NOTE_2 = Static_DNL_resolution_is_1_divided_by_OSR_LSB >> sar_adc_summary.txt
echo NOTE_3 = Repeat_at_PVT_mismatch_Monte_Carlo_and_post_layout_PEX >> sar_adc_summary.txt
echo Detailed_conversion_report = sar_adc_detailed.txt >> sar_adc_summary.txt
echo Per_code_linearity_report = sar_adc_code_linearity.txt >> sar_adc_summary.txt
echo Progress_report = sar_adc_progress.txt >> sar_adc_summary.txt
echo Plot_data_prefix = sar_ >> sar_adc_summary.txt
echo Plot_format = PostScript_ps >> sar_adc_summary.txt

* =====================================================================
* Numeric plot-data files
* =====================================================================
setplot const
set wr_singlescale
set wr_vecnames

setscale vin_meas_vec
wrdata sar_transfer_plot.txt adc_code_vec ideal_code_vec vrecon_vec err_lsb_vec abs_err_vec code_step_vec
wrdata sar_protocol_plot.txt valid_flag_vec busy_flag_vec stable_flag_vec valid_start_vec valid_peak_vec valid_result_vec busy_peak_vec latency_vec
wrdata sar_analog_plot.txt vcp_vec vcn_vec residue_vec residue_lsb_vec voutp_vec voutn_vec comp_low_vec comp_high_vec
wrdata sar_power_plot.txt p_idle_vec p_dynamic_vec p_vdd_vec p_vref_vec p_vcm_vec p_total_vec
wrdata sar_energy_plot.txt e_vdd_vec e_vref_vec e_vcm_vec energy_vec
wrdata sar_current_plot.txt i_vdd_peak_vec i_vref_peak_vec i_vcm_peak_vec
wrdata sar_bits_plot.txt c9_vec c8_vec c7_vec c6_vec c5_vec c4_vec c3_vec c2_vec c1_vec c0_vec

setscale sample_index_vec
wrdata sar_ramp_input_output_plot.txt vin_cmd_vec vin_meas_vec vrecon_vec adc_code_vec ideal_code_vec

setscale code_index_vec
wrdata sar_linearity_plot.txt histogram_vec dnl_vec inl_raw_vec inl_ep_vec

* =====================================================================
* Documentation plots from the complete static ramp
* =====================================================================
setplot const

setscale vin_meas_vec
hardcopy sar_transfer.ps adc_code_vec ideal_code_vec title SAR_ADC_Static_Transfer xlabel Differential_Input_V ylabel Output_Code
hardcopy sar_reconstructed_output.ps vin_meas_vec vrecon_vec title Analog_Input_And_Reconstructed_Output xlabel Differential_Input_V ylabel Differential_Voltage_V
hardcopy sar_code_error.ps err_lsb_vec title SAR_ADC_Signed_Code_Error xlabel Differential_Input_V ylabel Error_LSB
hardcopy sar_abs_code_error.ps abs_err_vec title SAR_ADC_Absolute_Code_Error xlabel Differential_Input_V ylabel Absolute_Error_LSB
hardcopy sar_code_step.ps code_step_vec title SAR_ADC_Code_Step xlabel Differential_Input_V ylabel Code_Step

hardcopy sar_protocol_flags.ps valid_flag_vec busy_flag_vec stable_flag_vec title SAR_ADC_Protocol_Flags xlabel Differential_Input_V ylabel Logic_Flag
hardcopy sar_latency_vs_input.ps latency_vec title SAR_ADC_Conversion_Latency xlabel Differential_Input_V ylabel Latency_s

hardcopy sar_final_cdac_nodes.ps vcp_vec vcn_vec title Final_CDAC_Top_Plate_Voltages xlabel Differential_Input_V ylabel Voltage_V
hardcopy sar_residue_vs_input.ps residue_vec title Final_Comparator_Residue xlabel Differential_Input_V ylabel Residue_V
hardcopy sar_residue_lsb.ps residue_lsb_vec title Final_Comparator_Residue_In_LSB xlabel Differential_Input_V ylabel Residue_LSB
hardcopy sar_comparator_result.ps voutp_vec voutn_vec title Comparator_Result_Levels xlabel Differential_Input_V ylabel Voltage_V

hardcopy sar_power_total.ps p_total_vec p_idle_vec p_dynamic_vec title ADC_Total_Idle_And_Dynamic_Power xlabel Differential_Input_V ylabel Power_W
hardcopy sar_power_breakdown.ps p_vdd_vec p_vref_vec p_vcm_vec title ADC_Power_Breakdown xlabel Differential_Input_V ylabel Power_W
hardcopy sar_energy_total.ps energy_vec title ADC_Total_Energy_Per_Conversion xlabel Differential_Input_V ylabel Energy_J
hardcopy sar_energy_breakdown.ps e_vdd_vec e_vref_vec e_vcm_vec title ADC_Energy_Breakdown xlabel Differential_Input_V ylabel Energy_J
hardcopy sar_peak_currents.ps i_vdd_peak_vec i_vref_peak_vec i_vcm_peak_vec title ADC_Peak_Source_Currents xlabel Differential_Input_V ylabel Current_A
hardcopy sar_output_bits_vs_input.ps c9_vec c8_vec c7_vec c6_vec c5_vec c4_vec c3_vec c2_vec c1_vec c0_vec title ADC_Output_Bits xlabel Differential_Input_V ylabel Logic_Value

setscale sample_index_vec
hardcopy sar_ramp_input_output.ps vin_meas_vec vrecon_vec title Analog_Ramp_And_Reconstructed_Digital_Output xlabel Conversion_Index ylabel Differential_Voltage_V

setscale code_index_vec
hardcopy sar_code_histogram.ps histogram_vec title SAR_ADC_Code_Occupancy xlabel Output_Code ylabel Occurrences
hardcopy sar_dnl.ps dnl_vec title SAR_ADC_DNL xlabel Output_Code ylabel DNL_LSB
hardcopy sar_inl.ps inl_ep_vec title SAR_ADC_Endpoint_Corrected_INL xlabel Output_Code ylabel INL_LSB

* =====================================================================
* Representative low-input transient
* =====================================================================
alterparam VDIFF = -1.6
reset
tran 100p $&t_run_stop 0 50p

let vin_diff_t = v(ainp)-v(ainn)
let residue_t = v(x1.vcp)-v(x1.vcn)
let code_analog_t = (512*v(C9)+256*v(C8)+128*v(C7)+64*v(C6)+32*v(C5)+16*v(C4)+8*v(C3)+4*v(C2)+2*v(C1)+v(C0))/3.3
let vrecon_t = vdiff_min+(code_analog_t+0.5)*lsb
let p_vdd_t = -v(vdd)*i(VDD_SRC)
let p_vref_t = -v(vrefp)*i(VREFP_SRC)
let p_vcm_t = -v(vcm)*i(V_VCM1)
let p_total_t = p_vdd_t+p_vref_t+p_vcm_t
let i_vdd_t = -i(VDD_SRC)
let i_vref_t = -i(VREFP_SRC)
let i_vcm_t = -i(V_VCM1)

setscale time
wrdata sar_low_waveforms.txt v(CLK) v(RSTN) v(START) v(x1.sample) v(x1.comp_clk) v(busy) v(valid) vin_diff_t code_analog_t vrecon_t v(C9) v(C8) v(C7) v(C6) v(C5) v(C4) v(C3) v(C2) v(C1) v(C0) v(x1.vcp) v(x1.vcn) residue_t v(x1.voutp) v(Voutn) p_vdd_t p_vref_t p_vcm_t p_total_t i_vdd_t i_vref_t i_vcm_t
hardcopy sar_low_timing.ps v(CLK) v(RSTN) v(START) v(x1.sample) v(x1.comp_clk) v(busy) v(valid) title Low_Input_Control_Timing xlabel Time_s ylabel Voltage_V
hardcopy sar_low_bits.ps v(C9) v(C8) v(C7) v(C6) v(C5) v(C4) v(C3) v(C2) v(C1) v(C0) title Low_Input_Output_Bits xlabel Time_s ylabel Voltage_V
hardcopy sar_low_cdac.ps v(x1.vcp) v(x1.vcn) residue_t title Low_Input_CDAC_And_Residue xlabel Time_s ylabel Voltage_V
hardcopy sar_low_comparator.ps v(x1.voutp) v(Voutn) residue_t title Low_Input_Comparator xlabel Time_s ylabel Voltage_V
hardcopy sar_low_input_output.ps vin_diff_t vrecon_t title Low_Input_Analog_And_Reconstructed_Output xlabel Time_s ylabel Differential_Voltage_V
hardcopy sar_low_power.ps p_vdd_t p_vref_t p_vcm_t p_total_t title Low_Input_Instantaneous_Power xlabel Time_s ylabel Power_W
hardcopy sar_low_current.ps i_vdd_t i_vref_t i_vcm_t title Low_Input_Source_Currents xlabel Time_s ylabel Current_A
destroy $curplot
setplot const

* =====================================================================
* Representative near-midscale transient
* =====================================================================
alterparam VDIFF = 0.001611328125
reset
tran 100p $&t_run_stop 0 50p

let vin_diff_t = v(ainp)-v(ainn)
let residue_t = v(x1.vcp)-v(x1.vcn)
let code_analog_t = (512*v(C9)+256*v(C8)+128*v(C7)+64*v(C6)+32*v(C5)+16*v(C4)+8*v(C3)+4*v(C2)+2*v(C1)+v(C0))/3.3
let vrecon_t = vdiff_min+(code_analog_t+0.5)*lsb
let p_vdd_t = -v(vdd)*i(VDD_SRC)
let p_vref_t = -v(vrefp)*i(VREFP_SRC)
let p_vcm_t = -v(vcm)*i(V_VCM1)
let p_total_t = p_vdd_t+p_vref_t+p_vcm_t
let i_vdd_t = -i(VDD_SRC)
let i_vref_t = -i(VREFP_SRC)
let i_vcm_t = -i(V_VCM1)

setscale time
wrdata sar_mid_waveforms.txt v(CLK) v(RSTN) v(START) v(x1.sample) v(x1.comp_clk) v(busy) v(valid) vin_diff_t code_analog_t vrecon_t v(C9) v(C8) v(C7) v(C6) v(C5) v(C4) v(C3) v(C2) v(C1) v(C0) v(x1.vcp) v(x1.vcn) residue_t v(x1.voutp) v(Voutn) p_vdd_t p_vref_t p_vcm_t p_total_t i_vdd_t i_vref_t i_vcm_t
hardcopy sar_mid_timing.ps v(CLK) v(RSTN) v(START) v(x1.sample) v(x1.comp_clk) v(busy) v(valid) title Midscale_Control_Timing xlabel Time_s ylabel Voltage_V
hardcopy sar_mid_bits.ps v(C9) v(C8) v(C7) v(C6) v(C5) v(C4) v(C3) v(C2) v(C1) v(C0) title Midscale_Output_Bits xlabel Time_s ylabel Voltage_V
hardcopy sar_mid_cdac.ps v(x1.vcp) v(x1.vcn) residue_t title Midscale_CDAC_And_Residue xlabel Time_s ylabel Voltage_V
hardcopy sar_mid_comparator.ps v(x1.voutp) v(Voutn) residue_t title Midscale_Comparator xlabel Time_s ylabel Voltage_V
hardcopy sar_mid_input_output.ps vin_diff_t vrecon_t title Midscale_Analog_And_Reconstructed_Output xlabel Time_s ylabel Differential_Voltage_V
hardcopy sar_mid_power.ps p_vdd_t p_vref_t p_vcm_t p_total_t title Midscale_Instantaneous_Power xlabel Time_s ylabel Power_W
hardcopy sar_mid_current.ps i_vdd_t i_vref_t i_vcm_t title Midscale_Source_Currents xlabel Time_s ylabel Current_A
destroy $curplot
setplot const

* =====================================================================
* Representative high-input transient
* =====================================================================
alterparam VDIFF = 1.6
reset
tran 100p $&t_run_stop 0 50p

let vin_diff_t = v(ainp)-v(ainn)
let residue_t = v(x1.vcp)-v(x1.vcn)
let code_analog_t = (512*v(C9)+256*v(C8)+128*v(C7)+64*v(C6)+32*v(C5)+16*v(C4)+8*v(C3)+4*v(C2)+2*v(C1)+v(C0))/3.3
let vrecon_t = vdiff_min+(code_analog_t+0.5)*lsb
let p_vdd_t = -v(vdd)*i(VDD_SRC)
let p_vref_t = -v(vrefp)*i(VREFP_SRC)
let p_vcm_t = -v(vcm)*i(V_VCM1)
let p_total_t = p_vdd_t+p_vref_t+p_vcm_t
let i_vdd_t = -i(VDD_SRC)
let i_vref_t = -i(VREFP_SRC)
let i_vcm_t = -i(V_VCM1)

setscale time
wrdata sar_high_waveforms.txt v(CLK) v(RSTN) v(START) v(x1.sample) v(x1.comp_clk) v(busy) v(valid) vin_diff_t code_analog_t vrecon_t v(C9) v(C8) v(C7) v(C6) v(C5) v(C4) v(C3) v(C2) v(C1) v(C0) v(x1.vcp) v(x1.vcn) residue_t v(x1.voutp) v(Voutn) p_vdd_t p_vref_t p_vcm_t p_total_t i_vdd_t i_vref_t i_vcm_t
hardcopy sar_high_timing.ps v(CLK) v(RSTN) v(START) v(x1.sample) v(x1.comp_clk) v(busy) v(valid) title High_Input_Control_Timing xlabel Time_s ylabel Voltage_V
hardcopy sar_high_bits.ps v(C9) v(C8) v(C7) v(C6) v(C5) v(C4) v(C3) v(C2) v(C1) v(C0) title High_Input_Output_Bits xlabel Time_s ylabel Voltage_V
hardcopy sar_high_cdac.ps v(x1.vcp) v(x1.vcn) residue_t title High_Input_CDAC_And_Residue xlabel Time_s ylabel Voltage_V
hardcopy sar_high_comparator.ps v(x1.voutp) v(Voutn) residue_t title High_Input_Comparator xlabel Time_s ylabel Voltage_V
hardcopy sar_high_input_output.ps vin_diff_t vrecon_t title High_Input_Analog_And_Reconstructed_Output xlabel Time_s ylabel Differential_Voltage_V
hardcopy sar_high_power.ps p_vdd_t p_vref_t p_vcm_t p_total_t title High_Input_Instantaneous_Power xlabel Time_s ylabel Power_W
hardcopy sar_high_current.ps i_vdd_t i_vref_t i_vcm_t title High_Input_Source_Currents xlabel Time_s ylabel Current_A

echo ============================================================
echo SAR_ADC_super_detailed_characterization_complete
echo Detailed_conversion_report = sar_adc_detailed.txt
echo Per_code_linearity_report = sar_adc_code_linearity.txt
echo Summary_report = sar_adc_summary.txt
echo Progress_report = sar_adc_progress.txt
echo Static_plot_data_and_low_mid_high_waveforms_generated
echo ============================================================


.endc






"}
C {lab_pin.sym} 60 -470 0 0 {name=p1 sig_type=std_logic lab=RSTN}
C {lab_pin.sym} 60 -430 0 0 {name=p2 sig_type=std_logic lab=START}
C {lab_pin.sym} 60 -390 0 0 {name=V_VCM2 sig_type=std_logic lab=vrefp

}
C {lab_pin.sym} 60 -350 0 0 {name=p3 sig_type=std_logic lab=ainn}
C {lab_pin.sym} 60 -310 0 0 {name=p4 sig_type=std_logic lab=ainp}
C {lab_pin.sym} 60 -270 0 0 {name=V_VCM3 sig_type=std_logic lab=vcm

}
C {lab_pin.sym} 60 -210 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 240 -530 0 0 {name=p6 sig_type=std_logic lab=vdd

}
C {lab_pin.sym} 240 -140 0 0 {name=p7 sig_type=std_logic lab=vss

}
C {opin.sym} 570 -445 0 0 {name=p125 lab=C1}
C {opin.sym} 570 -410 0 0 {name=p126 lab=C2}
C {opin.sym} 570 -370 0 0 {name=p127 lab=C3}
C {opin.sym} 570 -330 0 0 {name=p128 lab=C4}
C {opin.sym} 640 -445 0 0 {name=p129 lab=C5}
C {opin.sym} 640 -410 0 0 {name=p130 lab=C6}
C {opin.sym} 640 -370 0 0 {name=p131 lab=C7}
C {opin.sym} 640 -330 0 0 {name=p132 lab=C8}
C {opin.sym} 570 -480 0 0 {name=p133 lab=C0}
C {opin.sym} 640 -480 0 0 {name=p134 lab=C9}
C {opin.sym} 715 -480 0 0 {name=p135 lab=busy}
C {opin.sym} 715 -440 0 0 {name=p136 lab=valid}
C {lab_pin.sym} 420 -250 2 0 {name=p89 sig_type=std_logic lab=C9


}
C {lab_pin.sym} 420 -270 2 0 {name=p101 sig_type=std_logic lab=C8


}
C {lab_pin.sym} 420 -290 2 0 {name=p102 sig_type=std_logic lab=C7


}
C {lab_pin.sym} 420 -310 2 0 {name=p103 sig_type=std_logic lab=C6


}
C {lab_pin.sym} 420 -330 2 0 {name=p104 sig_type=std_logic lab=C5


}
C {lab_pin.sym} 420 -350 2 0 {name=p105 sig_type=std_logic lab=C4


}
C {lab_pin.sym} 420 -370 2 0 {name=p106 sig_type=std_logic lab=C3


}
C {lab_pin.sym} 420 -390 2 0 {name=p107 sig_type=std_logic lab=C2


}
C {lab_pin.sym} 420 -410 2 0 {name=p108 sig_type=std_logic lab=C1


}
C {lab_pin.sym} 420 -430 2 0 {name=p109 sig_type=std_logic lab=C0


}
C {iopin.sym} 585 -270 0 0 {name=p167 lab=Voutn}
C {lab_pin.sym} 420 -210 2 0 {name=p10 sig_type=std_logic lab=Voutn}
C {lab_pin.sym} 420 -470 2 0 {name=p115 sig_type=std_logic lab=busy
}
C {lab_pin.sym} 420 -450 2 0 {name=p116 sig_type=std_logic lab=valid}
C {title.sym} 160 0 0 0 {name=l1 author="Arjun Ananth"}
