#!/bin/bash

#
# This script compiles and runs all the test programs in BEEBS, except those 
# that failed to compile or run even with original Clang 4.0.
#
# Command line arguments:
#   $1 - the name of the program to compile and run. or just run a program if 
#        $1 == "run". This is optional.
#

SILHOUETTE=~/projects/silhouette
SCRIPTS_DIR=`pwd`

BEEBS_PROJ=$SILHOUETTE/projs/beebs
BEEBS_ELF=$BEEBS_PROJ/Debug/beebs.elf
BEEBS_RUN_CFG="$BEEBS_PROJ/beebs Run.cfg"
BEEBS_DIR=$SILHOUETTE/silhouette-misc/programs/beebs
BEEBS_SRC=$BEEBS_DIR/beebs

SRC_BLACKLIST="crc32 ctl ctl-stack ctl-vector fdct"
SRC_WHITELIST="aha-compress aha-mont64 bs bubblesort cnt compress cover crc    \
               ctl-string cubic dijkstra dtoa duff edn expint fac fasta        \
               fibcall fir frac huffbench"

TEST_FILES="cubic
aha-compress
aha-mont64
bs
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
    
    # update the Run.cfg file
    sed -i 's/.*stlink.*/source \[find interface\/stlink-v2-1.cfg]/' $BEEBS_PROJ/beebs\ Run.cfg

    # Copy the elf to the debug directory
    echo -e "Copying $1.elf to debug/$1\n"
    cp $BEEBS_PROJ/Debug/beebs.elf $SILHOUETTE/debug/$1
}


# 
# Run a program.
#
function run() {
    openocd -f "$BEEBS_RUN_CFG" -c "program $BEEBS_ELF verify reset exit"
}


# 
# Entrance of the script.
#
if [ ! $1 == "" ]; then
    if [ $1 == "run" ]; then
        run $1
    else 
        compile $1
        run $1
    fi
else
    for prog in $TEST_FILES; do
        echo "Compile and Run $prog"
        compile $prog
        run $prog
    done
fi
