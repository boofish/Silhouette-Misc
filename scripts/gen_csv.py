#!/usr/bin/env python3

import argparse
import csv
import glob
import os
import statistics
import sys


#
# Path to the root directory of whole project.
#
root = os.path.abspath(os.path.dirname(sys.argv[0]) + '/../..')

#
# Path to the debug directory where we put generated binaries.
#
debug_dir = root + '/debug'

#
# Path to the experiment data directory.
#
data_dir = root + '/silhouette-misc/data'

#
# Dict of configurations.
#
configs = {
    'baseline': {
        'name': 'Baseline',
        'absolute': True,       # Absolute numbers for all configurations
        'format': '{0}',
    },
    'ss': {
        'name': 'SS',
        'absolute': True,
        'format': '{0}',
    },
    'sp': {
        'name': 'SH',
        'absolute': True,
        'format': '{0}',
    },
    'cfi': {
        'name': 'CFI',
        'absolute': True,
        'format': '{0}',
    },
    'silhouette': {
        'name': 'Silhouette',
        'absolute': True,
        'format': '{0}',
    },
    'invert': {
        'name': 'Invert',
        'absolute': True,
        'format': '{0}',
    },
    'sfifull': {
        'name': 'SSFI',
        'absolute': True,
        'format': '{0}',
    },
}

#
# Dict of benchmark suites and their formal names.
#
benchmarks = {
    'beebs': 'BEEBS',
    'coremark': 'CoreMark',
    'coremark-pro': 'CoreMark-Pro',
}

###############################################################################

#
# Write extracted data to an output file.
#
# @data: the data collection.
# @output: path to the output CSV file.
#
def write_data(data, output):
    with open(output, mode='w') as csv_file:
        writer = csv.writer(csv_file)

        # Construct and write the header row
        row = ['#Program']
        for conf in configs:
            row.append(configs[conf]['name'])
        writer.writerow(row)

        # Construct and write a row for each program
        for prog in data:
            row = [prog]
            for conf in data[prog]:
                number = data[prog][conf]
                if not configs[conf]['absolute']:
                    # Generate normalized numbers
                    baseline = float(data[prog]['baseline'])
                    number = float(number) / baseline
                row.append(configs[conf]['format'].format(number))
            writer.writerow(row)


#
# Generate a code size CSV file for a specified benchmark suite, assuming
# @debug_dir already contains all the generate binaries needed.
#
# @benchmark: name of the benchmark suite.
# @output: path to the output CSV file.
#
def gen_csv_mem(benchmark, output):
    data = {}
    for conf in configs:
        new_debug_dir = debug_dir + '/' + benchmark + '-' + conf
        for f in glob.glob(new_debug_dir + '/*.elf'):
            prog = os.path.splitext(os.path.basename(f))[0]
            number = 0

            stdout = os.popen('size -A -d ' + f)
            line = stdout.readline()
            while line != '':
                if '.text' in line:
                    number += int(line.split()[1])
                line = stdout.readline()

            if number != 0:
                if prog not in data:
                    data[prog] = {}
                data[prog][conf] = number

    # Write data to CSV
    write_data(data, output)


#
# Generate a performance CSV file for a specified benchmark suite, assuming
# @data_dir already contains all the experiment data needed.
#
# @benchmark: name of the benchmark suite.
# @output: path to the output CSV file.
#
def gen_csv_perf(benchmark, output):
    data = {}
    for conf in configs:
        new_data_dir = data_dir + '/' + benchmark + '-' + conf

        # Process single-number data as is
        for f in glob.glob(new_data_dir + '/*.stat'):
            prog = os.path.splitext(os.path.basename(f))[0]
            number = None
            for line in open(f):
                # BEEBS
                if 'Finished' in line:
                    number = int(line.split(' ')[2].lstrip())
                    break
                # CoreMark
                elif 'Total ticks' in line:
                    number = int(line.split(':')[-1].lstrip())
                    break
                # CoreMark-Pro
                elif 'time(ns)' in line:
                    number = int(line.split('=')[-1].lstrip())
                    break

            if number is not None:
                if prog not in data:
                    data[prog] = {}
                data[prog][conf] = number

    # Write data to CSV
    write_data(data, output)


#
# The main function.
#
def main():
    # Construct a CLI argument parser
    parser = argparse.ArgumentParser(description='Generate CSV files.')
    parser.add_argument('-b', '--benchmark', choices=benchmarks.keys(),
                        default='beebs', metavar='BENCH',
                        help='Name of the benchmark suite')
    parser.add_argument('-t', '--type', choices=['mem', 'perf'],
                        default='perf', metavar='TYPE',
                        help='Type of the CSV file to generate')
    parser.add_argument('-o', '--output', metavar='FILE',
                        help='Path to the output CSV file')

    # Parse CLI arguments
    args = parser.parse_args()
    benchmark = args.benchmark
    typ = args.type
    output = typ + '-' + benchmark + '.csv'
    if args.output is not None:
        output = args.output

    # Generate CSV
    if typ == 'perf':
        gen_csv_perf(benchmark, output)
    else:
        gen_csv_mem(benchmark, output)


#
# entrance of this script.
#
if __name__ == '__main__':
    main()
