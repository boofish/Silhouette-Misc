#!/bin/bash

#
# This script compiles and runs all the test programs in BEEBS, except those 
# that failed to compile or run even with original Clang 4.0.
#
# Command line arguments:
#   no arugment - Compile and run all programs based on the assumption that 
#                 all passes are turned on.
#   $1 - The first argument can be 
#         "ss" for "shadow stack", or
#         "sp" for "store promotion", or
#         "cfi" for "control-flow integrity"
#   $2 - This is optional. It can only be the name of a BEEBS program. When 
#        present, the script only compiles this single program.
#   $3 - Optional. Can only be run. When present, it runs the just compiled 
#        program.
#

SILHOUETTE=~/projects/silhouette
SCRIPTS_DIR=`pwd`

BEEBS_PROJ=$SILHOUETTE/projs/beebs
BEEBS_ELF=$BEEBS_PROJ/Release/beebs.elf
BEEBS_RUN_CFG="$BEEBS_PROJ/beebs Run.cfg"
BEEBS_CODE_SIZE_SS_STAT="$BEEBS_PROJ/Release/code_size_ss.stat"
BEEBS_CODE_SIZE_SP_STAT="$BEEBS_PROJ/Release/code_size_sp.stat"
BEEBS_CODE_SIZE_CFI_STAT="$BEEBS_PROJ/Release/code_size_cfi.stat"
BEEBS_JMP_TBL_STAT="$BEEBS_PROJ/Release/jump_table_jump.stat"
BEEBS_SRC=$SILHOUETTE/silhouette-misc/programs/beebs/beebs/src

# GNU ARM toolchain
OBJDUMP=`which arm-none-eabi-objdump`

SRC_BLACKLIST="crc32 ctl ctl-stack ctl-vector fdct"
SRC_WHITELIST="
aha-compress aha-mont64 bs bubblesort cnt compress cover crc crc32 ctl-stack
ctl-string ctl-vector cubic dijkstra dtoa duff edn expint fac fasta fdct
fir frac huffbench insertsort  jfdctint lcdnum levenshtein
ludcmp matmult-float matmult-int mergesort miniz minver nbody ndes nettle-aes
nettle-arcfour nettle-cast128 nettle-des nettle-md5 nettle-sha256"

SRC_WHITELIST2="
newlib-exp newlib-log newlib-mod newlib-sqrt ns nsichneu picojpeg prime qrduino
qsort qurt recursion rijndael select sglib-arraybinsearch sglib-arrayheapsort
sglib-arrayquicksort
sglib-dllist sglib-hashtable sglib-listinsertsort sglib-listsort sglib-queue
sglib-rbtree slre sqrt st statemate stb_perlin stringsearch1 strstr tarai
trio-snprintf trio-sscanf ud whetstone"

SRC_ALL="$SRC_WHITELIST $SRC_WHITELIST2"

TEST_FILES="
aha-compress
fibcall
fir
"

SRC_NO_CACHE="
aha-compress aha-mont64 bubblesort crc32 ctl-string dtoa duff fir huffbench
ndes nettle-aes qrduino rijndael select sglib-arrayquicksort sglib-queue
st whetstone	
"

