#!/bin/bash

LLVM_SRC=/Users/Jie/projects/silhouette//Silhouette

rm -rf CMakeCache.txt

cmake -G "Unix Makefiles" \
      -DLLVM_TARGETS_TO_BUILD="X86;ARM" \
      -DCMAKE_BUILD_TYPE=Release \
      -DLLVM_ENABLE_ASSERTIONS=on \
      "$LLVM_SRC"
