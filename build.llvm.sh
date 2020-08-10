#!/bin/sh

#
# Path to the project root directory.
#
ROOT_DIR=`dirname $0 | xargs realpath`

#
# Path to the LLVM source directory.
#
LLVM_SRC="$ROOT_DIR/llvm-project"

#
# Path to the LLVM build directory.
#
LLVM_BUILD="$ROOT_DIR/llvm-build"

###############################################################################

set -e

# Clone the whole LLVM project and
cd "$ROOT_DIR"
git clone https://github.com/llvm/llvm-project

# Check out to release 9.0
cd "$LLVM_SRC" && git checkout release/9.x

# Apply the Silhouette patch to LLVM
patch -p1 < "$ROOT_DIR/silhouette.patch"

# Make a build directory for LLVM
mkdir -p "$LLVM_BUILD"
cd "$LLVM_BUILD"

# Remove existing CMakeCache.txt (if any)
[ -f CMakeCache.txt ] && rm -rf CMakeCache.txt

# Configure LLVM
cmake -G "Unix Makefiles"                                                   \
      -DCMAKE_BUILD_TYPE=Release                                            \
      -DLLVM_ENABLE_PROJECTS="clang;lld"                                    \
      -DLLVM_TARGETS_TO_BUILD="ARM"                                         \
      -DLLVM_ENABLE_ASSERTIONS=ON                                           \
      -DLLVM_OPTIMIZED_TABLEGEN=ON                                          \
      "$LLVM_SRC/llvm"

# Build LLVM in parallel
make clang -j `nproc`
make lld -j `nproc`
