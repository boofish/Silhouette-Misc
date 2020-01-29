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
# @is_fulltable: whether to generate a table with only summarized data
#
def write_tex_header(f, csv_type, is_fulltable):
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
    if is_fulltable:
        f.write('\\begin{tabular}{@{}lrrrrrrr@{}}\n')
    else:
        f.write('\\begin{tabular}{@{}lrrrrrr@{}}\n')
    # Write \toprule
    f.write('\\toprule\n')
    # Write 1st row of table header
    if is_fulltable:
        f.write('& {\\bf Baseline} ')
    f.write('& {\\bf SS} & {\\bf SP} & {\\bf CFI} & ')
    f.write('{\\bf Silhoue-} ') if is_fulltable else f.write('{\\bf Silhouette} ')
    f.write('& {\\bf Invert} & {\\bf SSFI} \\\\\n')
    # Write 2nd row of table header
    if csv_type == 'perf':
        f.write('& {\\bf (ms)} & {\\bf (\\%)} & {\\bf (\\%)} & {\\bf (\\%)} &' +
                '{\\bf tte (\\%)} & {\\bf (\\%)} & {\\bf (\\%)} \\\\\n')
    else:
        if is_fulltable:
            f.write('& {\\bf (\# bytes)} & {\\bf (\\%)} & {\\bf (\\%)} & {\\bf (\\%)} &' +
                    '{\\bf tte (\\%)} & {\\bf (\\%)} & {\\bf (\\%)} \\\\\n')
        else:
            f.write('& {\\bf (\\%)} & {\\bf (\\%)} & {\\bf (\\%)} &' +
                    '{\\bf (\\%)} & {\\bf (\\%)} & {\\bf (\\%)} \\\\\n')
    # Write \midrule
    f.write('\\midrule\n')


#
# Write the LaTeX footer of the generated table to an output file.
#
# @f: a file object of the opened output file
# @csv_type: 'mem' or 'perf'
# @benchmarks: 'beebs' or 'coremark-pro'
#
def write_tex_footer(f, csv_type, benchmarks):
    # Write \bottomrule
    f.write('\\bottomrule\n')
    # Write \end{tabular}
    f.write('\\end{tabular}\n')
    # Write end of \footnotesize{
    f.write('}}\n')
    # Write \caption{}
    if csv_type == 'perf':
        f.write('\\caption{Performance Overhead on ')
        if benchmarks == 'beebs':
            f.write('BEEBS ')
        else:
            f.write('CoreMark-Pro ')
        f.write('Benchmarks.' + ' SS: Shadow Stack; SP: Store Promotion.}\n')
    else:
        f.write('\\caption{Code Size Overhead on ')
        if benchmarks == 'beebs':
            f.write('BEEBS ')
        else:
            f.write('CoreMark-Pro ')
        f.write('Benchmarks.' + ' SS: Shadow Stack; SP: Store Promotion.}\n')
    # Write \label
    if csv_type == 'perf':
        if benchmarks == 'beebs':
            f.write('\\label{table:beebs_perf}\n')
        else:
            f.write('\\label{table:coremarkpro_perf}\n')
    else:
        if benchmarks == 'beebs':
            f.write('\\label{table:beebs_codesize}\n')
        else:
            f.write('\\label{table:coremarkpro_codesize}\n')
    # Write \end{table}
    f.write('\\end{table}\n')


#
# Write the LaTex code for data summary: min, max, and geometric mean.
#
# @f: a file object of the opened output file
# @configs: an array of configurations
# @data: a dictionary containing data
# @is_fulltable: whether to generate a table with only summarized data
#
def write_tex_summary(f, configs, data, is_fulltable):
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
    f.write("{\\bf min (\\%)}")
    if is_fulltable:
        f.write(' &')
    for config in overhead:
        min_overhead = "{0:.2f}".format(100 * (min(overhead[config]) - 1))
        f.write(" & " + min_overhead)
    f.write(" \\\\\n")

    # Write max to file.
    f.write("{\\bf max (\\%)}")
    if is_fulltable:
        f.write(' &')
    for config in overhead:
        max_overhead = "{0:.2f}".format(100 * (max(overhead[config]) - 1))
        f.write(" & " + max_overhead)
    f.write(" \\\\\n")

    # Write geo. mean to file.
    f.write("{\\bf geo. mean (\\%)}")
    if is_fulltable:
        f.write(' &')
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
# @benchmarks: 'beebs' or 'coremark-pro'
# @is_fulltable: whether to generate a table with only summarized data
#
def write_tex(tex_path, configs, data, csv_type, benchmarks, is_fulltable):
    with open(tex_path, 'w') as f:
        # Write header
        write_tex_header(f, csv_type, is_fulltable)

        # Write data
        if is_fulltable:
            for benchmark in data:
                f.write(benchmark.replace('_', '\\_'))
                for config in configs:
                    number = data[benchmark][config]
                    # Generate comma-separated numbers for baseline
                    if config == 'baseline':
                        if benchmarks == 'beebs':
                            number = '{:,}'.format(float(number))
                        else:
                            number = '{0:.2f}'.format(float(number))
                    else:
                        baseline = float(data[benchmark]['baseline'])
                        number = '{0:.2f}'.format(100 * (float(number) - baseline) / baseline)
                    f.write(' & ' + number)
                f.write(' \\\\\n')
            f.write("\\midrule\n")

        # Write data summary: min, max, and geometric mean.
        write_tex_summary(f, configs, data, is_fulltable)

        # Write footer
        write_tex_footer(f, csv_type, benchmarks)


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
    opt.add_argument('-b', '--benchmark', choices=['beebs', 'coremark-pro'],
                     default='beebs', help='Benchmark: BEEBS or CoreMark Pro')
    opt.add_argument('--fulltable', type=bool, default=True, metavar='is_fulltable',
                     help='Whether generate a full table or a small table ' +
                           'only summarized data')
    args = opt.parse_args()
    csv_type = args.type
    benchmark = args.benchmark
    tex_path = args.output
    is_fulltable = args.fulltable

    # Hard-coded CSV paths
    prefix = '../data'
    csvs = {
        'mem': {
            'baseline': prefix + '/mem/' + benchmark + '-baseline/code_size.csv',
            'ss': prefix + '/mem/' + benchmark + '-ss/code_size.csv',
            'sp': prefix + '/mem/' + benchmark + '-sp/code_size.csv',
            'cfi': prefix + '/mem/' + benchmark + '-cfi/code_size.csv',
            'silhouette': prefix + '/mem/' + benchmark + '-silhouette/code_size.csv',
            'invert': prefix + '/mem/' + benchmark + '-invert/code_size.csv',
            'sfifull': prefix + '/mem/' + benchmark + '-sfifull/code_size.csv',
        },
        'perf': {
            'baseline': prefix + '/perf/' + benchmark + '-baseline/perf.csv',
            'ss': prefix + '/perf/' + benchmark + '-ss/perf.csv',
            'sp': prefix + '/perf/' + benchmark + '-sp/perf.csv',
            'cfi': prefix + '/perf/' + benchmark + '-cfi/perf.csv',
            'silhouette': prefix + '/perf/' + benchmark + '-silhouette/perf.csv',
            'invert': prefix + '/perf/' + benchmark + '-invert/perf.csv',
            'sfifull' : prefix + '/perf/' + benchmark + '-sfifull/perf.csv',
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
    write_tex(tex_path, csvs[csv_type].keys(), data, csv_type, benchmark, is_fulltable)

if __name__ == '__main__':
    main()
