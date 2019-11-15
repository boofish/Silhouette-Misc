# Setting up Toolchains to Utilize LTO

This is a brief guideline for setting up toolchains to utilize LTO for STM32L475 in System WorkBench that uses Clang.
Before continuing, you should be done following the instructions on [SETUP_WB.md](SETUP_WB.md) to create a project.

## Clone Clang and LLD

1. Clone Clang from GitHub LLVM mirror.
```shell
cd PATH/TO/LLVM/SRC
cd tools
git clone https://github.com/llvm-mirror/clang
cd clang
git checkout release_90
```

2.  Apply the following patch to Clang source code by `patch -p1 < clang.patch`.
```diff
diff --git a/lib/Driver/ToolChains/BareMetal.cpp b/lib/Driver/ToolChains/BareMetal.cpp
index 1544727050..9d0ee062c5 100644
--- a/lib/Driver/ToolChains/BareMetal.cpp
+++ b/lib/Driver/ToolChains/BareMetal.cpp
@@ -156,8 +156,10 @@ void BareMetal::AddCXXStdlibLibArgs(const ArgList &Args,

 void BareMetal::AddLinkRuntimeLib(const ArgList &Args,
                                   ArgStringList &CmdArgs) const {
+#if 0
   CmdArgs.push_back(Args.MakeArgString("-lclang_rt.builtins-" +
                                        getTriple().getArchName() + ".a"));
+#endif
 }

 void baremetal::Linker::ConstructJob(Compilation &C, const JobAction &JA,
```

3. Clone LLD from GitHub LLVM mirror.
```shell
cd PATH/TO/LLVM/SRC
cd tools
git clone https://github.com/llvm-mirror/lld
cd lld
git checkout release_90
```

## Modify Toolchain Settings in System WorkBench

1. In 'Project Explorer' tab, right-click your newly created Project, select 'Properties'.

2. In Project properties menu, expand 'C/C++ Build', select 'Settings'.

3. In 'Miscellaneous' inside 'MCU GCC Compiler' settings, add `-flto` to 'Other flags'.
   Remove Silhouette flags as Silhouette passes will not be run at compile time.

4. In 'MCU GCC Linker', change 'Command' to `PATH/TO/LLVM/BUILD/bin/clang`.

5. In 'Libraries' inside 'MCU GCC Linker' settings, add an entry `gcc` to 'Libraries (-l)'.

6. In 'Libraries' inside 'MCU GCC Linker' settings, add the following entries to 'Library search path (-L)'.
   Each line takes one entry.
```
"${openstm32_compiler_path}/../lib/gcc/arm-none-eabi/7.3.1/thumb/v7e-m/fpv4-sp/hard"
"${openstm32_compiler_path}/../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard"
"${openstm32_compiler_path}/../lib/gcc/arm-none-eabi/7.3.1"
"${openstm32_compiler_path}/../lib/gcc"
"${openstm32_compiler_path}/../arm-none-eabi/lib"
```

7. In 'Miscellaneous' inside 'MCU GCC Linker' settings, add `-flto -fuse-ld=lld` to 'Linker flags', also add '--target=arm-none-eabi' if not already exists.
   Add Silhouette flags if you need.  Note that if a Silhouette flag is in the form of `-mllvm -xxxx`,
   the corresponding linker flag should be `-Wl,-mllvm,-xxxx`.
   See [LLVM_CLI_Options.md](LLVM_CLI_Options.md).

8. In 'Miscellaneous' inside 'MCU GCC Linker' settings, add the following entries to 'Other objects'.
   Each line takes one entry.
```
"${openstm32_compiler_path}/../lib/gcc/arm-none-eabi/7.3.1/thumb/v7e-m/fpv4-sp/hard/crti.o"
"${openstm32_compiler_path}/../lib/gcc/arm-none-eabi/7.3.1/thumb/v7e-m/fpv4-sp/hard/crtbegin.o"
"${openstm32_compiler_path}/../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard/crt0.o"
"${openstm32_compiler_path}/../lib/gcc/arm-none-eabi/7.3.1/thumb/v7e-m/fpv4-sp/hard/crtend.o"
"${openstm32_compiler_path}/../lib/gcc/arm-none-eabi/7.3.1/thumb/v7e-m/fpv4-sp/hard/crtn.o"
```
