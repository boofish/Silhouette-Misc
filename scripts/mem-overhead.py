#!/usr/bin/env python3

'''
This scripts computes the memory overhead of test programs.

Command line arguments:
    prog - program whose stats are to be processed
'''

import sys
import os
import glob

# command line arguments
argv = sys.argv

data_dir = "../data/" + argv[1] + "/mem-overhead"

os.chdir(data_dir)


'''
This function computes the memory overhead.
It gets the original code size and increase code size from the stats files,
and do the computation.
'''
def compute():
    mem_overhead_file = open("mem_overhead.dat", "w")
    original_code_size, increased_code_size = 0, 0

    for stat_file in glob.glob("*.stats"):
        # iterate over each stat file
        for line in open(stat_file, "r").readlines():
            if "CODE_SIZE" in line:
                original_code_size += float(line.rpartition(": ")[2][0:-2])
            elif "MEM_OVERHEAD" in line:
                increased_code_size += float(line.rpartition(": ")[2][0:-2])
    
    overhead = increased_code_size / original_code_size
    overhead_str = "%.2f" % (overhead * 100) + "%"

    mem_overhead_file.write(overhead_str)
    
    print(overhead_str)


#
# entrance of this script
# 
if __name__ == "__main__":
    compute()

