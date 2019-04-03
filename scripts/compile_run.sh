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
BEEBS_SRC=$SILHOUETTE/silhouette-misc/programs/beebs/beebs/src

# GNU ARM toolchain
OBJDUMP=/home/jie/local/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-objdump

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
# elf to a debug directory for debugging purpose. It also moves the generated
# stats files to the data/meme direcotory.
# 
function compile() {
    if [ ! -d $BEEBS_SRC/$1 ]; then
        echo "There is no $1 in beebs benchmark suite."
        return 1
    fi

    # Update source file in the beebs project source tree.
    ./init_proj.sh $1

    # Check if there is a directory for the current program in silhouette/debug.
    # Put the build log and copy the generated binary there.
    cd $SILHOUETTE/debug
    if [ ! -d $1 ]; then
        echo "Creating a $1 directory in silhouette/debug"
        mkdir -p $1
    fi
    DEBUG_DIR=$SILHOUETTE/debug/$1

    # cleanup the debug directory for the program
    rm -f $DEBUG_DIR/* 

    # compile
    cd $SCRIPTS_DIR
    echo "Compiling $1 ......"
    make build >& $DEBUG_DIR/build.log
    echo -e "Done compiling $1"
    
    # update the Run.cfg file
    sed -i 's/.*stlink.*/source \[find interface\/stlink-v2-1.cfg]/' $BEEBS_PROJ/beebs\ Run.cfg

    # Copy the elf to the debug directory and change the name from beebs.efl
    # to prog_name.elf. Also generate the asm code.
    echo -e "Copying $1.elf to debug/$1\n"
    cp $BEEBS_PROJ/Debug/beebs.elf $DEBUG_DIR/$1.elf
    cd $DEBUG_DIR
    $OBJDUMP -d $1.elf > $1.s

    # Move the stats files to the data directory.
    echo "Moving stats files to the data/mem directory."
    MEM_DATA_DIR=$SILHOUETTE/silhouette-misc/data/mem
    if [ ! -d $MEM_DATA_DIR/$1 ]; then
        mkdir -p $MEM_DATA_DIR/$1
    fi
    stat_files=`ls $BEEBS_PROJ/Debug/*.stats 2>/dev/null`
    for stat_file in $stat_files; do
        mv $stat_file $MEM_DATA_DIR/$1
    done
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
        compile $1 && run $1
    fi
else
    for prog in $TEST_FILES; do
        echo "Compile and Run $prog"
        compile $prog && run $prog
    done
fi
