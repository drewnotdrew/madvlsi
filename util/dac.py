"""
DAC related utils.
"""

import matplotlib.pyplot as plt
import sys
import os

from pathlib import Path
from PySpice.Spice.Parser import SpiceParser


from util.simulation import parse_data, get_netlist, run_simulation, black, bittersweet


def calculate_inl(
    file: Path, input_current: float, suppress_plot: bool = False
) -> tuple[float, float, float, float, list[float]]:
    """
    Calculate the INL from simulation data.
    """
    data, line_count = parse_data(file)

    num_codes = line_count - 1

    delta_current = [
        ((input_current * (code / num_codes)) - current)
        / (input_current * (1 / num_codes))
        for code, current in enumerate(data["i(Vout)"])
    ]

    _min = min(delta_current)
    _max = max(delta_current)

    min_index = delta_current.index(_min)
    max_index = delta_current.index(_max)

    if not suppress_plot:
        plt.figure()
        plt.title(
            f"INL, min: {round(_min, 2)} LSBs, max: {round(_max, 2)} LSBs, Current: {input_current}"
        )
        plt.xlabel("Code")
        plt.ylabel("LSBs")
        plt.xlim(0, num_codes - 1)
        plt.grid(which="minor", linestyle="--", linewidth=0.5)
        plt.minorticks_on()
        plt.plot(delta_current, color=black, linewidth=2)
        plt.hlines(
            [_min, _max], 0, line_count, linestyle="--", linewidth=1, color=black
        )
        plt.plot(
            [min_index, max_index],
            [_min, _max],
            "o",
            linewidth=3,
            color=bittersweet,
        )

    return _min, _max, min_index, max_index, delta_current


def calculate_dnl(
    file: Path, input_current: float, suppress_plot: bool = False
) -> tuple[float, float, float, float, list[float]]:
    """
    Calculate the DNL from simulation data.
    """
    data, line_count = parse_data(file)

    num_codes = line_count - 1

    delta_current = [
        (data["i(Vout)"][code + 1] - current) / (input_current * (1 / num_codes)) - 1
        for code, current in enumerate(data["i(Vout)"][:-1])
    ]

    _min = min(delta_current)
    _max = max(delta_current)

    min_index = delta_current.index(_min)
    max_index = delta_current.index(_max)

    if not suppress_plot:
        plt.figure()
        plt.title(
            f"DNL, min: {round(_min, 2)} LSBs, max: {round(_max, 2)} LSBs, Current: {input_current}"
        )
        plt.xlabel("Code")
        plt.ylabel("LSBs")
        plt.xlim(0, num_codes - 1)
        plt.grid(which="minor", linestyle="--", linewidth=0.5)
        plt.minorticks_on()
        plt.plot(delta_current, color=black, linewidth=2)
        plt.hlines(
            [_min, _max], 0, line_count, linestyle="--", linewidth=1, color=black
        )
        plt.plot(
            [min_index, max_index],
            [_min, _max],
            "o",
            linewidth=3,
            color=bittersweet,
        )
    return _min, _max, min_index, max_index, delta_current


