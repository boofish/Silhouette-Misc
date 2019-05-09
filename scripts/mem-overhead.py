#!/usr/bin/env python3

'''
This scripts computes the memory overhead of test programs.

Command line arguments:
    prog - program whose code size date are to be processed
'''

import sys
import os

# command line arguments
argv = sys.argv

PROG = argv[1]

# paths
HOME_DIR = os.path.expanduser("~")
SILHOUETTE = HOME_DIR + "/projects/silhouette"
DEBUG_DIR = SILHOUETTE + "/debug"
DATA_DIR = SILHOUETTE + "/silhouette-misc/data/mem/"

# gdb command to get the list of functions in a binary
GDB_FUNC_INFO_CMD = "arm-none-eabi-gdb -batch -ex \"i function\""



'''
This function computes the memory overhead.
It gets the original code size and new code size from the code_size.stat file,
and do the computation.
'''
def compute(prog_name):
    # Get the list of functions in the binary.
    prog_debug_dir = DEBUG_DIR + "/" + prog_name
    if os.path.isdir(prog_debug_dir) == False:
        print(prog_name + " does not exist!")
        return

    os.chdir(prog_debug_dir)
    gdb_cmd = GDB_FUNC_INFO_CMD + " " + prog_name + ".elf"
    func_info = os.popen(gdb_cmd).read().split('\n')

    # A list of the function names compiled by our compiler.
    func_list = set()
    
    # Get all function names.
    i = 3
    while i < len(func_info):
        line = func_info[i]
        if line != '':
            # The format is "address func_name".
            func_list.add(line.split()[1])
        i += 1

    # cd to the stats data directory of the test program.
    os.chdir(DATA_DIR + prog_name)

    # Check if the code_size.stat exists.
    if os.path.isfile("code_size.stat") == False:
        print("code_szie file doesn't exit.")
        return

    stat_file = open("code_size.stat", "r")
    original_code_size, new_code_size, increased_code_size = 0, 0, 0

    # iterate over each stat file
    for line in stat_file.readlines():
        func_stat = line.split(':')
        if func_stat[0] not in func_list:
            continue
        original_code_size += int(func_stat[1])
        new_code_size += int(func_stat[2])

    # summerize results
    increased_code_size = new_code_size - original_code_size
    overhead = increased_code_size / original_code_size
    overhead_str = "%.2f" % (overhead * 100) + "%"

    # write results to file.
    mem_overhead_file = open("mem_overhead.dat", "w")
    mem_overhead_file.write("original_code_size new_code_size overhead (bytes) overhead (%)\n")
    result = str(original_code_size) + " " + str(new_code_size) \
            + " " + str(increased_code_size) + " " + overhead_str
    mem_overhead_file.write(result + "\n")
    
    # print results
    print("Program: " + prog_name)
    print("Original code size: " + str(original_code_size))
    print("New code size: " + str(new_code_size))
    print("Overhead (bytes): " + str(increased_code_size))
    print("Overhead (%): " + overhead_str)


#
# entrance of this script
# 
if __name__ == "__main__":
    compute(PROG)
