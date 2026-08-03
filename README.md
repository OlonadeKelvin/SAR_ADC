# 10-Bit 1 MS/s Differential SAR ADC

**Target PDK:** IHP SG13CMOS5L[cite: 1, 2]  
**Project:** Chipalooza Challenge #2 (IHP SG13CMOS5L)[cite: 1, 2]  
**License:** [Apache-2.0](LICENSE)[cite: 2]

---

## 1. Project Overview

This repository contains the design, behavioral models, schematics, and layout for a **10-bit, 1 MS/s Differential Input Successive Approximation Register (SAR) Analog-to-Digital Converter** fabricated on the open-source **IHP SG13CMOS5L** 130nm process node[cite: 1, 2]. 

The IP block is engineered as a reusable, general-purpose mixed-signal converter suitable for sensor readouts, system monitoring, and broader System-on-Chip (SoC) integration[cite: 1, 2].

### Block Diagram

![10-Bit SAR ADC Block Diagram](docs/block_diagram.png)

---

## 2. Target Specifications

All specifications are defined across PVT corners (-40°C to +110°C).

| Parameter | Minimum | Nominal | Maximum | Unit | Notes / Conditions |
| :--- | :---: | :---: | :---: | :---: | :--- |
| **Nominal Resolution** | — | 10[cite: 2] | — | Bits[cite: 2] | — |
| **Effective Number of Bits (ENOB)** | 9[cite: 2] | — | — | Bits[cite: 2] | At 1 MS/s sampling rate[cite: 2] |
| **Sampling Rate** | — | 1[cite: 2] | — | MS/s[cite: 2] | — |
| **SAR Internal Clock** | — | 15[cite: 2] | — | MHz[cite: 2] | Bit-trial sequencer clock[cite: 1, 2] |
| **Conversion Cycles** | 12[cite: 2] | — | 14[cite: 2] | Cycles[cite: 2] | Total cycles per conversion[cite: 2] |
| **Differential Linearity (DNL)** | — | — | $\pm 1$[cite: 2] | LSB[cite: 2] | No missing codes[cite: 2] |
| **Integral Linearity (INL)** | — | — | $\pm 1$[cite: 2] | LSB[cite: 2] | — |
| **Offset Error** | — | — | $\pm 2$[cite: 2] | LSB[cite: 2] | — |
| **Gain Error** | — | — | 1[cite: 2] | % FS[cite: 2] | Percent of full scale[cite: 2] |
| **Total Unadjusted Error** | — | — | $\pm 3$[cite: 2] | LSB[cite: 2] | Nominal conditions[cite: 2] |
| **Analog Power Supply ($V_{DDA}$)** | — | 3.3[cite: 2] | — | V[cite: 2] | Analog sampling & CDAC domain[cite: 1, 2] |
| **Digital Power Supply ($V_{DDD}$)** | — | 1.2[cite: 2] | — | V[cite: 2] | SAR logic & digital output domain[cite: 1, 2] |
| **Signal-to-Noise & Distortion (SNDR)** | 55[cite: 2] | — | — | dB[cite: 2] | — |
| **Signal-to-Noise Ratio (SNR)** | 55[cite: 2] | — | — | dB[cite: 2] | — |
| **Spurious-Free Dynamic Range (SFDR)** | 60[cite: 2] | — | — | dB[cite: 2] | — |
| **Input Bandwidth** | 500[cite: 2] | — | — | kHz[cite: 2] | Nyquist limit for 1 MS/s[cite: 2] |
| **Comparator Input RMS Noise** | — | — | 250[cite: 2] | $\mu\text{V}$[cite: 2] | Input-referred noise[cite: 2] |
| **CDAC Settling Error** | — | — | 0.25[cite: 2] | LSB[cite: 2] | — |
| **Input Leakage Current** | — | — | 200[cite: 2] | nA[cite: 2] | At maximum conversion rate[cite: 2] |
| **Power Consumption** | — | — | 5[cite: 2] | mW[cite: 2] | Active full-speed conversion[cite: 2] |

---

## 3. I/O Pin List & Interface

The macro interfaces with both the 3.3V analog padframe and the 1.2V digital system bus[cite: 1, 2].

### I/O Signal Summary

