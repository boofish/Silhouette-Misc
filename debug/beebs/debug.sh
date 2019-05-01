#!/bin/bash

PROG=beebs

PROJS=~/projects/silhouette/projs

GNU_ARM_TOOLCHAIN=/home/jie/Applications/Ac6/SystemWorkbench/plugins/fr.ac6.mcu.externaltools.arm-none.linux64_1.17.0.201812190825/tools/compiler/bin
OBJDUMP=$GNU_ARM_TOOLCHAIN/arm-none-eabi-objdump

cp "$PROJS/$PROG/Debug/$PROG.elf" ./

$OBJDUMP -d $PROG.elf > $PROG.s

