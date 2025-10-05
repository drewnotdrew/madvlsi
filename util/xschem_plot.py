import argparse
from pathlib import Path
import matplotlib.pyplot as plt

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

  plt.figure(figsize=(12,6))
  plt.title("AND Gate Transient Response")
  plt.xlabel("Time (ns)")
  plt.ylabel("Voltage")
  plt.plot(data["time"], data["v(A)"], color=light_sea_green, linestyle="--", linewidth=2)
  plt.plot(data["time"], data["v(B)"], color=bittersweet, linestyle="--", linewidth=2)
  plt.plot(data["time"], data["v(Y)"], color=black, linewidth=2)
  plt.minorticks_on()
  plt.grid(which="minor", linestyle="--", linewidth=0.5)
  plt.legend(["v(A)", "v(B)", "v(Y)"])
  plt.savefig("plot.png")

if __name__ == "__main__":
  parser = argparse.ArgumentParser()
  parser.add_argument("file")
  args = parser.parse_args()
  
  plot(args.file)
