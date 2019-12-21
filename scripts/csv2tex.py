#!/usr/bin/env python3

import argparse
import csv
import os
from scipy.stats.mstats import gmean  # require the scipy library


#
# Write the LaTeX header of the generated table to an output file.
#
# @f: a file object of the opened output file
# @csv_type: 'mem' or 'perf'
#
def write_tex_header(f, csv_type):
    # Write a comment
    if csv_type == 'perf':
        f.write('%\n% Performance table.\n%\n')
    else:
        f.write('%\n% Code size overhead table.\n%\n')

    # Write \begin{table}
    f.write('\\begin{table}[ptb]\n')
    # Write \centering
    f.write('\\centering\n')
    # Write \sffamily
    f.write('\\sffamily\n')
    # Write \footnotesize{
    f.write('\\footnotesize{\n')
    # Restrict everything within column width
    f.write('\\resizebox{\\columnwidth}{!}{\n')
    # Write \begin{tabular}
    f.write('\\begin{tabular}{@{}lrrrrrrr@{}}\n')
    # Write \toprule
    f.write('\\toprule\n')
    # Write 1st row of table header
    f.write('& \\textbf{Baseline} & {\\bf SS} & {\\bf SP} & {\\bf CFI} & ' +
            '{\\bf Silhoue-} & {\\bf Invert} & {\\bf SSFI} \\\\\n')
    # Write 2nd row of table header
    if csv_type == 'perf':
        f.write('& {\\bf (ms)} & {\\bf (\\%)} & {\\bf (\\%)} & {\\bf (\\%)} &' +
                '{\\bf tte (\\%)} & {\\bf (\\%)} & {\\bf (\\%)} \\\\\n')
    else:
        f.write('& \\textbf{(\\# bytes)} & \\textbf{(\\%)} & \\textbf{(\\%)} ' +
                '& \\textbf{(\\%)} & \\textbf{(\\%)} \\\\\n')
    # Write \midrule
    f.write('\\midrule\n')


#
# Write the LaTeX footer of the generated table to an output file.
#
# @f: a file object of the opened output file
# @csv_type: 'mem' or 'perf'
#
def write_tex_footer(f, csv_type):
    # Write \bottomrule
    f.write('\\bottomrule\n')
    # Write \end{tabular}
    f.write('\\end{tabular}\n')
    # Write end of \footnotesize{
    f.write('}}\n')
    # Write \caption{}
    if csv_type == 'perf':
        f.write('\\caption{Performance Overhead on BEEBS Benchmarks.' +
                'SS: Shadow Stack; SP: Store Promotion.}\n')
    else:
        f.write('\\caption{Code Size Overhead on BEEBS Benchmarks.}\n')
    # Write \label
    if csv_type == 'perf':
        f.write('\\label{table:perf}\n')
    else:
        f.write('\\label{table:codesize}\n')
    # Write \end{table}
    f.write('\\end{table}\n')


#
# Write the LaTex code for data summary: min, max, and geometric mean.
#
# @f: a file object of the opened output file
# @configs: an array of configurations
# @data: a dictionary containing data
#
def write_tex_summary(f, configs, data):
    f.write("\\midrule\n")

    # We compute overhead as config / baseline.
    overhead = { }
    # Collect the overhead for all configs.
    for benchmark in data:
        for config in configs:
            if config == "baseline":
                continue
            if config not in overhead:
                overhead[config] = []
            baseline = float(data[benchmark]["baseline"])
            overhead[config] += [float(data[benchmark][config]) / baseline]

    # Write min to file.
    f.write("{\\bf min (\\%)} &")
    for config in overhead:
        min_overhead = "{0:.2f}".format(100 * (min(overhead[config]) - 1))
        f.write(" & " + min_overhead)
    f.write(" \\\\\n")

    # Write max to file.
    f.write("{\\bf max (\\%)} &")
    for config in overhead:
        max_overhead = "{0:.2f}".format(100 * (max(overhead[config]) - 1))
        f.write(" & " + max_overhead)
    f.write(" \\\\\n")

    # Write geo. mean to file.
    f.write("{\\bf geo. mean (\\%)} &")
    for config in overhead:
        geo_mean = "{0:.2f}".format(100 * (gmean(overhead[config]) - 1))
        f.write(" & " + geo_mean)
    f.write(" \\\\\n")


#
# Write the LaTeX code of the generated table to an output file.
#
# @tex_path: path to the output file
# @configs: an array of configurations
# @data: a dictionary containing data
# @csv_type: 'mem' or 'perf'
#
def write_tex(tex_path, configs, data, csv_type):
    with open(tex_path, 'w') as f:
        # Write header
        write_tex_header(f, csv_type)

        # Write data
        for benchmark in data:
            f.write(benchmark.replace('_', '\\_'))
            for config in configs:
                number = data[benchmark][config]
                # Generate comma-separated numbers for baseline
                if config == 'baseline':
                    number = '{:,}'.format(int(number))
                else:
                    baseline = float(data[benchmark]['baseline'])
                    number = '{0:.2f}'.format(100 * (float(number) - baseline) / baseline)
                f.write(' & ' + number)
            f.write(' \\\\\n')

        # Write data summary: min, max, and geometric mean.
        write_tex_summary(f, configs, data)

        # Write footer
        write_tex_footer(f, csv_type)


#
# The main function.
#
def main():
    # Parse command-line arguments
    opt = argparse.ArgumentParser(description='CSV to LaTeX generator')
    opt.add_argument('-o', '--output', required=True, metavar='TEX',
                     help='Path to the output LaTeX file')
    opt.add_argument('-t', '--type', choices=['mem', 'perf'], default='perf',
                     help='Type of input CSV files')
    args = opt.parse_args()
    csv_type = args.type
    tex_path = args.output

    # Hard-coded CSV paths
    prefix = '../data'
    csvs = {
        'mem': {
            'baseline': prefix + '/mem/baseline/code_size.csv',
            'ss': prefix + '/mem/ss/code_size.csv',
            'sp': prefix + '/mem/sp/code_size.csv',
            'cfi': prefix + '/mem/cfi/code_size.csv',
            'silhouette': prefix + '/mem/silhouette/code_size.csv',
        },
        'perf': {
            'baseline': prefix + '/perf/beebs-baseline/perf.csv',
            'ss': prefix + '/perf/beebs-ss/perf.csv',
            'sp': prefix + '/perf/beebs-sp/perf.csv',
            'cfi': prefix + '/perf/beebs-cfi/perf.csv',
            'silhouette': prefix + '/perf/beebs-silhouette/perf.csv',
            'invert' : prefix + '/perf/beebs-invert/perf.csv',
            'ssfi' : prefix + '/perf/beebs-sfifull/perf.csv',
        },
    }

    # Sanity check on CSV files
    for config in csvs[csv_type]:
        csv_path = csvs[csv_type][config]
        if not os.path.exists(csv_path):
            opt.error(csv_path + ' not exist')

    # Read data from CSV files
    data = {}
    for config in csvs[csv_type]:
        csv_path = csvs[csv_type][config]
        with open(csv_path) as csv_file:
            csv_reader = csv.reader(csv_file)
            for row in csv_reader:
                if row[0] == 'Benchmark' or row[0] == '#Benchmark' or row[0] == "benchmark":
                    continue
                if row[0] not in data:
                    data[row[0]] = {}
                data[row[0]][config] = row[1]

    # Write to LaTeX file
    write_tex(tex_path, csvs[csv_type].keys(), data, csv_type)

if __name__ == '__main__':
    main()
