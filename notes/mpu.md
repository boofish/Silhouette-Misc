
# MPU Basics

This introduces what is MPU and how to use it for memory management in FreeRTOS on two architecture: ARMv7-M and ARMv7-R.


## What are the options for memory management in ISA level?
Three kinds of memory management solutions contributed by ARMv7-M and ARMv7-R:

1. System address map. 32-bit address space is equally divided into 8 regions, 0.5GB each, including: Code, SRAM, Periperal, 2 RAM regions, 2 Device regions, System region.
2. Protected Memory System Architecture (PMSAv7), based on Memory Protection Unit (MPU). MPU divides address space into regions, and access control information of each region stored in registers.
3. Virtual Memory System Architecture (VMSA), based on Memory Management Unit (MMU). MMU use translation tables to virtualize address space and access control information stored in translation table descriptors (short/long descriptors).

ARMv7-M supports the first two solutioins, ARMv7-R supports the second, and ARMv7-A supports the third.

## On ARMv7-M, what kind of access control policy can system address map enforce for a certain region?

System address map defines attributes for each memory region. These attributes are used by the processor to determine the access behaviors. Attributes includes:

- Execute Never region: XN.
- Cache policies: WT (write-through), WBWA(write back, write allocate)

- Shareable region.
- Strongly-ordered memory. 

- implementation defined: R/W, RO, NA.

When MPU disabled, the system use the attributes in this default map for access control. When MPU enabled, the default map could be used as background map for privileged access. A background map means if MPU does not define the permission, or 

## How to manage MPU in ISA level?

### On ARMv7-M:

> Reference: [ARMv7-M manual](manual/DDI0403E_B_armv7m_arm.pdf), Section B3.5.1~3.5.9

In ARMv7-M, software use a pair of registers to define a region of memory, namely

- MPU_RBAR (MPU Region Base Address Register). This is the base address of a region.

- MPU_RASR (MPU Region Attribute and Size Register). This controls the region size, sub-region access, access permissions, memory type, and other properties of the region.

There are 4 pairs of MPU_RBAR/MPU_RASR registers, named *MPU alias registers*, allowing to store and enforce four regions at the same time without swapping contexts. Those three more pairs are named *_A1, *_A2, and *_A3 (replace * with original names above).

Three general MPU registers are used to support the enforcement of MPU:

- MPU_TYPE. Indicates whether MPU is supported in the processor. If so, indicates how many regions are supported.

- MPU_CONTROL. Enables MPU, and control whether the default address map is enabled as a background region for privileged accesses. Also controls whether MPU is enabled for HardFaults, NMIs, and exception handlers when FAULTMASK is set to 1. (FAULTMASK=1 ([B1.4.3](manual/DDI0403E_B_armv7m_arm.pdf)) raise the execution priority to -1)

- MPU_RNR. This is used to select region currently accessed by MPU_RBAR and MPU_RASR. Normally, software must first write the region number to MPU_RNR, and then use MPU_RBAR or MPU_RASR to access the selected region. However, if MPU_RBAR.VALID bit is set, the software can write to MPU_RBAR without first write MPU_RNR.


### On ARMv7-R

> Reference: [ARMv7-AR manual](manual/armv7ar-manual-0.DDI0406C_d.pdf), Chapter B5.

In ARMv7-R, software use *CP15 registers* to define protection regions in the physical memory map.

For each defined region, CP15 registers specify: 
1. the region size.
2. the base address.
3. the memory attributes, for example, memory type and access permissions. 

Regions >= 256 bytes could be furthuer split into 8 subregions.


> PL0: lowest privilege level, i.e. unprivileged. <br>
> PL1: usually privileged.


## How does FreeRTOS support MPU?

### Footprints in FreeRTOS source (where can we found the MPU code?)

#### Based on [Amazon-freertos-1.4.7](https://github.com/aws/amazon-freertos/tree/v1.4.7) (FreeRTOS 10.1.1)

| code path  | description | examples |
| ---       | ---        | ----   |
| [*/private/mpu_prototypes.h](https://github.com/aws/amazon-freertos/blob/v1.4.7/lib/include/private/mpu_prototypes.h) | MPU functions as the replacements of non-MPU API functions | - `MPU_*()` <br> - `MPU_xTaskCreate(...)` |
| [*/private/mpu_wrappers.h](https://github.com/aws/amazon-freertos/blob/v1.4.7/lib/include/private/mpu_wrappers.h) | Wrappers to map non-MPU functions to equivalent MPU functions. | - `#define xTaskCreate	MPU_xTaskCreate(...)` |
| [*/private/portable.h](https://github.com/aws/amazon-freertos/blob/v1.4.7/lib/include/private/portable.h) | Portable Layer API. Each function must be defined for each port. | - `#include "mpu_wrappers.h"` <br> - `if(portUSING_MPU_WRAPPERS == 1) StackType_t *pxPortInitialiseStack(.., + BaseType_t xRunPrivileged )` <br> - `void vPortStoreTaskMPUSettings(...)`
| [lib/include/task.h](https://github.com/aws/amazon-freertos/blob/v1.4.7/lib/include/task.h) | macros, data structs, API for task management | - `struct xMEMORY_REGION`: defines memory ranges allocated to the task when an MPU is used. <br> - `void vTaskAllocateMPURegions(...)` <br> - `BaseType_t xTaskCreate(...)`
| [*/ARM_CM4_MPU/portmacro.h](https://github.com/aws/amazon-freertos/blob/v1.4.7/lib/FreeRTOS/portable/GCC/ARM_CM4_MPU/portmacro.h) | Port specific definitions. <br> contains MPU related data structures. | - `struct xMPU_REGION_REGISTERS` <br> - `struct xMPU_SETTINGS`
| [*/ARM_CM4_MPU/port.c](https://github.com/aws/amazon-freertos/blob/v1.4.7/lib/FreeRTOS/portable/GCC/ARM_CM4_MPU/port.c) | Portable Layer API. Contains: <br> - Hardware initialization, <br> - MPU initialization, etc  | - `#define portMPU_TYPE_REG (*((uint32_t*) 0xe000ed90))` <br> - `prvSetupMPU()` <br> - `vPortStoreTaskMPUSettings()` |

### MPU initialization
Based on [Amazon-freertos-1.4.7](https://github.com/aws/amazon-freertos/tree/v1.4.7) 
`prvSetupMPU()`

### Creating a task using MPU
`MPU_xTaskCreate()`



### Configure FreeRTOS to use MPU
? 