def run_monte_carlo(
    file: Path, build_directory: Path, input_current: float, runs: int = 10
) -> None:
    """
    Run monte carlo mismatch simulation.
    """
    delta_current_inls = []
    delta_current_dnls = []

    min_inl_index = 0
    max_inl_index = 0
    min_dnl_index = 0
    max_dnl_index = 0

    min_inl = sys.maxsize
    max_inl = 0
    min_dnl = sys.maxsize
    max_dnl = 0

    line_count = 0
    num_codes = 0

    for index in range(0, runs):
        netlist = get_netlist(schematic=file, output=build_directory)

        data = run_simulation(
            netlist=netlist,
            output=build_directory,
            filename=f"{netlist.stem}_{index}.txt",
        )

        _min_inl, _max_inl, _min_inl_index, _max_inl_index, delta_current_inl = (
            calculate_inl(file=data, input_current=input_current, suppress_plot=True)
        )
        _min_dnl, _max_dnl, _min_dnl_index, _max_dnl_index, delta_current_dnl = (
            calculate_dnl(file=data, input_current=input_current, suppress_plot=True)
        )

        delta_current_inls.append(delta_current_inl)
        delta_current_dnls.append(delta_current_dnl)

        if _min_inl < min_inl:
            min_inl = _min_inl
            min_inl_index = _min_inl_index

        if _max_inl > max_inl:
            max_inl = _max_inl
            max_inl_index = _max_inl_index

        if _min_dnl < min_dnl:
            min_dnl = _min_dnl
            min_dnl_index = _min_dnl_index

        if _max_dnl > max_dnl:
            max_dnl = _max_dnl
            max_dnl_index = _max_dnl_index

        data, line_count = parse_data(data)
        num_codes = line_count - 1

    plt.figure()
    plt.title(
        f"INL, min: {round(min_inl, 2)} LSBs, max: {round(max_inl, 2)} LSBs, Current: {input_current}"
    )
    plt.xlabel("Code")
    plt.ylabel("LSBs")
    plt.xlim(0, num_codes - 1)
    plt.grid(which="minor", linestyle="--", linewidth=0.5)
    plt.minorticks_on()
    for index in range(0, runs):
        plt.plot(delta_current_inls[index], color=black, linewidth=0.5)
    plt.hlines(
        [min_inl, max_inl], 0, line_count, linestyle="--", linewidth=1, color=black
    )
    plt.plot(
        [min_inl_index, max_inl_index],
        [min_inl, max_inl],
        "o",
        linewidth=3,
        color=bittersweet,
    )

    plt.figure()
    plt.title(
        f"DNL, min: {round(min_dnl, 2)} LSBs, max: {round(max_dnl, 2)} LSBs, Current: {input_current}"
    )
    plt.xlabel("Code")
    plt.ylabel("LSBs")
    plt.xlim(0, num_codes - 1)
    plt.grid(which="minor", linestyle="--", linewidth=0.5)
    plt.minorticks_on()
    for index in range(0, runs):
        plt.plot(delta_current_dnls[index], color=black, linewidth=0.5)
    plt.hlines(
        [min_dnl, max_dnl], 0, line_count, linestyle="--", linewidth=1, color=black
    )
    plt.plot(
        [min_dnl_index, max_dnl_index],
        [min_dnl, max_dnl],
        "o",
        linewidth=3,
        color=bittersweet,
    )


def adjust_m2m_ladder_tb_netlist(file: Path, i_in: float, v_gate: float) -> None:
    """
    Adjust parameters in the m2m ladder testbench netlist.
    """
    with open(file=file, mode="r+", encoding="utf-8") as f:
        new_file = ""
        in_top = False
        for line in f.readlines():
            if line == "**.subckt m2m_ladder_tb\n":
                in_top = True
            if in_top:
                if line.startswith("I1"):
                    new_file += f"I1 GND I_in {i_in}\n"
                    continue
                elif line.startswith("V1"):
                    new_file += f"V1 V_gate GND {v_gate}\n"
                    continue
            new_file += line
        f.seek(0)
        f.truncate(0)
        f.write(new_file)


def adjust_bias_gen_tb_netlist(
    file: Path, u_w: float, u_l: float, mult: float, res: float
) -> None:
    """
    Adjust parameters in the bias gen testbench netlist.
    """
    with open(file=file, mode="r+", encoding="utf-8") as f:
        new_file = ""
        for line in f.readlines():
            if line.startswith("X1 vbp VDD GND vbn bias_gen"):
                new_file += f"X1 vbp VDD GND vbn bias_gen u_w={u_w} u_l={u_l} m={mult} r={res}\n"
                continue
            new_file += line
        f.seek(0)
        f.truncate(0)
        f.write(new_file)

    # pyspice does not work natively
    # parser = SpiceParser(file, section="m2m_ladder_tb")
    # circuit = parser.build_circuit()

    # # I1 = circuit.element("I1")
    # # I1.dc_value = i_in

    # # V1 = circuit.element("V1")
    # # V1.dc_value = v_gate

    # # with open(file=file, mode="w", encoding="utf-8") as f:
    # #     f.write(str(circuit))


def adjust_mirrored_ladder_tb_netlist(file: Path, current: float) -> None:
    """
    Adjust parameters in the bias gen testbench netlist.
    """
    with open(file=file, mode="r+", encoding="utf-8") as f:
        new_file = ""
        for line in f.readlines():
            if line.startswith("I1 GND ib"):
                new_file += f"I1 GND ib {current}\n"
                continue
            new_file += line
        f.seek(0)
        f.truncate(0)
        f.write(new_file)
