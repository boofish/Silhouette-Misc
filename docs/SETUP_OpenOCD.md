# Setting Up, Running, and Debugging Program Using OpenOCD
This documentation describes how to flash, run, and debug program to STM32L475 board using OpenOCD. Currently we use System WorkBench IDE to compile ARM programs to run on the board. 

## Flash and Run Program Using OpenOCD
1. Install OpenOCD. Ubuntu users can install it through apt-get: `sudo apt-get install openocd`.
2. In System WorkBench, build project.
3. Open a terminal and go to the project directory. 
4. In the terminal, run OpenOCD to flash the compiled .elf file: `openocd -f <ProjectName Run>.cfg -c "program <Path/to/elf/file> verify reset exit"`.
    - NOTE: Change `<ProjectName Run>.cfg` to the filename of the config file generated in your project directory. For example, in my project named "Test" with only Debug run configuration, the config file is `Test Run.cfg`. If your project directory contains more than one cfg file, they should more or less be identical unless you have different settings for different run configuration (Debug/Release). 
    - NOTE: Change `<Path/to/elf/file>` to the path to your project's elf file. For example, in my project named "Test" with Debug run configuration, this path is `Debug/Test.elf`. 

## Debug Program Using OpenOCD and GDB
1. Follow step 1-3 in section "Flash and Run Program Using OpenOCD"
2. Install gdb-multiarch. Ubuntu users can install it through apt-get: `sudo apt-get install gdb-multiarch`.
3. In the terminal, run OpenOCD: `openocd -f <ProjectName Run>.cfg`. Change `<ProjectName Run>.cfg` to the filename of the config file generated in your project directory.
4. Open another terminal. Run gdb-multiarch: `gdb-multiarch <Path/to/elf/file>`. Change `<Path/to/elf/file>` to the path of your project's elf file. 
5. In gdb-multiarch, connect to OpenOCD: `(gdb) target remote :3333`. 
    - NOTE: The gdb port in OpenOCD is 3333. If you changed the port number, in IDE's run configuration or manually, then you need to change this number accordingly. 
6. Debug your program as you normally do in local gdb. 

## Known Issues Debugging in GDB
1. In my test program, although debugging features are working, and the program runs properly, the program could not terminate. After reaching the return statement in main function, the program will not terminate but will get stuck in a loop at unknown location. When Sending SIGINT by pressing Ctrl-C, gdb shows following message: 
    ```Program received signal SIGINT, Interrupt.
Reset_Handler () at ../startup/startup_stm32l475xx.s:117
117	    b LoopForever
```