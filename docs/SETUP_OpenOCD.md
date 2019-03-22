# Setting Up and Run Program Using OpenOCD
This documentation describes how to set up and flash program to STM32L475 board using OpenOCD. Currently we use System WorkBench IDE to compile ARM programs to run on the board. 

## Steps
1. Install OpenOCD. Ubuntu users can install it through apt-get: `sudo apt-get install openocd`
2. In System WorkBench, build project.
3. Open a terminal and go to the project directory. 
4. In the terminal, run OpenOCD to flash the compiled .elf file: `openocd -f <ProjectName Run>.cfg -c "program <Path/to/elf/file> verify reset exit"`
    - NOTE: Change `<ProjectName Run>.cfg` to the filename of the config file generated in your project directory. For example, in my project named "Test" with only Debug run configuration, the config file is `Test Run.cfg`. If your project directory contains more than one cfg file, they should more or less be identical unless you have different settings for different run configuration (Debug/Release). 
    - NOTE: Change `<Path/to/elf/file>` to the path to your project's elf file. For example, in my project named "Test" with Debug run configuration, this path is `Debug/Test.elf`. 