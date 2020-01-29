#!/usr/bin/python3

'''
This script builds perf csv files from the stat files generated
by Baseline and Silhouette passes.
'''

import argparse
import csv
import os
import re

# paths
HOME_DIR = os.path.expanduser("~")
SILHOUETTE = HOME_DIR + "/projects/silhouette"
SILHOUETTE_MISC = SILHOUETTE + "/silhouette-misc"
DATA_DIR = SILHOUETTE_MISC + "/data/perf/"


def writeData(csvPath, benchName, benchTime):
    if not os.path.exists(csvPath):
        with open(csvPath, mode='w') as csvFile:
            writer = csv.writer(csvFile)
            writer.writerow(['Benchmark', 'Time'])
            writer.writerow([benchName, benchTime])
    else:
        with open(csvPath, mode='a') as csvFile:
            writer = csv.writer(csvFile)
            writer.writerow([benchName, benchTime])

def build_csv_beebs(perfDir, csvPath):
    bench = os.listdir(perfDir)
    bench = sorted(bench)
    os.chdir(perfDir)
    for perfFilename in bench:
        with open(perfFilename, mode='r') as perfFile:
            outputStr = perfFile.read()
            re_time = re.search('(\d+) ms', outputStr)
            if re_time is not None and re_time.lastindex is not None:
                time = re_time.group(1)
                name = perfFilename.replace('.stat', '')
                writeData(csvPath, name, time)


'''
build_csv() constructs a perf.csv file.

@benchmark - BEEBS or CoreMark Pro
@config    - Baseline, SS, SP, CFI, Silhouette, Silhouette-Invert, SSFI
'''
def build_csv(benchmark, config):
    data_dir = DATA_DIR + benchmark + "-" + config
    perf_csv_path = data_dir + "/perf.csv"
    data = {}  # perf data of transformed programs

    # Remove old perf.csv
    if os.path.exists(perf_csv_path):
        os.remove(perf_csv_path)

    # Construct csv for BEEBS
    if benchmark == "beebs":
        build_csv_beebs(data_dir, perf_csv_path)
        return

    # Construct csv for CoreMark Pro
    for perf_file in os.listdir(data_dir):
        prog_name = perf_file[:-5]
        for line in open(data_dir + "/" + perf_file).readlines():
            if "time(ns)" in line:
                data [prog_name] = line.split('=')[-1].lstrip()
                break

    perf_csv = open(perf_csv_path, "w")
    perf_csv.write("Benchmark,Time\n")
    for prog in sorted(data):
        # The "time" str extracted above has already had a newline;
        # so we do not need append a new line at the end.
        perf_csv.write(prog + "," + data[prog])


#
# entrance of this script
#
if __name__ == "__main__":
    # Parse commond line arguments
    parser = argparse.ArgumentParser(description='Build performance csv file.')
    parser.add_argument('-b', '--benchmark', choices=['beebs', 'coremark-pro'],
                        default='beebs', help='BEEBS or CoreMark-Pro')
    parser.add_argument('-c', '--configure', required=True, metavar='configuration',
                        help='ss, sp, cfi, silhouette, invert, ssfi')

    args = parser.parse_args()
    benchmark = args.benchmark
    config = args.configure

    build_csv(benchmark, config)
