# Silhouette-Misc
Miscellaneous stuffs of the Silhouette Project: compile scripts and run scripts,
documents, and related manuals. We conducted all the experiments on Linux.

## Working Directory Hierarchy
If you would like to compile and run the [Silhouette
Compiler](https://github.com/jzhou76/Silhouette), and run the test programs
used by the [Silhouette
paper](https://www.cs.rochester.edu/u/jzhou41/papers/silhouette/silhouette.pdf),
we suggest you organize your working directory in the following way so that
it would be much easier to reuse the scripts in this repo.

```shell
~/projects/silhouette
|-- llvm-compiler     # The llvm-based Silhouette compiler source code
|-- silhouette.patch  # Patch to LLVM containing Silhouette passes
|-- build.llvm.sh     # Script to download, patch, and compile LLVM 9.0
|-- projs             # Directory containing benchmark source files
|   |-- beebs
|   |-- coremark
|   |-- coremark-pro
|-- data              # Directory containing generated experiment data
|-- beebs.sh          # Script that compiles and runs the BEEBS benchmarks
|-- coremark.sh       # Script that compiles and runs the CoreMark benchmark
|-- coremark-pro.sh   # Script that compiles and runs the CoreMark-Pro benchmarks
|-- gen_csv.sh        # Script to generate CSV files for experiment data
|-- gen_tex.sh        # Script to generate the Latex source file for result tabels.
|-- debug             # Directory containing all compiled binaries and build logs
```

## Compile the LLVM-baed Silhouette Compiler
The Silhouette compiler is based on the `LLVM-9.0` compiler.
The easiest way to compile the compiler is to use our [build
script](./build.llvm.sh) to download the original LLVM source code
and apply the [Silhouette patch](./silhouette.patch). Please put the build
script and the patch in the same directory, otherwise you need to modify the
build script to find the patch.

You can also choose to download the source code
of [Silhouette](https://github.com/jzhou76/Silhouette) and build on you own.
Note that the Silhouette repo only contains the compiler's backend (LLVM) code,
so you need download corresponding `clang` and `lld` separately.
