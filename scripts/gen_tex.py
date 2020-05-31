#!/usr/bin/env python3

import argparse
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
        'absolute': True,       # Absolute numbers for baseline
        'format': '{0:,}',      # Comma-separated numbers
    },
    'ss': {
        'name': 'SS',
        'absolute': False,      # Normalized numbers for other configurations
        'format': '{0:.3f}',    # Reserve 3 digits
    },
    'sp': {
        'name': '{\\StoreAbbreviation}',
        'absolute': False,
        'format': '{0:.3f}',
    },
    'cfi': {
        'name': 'CFI',
        'absolute': False,
        'format': '{0:.3f}',
    },
    'silhouette': {
        'name': '{\\System}',
        'absolute': False,
        'format': '{0:.3f}',
    },
    'invert': {
        'name': 'Invert',
        'absolute': False,
        'format': '{0:.3f}',
    },
    'sfifull': {
        'name': '{\\SSFI}',
        'absolute': False,
        'format': '{0:.3f}',
    },
}

#
# Dict of benchmark suites and their formal names.
#
benchmarks = {
    'beebs': 'BEEBS',
    'coremark-pro': 'CoreMark-Pro',
}

###############################################################################

#
# Write the LaTeX header of the generated table to an output file.
#
# @f: a file object of the opened output file.
# @benchmark: name of the benchmark suite.
# @typ: 'mem' or 'perf'.
# @ieee: whether to generate an IEEE-style table.
#
def write_tex_header(f, benchmark, typ, ieee):
    # Synthesize a table caption
    caption = ''
    if typ == 'perf':
        caption += 'Performance'
    else:
        caption += 'Code Size'
    caption += ' Overhead on ' + benchmarks[benchmark]

    # Write a comment
    f.write('%\n% ' + caption + '.\n%\n')

    # Write \begin{table}
    f.write('\\begin{table}[ptb]\n')
    if ieee:
        # Write caption and label
        f.write('\\caption{' + caption + '}\n')
        f.write('\\label{tbl:' + typ + '-' + benchmark + '}\n')
    # Write \centering
    f.write('\\centering\n')
    # Write \sffamily
    f.write('\\sffamily\n')
    # Write \footnotesize{
    f.write('\\footnotesize{\n')
    # Restrict everything within column width
    f.write('\\resizebox{\\columnwidth}{!}{\n')
    # Write \begin{tabular}
    f.write('\\begin{tabular}{@{}l' + ''.join(['r' for c in configs]) + '@{}}\n')
    # Write \toprule
    f.write('\\toprule\n')
    # Write 1st row of table header
    f.write(' ' + ''.join([' & {\\bf ' + configs[c]['name'] + '}' for c in configs]) + ' \\\\\n')
    # Write 2nd row of table header
    unit = 'ms' if typ == 'perf' else 'bytes'
    f.write(' ' + ''.join([' & {\\bf (' + (unit if configs[c]['absolute'] else '$\\times$') + ')}' for c in configs]) + '\\\\\n')
    # Write \midrule
    f.write('\\midrule\n')


#
# Write the LaTeX footer of the generated table to an output file.
#
# @f: a file object of the opened output file.
# @benchmark: name of the benchmark suite.
# @typ: 'mem' or 'perf'.
# @ieee: whether to generate an IEEE-style table.
#
def write_tex_footer(f, benchmark, typ, ieee):
    # Synthesize a table caption
    caption = ''
    if typ == 'perf':
        caption += 'Performance'
    else:
        caption += 'Code Size'
    caption += ' Overhead on ' + benchmarks[benchmark]

    # Write \bottomrule
    f.write('\\bottomrule\n')
    # Write \end{tabular}
    f.write('\\end{tabular}\n')
    # Write end of \footnotesize{
    f.write('}}\n')
    if not ieee:
        # Write caption and label
        f.write('\\caption{' + caption + '}\n')
        f.write('\\label{tbl:' + typ + '-' + benchmark + '}\n')
    # Write \end{table}
    f.write('\\end{table}\n')


