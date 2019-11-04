#!/usr/bin/env bash

SILHOUETTE=~/projects/silhouette
PROJ=coremark

CMK_PROJ="$SILHOUETTE/projs/$PROJ"
CMK_ELF="$CMK_PROJ/Release/$PROJ.elf"
CMK_RUN_CFG="$CMK_PROJ/$PROJ-Run.cfg"

#
# Compile the program.
#
# $1: the configuration.
#
compile() {
    # Updated the .cproject file
    if [[ ! -e "$CMK_PROJ/cproject_$1" ]]; then
        echo "No cproject_$1 found in $CMK_PROJ!"
        echo "Symlink one from the silhouette-misc repo by:"
        echo
        echo "ln -sf $SILHOUETTE/silhouette-misc/programs/$PROJ/cproject_$1 $CMK_PROJ"
        exit 1
    fi
    (cd "$CMK_PROJ"; ln -sf "cproject_$1" .cproject;)

    # Make an empty debug directory
    debug_dir=$SILHOUETTE/debug/$PROJ-$1
    if [[ ! -d "$debug_dir" ]]; then
        mkdir -p "$debug_dir"
    fi
    rm -rf "$debug_dir"/*

    # Do compile
    echo "Compiling $PROJ for $1 ......"
    make $PROJ >& $debug_dir/build.log
    if (( $? != 0 )) || [[ ! -x "$CMK_ELF" ]]; then
        echo "Compilation failed!"
        echo "Check $debug_dir/build.log for details"
        exit 1
    fi

    # Copy the generated ELF binary to the debug directory
    echo "Copying $PROJ.elf to debug/$PROJ-$1 ......"
    cp "$CMK_ELF" "$debug_dir/$PROJ.elf"

    # Generate disassembly
    objdump=`which arm-none-eabi-objdump 2> /dev/null`
    if (( $? == 0 )); then
        echo "Disassembling generated binary ......"
        "$objdump" -d "$CMK_ELF" > "$debug_dir/$PROJ.s"
    else
        echo "arm-none-eabi-objdump not found, skipped disassembly"
    fi

    echo Done
}

#
# Run the already compiled program.
#
# No argument.
#
run() {
    if [[ ! -x "$CMK_ELF" ]]; then
        echo "No $CMK_ELF found!"
        echo "Try to compile first!"
        exit 1
    fi

    # Update the Run.cfg file
    if [[ ! -e "$CMK_RUN_CFG" ]]; then
        echo "No $CMK_RUN_CFG found!"
        exit 1
    fi
    sed -i 's/.*stlink.*/source \[find interface\/stlink-v2-1.cfg]/' "$CMK_RUN_CFG"

    # Kill all screens first
    screen -X kill >& /dev/null

    perf_data="$SILHOUETTE/silhouette-misc/data/perf/$PROJ.stat"
    rm -rf "$perf_data"

    # Flush the binary onto the board
    echo "Flushing $PROJ.elf onto the board ......"
    openocd -f "$CMK_RUN_CFG" -c "program $CMK_ELF verify reset exit" 2> openocd.log
    if (( $? != 0 )); then
        echo "OpenOCD failed!"
        echo "Check openocd.log for details"
        exit 1
    fi

    # Open screen to receive the output
    screen -dm -L -fn -Logfile "$perf_data" /dev/ttyACM0 115200
    screen -X logfile flush 0

    echo "Running $PROJ ......"
    grep "CoreMark 1.0 :" "$perf_data" >& /dev/null
    while (( $? != 0 )); do
        sleep 1
        grep "CoreMark 1.0 :" "$perf_data" >& /dev/null
    done
    screen -X kill

    # Print out result
    echo "Result:"
    echo "============================================================="
    cat "$perf_data"
}

#
# Entrance of the script.
#
case $1 in
"baseline" | "ss" | "sp" | "cfi" | "silhouette" | "invert" | "sfisel" | "sfifull" )
    compile $1
    ;;
"run" )
    run
    ;;
* )
    echo "Usage: $0 <arg>"
    echo
    echo "<arg> can be:"
    echo "    \"baseline\"   - compile for baseline"
    echo "    \"ss\"         - compile for shadow stack only"
    echo "    \"sp\"         - compile for store promotion only"
    echo "    \"cfi\"        - compile for CFI only"
    echo "    \"silhouette\" - compile for full Silhouette"
    echo "    \"invert\"     - compile for Silhouette-Invert"
    echo "    \"sfisel\"     - compile for Silhouette + selective SFI"
    echo "    \"sfifull\"    - compile for Silhouette + full SFI"
    echo "    \"run\"        - run the compiled $PROJ binary"
    exit 1
    ;;
esac
