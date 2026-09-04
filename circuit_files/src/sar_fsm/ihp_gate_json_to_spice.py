#!/usr/bin/env python3

import json
import re
import sys

TOP = "sar_fsm_wrapper"

JSON_FILE = "build/sar_fsm_ihp_gate.json"

CELL_SPICE = (
    "/home/arjun/eda/pdks/IHP-Open-PDK/"
    "ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell/"
    "spice/sg13cmos5l_stdcell.spice"
)

OUT_FILE = "build/sar_fsm_wrapper_ihp.spice"


def sanitize(name):
    name = name.lstrip("\\")
    name = re.sub(r"[^A-Za-z0-9_]", "_", name)

    if not name:
        name = "net"

    if name[0].isdigit():
        name = "n_" + name

    return name


def read_subckt_pins(filename):
    subckts = {}

    with open(filename, "r") as f:
        for line in f:
            s = line.strip()

            if not s.lower().startswith(".subckt"):
                continue

            p = s.split()

            if len(p) >= 2:
                name = p[1]
                pins = p[2:]
                subckts[name] = pins

    return subckts


with open(JSON_FILE, "r") as f:
    design = json.load(f)

if TOP not in design["modules"]:
    print(f"ERROR: module '{TOP}' not found")
    sys.exit(1)

module = design["modules"][TOP]

cell_subckts = read_subckt_pins(CELL_SPICE)

# ------------------------------------------------------------
# Map Yosys bit IDs to SPICE node names
# ------------------------------------------------------------

bit_names = {}

top_ports = []

for port_name, pdata in module["ports"].items():

    bits = pdata["bits"]

    if len(bits) != 1:
        print(
            f"ERROR: expected scalar wrapper port '{port_name}', "
            f"got {len(bits)} bits"
        )
        sys.exit(1)

    node = sanitize(port_name)

    top_ports.append(node)

    bit = bits[0]

    if isinstance(bit, int):
        bit_names[bit] = node


def node_for_bit(bit):

    if bit == "0":
        return "VSS"

    if bit == "1":
        return "VDD"

    if bit in ("x", "z"):
        raise RuntimeError(
            f"Unsupported constant '{bit}' in mapped netlist"
        )

    if isinstance(bit, int):

        if bit in bit_names:
            return bit_names[bit]

        return f"n{bit}"

    raise RuntimeError(
        f"Unknown Yosys bit representation: {bit!r}"
    )


def find_connection(cell, wanted_pin):

    connections = cell.get("connections", {})

    if wanted_pin in connections:
        return wanted_pin

    # fallback: case-insensitive lookup
    for p in connections:
        if p.upper() == wanted_pin.upper():
            return p

    return None


# ------------------------------------------------------------
# Write structural SPICE
# ------------------------------------------------------------

with open(OUT_FILE, "w") as out:

    out.write("* ------------------------------------------------------\n")
    out.write("* IHP SG13CMOS5L mapped SAR FSM\n")
    out.write("* Generated from Yosys mapped JSON\n")
    out.write("* Standard cells require external library include\n")
    out.write("* ------------------------------------------------------\n\n")

    # Explicit VDD/VSS are added for analog integration.
    out.write(
        ".subckt {} {} VDD VSS\n\n".format(
            TOP,
            " ".join(top_ports)
        )
    )

    instance_number = 0

    for original_name, cell in module.get("cells", {}).items():

        cell_type = cell["type"].lstrip("\\")

        if cell_type not in cell_subckts:
            print()
            print("ERROR: mapped cell does not exist in IHP SPICE library:")
            print(f"    {cell_type}")
            print()
            print("This usually means synthesis left an unmapped Yosys cell.")
            sys.exit(1)

        spice_pins = cell_subckts[cell_type]

        nodes = []

        for pin in spice_pins:

            if pin.upper() == "VDD":
                nodes.append("VDD")
                continue

            if pin.upper() == "VSS":
                nodes.append("VSS")
                continue

            conn_name = find_connection(cell, pin)

            if conn_name is None:

                direction = (
                    cell.get("port_directions", {})
                    .get(pin, "")
                )

                # Unused output is allowed.
                if direction == "output":
                    nodes.append(
                        f"NC_{instance_number}_{sanitize(pin)}"
                    )
                    continue

                print()
                print(
                    f"ERROR: cell {original_name} ({cell_type}) "
                    f"has no connection for SPICE pin '{pin}'"
                )
                print("Available ports:")
                print(
                    "    " +
                    " ".join(cell.get("connections", {}).keys())
                )
                sys.exit(1)

            bits = cell["connections"][conn_name]

            if len(bits) != 1:
                print(
                    f"ERROR: {cell_type}.{pin} is not scalar"
                )
                sys.exit(1)

            nodes.append(node_for_bit(bits[0]))

        out.write(
            f"* {original_name}\n"
        )

        out.write(
            "XU{} {} {}\n".format(
                instance_number,
                " ".join(nodes),
                cell_type
            )
        )

        instance_number += 1

    out.write("\n.ends {}\n".format(TOP))


print()
print("Generated:")
print(f"    {OUT_FILE}")
print()
print(f"Mapped cell instances: {instance_number}")