| Pin Name | Direction | Domain | Description |
| :--- | :---: | :---: | :--- |
| `Vinp`[cite: 2] | Input[cite: 2] | Analog (3.3V)[cite: 1, 2] | Positive differential analog input[cite: 1, 2] |
| `Vinn`[cite: 2] | Input[cite: 2] | Analog (3.3V)[cite: 1, 2] | Negative differential analog input[cite: 1, 2] |
| `Vref_p`[cite: 2] | Input[cite: 2] | Analog (3.3V)[cite: 1, 2] | Positive reference voltage input[cite: 1, 2] |
| `Vref_n`[cite: 2] | Input[cite: 2] | Analog (3.3V)[cite: 1, 2] | Negative reference voltage input[cite: 1, 2] |
| `Vcm`[cite: 2] | Input[cite: 2] | Analog (3.3V)[cite: 1, 2] | Common-mode reference voltage[cite: 1, 2] |
| `iDAC[4:0]`[cite: 2] | Input[cite: 2] | Analog (3.3V)[cite: 1, 2] | 5-bit bias current control[cite: 2] |
| `Vdda`[cite: 2] | Power[cite: 2] | Analog (3.3V)[cite: 1, 2] | 3.3V analog power supply[cite: 1, 2] |
| `Vssa`[cite: 2] | Ground[cite: 2] | Analog (0V)[cite: 2] | Analog ground reference[cite: 2] |
| `Vddd`[cite: 2] | Power[cite: 2] | Digital (1.2V)[cite: 1, 2] | 1.2V digital core supply[cite: 1, 2] |
| `Vssd`[cite: 2] | Ground[cite: 2] | Digital (0V)[cite: 2] | Digital ground reference[cite: 2] |
| `Enable`[cite: 2] | Input[cite: 2] | Digital (1.2V)[cite: 1, 2] | Macro enable/power-down control[cite: 1, 2] |
| `Start`[cite: 2] | Input[cite: 2] | Digital (1.2V)[cite: 1, 2] | Conversion trigger pulse[cite: 1, 2] |
| `Clk`[cite: 2] | Input[cite: 2] | Digital (1.2V)[cite: 1, 2] | System / SAR clock input[cite: 1, 2] |
| `Reset_n`[cite: 2] | Input[cite: 2] | Digital (1.2V)[cite: 1, 2] | Active-low asynchronous reset[cite: 1, 2] |
| `test_mode`[cite: 2] | Input[cite: 2] | Digital (1.2V)[cite: 1, 2] | Test & calibration mode selection[cite: 1, 2] |
| `SPI [3:0]`[cite: 2] | Output[cite: 2] | Digital (1.2V)[cite: 1, 2] | 4-pin SPI serial data interface[cite: 2] |
| `Comp_test`[cite: 2] | Output[cite: 2] | Digital (1.2V)[cite: 1, 2] | Direct comparator evaluation test tap[cite: 2] |

---

## 4. Architecture & Sub-Block Description

The converter consists of five primary sub-blocks bridging the 3.3V analog and 1.2V digital domains[cite: 1, 2]:

1. **Sample & Hold (3.3V Domain):** Bootstrapped input switches preserve input-dependent linearity across a full $V_{cm}$ swing[cite: 1, 2].
2. **Capacitive DAC (CDAC) Array (3.3V Domain):** A 10-bit split array configured for $V_{cm}$-based monotonic switching, significantly reducing total capacitance and switching energy[cite: 1, 2].
3. **Dynamic Latch Comparator (3.3V Domain):** High-speed regenerative latch optimized for low offset and minimal hysteresis[cite: 1, 2].
4. **Level Shifters:** Bidirectional interface converting control and decision signals between the 3.3V analog frontend and 1.2V digital SAR logic[cite: 1, 2].
5. **SAR Logic & Output Sequencer (1.2V Domain):** Finite state machine executing bit-trial sequencing, code registers, and SPI status output[cite: 1, 2].

---

## 5. Verification & Simulation Plan

### Verification Steps
* **Schematic Transient Simulation:** Full-system dynamic response under nominal conditions[cite: 2].
* **Static Code Density Simulation:** Ramp testing across all 1024 output codes to evaluate INL/DNL[cite: 2].
* **PVT Corners Simulation:** Verification across process (TT/FF/SS), supply ($\pm 10\%$), and temperature (-40°C to +110°C)[cite: 2].
* **Parasitic Extracted Simulation:** Post-layout netlist verification including parasitic cap extraction on bottom-plate CDAC routing[cite: 2].
* **DRC / LVS Sign-Off:** Clean DRC and Netgen LVS using KLayout and Magic rule decks[cite: 2].

---

## 6. Physical Measurement & Test Plan

### Hardware Requirements
* Differential Signal Generator
* Digital Clock Generator / Pattern Generator
* Oscilloscope & Digital Multimeter
* DC Power Supplies (3.3V, 1.2V)[cite: 1]
* Precision Voltage Reference Source[cite: 1]

### Bring-up & Test Sequence
1. **Continuity Check:** Verify pin-to-pin resistance to prevent supply shorts[cite: 2].
2. **Static Power Check:** Apply $V_{DDD}$ (1.2V) and $V_{DDA}$ (3.3V) while holding `Reset_n` low; measure quiescent current[cite: 2].
3. **Functional DC Verification:** Enable clock, apply DC differential voltages ($0\text{V}$, $V_{cm}$, $V_{FS}$), and verify conversion code output over SPI[cite: 2].
4. **DC Transfer Characterization:** Apply a slow input ramp (10 hits per code) to measure DNL, INL, and check for missing codes[cite: 2].
5. **AC Dynamic Characterization:** Apply a near-full-scale coherent sine wave (10 kHz to 500 kHz) to extract SNR, SNDR, SFDR, and ENOB via FFT analysis[cite: 2].

---

## 7. Repository Structure & Build Instructions

```text
├── docs/                 # Schematics, block diagrams, PDFs, and documentation
│   └── block_diagram.png # Top-level block diagram
├── hdl/
│   ├── rtl/              # Verilog/SystemVerilog RTL for SAR FSM & SPI
│   └── testbench/        # cocotb testbenches
├── xschem/               # Xschem schematics and symbol files
├── klayout/              # KLayout GDSII, DRC, and LVS scripts
├── Makefile              # Top-level build and automation script
└── README.md             # Project documentation
