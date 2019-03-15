# Running BEEBS Benchmark in System WorkBench
Since BEEBS does not officially support STM32L475 board and does not contain proper config files for the chip, source files need to be set up manually in System WorkBench. Also because the board is not officially supported, device-specific feature such as power consumption analysis or runtime analysis provided by the benchmark suite is not available. 

## Set Up Project in System WorkBench
1. Create a new Project in System WorkBench, following instructions in SETUP_WB.md. 
2. Copy `main.c` file in this directory to the `src` directory of the project in Project Explorer in the IDE. Replace the original empty main file. 
3. Copy `beebs-beebs-2.1-release/include/support.h` to the `src` directory of the project. 
4. Go to `beebs-beebs-2.1-release/src` for list of benchmarks. 
5. For each benchmark (directory), copy all source files (.c and .h files) in the directory to the `src` directory of the project. 
6. Build and run project in the IDE. 
7. Use PuTTY (recommended) or Minicom to see output. See SETUP_WB.md for instructions setting up PuTTY. 

## Note
- Currently the `main.c` does not use BOARD_REPEAT_FACTOR specified in `support.h` to repeat. Instead, the test function will only run once. I will update the code after testing all benchmarks. 
- For a list of working/non-working benchmarks, and notes about specific benchmark, refer to [this spreadsheet](https://docs.google.com/spreadsheets/d/15c2JM6Q1yJSqSGq_XRsO7eL2-ZqH3UdCgnzPgrwJWr0/edit?usp=sharing). 