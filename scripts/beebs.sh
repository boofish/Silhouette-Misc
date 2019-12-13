#!/usr/bin/env bash

SILHOUETTE=~/projects/silhouette
SILHOUETTE_MISC=$SILHOUETTE/silhouette-misc
PROJ=beebs

BEEBS_PROJ="$SILHOUETTE/projs/$PROJ"
BEEBS_RUN_CFG="$BEEBS_PROJ/$PROJ.cfg"

PROGRAMS=(
    # "aha-compress"
    # "aha-mont64"
    # "bs"
    "bubblesort"
    # "cnt"
    # "compress"
    # "cover"
    # "crc"
    # "crc32"
    # "ctl-stack"
    "ctl-string"
    # "ctl-vector"
    "cubic"
    "dijkstra"
    # "dtoa"
    # "duff"
    "edn"
    # "expint"
    # "fac"
    "fasta"
    # "fdct"
#   "fibcall"
    "fir"
    "frac"
    "huffbench"
    # "insertsort"
#   "janne_complex"
    # "jfdctint"
    # "lcdnum"
    "levenshtein"
    # "ludcmp"
    # "matmult-float"
    "matmult-int"
    # "mergesort"
    # "miniz"
    # "minver"
    "nbody"
    "ndes"
    "nettle-aes"
    # "nettle-arcfour"
    # "nettle-cast128"
    # "nettle-des"
    # "nettle-md5"
    # "nettle-sha256"
    # "newlib-exp"
    # "newlib-log"
    # "newlib-mod"
    # "newlib-sqrt"
    # "ns"
    # "nsichneu"
    "picojpeg"
    # "prime"
    "qrduino"
    # "qsort"
    # "qurt"
    # "recursion"
    "rijndael"
    # "select"
    # "sglib-arraybinsearch"
    # "sglib-arrayheapsort"
    # "sglib-arrayquicksort"
    "sglib-dllist"
    # "sglib-hashtable"
    "sglib-listinsertsort"
    "sglib-listsort"
    "sglib-queue"
    "sglib-rbtree"
    "slre"
    "sqrt"
    "st"
    # "statemate"
    "stb_perlin"
    # "stringsearch1"
    # "strstr"
    # "tarai"
    # "trio-snprintf"
    "trio-sscanf"
    # "ud"
    "whetstone"
    "wikisort"
)


#
# Compile all the benchmark programs.
#
# $1: the configuration.
#
compile() {
    # Updated the .cproject file
    if [[ ! -e "$BEEBS_PROJ/cproject_$1" ]]; then
        echo "No cproject_$1 found in $BEEBS_PROJ!"
        echo "Generate one by:"
        echo
        echo "./gen_cproject -c $1"
        exit 1
    fi
    (cd "$BEEBS_PROJ"; ln -sf "cproject_$1" .cproject;)

    # Make an empty debug directory
    local debug_dir="$SILHOUETTE/debug/$PROJ-$1"
    if [[ ! -d "$debug_dir" ]]; then
        mkdir -p "$debug_dir"
    fi
    rm -rf "$debug_dir"/*

    # Compile each benchmark program
    for program in ${PROGRAMS[@]}; do
        local elf="$BEEBS_PROJ/$program/$program.elf"
        rm -rf "$elf"

        # Do compile
        echo "Compiling $program for $1 ......"
        make $PROJ/$program >& $debug_dir/build-$program.log
        if [[ ! -x "$elf" ]]; then
            echo "Compiling $program failed!"
            echo "Check $debug_dir/build-$program.log for details"
            exit 1
        fi

        # Copy the generated ELF binary to the debug directory
        echo "Copying $program.elf to debug/$PROJ-$1 ......"
        cp "$elf" "$debug_dir/$program.elf"

        # Generate disassembly
        local objdump=`which arm-none-eabi-objdump 2> /dev/null`
        if (( $? == 0 )); then
            echo "Disassembling $program.elf ......"
            "$objdump" -d "$elf" > "$debug_dir/$program.s"
        else
            echo "arm-none-eabi-objdump not found, skipped disassembly"
        fi
    done

    echo Done
}

#
# Run an already compiled benchmark program.
#
# $1: the configuration to use.
# $2: the program to run.
#
run() {
    # Check if the program name is valid
    if [[ ! " ${PROGRAMS[@]} " =~ " $2 " ]]; then
        echo "Program must be one of the following:"
        echo "${PROGRAMS[@]}"
        exit 1
    fi

    # Check if the ELF binary is there
    local debug_dir="$SILHOUETTE/debug/$PROJ-$1"
    local elf="$debug_dir/$2.elf"
    if [[ ! -x "$elf" ]]; then
        echo "No $elf found!"
        echo "Try to compile first!"
        exit 1
    fi

    # Kill all screens first
    screen -X kill >& /dev/null

    local perf_dir="$SILHOUETTE/silhouette-misc/data/perf/$PROJ-$1"
    if [[ ! -d "$perf_dir" ]]; then
        mkdir -p "$perf_dir"
    fi

    local perf_data="$perf_dir/$2.stat"
    rm -rf "$perf_data"

    # Flush the binary onto the board
    echo "Flushing $2.elf onto the board ......"
    openocd -f "$BEEBS_RUN_CFG" -c "program $elf reset exit" 2> openocd.log
    if (( $? != 0 )); then
        echo "OpenOCD failed!"
        echo "Check openocd.log for details"
        exit 1
    fi

    # Open screen to receive the output
    screen -dm -L -fn -Logfile "$perf_data" /dev/ttyACM0 115200
    screen -X logfile flush 0

    echo "Running $PROJ-$1/$2 ......"
    grep "Finished" "$perf_data" >& /dev/null
    while (( $? != 0 )); do
        sleep 1
        grep "Finished" "$perf_data" >& /dev/null
    done
    sleep 1
    screen -X kill

    # Print out result
    echo "Result:"
    echo "============================================================="
    cat "$perf_data"
    echo
}

#
# Print out usage and exit.
#
usage() {
    echo "Usage: $0 <args>"
    echo
    echo "<args> can be:"
    echo "    baseline          - compile for baseline"
    echo "    ss                - compile for shadow stack only"
    echo "    sp                - compile for store promotion only"
    echo "    cfi               - compile for CFI only"
    echo "    silhouette        - compile for Silhouette"
    echo "    invert            - compile for Silhouette-Invert"
    echo "    sfifull           - compile for full SFI"
    echo "    run <conf>        - run all the compiled binaries of <conf>"
    echo "    run <conf> <prog> - run the compiled <prog> binary of <conf>"
    exit 1
}

#
# Entrance of the script.
#
case $1 in
"baseline" | "ss" | "sp" | "cfi" | "silhouette" | "invert" | "sfifull" )
    compile $1
    ;;
"run" )
    case $2 in
    "baseline" | "ss" | "sp" | "cfi" | "silhouette" | "invert" | "sfifull" )
        ;;
    * )
        usage
        ;;
    esac
    if (( $# == 2 )); then
        for program in ${PROGRAMS[@]}; do
            run $2 $program
        done
        # Summarize all performance data to a perf.csv file.
        ./build_csv.py ../data/perf/beebs-$2/perf.csv ../data/perf/beebs-$2
    else
        run $2 $3
    fi
    ;;
* )
    usage
    ;;
esac
