################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/Components/mfxstm32l152/mfxstm32l152.c 

OBJS += \
./Utilities/Components/mfxstm32l152/mfxstm32l152.o 

C_DEPS += \
./Utilities/Components/mfxstm32l152/mfxstm32l152.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/Components/mfxstm32l152/%.o: ../Utilities/Components/mfxstm32l152/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	/home/edward/Documents/Silhouette/build/bin/clang -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32L4 -DSTM32L475VGTx -DB_L475E_IOT01A1 -DSTM32L475xx -DUSE_HAL_DRIVER -I"/home/edward/workspace/beebs/Utilities/Components/m24sr" -I/home/edward/Ac6/SystemWorkbench_old/plugins/fr.ac6.mcu.externaltools.arm-none.linux64_1.17.0.201812190825/tools/compiler/arm-none-eabi/include -I"/home/edward/workspace/beebs/Utilities/Components/cs43l22" -I"/home/edward/workspace/beebs/Utilities/Components/mx25lm51245g" -I"/home/edward/workspace/beebs/Utilities/Components/mfxstm32l152" -I"/home/edward/workspace/beebs/CMSIS/device" -I"/home/edward/workspace/beebs/Utilities/Components/cs42l51" -I"/home/edward/workspace/beebs/Utilities/Components/n25q128a" -I"/home/edward/workspace/beebs/Utilities/Components/st7735" -I"/home/edward/workspace/beebs/Utilities/Components/ft3x67" -I"/home/edward/workspace/beebs/Utilities/Components/rk043fn48h" -I"/home/edward/workspace/beebs/Utilities/Components/hx8347g" -I"/home/edward/workspace/beebs/HAL_Driver/Inc/Legacy" -I"/home/edward/workspace/beebs/Utilities/Components/ov9655" -I"/home/edward/workspace/beebs/Utilities/Components/stmpe1600" -I"/home/edward/workspace/beebs/Utilities/Components/Common" -I"/home/edward/workspace/beebs/Utilities/Components/l3gd20" -I"/home/edward/workspace/beebs/Utilities/Components/lsm6dsl" -I"/home/edward/workspace/beebs/HAL_Driver/Inc" -I"/home/edward/workspace/beebs/Utilities/Components/stmpe811" -I"/home/edward/workspace/beebs/Utilities/Components/wm8994" -I"/home/edward/workspace/beebs/Utilities/B-L475E-IOT01" -I"/home/edward/workspace/beebs/Utilities/Components/ft5336" -I"/home/edward/workspace/beebs/Utilities/Components/n25q256a" -I"/home/edward/workspace/beebs/Utilities/Components/ls016b8uy" -I"/home/edward/workspace/beebs/Utilities/Components/hts221" -I"/home/edward/workspace/beebs/inc" -I"/home/edward/workspace/beebs/Utilities/Components/ft6x06" -I"/home/edward/workspace/beebs/Utilities/Components/lis3mdl" -I"/home/edward/workspace/beebs/Utilities/Components/lps22hb" -I"/home/edward/workspace/beebs/Utilities/Components/st7789h2" -I"/home/edward/workspace/beebs/Utilities/Components/lsm303c" -I"/home/edward/workspace/beebs/Utilities/Components/iss66wvh8m8" -I"/home/edward/workspace/beebs/Utilities/Components/lsm303dlhc" -I"/home/edward/workspace/beebs/CMSIS/core" -I"/home/edward/workspace/beebs/Utilities/Components/mx25r6435f" -O3 -Wall -fmessage-length=0 --target=arm-none-eabi -mllvm -enable-arm-silhouette-shadowstack -mllvm -enable-arm-silhouette-str2strt -mllvm -enable-arm-silhouette-cfi -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