#
# Write the LaTeX content of the generated table to an output file.
#
# @f: a file object of the opened output file.
# @benchmark: name of the benchmark suite.
# @summary: whether to generate a summary table.
# @data: the data collection.
#
def write_tex_content(f, benchmark, summary, data):
    # Write each row and collect statistics in the meantime
    stats = dict((conf, []) for conf in configs)
    for prog in data:
        if not summary:
            # Write the program name
            f.write('  ' + prog.replace('_', '\\_'))

        # Write the number of each configuration
        for conf in configs:
            number = data[prog][conf]
            if not configs[conf]['absolute']:
                # Generate normalized numbers
                baseline = float(data[prog]['baseline'])
                number = float(number) / baseline
            if not summary:
                f.write(' & ' + configs[conf]['format'].format(number))
            stats[conf].append(number)

        if not summary:
            # Write the newline
            f.write(' \\\\\n')

    if not summary:
        # Write \midrule
        f.write('\\midrule\n')

    # Write statistic summary: Min
    f.write('  {\\bf Min}')
    for conf in stats:
        f.write(' & ' + configs[conf]['format'].format(min(stats[conf])))
    f.write(' \\\\\n')
    # Write statistic summary: Max
    f.write('  {\\bf Max}')
    for conf in stats:
        f.write(' & ' + configs[conf]['format'].format(max(stats[conf])))
    f.write(' \\\\\n')
    # Write statistic summary: Geomean
    f.write('  {\\bf Geomean}')
    for conf in stats:
        if configs[conf]['absolute']:
            # Not meaningful to write a geometric mean of absolute numbers
            f.write(' & ---')
        else:
            f.write(' & ' + configs[conf]['format'].format(statistics.geometric_mean(stats[conf])))
    f.write(' \\\\\n')

#
# Write extracted data to an output file.
#
# @benchmark: name of the benchmark suite.
# @typ: 'mem' or 'perf'.
# @ieee: whether to generate an IEEE-style table.
# @summary: whether to generate a summary table.
# @data: the data collection.
# @output: path to the output LaTeX file.
#
def write_data(benchmark, typ, ieee, summary, data, output):
    with open(output, mode='w') as f:
        # Write header
        write_tex_header(f, benchmark, typ, ieee)

        # Write table content
        write_tex_content(f, benchmark, summary, data)

        # Write footer
        write_tex_footer(f, benchmark, typ, ieee)


#
# Generate a code size LaTeX file for a specified benchmark suite, assuming
# @debug_dir already contains all the generate binaries needed.
#
# @benchmark: name of the benchmark suite.
# @ieee: whether to generate an IEEE-style table.
# @summary: whether to generate a summary table.
# @output: path to the output LaTeX file.
#
def gen_tex_mem(benchmark, ieee, summary, output):
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

    # Write data to LaTeX
    write_data(benchmark, 'mem', ieee, summary, data, output)


#
# Generate a performance LaTeX file for a specified benchmark suite, assuming
# @data_dir already contains all the experiment data needed.
#
# @benchmark: name of the benchmark suite.
# @ieee: whether to generate an IEEE-style table.
# @summary: whether to generate a summary table.
# @output: path to the output LaTeX file.
#
def gen_tex_perf(benchmark, ieee, summary, output):
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

    # Write data to LaTeX
    write_data(benchmark, 'perf', ieee, summary, data, output)


#
# The main function.
#
def main():
    # Construct a CLI argument parser
    parser = argparse.ArgumentParser(description='Generate LaTeX files.')
    parser.add_argument('-b', '--benchmark', choices=benchmarks.keys(),
                        default='beebs', metavar='BENCH',
                        help='Name of the benchmark suite')
    parser.add_argument('-t', '--type', choices=['mem', 'perf'],
                        default='perf', metavar='TYPE',
                        help='Type of the LaTeX file to generate')
    parser.add_argument('--ieee', action='store_true',
                        help='Generate an IEEE-style table')
    parser.add_argument('--summary', action='store_true',
                        help='Generate a summary table')
    parser.add_argument('-o', '--output', metavar='FILE',
                        help='Path to the output LaTeX file')

    # Parse CLI arguments
    args = parser.parse_args()
    benchmark = args.benchmark
    typ = args.type
    ieee = args.ieee
    summary = args.summary
    output = typ + '-' + benchmark + '.tex'
    if args.output is not None:
        output = args.output

    # Generate LaTeX
    if typ == 'perf':
        gen_tex_perf(benchmark, ieee, summary, output)
    else:
        gen_tex_mem(benchmark, ieee, summary, output)


#
# entrance of this script.
#
if __name__ == '__main__':
    main()
