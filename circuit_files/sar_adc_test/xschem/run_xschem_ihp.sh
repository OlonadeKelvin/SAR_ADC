#!/usr/bin/env bash
set -euo pipefail
source ~/eda/pdks/activate_ihp_cmos5l.sh
: "${PDK_ROOT:?Set PDK_ROOT to the directory containing the IHP PDK}"
PDK="${PDK:-ihp-sg13cmos5l}"
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TOP="${1:-sar_10_bit.sch}"

export XSCHEM_USER_LIBRARY_PATH="$PROJECT_DIR${XSCHEM_USER_LIBRARY_PATH:+:$XSCHEM_USER_LIBRARY_PATH}"
cd "$PROJECT_DIR"
exec xschem --rcfile "$PDK_ROOT/$PDK/libs.tech/xschem/xschemrc" "$TOP"
