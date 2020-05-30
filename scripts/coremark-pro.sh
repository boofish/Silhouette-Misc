#!/usr/bin/env bash

ROOT_DIR=`dirname $0 | sed 's/$/\/..\/../' | xargs realpath`
DATA_DIR="$ROOT_DIR/silhouette-misc/data"
PROJ=coremark-pro

PROJ_DIR="$ROOT_DIR/projs/$PROJ"
RUN_CFG="$PROJ_DIR/$PROJ.cfg"

PROGRAMS=(
    "cjpeg-rose7-preset"
    "core"
    "linear_alg-mid-100x100-sp"
    "loops-all-mid-10k-sp"
    "nnet_test"
    "parser-125k"
    "radix2-big-64k"
    "sha-test"
    "zip-test"
)

CONFIGURATIONS=(
    "baseline"
    "ss"
    "sp"
    "cfi"
    "silhouette"
    "invert"
    "sfifull"
)

#
# Compile a benchmark program.
#
# $1: the configuration.
# $2: the program to compile.
#
compile() {
    # Check if the configuration name is valid
    if [[ ! " ${CONFIGURATIONS[@]} " =~ " $1 " ]]; then
        echo "Configuration must be one of the following:"
        echo "${CONFIGURATIONS[@]}"
        exit 1
    fi

    # Check if the program name is valid
    if [[ ! " ${PROGRAMS[@]} " =~ " $2 " ]]; then
        echo "Program must be one of the following:"
        echo "${PROGRAMS[@]}"
        exit 1
    fi

    # Updated the .cproject file
    if [[ ! -e "$PROJ_DIR/cproject_$1" ]]; then
        echo "No cproject_$1 found in $PROJ_DIR!"
        echo "Generate one by:"
        echo
        echo "cd '$PROJ_DIR'; ./gen_cproject.py;"
        exit 1
    fi
    (cd "$PROJ_DIR"; ln -sf "cproject_$1" .cproject;)

    # Make a debug directory
    local debug_dir="$ROOT_DIR/debug/$PROJ-$1"
    if [[ ! -d "$debug_dir" ]]; then
        mkdir -p "$debug_dir"
    fi

    local elf="$PROJ_DIR/$2/$2.elf"
    rm -rf "$elf"

    # Do compile
    echo "Compiling $2 for $1 ......"
    make $PROJ/$2 >& "$debug_dir/build-$2.log"
    if [[ ! -x "$elf" ]]; then
        echo "Compiling $2 failed!"
        echo "Check $debug_dir/build-$2.log for details"
        exit 1
    fi

    # Copy the generated ELF binary to the debug directory
    echo "Copying $2.elf to debug/$PROJ-$1 ......"
    cp "$elf" "$debug_dir/$2.elf"

    # Generate disassembly
    local objdump=`which arm-none-eabi-objdump 2> /dev/null`
    if (( $? == 0 )); then
        echo "Disassembling $2.elf ......"
        "$objdump" -d "$elf" > "$debug_dir/$2.s"
    else
        echo "arm-none-eabi-objdump not found, skipped disassembly"
    fi

    echo "Done compiling $2"
    echo
}

#
# Run an already compiled benchmark program.
#
# $1: the configuration to use.
# $2: the program to run.
#
run() {
    # Check if the configuration name is valid
    if [[ ! " ${CONFIGURATIONS[@]} " =~ " $1 " ]]; then
        echo "Configuration must be one of the following:"
        echo "${CONFIGURATIONS[@]}"
        exit 1
    fi

    # Check if the program name is valid
    if [[ ! " ${PROGRAMS[@]} " =~ " $2 " ]]; then
        echo "Program must be one of the following:"
        echo "${PROGRAMS[@]}"
        exit 1
    fi

    # Check if the ELF binary is there
    local debug_dir="$ROOT_DIR/debug/$PROJ-$1"
    local elf="$debug_dir/$2.elf"
    if [[ ! -x "$elf" ]]; then
        echo "No $elf found!"
        echo "Try to compile first!"
        exit 1
    fi

    # Kill all screens first
    screen -X kill >& /dev/null

    local perf_dir="$DATA_DIR/$PROJ-$1"
    if [[ ! -d "$perf_dir" ]]; then
        mkdir -p "$perf_dir"
    fi

    local perf_data="$perf_dir/$2.stat"
    rm -rf "$perf_data"

    # Open screen to receive the output
    screen -dm -L -fn -Logfile "$perf_data" /dev/ttyACM0 115200
    screen -X logfile flush 0

    # Flush the binary onto the board
    echo "Flushing $2.elf onto the board ......"
    local openocd_log=`mktemp -q`
    openocd -f "$RUN_CFG" -c "program $elf reset exit" 2> "$openocd_log"
    if (( $? != 0 )); then
        echo "OpenOCD failed!"
        echo "Check $openocd_log for details"
        exit 1
    fi

    echo "Running $PROJ-$1/$2 ......"
    grep "Done:" "$perf_data" >& /dev/null
    while (( $? != 0 )); do
        sleep 1
        grep "Done:" "$perf_data" >& /dev/null
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
# Entrance of the script.
#
case $1 in
"run" )
    if (( $# == 2 )); then
        for program in ${PROGRAMS[@]}; do
            run $2 $program
        done
    else
        run $2 $3
    fi
    ;;
* )
    if (( $# == 1 )); then
        # Compile each benchmark program
        for program in ${PROGRAMS[@]}; do
            compile $1 $program
        done

        echo Done
    else
        compile $1 $2
    fi
    ;;
esac
