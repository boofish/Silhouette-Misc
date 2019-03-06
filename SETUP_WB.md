# Setting Up System WorkBench for New Project
This is a brief guideline for creating new project for STM32L475 in System WorkBench that uses Clang. 

## Create New Project
1. In Eclipse (System WorkBench), navigate to 'File' -> 'New' -> 'C Project' to start creating a new project. 
2. In the pop-up wizard, enter a Project name that makes sense. Select 'Ac6 STM32 MCU GCC' in 'Toolchains' list. Click 'Next >'
3. Select Configurations as needed. Click 'Next >'
4. In 'Board' tab, select `STM32L4` from 'Series' and `B-L475E-IOT01A1` from 'Board'. Click 'Next >'
5. If you want to install firmware for the board, which introduces some device-specific libraries, select 'Hardware Abstraction Layer (Cube HAL)'. You may need to download the firmware by clicking 'Download target firmware' when you create new project for the first time. Click 'Finish'. 

## Change Compiler from arm-none-eabi-gcc to clang
1. In 'Project Explorer' tab, right-click your newly created Project, select 'Properties'. 
2. In Project properties menu, expand 'C/C++ Build', select 'Settings'. 
3. In 'MCU Settings', remove the text in 'Prefix'. 
4. In 'MCU GCC Compiler', change 'Command' from `gcc` to `PATH/TO/YOUR/CLANG/clang`. 
    - NOTE: It seems that Eclipse does not read from system PATH, so if your clang is not installed in default installation location (/usr/bin), you need to specify the path here. 
5. In 'Includes' inside 'MCU GCC Compiler' settings, add new Include path: `PATH/TO/YOUR/SystemWorkbench/plugins/fr.ac6.mcu.externaltools.arm-none.linux64_1.17.0.201812190825/tools/compiler/arm-none-eabi/include`
6. In 'Miscellaneous' inside 'MCU GCC Compiler' settings, add `--target=arm-none-eabi` to 'Other flags'. Add other flags if you need. 
7. In 'MCU GCC Linker', change 'Command' to `arm-none-eabi-gcc`. 
8. In 'MCU GCC Assembler', change 'Command' to `arm-none-eabi-as`. Then click 'Apply' and 'OK'. 
You can try to build project now by right-clicking your Project in 'Project Explorer', then click 'Build Project'. If you run into issues (which you likely will), read next section. 

## Edit Firmware Source Files to Compile with clang
1. When compiling, if you see an error message similar to `error: startup/startup_stm32l475xx.o: Conflicting CPU architectures 13/0`, navigate to `startup` directory inside your project, rename `startup_stm32l475xx.S` to `startup_stm32l475xx.s` (lowercase .s). 
2. (May cause unknown side effects) When compiling, if you see error `error: unknown register name 'vfpcc' in asm`, open `CMSIS/core/cmsis_gcc.h` inside your project, search `vfpcc`, comment out surrounding codes. 
    - NOTE: This modification may cause unknown side effects for instructions using vfpcc register. We are still checking if it is safe to do so. 