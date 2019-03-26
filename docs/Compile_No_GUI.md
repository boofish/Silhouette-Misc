# Compile System WorkBench Project in Command-line Mode
This document briefly describes steps to compile System WorkBench projects in command line. For more complete documentations on options to use Eclipse (System WorkBench), refer to [this document](http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0478u/ris1421682431227.html) from ARM. 

## Preparation
1. Add your System WorkBench installation directory to system path. 

## Build Project
1. Run following command: `eclipse -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data path/to/workspace -build ProjectName`. 
    - NOTE: Change `path/to/workspace` to the path of your System WorkBench workspace. Change `ProjectName` to the project you would like to build. If you want to build all projects, remove `ProjectName` part. 

## Clean and Build Project
1. Run following command: `eclipse -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data path/to/workspace -cleanBuild ProjectName`. 
    - NOTE: Change `path/to/workspace` to the path of your System WorkBench workspace. Change `ProjectName` to the project you would like to build. If you want to build all projects, remove `ProjectName` part. 