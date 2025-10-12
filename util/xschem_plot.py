import argparse
from pathlib import Path
import matplotlib.pyplot as plt
from matplotlib.patches import Patch

# plot colors
light_sea_green = "#038880"
bittersweet = "#FF6C8C"
black = "#000000"
taupe_gray = "#A7A7A7"
electric_blue = "#00AAFF"

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

  figure_0 = plt.figure(figsize=(12,20))
  
  # sim_corners = [
  #   Patch(facecolor=taupe_gray, edgecolor=taupe_gray, label="TT"),
  #   Patch(facecolor=bittersweet, edgecolor=bittersweet, label="FF"),
  #   # Patch(facecolor=taupe_gray, edgecolor=taupe_gray, label="TT"),
  # ]
  
  # figure_0.legend(handles=sim_corners, loc="upper right", bbox_to_anchor=(0.9, 0.5))

  plt.axis('off')
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

  for index in range(0,4):
    plt.subplot(11, 1, 4 + index*2)
    plt.grid(which="minor", linestyle="--", linewidth=0.5)
    plt.minorticks_on()
    plt.plot(data["time"], data[f"v(Q{index})"], color=black, linewidth=2)
    plt.legend([f"v(Q{index})"], loc="right")

    plt.subplot(11, 1, 5 + index*2)
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
