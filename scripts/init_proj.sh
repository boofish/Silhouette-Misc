#!/bin/bash

#
# This script serves two functions:
# 1. Intializing the running envrionment for a newly created project.
# 2. Updating the source code in the beebs project with another test program.
# 
# For the first task, please first manually create a new project in the IDE.
# and then  manually change the compiler and add pass options. To run this task, 
# pass the name of the project you just created as the first command line 
# argument, and "init" as the second argument.
# 
# For the second task, please make sure that you've already created a project
# named "beebs" in the IDE. To run this taks, just pass the name of a test 
# program, such as "aha-compress" as the only command line argument.
# 
# All the commands executed are based on the directory structure like
#
#   silhouette/
#   -- Silhouette_source_code
#   -- projs
#      -- proj_dir
#   -- silhouette-misc
#      -- programs
#      -- scripts
#         -- init_proj.sh
#      -- docs
# 
# You may need to modify some path(s) in this script to accommodate your system.
#
# Command line arguments:
#  $1 - The name of the project you're trying to configure. This is requird.
#  $2 - Can only be "init", indicating if you need initialize the running 
#       environment of a newly created project. 


# Silhouette project directory
SILHOUETTE=~/projects/silhouette

PROJ_DIR=$SILHOUETTE/projs/$1
BEEBS_PROJ=$SILHOUETTE/projs/beebs
BEEBS_DIR=$SILHOUETTE/silhouette-misc/programs/beebs
BEEBS_SRC=$BEEBS_DIR/beebs-beebs-2.1-release

# A list of functions we don't need change when updating src code of test programs.
SRC_WHITELIST="main.c syscalls.c support.h stm32l4xx_it.c system_stm32l4xx.c"


#
# Initialization for a new project.
#
function init() {
    echo "Initiating the running environment for $1."

    # First, check if this project was already created.
    if [ ! -d "$PROJ_DIR" ]; then
        echo "Please first create project $1 in the IDE."
        exit
    fi

    # Step 1, rename an assembly code file
    echo "Renaming startup_stm32l475xx.S to startup_stm32l475xx.s."
    cd $PROJ_DIR/startup
    mv startup_stm32l475xx.S startup_stm32l475xx.s 

    # Step 2, comment out the vfpcc asm.
    # They're from line 335 to line 343
    echo "Commenting out the \"vfpcc\" assembly code."
    cd $PROJ_DIR/CMSIS/core
    sed -i -e '335,343s/^/\/\/ /' cmsis_gcc.h

    # Step 3 (only for BEEBS benchmark), use our own main.c file and the support.h.
    echo "Copying main.c and support.h to $1's source directory."
    cp $BEEBS_DIR/beebs-common-main/main.c $PROJ_DIR/src
    cp $BEEBS_SRC/include/support.h $PROJ_DIR/src

    # Step 4, copy the source code of the test case to the src directory.
    if [ ! $1 == "beebs" ]; then
        echo "Copy source files of test program to project directory."
        cd "$BEEBS_SRC/src/$1"
        if [ $? == 1 ]; then
            echo "There is not a $1 test program in the BEEBS benchmark suite."
            exit
        fi
        src_files=`ls *.c *.h 2>/dev/null`
        for src_file in $src_files; do
            echo "Copying $src_file to $PROJ_DIR."
            cp $src_file $PROJ_DIR/src
        done
    fi
}


#
# Copy a test program of the BEEBS benchmark to the src directory of the beebs
# project. Note that this is based on assumption that there is already a "beebs"
# project created in the IDE.
# 
function update_prog() {
    echo "Copying the source code of test $1 to the beebs project src tree."

    # rm the src code of the old test program
    if cd $BEEBS_PROJ/src; then
        for src_file in `ls`; do
            if [[ ! $SRC_WHITELIST =~ $src_file ]]; then
                echo "rm source file $src_file"
                rm $src_file
            fi
        done
    fi

    # copy new test program to the src directory
    cd "$BEEBS_SRC/src/$1"
    if [ $? == 1 ]; then
        echo "There is not a $1 test program in the BEEBS benchmark suite."
        exit
    fi
    src_files=`ls *.c *.h 2>/dev/null`
    for src_file in $src_files; do
        echo "Copying $src_file to $BEEBS_PROJ."
        cp $src_file $BEEBS_PROJ/src
    done
}


# 
# Entrance of the script.
#
if [[ $# == 2 && $2 == "init" ]]; then
    # We just created a new project in the IDE. Now let's initialize the running 
    # environment of it. (Don't forget to change the compiler.)
    init $1
else
    # Check if the BEEBS project was already created in the IDE.
    # If not, fist create one manually.
    if [ ! -d $BEEBS_PROJ ]; then
        echo "Please first create a beebs project in the IDE"
        exit
    fi
    update_prog $1
fi
