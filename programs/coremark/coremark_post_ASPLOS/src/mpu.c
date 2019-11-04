/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32l4xx.h"
#include "stm32l475e_iot01.h"
#include "mpu.h"

static uint32_t prvGetMPURegionSizeSetting(uint32_t ulActualSizeInBytes)
{
	uint32_t ulRegionSize, ulReturnValue = 4;

	/* 32 is the smallest region size, 31 is the largest valid value for
	ulReturnValue. */
	for (ulRegionSize = 32UL; ulReturnValue < 31UL; ulRegionSize <<= 1UL) {
		if (ulActualSizeInBytes <= ulRegionSize) {
			break;
		} else {
			ulReturnValue++;
		}
	}

	/* Shift the code by one before returning so it can be written directly
	into the the correct bit position of the attribute register. */

	return ulReturnValue << 1UL;
}

void initMPU(void)
{
	extern uint32_t _FLASH_segment_start[];
	extern uint32_t _FLASH_segment_end[];

	extern uint32_t _RAM_start[];
	extern uint32_t _RAM_end[];

	extern uint32_t _shadow_stack_start[];
	extern uint32_t _shadow_stack_end[];

	extern uint32_t _RAM2_start[];
	extern uint32_t _RAM2_end[];

	/* Check the expected MPU is present. */
	if (portMPU_TYPE_REG == portEXPECTED_MPU_TYPE_VALUE) {
		/* First setup the entire flash for unprivileged read only access. */
		portMPU_REGION_BASE_ADDRESS_REG = ((uint32_t)_FLASH_segment_start) | /* Base address. */
			(portMPU_REGION_VALID) |
			(portUNPRIVILEGED_FLASH_REGION);

		portMPU_REGION_ATTRIBUTE_REG = (portMPU_REGION_READ_ONLY) |
			(portMPU_REGION_CACHEABLE_BUFFERABLE) |  /* noMPU: portMPU_REGION_CACHEABLE_WT */
			(prvGetMPURegionSizeSetting((uint32_t)_FLASH_segment_end - (uint32_t)_FLASH_segment_start)) |
			(portMPU_REGION_ENABLE);

		uint32_t type, ctrl, rnr, rbar, rasr;

		type = portMPU_TYPE_REG;
		rnr = portMPU_REGION_NUMBER_REG;
		rbar = portMPU_REGION_BASE_ADDRESS_REG;
		rasr = portMPU_REGION_ATTRIBUTE_REG;

		/* Setup RAM2 region */
		portMPU_REGION_BASE_ADDRESS_REG = ((uint32_t)(_RAM2_start)) | /* Base address. */
			(portMPU_REGION_VALID) |
			(portSFI_RAM_HOLE_REGION);

		portMPU_REGION_ATTRIBUTE_REG = (portMPU_REGION_READ_WRITE) | (portMPU_REGION_EXECUTE_NEVER) |
			(portMPU_REGION_CACHEABLE_BUFFERABLE) |  /* noMPU: portMPU_REGION_CACHEABLE_WT */
			(prvGetMPURegionSizeSetting((uint32_t)_RAM2_end - (uint32_t)_RAM2_start)) |
			(portMPU_REGION_ENABLE);

		type = portMPU_TYPE_REG;
		rnr = portMPU_REGION_NUMBER_REG;
		rbar = portMPU_REGION_BASE_ADDRESS_REG;
		rasr = portMPU_REGION_ATTRIBUTE_REG;

		/* Setup canary region above RAM */
		portMPU_REGION_BASE_ADDRESS_REG = ((uint32_t)_RAM_end) | /* Base address. */
			(portMPU_REGION_VALID) |
			(portSFI_RAM2_REGION);

		portMPU_REGION_ATTRIBUTE_REG = (portMPU_REGION_PRIVILEGED_READ_ONLY) | (portMPU_REGION_EXECUTE_NEVER) |
			(portMPU_REGION_CACHEABLE_BUFFERABLE) |  /* noMPU: portMPU_REGION_CACHEABLE_WT */
			(prvGetMPURegionSizeSetting((uint32_t)256)) |
			(portMPU_REGION_ENABLE);

		type = portMPU_TYPE_REG;
		rnr = portMPU_REGION_NUMBER_REG;
		rbar = portMPU_REGION_BASE_ADDRESS_REG;
		rasr = portMPU_REGION_ATTRIBUTE_REG;

		/* setup RAM with all access, or kernel only access if flipped. */

#ifdef SS_FLIP_USER_KERNEL_PERM
		/* Kernel only access to all RAM */
		portMPU_REGION_BASE_ADDRESS_REG = ((uint32_t)_RAM_start) | /* Base address. */
			(portMPU_REGION_VALID) |
			(portALL_RAM_REGION);

		portMPU_REGION_ATTRIBUTE_REG = (portMPU_REGION_PRIVILEGED_READ_WRITE) | (portMPU_REGION_EXECUTE_NEVER) |
			(portMPU_REGION_CACHEABLE_BUFFERABLE) | /* noMPU: portMPU_REGION_CACHEABLE_WBWA */
			(prvGetMPURegionSizeSetting((uint32_t)_RAM_end - (uint32_t)_RAM_start)) |
			(portMPU_REGION_ENABLE);
#else // no SS_FLIP_USER_KERNEL_PERM

		/* User & kernel access to all RAM */
		portMPU_REGION_BASE_ADDRESS_REG = ((uint32_t)_RAM_start) | /* Base address. */
			(portMPU_REGION_VALID) |
			(portALL_RAM_REGION);

		portMPU_REGION_ATTRIBUTE_REG = (portMPU_REGION_READ_WRITE) | (portMPU_REGION_EXECUTE_NEVER) |
			(portMPU_REGION_CACHEABLE_BUFFERABLE) | /* noMPU: portMPU_REGION_CACHEABLE_WBWA */
			(prvGetMPURegionSizeSetting((uint32_t)_RAM_end - (uint32_t)_RAM_start)) |
			(portMPU_REGION_ENABLE);
#endif // SS_FLIP_USER_KERNEL_PERM

		type = portMPU_TYPE_REG;
		rnr = portMPU_REGION_NUMBER_REG;
		rbar = portMPU_REGION_BASE_ADDRESS_REG;
		rasr = portMPU_REGION_ATTRIBUTE_REG;


#ifdef SS_FLIP_USER_KERNEL_PERM
		/* Setup shadow stack with user access only. */
		portMPU_REGION_BASE_ADDRESS_REG = ((uint32_t)_shadow_stack_start) | /* Base address. */
			(portMPU_REGION_VALID) |
			(portPRIVILEGED_RAM_REGION);

		portMPU_REGION_ATTRIBUTE_REG = (portMPU_REGION_READ_WRITE) | (portMPU_REGION_EXECUTE_NEVER) |
			(portMPU_REGION_CACHEABLE_BUFFERABLE) | /* noMPU: portMPU_REGION_CACHEABLE_WBWA */
			(prvGetMPURegionSizeSetting((uint32_t)_shadow_stack_end - (uint32_t)_shadow_stack_start)) |
			(portMPU_REGION_ENABLE);

#else // no SS_FLIP_USER_KERNEL_PERM

		/* Setup shadow stack with privilege access only. */
		portMPU_REGION_BASE_ADDRESS_REG = ((uint32_t)_shadow_stack_start) | /* Base address. */
			(portMPU_REGION_VALID) |
			(portPRIVILEGED_RAM_REGION);

		portMPU_REGION_ATTRIBUTE_REG = (portMPU_REGION_PRIVILEGED_READ_WRITE) | (portMPU_REGION_EXECUTE_NEVER) |
			(portMPU_REGION_CACHEABLE_BUFFERABLE) | /* noMPU: portMPU_REGION_CACHEABLE_WBWA */
			(prvGetMPURegionSizeSetting((uint32_t)_shadow_stack_end - (uint32_t)_shadow_stack_start)) |
			(portMPU_REGION_ENABLE);

#endif // SS_FLIP_USER_KERNEL_PERM

		type = portMPU_TYPE_REG;
		rnr = portMPU_REGION_NUMBER_REG;
		rbar = portMPU_REGION_BASE_ADDRESS_REG;
		rasr = portMPU_REGION_ATTRIBUTE_REG;



		/* By default allow everything to access the general peripherals.  The
		   system peripherals and registers are protected. */
		portMPU_REGION_BASE_ADDRESS_REG = (portPERIPHERALS_START_ADDRESS) |
			(portMPU_REGION_VALID) |
			(portGENERAL_PERIPHERALS_REGION);

		portMPU_REGION_ATTRIBUTE_REG = (portMPU_REGION_PRIVILEGED_READ_WRITE | portMPU_REGION_EXECUTE_NEVER) |
			(prvGetMPURegionSizeSetting(portPERIPHERALS_END_ADDRESS - portPERIPHERALS_START_ADDRESS)) |
			(portMPU_REGION_ENABLE);

		type = portMPU_TYPE_REG;
		rnr = portMPU_REGION_NUMBER_REG;
		rbar = portMPU_REGION_BASE_ADDRESS_REG;
		rasr = portMPU_REGION_ATTRIBUTE_REG;

		/* Enable the memory fault exception. */
		portNVIC_SYS_CTRL_STATE_REG |= portNVIC_MEM_FAULT_ENABLE;

		/* Enable the MPU with the background region configured. */
		portMPU_CTRL_REG |= (portMPU_ENABLE | portMPU_BACKGROUND_ENABLE | portMPU_HFNMIENA_ENABLE);

		type = portMPU_TYPE_REG;
		rnr = portMPU_REGION_NUMBER_REG;
		rbar = portMPU_REGION_BASE_ADDRESS_REG;
		rasr = portMPU_REGION_ATTRIBUTE_REG;
	} else {
		printf("no MPU support on the board\r\n");
	}
}
