#!/bin/sh

#
# Path to the project root directory.
#
ROOT_DIR=`dirname $0 | sed 's/$/\/..\/../' | xargs realpath`

#
# Path to the LLVM source directory.
#
LLVM_SRC="$ROOT_DIR/Silhouette"

#
# Path to the LLVM build directory.
#
LLVM_BUILD="$ROOT_DIR/build/llvm"

###############################################################################

set -e

mkdir -p "$LLVM_BUILD" && cd "$LLVM_BUILD"

rm -rf CMakeCache.txt

cmake -G "Unix Makefiles"                                                   \
      -DLLVM_TARGETS_TO_BUILD="X86;ARM"                                     \
      -DCMAKE_BUILD_TYPE=Release                                            \
      -DLLVM_ENABLE_ASSERTIONS=ON                                           \
      -DLLVM_OPTIMIZED_TABLEGEN=ON                                          \
      "$LLVM_SRC"

make clang lld llvm-ar llvm-nm llvm-ranlib -j `nproc`
