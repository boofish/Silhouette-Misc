HOME = /home/jie

#
# Silhouette directory
SILHOUETTE = ~/projects/silhouette

#
# Silhouette clang
LLVM_BUILD = $(SILHOUETTE)/build

#
# GCC's ARM objdump
OBJDUMP = ~/local/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-objdump

#
# header files provided by the IDE
HEADERS = $(HOME)/Applications/Ac6/SystemWorkbench/plugins/fr.ac6.mcu.externaltools.arm-none.linux64_1.17.0.201812190825/tools/compiler/arm-none-eabi/include

ARM_FLAGS = --target=armv7m-none-eabi  -mcpu=cortex-m4 -mthumb -mfloat-abi=hard
# ARM_FLAGS = --target=armv7r-none-eabi # -mcpu=cortex-m4 -mthumb -mfloat-abi=hard

PROGS := hello
SOURCES := $(addsuffix .c, $(PROGS))
OFILES := $(addsuffix .o, $(PROGS))
ASMFILES := $(addsuffix .s, $(PROGS))
STATSFILES := $(addsuffix .stats, $(PROGS))

CC = $(LLVM_BUILD)/bin/clang

CFLAGS = -O2 -g -c -I$(HEADERS)
CFLAGS += $(ARM_FLAGS)

# 
# passes
STR2STRT = -Xclang -backend-option -Xclang -enable-arm-silhouette-str2strt -save-stats
MEM_OVERHEAD = -Xclang -backend-option -Xclang -enable-arm-silhouette-mem-overhead \
			   -save-stats

#==============================================================================#

base: $(SOURCES)
	$(CC) $(CFLAGS) $^
	$(MAKE) asm

bc: $(SOURCES)
	$(CC) $(CFLAGS) $(STR2STRT) -emit-llvm $^

str: $(SOURCES)
	$(CC) $(CFLAGS) $(STR2STRT) $^ 
	$(MAKE) asm

mem: $(SOURCES)
	$(CC) $(CFLAGS) $(MEM_OVERHEAD) $^ 
	cp $(STATSFILES) $(SILHOUETTE)/silhouette-misc/data/small-tests/mem-overhead

asm: $(ASMFILES)

%.s: %.o
	$(OBJDUMP) -d $< > $@

clean:
	rm -f *.o *.s *.bc *.ll *.stats

