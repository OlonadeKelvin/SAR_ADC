#!/usr/bin/env bash
set -euo pipefail

source ~/eda/pdks/activate_ihp_cmos5l.sh

: "${PDK_ROOT:?Set PDK_ROOT to the directory containing the IHP PDK}"

PDK="${PDK:-ihp-sg13cmos5l}"

# ------------------------------------------------------------
# Use local ngspice 47 instead of Ubuntu's ngspice 42
# ------------------------------------------------------------
NGSPICE_ROOT="$HOME/eda/tools/ngspice-47"

export PATH="$NGSPICE_ROOT/bin:$PATH"

# ------------------------------------------------------------
# Let ngspice read the IHP .spiceinit.
# This loads PSP103, cap_cmomi.osdi, cap_cmomf.osdi, etc.
# ------------------------------------------------------------
export SPICE_USERINIT_DIR="$PDK_ROOT/$PDK/libs.tech/ngspice"

# ------------------------------------------------------------
# Project
# ------------------------------------------------------------
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TOP="${1:-sar_10_bit.sch}"

export XSCHEM_USER_LIBRARY_PATH="$PROJECT_DIR${XSCHEM_USER_LIBRARY_PATH:+:$XSCHEM_USER_LIBRARY_PATH}"

# ------------------------------------------------------------
# Xschem generated netlists
# ------------------------------------------------------------
NETLIST_DIR="$HOME/.xschem/simulations"
mkdir -p "$NETLIST_DIR"

cd "$PROJECT_DIR"

exec xschem \
    --rcfile "$PDK_ROOT/$PDK/libs.tech/xschem/xschemrc" \
    --command "set netlist_dir {$NETLIST_DIR}; set local_netlist_dir 0" \
    "$TOP"
