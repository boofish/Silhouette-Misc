# Instructions on Performing the Experiments Conducted in the Silhouette Paper

### Login to the Linux Workstation
`ssh aeguest@212d.tplinkdns.com -p 65534`

### Working Directory Hierarchy
After you login, you will be located in the working directory for the
whole Silhouette project. The directories and files are organized as follows:

```
silhouette
|-- build.llvm.sh     # script to download LLVM 9.0, patch, and compile it
|-- llvm-project      # to be downloaded by build.llvm.sh
|-- silhouette.patch  # Silhouette's LLVM patch
|-- projs             # contains benchmark source files
|   |-- beebs
|   |-- coremark
|   |-- coremark-pro
|-- data              # contains generated experiment data
|-- beebs.sh          # script that compiles and runs the BEEBS benchmarks
|-- coremark.sh       # script that compiles and runs the CoreMark benchmark
|-- coremark-pro.sh   # script that compiles and runs the CoreMark-Pro benchmarks
|-- gen_csv.sh        # script to generate .csv format files for experiment data
|-- debug             # contains compiling log and dissassembled code for debugging
```

### Compile the Silhouette Compiler
Execute `./build.llvm.sh`.

The script will download the original LLVM 9.0 compiler infrastructure,
patch our passes, and compile the new compiler.

This process will take around xx time.

### Compile and Run Benchmarks
We have three scripts `beebs.sh`, `coremark.sh`, and `coremark-pro.sh`
that compile and run the three benchmark suites. Simply type

`./beebs.sh` will compile and run all our experiment configurations
for the BEEBS benchmark. To be more specific, we ran 6 sets of experiments
for each benchmark suite:
- **baseline**: compile the benchmarks without any of our passes
- **shadow stack**: only turn on the shadow stack pass
- **store hardening**: only turn on the store hardening
- **CFI**: only turn on the CFI pass
- **Silhouette**: turn on all the three passes above
- **Silhouette-Invert**: turn on the silhouette-invert pass
- **Silhouette-SFI**: turn on the shadow stack, SFI, and CFI passes

The other two scripts also compile and run the respective benchmarks
with all the six configurations.

Compiling and Running all experiments will take around xx time.

### Collect Experiment Results
After finish compiling and running the benchmarks, there will be
experiment data generated for both code size and performance.
All the raw data (code size and execution time) will be put in the
`silhouette/data` directory.  The names of all the subdirectories and
files are self-explanatory. For example, `data/perf/beebs-cfi/nbody.stat`
contains the execution time of running the `nbody` program in the `BEESB`
benchmark with only the `CFI` pass turned on.

In the `silhouette` directory, use the `gen_csv.py` to collect the raw
experiment data, compute the overhead, and write the summarized results
to an csv file. This script has three command line arguments:
```
-b benchmark_name # "beebs", "coremark", "coremark-pro"
-t data_tyep      # "perf", "mem"
-o output_file    # path of the output csv file; you can omit this argument
                   # and the output file will be put to the `silhouette` root directory
```

For example, if you want to see how Silhouette performs on the `BEEBS` benchamrk
suite, run

`gen_csv.py -b beebs -t perf`

and you will get an output file named `perf-beebs.csv` in the
`silhouette` directory.
