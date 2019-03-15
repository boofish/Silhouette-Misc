#!/bin/bash

#
# This script initiates the running envrionment for a newly created project.
# It doesn't do all: we still need to manually change the compiler and add 
# pass options.
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
#  $1 - The name of the project you're trying to configure.
#

# Silhouette project directory
SILHOUETTE=~/projects/silhouette

# The first command line argument is the name of the project.
PROJ_DIR=$SILHOUETTE/projs/$1
BEEBS_DIR=$SILHOUETTE/silhouette-misc/programs/beebs


echo "Initiating the running environment for $1."

# Step 1, rename an assembly code file
echo "Renaming startup_stm32l475xx.S to startup_stm32l475xx.s."
cd $PROJ_DIR/startup
mv startup_stm32l475xx.S startup_stm32l475xx.s 

# # Step 2, comment out the vfpcc asm.
# # They're from line 335 to line 343
# echo "Commenting out the \"vfpcc\" assembly code."
# cd $PROJ_DIR/CMSIS/core
# sed -i -e '335,343s/^/\/\/ /' cmsis_gcc.h

# Step 3 (only for BEEBS benchmark), use our own main.c file and the support.h.
echo "Copying main.c and support.h to $1's source directory."
cp $BEEBS_DIR/beebs-common-main/main.c $PROJ_DIR/src
cp $BEEBS_DIR/beebs-beebs-2.1-release/include/support.h $PROJ_DIR/src
