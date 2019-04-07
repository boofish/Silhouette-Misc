#!/bin/bash

#
# This script compiles and runs all the test programs in BEEBS, except those 
# that failed to compile or run even with original Clang 4.0.
#
# Command line arguments:
#   $1 - the name of the program to compile and run. or just run a program if 
#        $1 == "run". This is optional.
#   $2 - if $1 is a test program's name, $2 is optional: it can only be "run",
#   indicating we want to run the program after compiling it, or empty if we
#   just want to compile and compute the code size overhead.
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
    $SCRIPTS_DIR/init_proj.sh $1

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

    # Move the code size stat file to the data directory.
    echo "Moving code_size.stat to both the debug and the data/mem directory."
    MEM_DATA_DIR=$SILHOUETTE/silhouette-misc/data/mem
    if [ ! -d $MEM_DATA_DIR/$1 ]; then
        mkdir -p $MEM_DATA_DIR/$1
    fi
    rm $MEM_DATA_DIR/$1/* 2>/dev/null
    mv $BEEBS_PROJ/Debug/code_size.stat ./
    cp ./code_size.stat $MEM_DATA_DIR/$1
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
        $SCRIPTS_DIR/mem-overhead.py $1

        if [ $# == 2 ] && [ $2 == "run" ]; then
            run $1 
        fi
    fi
else
    for prog in $SRC_WHITELIST; do
        echo "Compile $prog"
        compile $prog 
        echo "Compute code size overhead of $prog"
        $SCRIPTS_DIR/mem-overhead.py $prog
        echo ""
        # && run $prog
    done
fi
