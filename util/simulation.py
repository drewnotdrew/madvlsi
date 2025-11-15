import argparse
from pathlib import Path
import matplotlib.pyplot as plt
import subprocess
import os

from subprocess import CalledProcessError

# plot colors
light_sea_green = "#038880"
bittersweet = "#FF6C8C"
black = "#000000"
taupe_gray = "#A7A7A7"
electric_blue = "#00AAFF"


def get_project_root() -> Path:
    """
    Return the root of the project based on an anchor file.
    """
    ANCHOR_FILE = ".gitignore"
    current_path = Path(__file__)
    while current_path != current_path.parent:
        if (current_path.joinpath(ANCHOR_FILE)).exists():
            return current_path
        current_path = current_path.parent
    raise FileNotFoundError(f"Unable to find anchor file {ANCHOR_FILE}")


def get_netlist(schematic: Path, output: Path) -> Path:
    """
    Generate the netlist for an xschem schematic and place it in an output directory.
    """
    output_log = output.joinpath(f"{schematic.stem}_netlist.log")
    try:
        subprocess.run(
            args=[
                "xschem",
                "-xsq",
                "-o",
                output,
                "--netlist",
                schematic,
                "--log",
                output_log,
            ],
            capture_output=True,
            check=True,
        )
    except CalledProcessError:
        with open(output_log) as log:
            error_msg = log.read()
            print(error_msg)
        raise RuntimeError(
            f"Error generating {schematic.stem} netlist. See above for log output."
        )
    return output.joinpath(f"{schematic.stem}.spice")


def run_simulation(netlist: Path, output: Path, filename: str = "") -> Path:
    """
    Simulate a netlist using ngspice.
    """
    output_log = output.joinpath(f"{netlist.stem}_sim.log")
    data = output.joinpath(f"{netlist.stem}.txt")
    if data.exists():
        os.remove(data)
    try:
        subprocess.run(
            ["ngspice", "-b", "-o", output_log, netlist],
            capture_output=True,
            check=True,
        )
    except CalledProcessError:
        with open(output_log) as log:
            error_msg = log.read()
            print(error_msg)
        raise RuntimeError(
            f"Error running simulation for {netlist.stem}. See above for log output."
        )
    if filename:
        _data = output.joinpath(filename)
        os.rename(data, _data)
        data = _data
    return data


def parse_data(file: Path) -> tuple[dict, int]:
    """
    Parse data from an ngspice simulation into a dictionary.
    """
    data = {}
    line_count = 1
    with open(file=file, mode="r+", encoding="utf-8") as data_file:
        variables = list(data_file.readline().rstrip().split())

        _data = [[] for _ in variables]
        for line in data_file:
            line_count += 1
            for index, data_point in enumerate(line.split()):
                _data[index].append(float(data_point))

        for index, variable in enumerate(variables):
            data[variable] = _data[index]

    return data, line_count


def export_schematic(schematic: Path, output: Path) -> None:
    """
    Export a schematic as an SVG.
    """
    try:
        subprocess.run(
            f'xschem \
              -xq \
              --command \
              "xschem toggle_colorscheme; \
              xschem set color_ps 0; \
              xschem print svg {output}" \
              {schematic}',
            shell=True,
        )
    except CalledProcessError as error:
        raise RuntimeError(f"Error exporting {schematic.stem} svg. Error: {error}")


# def layout_versus_schematic(first: Path, second: Path, output_dir: Path) -> None:
#     """
#     Run layout versus schematic comparison.

#     Alternatively, compare a schematic to a schematic or a layout to another
#     layout. Schematics and layouts are detected automatically from file
#     extensions.
#     """
#     if first.suffix == ".sch":
#         get_netlist(schematic=first, output=output_dir.joinpath(f"{first.stem}_"))
#     elif first.suffix == ".mag":
        

#     try:
#       subprocess.run(
#           args=[
#             "netgen",
#             "-batch",
#             "lvs",
#             ""   
#           ]
#       )
#     except:
#       pass


def plot(file: Path):
    data = {}
    with open(file=file, mode="r+", encoding="utf-8") as data_file:
        variables = list(data_file.readline().rstrip().split())

        _data = [[] for _ in variables]
        for line in data_file:
            for index, data_point in enumerate(line.split()):
                _data[index].append(float(data_point))

        for index, variable in enumerate(variables):
            data[variable] = _data[index]

    data["time"] = [_time / 1e-9 for _time in data["time"]]

    figure_0 = plt.figure(figsize=(12, 20))

    # sim_corners = [
    #   Patch(facecolor=taupe_gray, edgecolor=taupe_gray, label="TT"),
    #   Patch(facecolor=bittersweet, edgecolor=bittersweet, label="FF"),
    #   # Patch(facecolor=taupe_gray, edgecolor=taupe_gray, label="TT"),
    # ]

    # figure_0.legend(handles=sim_corners, loc="upper right", bbox_to_anchor=(0.9, 0.5))

    plt.axis("off")
    plt.legend(["TT"])
    plt.title("Four-Bit Shift Register Transient Response, SS")
    plt.xlabel("Time (ns)")
    plt.ylabel("Voltage")
    plt.subplot(11, 1, 1)
    plt.grid(which="minor", linestyle="--", linewidth=0.5)
    plt.minorticks_on()
    plt.plot(data["time"], data["v(clk)"], color=black, linewidth=2)
    plt.legend(["v(clk)"], loc="right")
    plt.subplot(11, 1, 2)
    plt.grid(which="minor", linestyle="--", linewidth=0.5)
    plt.minorticks_on()
    plt.plot(data["time"], data["v(D)"], color=black, linewidth=2)
    plt.legend(["v(D)"], loc="right")
    plt.subplot(11, 1, 3)
    plt.grid(which="minor", linestyle="--", linewidth=0.5)
    plt.minorticks_on()
    plt.plot(data["time"], data["v(Dn)"], color=black, linewidth=2)
    plt.legend(["v(Dn)"], loc="right")

    for index in range(0, 4):
        plt.subplot(11, 1, 4 + index * 2)
        plt.grid(which="minor", linestyle="--", linewidth=0.5)
        plt.minorticks_on()
        plt.plot(data["time"], data[f"v(Q{index})"], color=black, linewidth=2)
        plt.legend([f"v(Q{index})"], loc="right")

        plt.subplot(11, 1, 5 + index * 2)
        plt.grid(which="minor", linestyle="--", linewidth=0.5)
        plt.minorticks_on()
        plt.plot(data["time"], data[f"v(Qn{index})"], color=black, linewidth=2)
        plt.legend([f"v(Qn{index})"], loc="right")

    plt.savefig("plot.png")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("file")
    args = parser.parse_args()

    plot(args.file)
