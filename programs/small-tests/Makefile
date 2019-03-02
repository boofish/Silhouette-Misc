#
# Silhouette clang
LLVM_BUILD = /Users/Jie/projects/silhouette/build/llvm

#
# GCC's ARM objdump
OBJDUMP = /Users/Jie/local/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-objdump

#
# header files provided by the IDE
HEADERS = /Applications/Ac6/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.externaltools.arm-none.macos64_1.17.0.201812190825/tools/compiler/arm-none-eabi/include

ARM_FLAGS = --target=armv7m-linux-eabi -mcpu=cortex-m4 -mthumb -mfloat-abi=hard

PROGS := hello
SOURCES := $(addsuffix .c, $(PROGS))
OFILES := $(addsuffix .o, $(PROGS))
ASMFILES := $(addsuffix .s, $(PROGS))

CC = $(LLVM_BUILD)/bin/clang

CFLAGS = -O2 -g -c -I$(HEADERS)
CFLAGS += $(ARM_FLAGS)

# 
# passes
STR2STRT = -Xclang -backend-option -Xclang -enable-arm-silhouette-str2strt
MEM_OVERHEAD = -Xclang -backend-option -Xclang -enable-arm-silhouette-mem-overhead

#==============================================================================#

str: $(SOURCES)
	$(CC) $(CFLAGS) $(STR2STRT) $^ 
	$(MAKE) asm

mem: $(SOURCES)
	$(CC) $(CFLAGS) $(MEM_OVERHEAD) $^ 

asm: $(ASMFILES)

%.s: %.o
	$(OBJDUMP) -d $< > $@

clean:
	rm -f *.o *.s

