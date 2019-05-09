import argparse
import csv
import os
import re

parser = argparse.ArgumentParser(description='Take performance data and generate CSV table')
parser.add_argument('csv_path', help='Path of output CSV file')
parser.add_argument('perf_path', help='Path of perf directory that contains all runtime data')

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

def readFile(csvPath, perfDir):
    bench = os.listdir(perfDir)
    bench = sorted(bench)
    os.chdir(perfDir)
    for perfFilename in bench:
        with open(perfFilename, mode='r') as perfFile:
            outputStr = perfFile.read()
            re_time = re.search('(\d+) ms', outputStr)
            if re_time is not None and re_time.lastindex is not None:
                time = re_time.group(1)
                name = perfFilename
                writeData(csvPath, name, time)

args = parser.parse_args()
csvPath = os.path.abspath(args.csv_path)
perfDir = os.path.abspath(args.perf_path)
if os.path.exists(csvPath):
    os.remove(csvPath)
readFile(csvPath, perfDir)