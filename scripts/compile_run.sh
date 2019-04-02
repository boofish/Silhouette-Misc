#!/bin/bash

#
# This script compiles and runs all the test programs in BEEBS, except those 
# that failed to compile or run even with original Clang 4.0.
#

SILHOUETTE=~/projects/silhouette
SCRIPTS_DIR=`pwd`

BEEBS_PROJ=$SILHOUETTE/projs/beebs
BEEBS_DIR=$SILHOUETTE/silhouette-misc/programs/beebs
BEEBS_SRC=$BEEBS_DIR/beebs

SRC_BLACKLIST="crc32 ctl ctl-stack ctl-vector fdct"
SRC_WHITELIST="aha-compress aha-mont64 bs bubblesort cnt compress cover crc    \
               ctl-string cubic dijkstra dtoa duff edn expint fac fasta        \
               fibcall fir frac huffbench"

TEST_FILES="fasta
fac"


#
# Compile a test program, meanwhile keep the build log and copy the generated 
# elf to a debug directory for debugging purpose. It assumes there is a "debug"
# directory located in ~/projects/silhouette/. If not, make one.
#
function compile() {
    # Update source file in the beebs project source tree.
    ./init_proj.sh $1

    # Check if there is a directory for the current program in silhouette/debug.
    # Put the build log and copy the generated binary there.
    cd $SILHOUETTE/debug
    if [ ! -d $1 ]; then
        echo "Creating a $1 directory in silhouette/debug"
        mkdir -p $1
    fi
    cd $SCRIPTS_DIR

    # compile
    echo "Compiling $1 ......"
    make build >& $SILHOUETTE/debug/$1/build.log
    echo -e "Done compiling $1"

    # Copy the elf to the debug directory
    echo -e "Copying $1.elf to debug/$1\n"
    cp $BEEBS_PROJ/Debug/beebs.elf $SILHOUETTE/debug/$1
}


# 
# Entrance of the script.
#
for prog in $TEST_FILES; do
    echo "Compile and Run $prog"
    compile $prog
done
