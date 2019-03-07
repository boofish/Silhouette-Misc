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
HEADERS = /home/jzhou/Applications/Ac6/SystemWorkbench/plugins/fr.ac6.mcu.externaltools.arm-none.linux64_1.17.0.201812190825/tools/compiler/arm-none-eabi/include

ARM_FLAGS = --target=arm-none-eabi -mcpu=cortex-m4 -mthumb -mfloat-abi=hard

PROGS := cubic
SOURCES := $(addsuffix .c, $(PROGS))
OFILES := $(addsuffix .o, $(PROGS))
ASMFILES := $(addsuffix .s, $(PROGS))
STATSFILES := $(addsuffix .stats, $(PROGS))

CC = $(LLVM_BUILD)/bin/clang

CFLAGS = -O0 -g -c -I$(HEADERS)
CFLAGS += $(ARM_FLAGS)
CFLAGS += -DTEST

# 
# passes
STR2STRT = -Xclang -backend-option -Xclang -enable-arm-silhouette-str2strt
MEM_OVERHEAD = -Xclang -backend-option -Xclang -enable-arm-silhouette-mem-overhead \
			   -save-stats

#==============================================================================#

str: $(SOURCES)
	$(CC) $(CFLAGS) $(STR2STRT) $^ 
	$(MAKE) asm

mem: $(SOURCES)
	$(CC) $(CFLAGS) $(MEM_OVERHEAD) $^ 
	mv $(STATSFILES) $(SILHOUETTE)/silhouette-misc/data/small-tests/mem-overhead

asm: $(ASMFILES)

%.s: %.o
	$(OBJDUMP) -d $< > $@

clean:
	rm -f *.o *.s *.stats

