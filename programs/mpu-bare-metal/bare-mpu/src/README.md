
### Before Building

You need to setup the clang compiler path before running. Basically, you need to change *clang path and its include path:*
	
	1. Right click project name in the Project Explorer, select 'Properties'-> 'C/C++ Build' -> 'Settings'. 
	
	2. In 'MCU GCC Compiler', change 'Command' to your own clang path on your computer.
	
	3. In ‘Includes' inside 'MCU GCC Compiler' settings, add 3 new include path:

`PATH/TO/YOUR/SystemWorkbench/plugins/fr.ac6.mcu.externaltools.arm-none.linux64_1.17.0.201812190825/tools/compiler/arm-none-eabi/include`

`PATH/TO/YOUR/SystemWorkbench/plugins/fr.ac6.mcu.externaltools.arm-none.linux64_1.17.0.201812190825/tools/compiler/lib/gcc/arm-none-eabi/7.3.1/include`

`PATH/TO/YOUR/SystemWorkbench/plugins/fr.ac6.mcu.externaltools.arm-none.linux64_1.17.0.201812190825/tools/compiler/lib/gcc/arm-none-eabi/7.3.1/include-fixed`


More details can be found at [docs/SETUP_WB](https://github.com/jzhou76/silhouette-misc/blob/master/docs/SETUP_WB.md).


### Chang Clang Compiling options

With GUI of Eclipse:

	1. Right click project name in the Project Explorer, select 'Properties'-> 'C/C++ Build' -> 'Settings'. 
	
	2. In ‘Miscellaneous' inside 'MCU GCC Compiler' settings, add options. For example, `--target=arm-none-eabi`, `-Xclang -backend-option -Xclang -enable-arm-silhouette-shadowstack`


- Enable STORE pass:

	-Xclang -backend-option -Xclang -enable-arm-silhouette-str2strt

- Enable memory overhead pass

	-Xclang -backend-option -Xclang -enable-arm-silhouette-mem-overhead

- Enable shadow stack pass: 

	-Xclang -backend-option -Xclang -enable-arm-silhouette-shadowstack

- Enable instruction scanner 

    -Xclang -backend-option -Xclang -enable-arm-silhouette-instr-scanner
    

With command line: [Compile System WorkBench Project in Command-line Mode](https://github.com/jzhou76/silhouette-misc/blob/master/docs/Compile_No_GUI.md)
