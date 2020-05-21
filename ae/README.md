# How to Reproduce Experiments in the Silhouette Paper

### Login to the Linux Workstation
Log in by `ssh aeguest@212d.tplinkdns.com -p 65534`.

### Working Directory Hierarchy
After logging in, you will be located in the root directory for the
whole Silhouette project. The directories and files are organized as follows:

```shell
silhouette
|-- build.llvm.sh     # Script to download, patch, and compile LLVM 9.0
|-- llvm-project      # To be downloaded by build.llvm.sh
|-- silhouette.patch  # Patch to LLVM containing Silhouette passes
|-- projs             # Directory containing benchmark source files
|   |-- beebs
|   |-- coremark
|   |-- coremark-pro
|-- data              # Directory containing generated experiment data
|-- beebs.sh          # Script that compiles and runs the BEEBS benchmarks
|-- coremark.sh       # Script that compiles and runs the CoreMark benchmark
|-- coremark-pro.sh   # Script that compiles and runs the CoreMark-Pro benchmarks
|-- gen_csv.sh        # Script to generate CSV files for experiment data
|-- debug             # Directory containing all compiled binaries and build logs
```

### Compile the Silhouette Compiler
Simply run `./build.llvm.sh`.

The script will download the original LLVM 9.0 compiler infrastructure,
patch in our passes, and compile the new compiler.

This process will take around 25 minutes.

### Compile and Run Benchmarks
We have three scripts `beebs.sh`, `coremark.sh`, and `coremark-pro.sh`
that compile and run the three benchmark suites, respectively.  Typing
`./beebs.sh` will compile and run all our experiment configurations
for the BEEBS benchmarks.  To be more specific, we ran 6 sets of experiments
for each benchmark suite:
- **Baseline**: compile the benchmarks without any of our passes, denoted as `baseline`;
- **Shadow Stack**: only turn on the shadow stack pass, denoted as `ss`;
- **Store Hardening**: only turn on the store hardening, denoted as `sp` (for historical reasons);
- **CFI**: only turn on the CFI pass, denoted as `cfi`;
- **Silhouette**: turn on all the three passes above, denoted as `silhouette`;
- **Silhouette-Invert**: turn on the Silhouette-Invert passes, denoted as `invert`;
- **Silhouette-SFI**: turn on the shadow stack, SFI, and CFI passes, denoted as `sfifull`.

The other two scripts also compile and run the respective benchmarks
with all the six configurations (except for `coremark.sh` which we don't run for Silhouette-SFI).

Compiling and running all the experiments will take around 4 hours.

### Collect Experiment Results
After finishing compiling and running the benchmarks, there will be
experiment data generated for both code size and performance.
All the raw data (code size and execution time) will be placed in the
`data` directory.  The names of all the subdirectories and
files are self-explanatory. For example, `data/perf/beebs-cfi/nbody.stat`
contains the execution time of running the `nbody` program in the `BEEBS`
benchmark suite with only the CFI pass turned on.

In the working directory, you can use the `gen_csv.py` to collect the raw
experiment data, compute the overhead, and write the summarized results
to a CSV file.  This script takes three command-line arguments:

```shell
-b benchmark_name # "beebs", "coremark", or "coremark-pro"
-t data_type      # "perf" or "mem"
-o output_file    # Path of the output CSV file; you can omit this argument
                  # and the output file with a default name will be placed
                  # in the working directory
```

For example, if you want to see how Silhouette performs on the `BEEBS` benchmark
suite, run

```shell
./gen_csv.py -b beebs -t perf
```

and you will get an output file named `perf-beebs.csv` in the working directory.
