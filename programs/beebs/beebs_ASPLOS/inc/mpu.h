/**
  ******************************************************************************
  * @file    mpu.h
  ******************************************************************************
*/

#ifndef _MPU_H_
#define _MPU_H_

#define MPU_TESTING //enable a simple test of MPU functions


/* To flip user and kernel permission on stack & shadow stack */
#ifndef SS_FLIP_USER_KERNEL_PERM
//#define SS_FLIP_USER_KERNEL_PERM
#endif


#ifdef MPU_TESTING
#define StackSize 6
extern char shadow_stack_data[];
extern char pub_stack_data[];
#endif // MPU_TESTING

#define portSVC_RAISE_PRIVILEGE				2

#define portUNPRIVILEGED_FLASH_REGION		( 0UL )
#define portPRIVILEGED_FLASH_REGION			( 1UL )
#define portALL_RAM_REGION					( 2UL )
#define portPRIVILEGED_RAM_REGION			( 3UL )
#define portGENERAL_PERIPHERALS_REGION		( 4UL )
#ifdef SS_SFI
#define portSFI_RAM_HOLE_REGION				( 5UL )
#define portSFI_RAM2_REGION					( 6UL )
#endif
//#define portSTACK_REGION					( 4UL )
//#define portFIRST_CONFIGURABLE_REGION	    ( 5UL )
#define portLAST_CONFIGURABLE_REGION		( 7UL )
//#define portNUM_CONFIGURABLE_REGIONS		( ( portLAST_CONFIGURABLE_REGION - portFIRST_CONFIGURABLE_REGION ) + 1 )
#define portTOTAL_NUM_REGIONS				( portNUM_CONFIGURABLE_REGIONS + 1 ) /* Plus one to make space for the stack region. */


#define portNVIC_SYS_CTRL_STATE_REG				( * ( ( volatile uint32_t * ) 0xe000ed24 ) )
#define portNVIC_MEM_FAULT_ENABLE				( 1UL << 16UL )

/* Constants required to access and manipulate the MPU. */
#define portMPU_TYPE_REG						( * ( ( volatile uint32_t * ) 0xe000ed90 ) )
#define portMPU_CTRL_REG						( * ( ( volatile uint32_t * ) 0xe000ed94 ) )
#define portMPU_REGION_NUMBER_REG		    	( * ( ( volatile uint32_t * ) 0xe000ed98 ) )
#define portMPU_REGION_BASE_ADDRESS_REG			( * ( ( volatile uint32_t * ) 0xe000ed9C ) )
#define portMPU_REGION_ATTRIBUTE_REG			( * ( ( volatile uint32_t * ) 0xe000edA0 ) )
#define portEXPECTED_MPU_TYPE_VALUE				( 8UL << 8UL ) /* 8 regions, unified. */
#define portMPU_ENABLE							( 0x01UL )
#define portMPU_HFNMIENA_ENABLE				    ( 1UL << 1UL )
#define portMPU_BACKGROUND_ENABLE				( 1UL << 2UL )
#define portPRIVILEGED_EXECUTION_START_ADDRESS	( 0UL )
#define portMPU_REGION_VALID					( 0x10UL )
#define portMPU_REGION_ENABLE					( 0x01UL )
#define portPERIPHERALS_START_ADDRESS			0x40000000UL
#define portPERIPHERALS_END_ADDRESS				0x5FFFFFFFUL

#define portMPU_REGION_READ_WRITE				( 0x03UL << 24UL )
#define portMPU_REGION_PRIVILEGED_READ_ONLY		( 0x05UL << 24UL )
#define portMPU_REGION_READ_ONLY				( 0x06UL << 24UL )
#define portMPU_REGION_PRIVILEGED_READ_WRITE	( 0x01UL << 24UL )
#define portMPU_REGION_CACHEABLE_WT   	    	( 0x06UL << 16UL )  //normal cachable, bufferable, write through, no write allocate
#define portMPU_REGION_CACHEABLE_BUFFERABLE		( 0x07UL << 16UL )  //normal, cacheable, bufferable, write back, no write allocate
#define portMPU_REGION_CACHEABLE_WBWA   		( 0x0fUL << 16UL )  //normal cachable, bufferable, write back, write allocate
#define portMPU_REGION_EXECUTE_NEVER			( 0x01UL << 28UL )

void initMPU(void);

int raisePrivilege(void) __attribute__(( naked ));

void dropPrivilege(void);

void printRegs(void);

void mpuTest(void);

int stackoverflowing_test(void);

#endif // _MPU_H_

