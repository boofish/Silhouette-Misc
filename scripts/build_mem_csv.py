#!/usr/bin/env python3

'''
This script builds code size csv files from code stat stat files
generated from Silhouette passes.
'''

import argparse
import csv
import os

# paths
HOME_DIR = os.path.expanduser("~")
SILHOUETTE = HOME_DIR + "/projects/silhouette"
SILHOUETTE_MISC = SILHOUETTE + "/silhouette-misc"
DATA_DIR = SILHOUETTE_MISC + "/data/mem/"


'''
get_baseline() constructs a code size csv file. It uses the code size files
generated from the shadow stack pass to get the code size of the baseline
programs. It will directly return if it finds code_size.csv has existed.

@benchmark - BEEBS or CoreMark Pro
'''
def get_baseline(benchmark):
    baseline_dir = DATA_DIR + benchmark + "-baseline"

    if not os.path.exists(baseline_dir):
        os.mkdir(baseline_dir)

    if len(os.listdir(baseline_dir)) > 0:
        # We have already had baseline data.
        return

    baseline = {}  # code size data of baseline programs
    data_dir = DATA_DIR + benchmark + "-ss"

    # Sum up the code sizes from a program's functions.
    for prog_file in sorted(os.listdir(data_dir)):
        # Remove the ".stat" suffix
        prog = prog_file[:-5]
        baseline[prog] = 0
        for func_data in open(data_dir + "/" + prog_file).readlines():
            baseline[prog] += int(func_data.split(':')[1])

    # Write all the data into one csv file.
    writer = csv.writer(open(baseline_dir + "/code_size.csv", "w"))
    writer.writerow(["Benchmark", "code_size"])
    for prog in baseline:
        writer.writerow([prog, baseline[prog]])


'''
build_csv() constructs a code size csv file for transformed programs.

@benchmark - BEEBS or CoreMark Pro
@config    - SS, SP, CFI, Silhouette, Silhouette-Invert, SSFI
'''
def build_csv(benchmark, config):
    data_dir = DATA_DIR + benchmark + "-" + config + "/"
    code_size_csv = data_dir + "code_size.csv"
    transformed = {}  # code size data of transformed programs
    code_size_files = {}

    # Remove old data file
    if os.path.exists(code_size_csv):
        os.remove(code_size_csv)

    # For Shadow Stack, extract baseline data if this has not been done.
    if config == "ss":
        get_baseline(benchmark)

    # Get all program names from the baseline directory.
    baseline_data_file = DATA_DIR + benchmark + "-baseline/code_size.csv"
    for prog_data in open(baseline_data_file).readlines():
        if "Benchmark" in prog_data:
            continue
        code_size_files[prog_data.split(',')[0]] = ""
    
    # Get code size files' paths.
    for prog in code_size_files:
        if config == "ss" or config == "sp" or config == "cfi":
            code_size_files[prog] = data_dir + prog + ".stat"
        else:
            # For Silhouette, Silhouette-Invert, and SSFI, we use the
            # code size file from the CFI pass as it is the last pass.
            code_size_files[prog] = data_dir + prog + "/code_size_cfi.stat"
    
    # Sum up the code sizes from a program's functions.
    for prog in code_size_files:
        transformed[prog] = 0
        for func_data in open(code_size_files[prog]).readlines():
            transformed[prog] += int(func_data.split(':')[2])

    # Write all programs' code size data into one csv file.
    writer = csv.writer(open(code_size_csv, 'w'))
    writer.writerow(["Benchmark", "code_size"])
    for prog in transformed:
        writer.writerow([prog, transformed[prog]])
            

#
# entrance of this script
# 
if __name__ == "__main__":
    # Parse commond line arguments
    parser = argparse.ArgumentParser(description='Build code size csv file.')
    parser.add_argument('-b', '--benchmark', required=True, metavar='benchmark',
                        help='BEEBS or CoreMark Pro')
    parser.add_argument('-c', '--configure', required=True, metavar='configuration',
                        help='ss, sp, cfi, silhouette, invert, ssfi')
    parser.add_argument('-p', '--program', required=False, metavar='program',
                        help='Name of a single program')
    args = parser.parse_args()
    benchmark = args.benchmark
    config = args.configure
            
    # Generate csv file.
    build_csv(benchmark, config)
