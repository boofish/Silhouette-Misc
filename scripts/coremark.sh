#!/usr/bin/env bash

SILHOUETTE=~/projects/silhouette
SILHOUETTE_MISC="$SILHOUETTE/silhouette-misc"
PROJ=coremark

CMK_PROJ="$SILHOUETTE/projs/$PROJ"
CMK_ELF="$CMK_PROJ/$PROJ/$PROJ.elf"
CMK_RUN_CFG="$CMK_PROJ/$PROJ.cfg"

#
# Compile the program.
#
# $1: the configuration.
#
compile() {
    # Updated the .cproject file
    if [[ ! -e "$CMK_PROJ/cproject_$1" ]]; then
        echo "No cproject_$1 found in $CMK_PROJ!"
        echo "Generate one by:"
        echo
        echo "./gen_cproject.py"
        exit 1
    fi
    (cd "$CMK_PROJ"; ln -sf "cproject_$1" .cproject;)

    # Make an empty debug directory
    local debug_dir="$SILHOUETTE/debug/$PROJ-$1"
    if [[ ! -d "$debug_dir" ]]; then
        mkdir -p "$debug_dir"
    fi
    rm -rf "$debug_dir"/*

    # Make an empty code size directory
    local code_size_dir="$SILHOUETTE_MISC/data/mem/$PROJ-$1"
    if [[ ! -d "$code_size_dir" ]]; then
        mkdir -p "$code_size_dir"
    fi
    rm -rf "$code_size_dir"/*

    # Do compile
    echo "Compiling $PROJ for $1 ......"
    make $PROJ/$PROJ >& "$debug_dir/build.log"
    if [[ ! -x "$CMK_ELF" ]]; then
        echo "Compilation failed!"
        echo "Check $debug_dir/build.log for details"
        exit 1
    fi

    # Copy the generated ELF binary to the debug directory
    echo "Copying $PROJ.elf to debug/$PROJ-$1 ......"
    cp "$CMK_ELF" "$debug_dir/$PROJ.elf"

    # Generate disassembly
    local objdump=`which arm-none-eabi-objdump 2> /dev/null`
    if (( $? == 0 )); then
        echo "Disassembling generated binary ......"
        "$objdump" -d "$CMK_ELF" > "$debug_dir/$PROJ.s"
    else
        echo "arm-none-eabi-objdump not found, skipped disassembly"
    fi

    # Copy the generated code_size stat file to the data directory.
    echo "Copying code size stat file(s) to data/mem/$PROJ-$1 ......"
    local program_dir="$CMK_PROJ/$PROJ"
    local program_stat="$code_size_dir/$PROJ.stat"
    case $1 in
    "ss" | "cfi" | "sp" | "sfi" )
        cp "$program_dir/code_size_$1.stat" "$program_stat"
        ;;
    "silhouette" )
        mkdir -p "$code_size_dir/$PROJ"
        cp "$program_dir/code_size_ss.stat" "$code_size_dir/$PROJ"
        cp "$program_dir/code_size_sp.stat" "$code_size_dir/$PROJ"
        cp "$program_dir/code_size_cfi.stat" "$code_size_dir/$PROJ"
        ;;
    "invert" )
        mkdir -p "$code_size_dir/$PROJ"
        cp "$program_dir/code_size_ss.stat" "$code_size_dir/$PROJ"
        cp "$program_dir/code_size_cfi.stat" "$code_size_dir/$PROJ"
        ;;
    "sfifull" )
        mkdir -p "$code_size_dir/$PROJ"
        cp "$program_dir/code_size_ss.stat" "$code_size_dir/$PROJ"
        cp "$program_dir/code_size_sfi.stat" "$code_size_dir/$PROJ"
        cp "$program_dir/code_size_cfi.stat" "$code_size_dir/$PROJ"
        ;;
    * ) # baseline
        ;;
    esac

    # Summarize all code size data to a code_size.csv file
    if [[ ! $1 == "baseline" ]]; then
        echo "Building code_size.csv ......"
        ./build_mem_csv.py -c $1 -b $PROJ
    fi

    echo Done
    echo
}

#
# Run the already compiled program.
#
# $1: the configuration to use.
#
run() {
    local elf="$SILHOUETTE/debug/$PROJ-$1/$PROJ.elf"
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

    local perf_data="$perf_dir/$PROJ.stat"
    rm -rf "$perf_data"

    # Open screen to receive the output
    screen -dm -L -fn -Logfile "$perf_data" /dev/ttyACM0 115200
    screen -X logfile flush 0

    # Flush the binary onto the board
    echo "Flushing $PROJ.elf onto the board ......"
    openocd -f "$CMK_RUN_CFG" -c "program $elf reset exit" 2> openocd.log
    if (( $? != 0 )); then
        echo "OpenOCD failed!"
        echo "Check openocd.log for details"
        exit 1
    fi

    echo "Running $PROJ-$1 ......"
    grep "CoreMark 1.0 :" "$perf_data" >& /dev/null
    while (( $? != 0 )); do
        sleep 1
        grep "CoreMark 1.0 :" "$perf_data" >& /dev/null
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
    echo "Usage: $0 <arg>"
    echo
    echo "<arg> can be:"
    echo "    baseline   - compile for baseline"
    echo "    ss         - compile for shadow stack only"
    echo "    sp         - compile for store promotion only"
    echo "    cfi        - compile for CFI only"
    echo "    silhouette - compile for full Silhouette"
    echo "    invert     - compile for Silhouette-Invert"
    echo "    sfifull    - compile for Silhouette + full SFI"
    echo "    run <conf> - run the compiled $PROJ binary of <conf>"
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
    run $2
    # Summarize all performance data to a perf.csv file.
    ./build_perf_csv.py -b $PROJ -c $2
    ;;
* )
    usage
    ;;
esac