SRC_TO_RUN=$SRC_ALL


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
    if [ ! -d $SILHOUETTE/debug ]; then
        mkdir $SILHOUETTE/debug
    fi
    cd $SILHOUETTE/debug 
    if [ ! -d $1 ]; then
        echo "Creating a $1 directory in silhouette/debug"
        mkdir -p $1
    fi
    DEBUG_DIR=$SILHOUETTE/debug/$1

    # cleanup the debug directory for the program
    rm -f `ls -I $DEBUG_DIR/baseline.s $DEBUG_DIR/*`

    # compile
    cd $SCRIPTS_DIR
    echo "Compiling $1 ......"
    make build >& $DEBUG_DIR/build.log 
    echo -e "Done compiling $1"
    
    # update the Run.cfg file
    sed -i 's/.*stlink.*/source \[find interface\/stlink-v2-1.cfg]/' "$BEEBS_RUN_CFG"

    # Copy the elf to the debug directory and change the name from beebs.elf
    # to prog_name.elf. Also generate the asm code.
    echo -e "Copying $1.elf to debug/$1\n"
    cp $BEEBS_ELF $DEBUG_DIR/$1.elf
    cd $DEBUG_DIR
    $OBJDUMP -d $1.elf > $1.s

    # Move the code size stat file to the data directory.
    if [[ $# == 2 ]] && [[ $2 != "baseline" ]]; then
        echo "Moving code_size.stat to both the debug and the data/mem directory."
        mem_data_dir=$SILHOUETTE/silhouette-misc/data/mem/$2
        if [ ! -d $mem_data_dir ]; then
            mkdir -p $mem_data_dir
        fi

        mem_data_file=""
        if [[ $2 == "ss" ]]; then
            mem_data_file=$BEEBS_CODE_SIZE_SS_STAT
        elif [[ $2 == "sp" ]]; then
            mem_data_file=$BEEBS_CODE_SIZE_SP_STAT
        elif [[ $2 == "cfi" ]] || [[ $2 == "silhouette" ]]; then
            mem_data_file=$BEEBS_CODE_SIZE_CFI_STAT
        else 
            # CFI is the pass to run; so it has the data of silhouette.
            mem_data_file=$BEEBS_CODE_SIZE_CFI_STAT
        fi
        if [ -f $mem_data_file ]; then  
            cp $mem_data_file ./    # move the data file to the debug directory
            cp $mem_data_file $mem_data_dir/$1.stat
        fi

        if [[ $2 == "cfi" ]]; then
            # for CFI, also move the jump_table_jump.stat file to data file.
            cp $BEEBS_JMP_TBL_STAT ./ 2>/dev/null
        fi
    fi
}


# 
# Run a program.
#
function run_minicom() {
    openocd -f "$BEEBS_RUN_CFG" -c "program $BEEBS_ELF verify reset exit"
}

function run() {
    perf_dat=$SILHOUETTE/silhouette-misc/data/perf/$1.stat
    rm -f $perf_dat
    screen -dm -L -fn -Logfile $perf_dat /dev/ttyACM0 115200
    screen -X logfile flush 0
    openocd -f "$BEEBS_RUN_CFG" -c "program $BEEBS_ELF verify reset exit"
    grep Finished $perf_dat >& /dev/null
    while (( $? != 0 )); do
        sleep 1
        grep Finished $perf_dat >& /dev/null
    done
    screen -X 'kill'
}


# 
# Entrance of the script.
#
if [[ $1 == "ss" ]] || [[ $1 == "sp" ]] || [[ $1 == "cfi" ]] || 
    [[ $1 == "baseline" ]] || [[ $1 == "silhouette" ]] || [[ $# == 0 ]] || 
    [[ $1 == "invert" ]]; then
    if [[ $# == 1 ]] || [[ $# == 0 ]]; then
        # Clean the old data.
        data_dir=$SILHOUETTE/silhouette-misc/data
        rm -f $data_dir/perf/*.stat
        # Compile and run all test programs.
        for prog in $SRC_TO_RUN; do
            echo "Compile $prog"
            if [[ $# == 0 ]]; then
                compile $prog "silhouette"
            else
                compile $prog $1
            fi
             
            echo ""
            # run_minicom $prog
            run $prog
        done

        if [[ $1 == "ss" ]] || [[ $1 == "sp" ]] || [[ $1 == "cfi" ]] || 
            [[ $1 == "invert" ]]; then
            echo "Compute code size overhead of all programs."
            $SCRIPTS_DIR/mem-overhead.py $1
        elif [[ $# == 0 ]]; then
            echo "Compute code size overhead of all programs."
            $SCRIPTS_DIR/mem-overhead.py "silhouette"
        fi

        # Collect the peformance data
        if [ -d $data_dir/perf ]; then
            mkdir -p $data_dir/perf
        fi
        if [[ $1 == "ss" ]] || [[ $1 == "sp" ]] || [[ $1 == "cfi" ]] || 
            [[ $1 == "baseline" ]] || [[ $1 == "invert" ]]; then
            mv $data_dir/perf/*.stat $data_dir/perf/$1
            # generate cvs file
            $SCRIPTS_DIR/build_csv.py $data_dir/perf/$1/perf.csv $data_dir/perf/$1
        else
            # We just ran tests with all passed turned on.
            mv $data_dir/perf/*.stat $data_dir/perf/silhouette
            # generate cvs file
            $SCRIPTS_DIR/build_csv.py $data_dir/perf/silhouette/perf.csv $data_dir/perf/silhouette
        fi
    elif [[ $# > 1 ]]; then
        # Only compile and run one program.
        compile $2 $1
        $SCRIPTS_DIR/mem-overhead.py $1 $2
        run $2

        if [[ $1 != "baseline" ]] && [[ $1 != "cfi" ]]; then
            $SCRIPTS_DIR/mem-overhead.py $1 $2
        fi
        perf_dat=$SILHOUETTE/silhouette-misc/data/perf/$2.stat
        cat $perf_dat
    fi
else
    echo "The first argument can only be \"ss\", \"sp\", \"cfi\", or \"silhouette\"."
fi
