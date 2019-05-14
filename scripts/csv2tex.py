#!/usr/bin/env python3

import argparse
import csv
import os


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
    # Write \caption{}
    if csv_type == 'perf':
        f.write('\\caption{Performance Overhead on BEEBS Benchmarks.}\n')
    else:
        f.write('\\caption{Code Size Overhead on BEEBS Benchmarks.}\n')
    # Write \centering
    f.write('\\centering\n')
    # Write \sffamily
    f.write('\\sffamily\n')
    # Write \footnotesize{
    f.write('\\footnotesize{\n')

    # Write \begin{tabular}
    f.write('\\begin{tabular}{@{}lrrrrr@{}}\n')
    # Write \toprule
    f.write('\\toprule\n')
    # Write 1st row of table header
    f.write('& \\textbf{Baseline} & \\textbf{SS} & \\textbf{SP} ' +
            '& \\textbf{CFI} & \\textbf{Overall} \\\\\n')
    # Write 2nd row of table header
    if csv_type == 'perf':
        f.write('& \\textbf{(ms)} & \\textbf{(\\%)} & \\textbf{(\\%)} ' +
                '& \\textbf{(\\%)} & \\textbf{(\\%)} \\\\\n')
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
    f.write('}\n')
    # Write \label
    if csv_type == 'perf':
        f.write('\\label{table:perf}\n')
    else:
        f.write('\\label{table:codesize}\n')
    # Write \end{table}
    f.write('\\end{table}\n')


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
            'baseline': prefix + '/perf/baseline/perf.csv',
            'ss': prefix + '/perf/ss/perf.csv',
            'sp': prefix + '/perf/sp/perf.csv',
            'cfi': prefix + '/perf/cfi/perf.csv',
            'silhouette': prefix + '/perf/silhouette/perf.csv',
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
                if row[0] == 'Benchmark' or row[0] == '#Benchmark':
                    continue
                if row[0] not in data:
                    data[row[0]] = {}
                data[row[0]][config] = row[1]

    # Write to LaTeX file
    write_tex(tex_path, csvs[csv_type].keys(), data, csv_type)

if __name__ == '__main__':
    main()
