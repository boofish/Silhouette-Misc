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

#ifdef MPU_TESTING
// shadow_stack_data. This is faked testing data at the location of shadow stack. The sole purpose is
// to verify MPU behavior meets expectations, i.e. MPU indeed protects the shadow stack region in the memory.
char shadow_stack_data[StackSize] __attribute__((section (".shadow_stack"))) __attribute__((__used__)) = "shadow";
char pub_stack_data[StackSize] = "public";

#endif // MPU_TESTING

/*-----------------------------------------------------------*/

static uint32_t prvGetMPURegionSizeSetting( uint32_t ulActualSizeInBytes )
{
uint32_t ulRegionSize, ulReturnValue = 4;

	/* 32 is the smallest region size, 31 is the largest valid value for
	ulReturnValue. */
	for( ulRegionSize = 32UL; ulReturnValue < 31UL; ( ulRegionSize <<= 1UL ) )
	{
		if( ulActualSizeInBytes <= ulRegionSize )
		{
			break;
		}
		else
		{
			ulReturnValue++;
		}
	}

	/* Shift the code by one before returning so it can be written directly
	into the the correct bit position of the attribute register. */

	return ( ulReturnValue << 1UL );
}
/*-----------------------------------------------------------*/

void initMPU(void){

	extern uint32_t _FLASH_segment_start[];
	extern uint32_t _FLASH_segment_end[];

	extern uint32_t _RAM_start[];
	extern uint32_t _RAM_end[];

	extern uint32_t _shadow_stack_start[];
	extern uint32_t _shadow_stack_end[];

	/* Check the expected MPU is present. */
		if( portMPU_TYPE_REG == portEXPECTED_MPU_TYPE_VALUE )
		{
			/* First setup the entire flash for unprivileged read only access. */
			portMPU_REGION_BASE_ADDRESS_REG =	( ( uint32_t ) _FLASH_segment_start ) | /* Base address. */
												( portMPU_REGION_VALID ) |
												( portUNPRIVILEGED_FLASH_REGION );

			portMPU_REGION_ATTRIBUTE_REG =	( portMPU_REGION_READ_WRITE ) |
												( portMPU_REGION_CACHEABLE_BUFFERABLE ) |
												(prvGetMPURegionSizeSetting( ( uint32_t ) _FLASH_segment_end - ( uint32_t ) _FLASH_segment_start ) ) |
												( portMPU_REGION_ENABLE );
			uint32_t type, ctrl, rnr, rbar, rasr;

			type = portMPU_TYPE_REG;
			rnr = portMPU_REGION_NUMBER_REG;
			rbar = portMPU_REGION_BASE_ADDRESS_REG;
			rasr = portMPU_REGION_ATTRIBUTE_REG;

			/* setup RAM with all access. */
			portMPU_REGION_BASE_ADDRESS_REG =	( ( uint32_t ) _RAM_start ) | /* Base address. */
					( portMPU_REGION_VALID ) |
					( portALL_RAM_REGION );

			portMPU_REGION_ATTRIBUTE_REG =	( portMPU_REGION_READ_WRITE ) |
											( portMPU_REGION_CACHEABLE_BUFFERABLE ) |
											(prvGetMPURegionSizeSetting( ( uint32_t ) _RAM_end - ( uint32_t ) _RAM_start ) ) |
											( portMPU_REGION_ENABLE );

			type = portMPU_TYPE_REG;
			rnr = portMPU_REGION_NUMBER_REG;
			rbar = portMPU_REGION_BASE_ADDRESS_REG;
			rasr = portMPU_REGION_ATTRIBUTE_REG;


			/* setup shadow stack with privilege access only. */
			portMPU_REGION_BASE_ADDRESS_REG =	( ( uint32_t ) _shadow_stack_start ) | /* Base address. */
					( portMPU_REGION_VALID ) |
					( portPRIVILEGED_RAM_REGION );

			portMPU_REGION_ATTRIBUTE_REG =	( portMPU_REGION_PRIVILEGED_READ_WRITE ) |
											( portMPU_REGION_CACHEABLE_BUFFERABLE ) |
											(prvGetMPURegionSizeSetting( ( uint32_t ) _shadow_stack_end - ( uint32_t ) _shadow_stack_start ) ) |
											( portMPU_REGION_ENABLE );

			type = portMPU_TYPE_REG;
			rnr = portMPU_REGION_NUMBER_REG;
			rbar = portMPU_REGION_BASE_ADDRESS_REG;
			rasr = portMPU_REGION_ATTRIBUTE_REG;

			/* By default allow everything to access the general peripherals.  The
					system peripherals and registers are protected. */
			portMPU_REGION_BASE_ADDRESS_REG =	( portPERIPHERALS_START_ADDRESS ) |
												( portMPU_REGION_VALID ) |
												( portGENERAL_PERIPHERALS_REGION );

			portMPU_REGION_ATTRIBUTE_REG =	( portMPU_REGION_READ_WRITE | portMPU_REGION_EXECUTE_NEVER ) |
											(prvGetMPURegionSizeSetting( portPERIPHERALS_END_ADDRESS - portPERIPHERALS_START_ADDRESS) ) |
													( portMPU_REGION_ENABLE );

			type = portMPU_TYPE_REG;
			rnr = portMPU_REGION_NUMBER_REG;
			rbar = portMPU_REGION_BASE_ADDRESS_REG;
			rasr = portMPU_REGION_ATTRIBUTE_REG;

			/* Enable the memory fault exception. */
			portNVIC_SYS_CTRL_STATE_REG |= portNVIC_MEM_FAULT_ENABLE;

			/* Enable the MPU with the background region configured. */
			portMPU_CTRL_REG |= ( portMPU_ENABLE | portMPU_BACKGROUND_ENABLE );

			type = portMPU_TYPE_REG;
			rnr = portMPU_REGION_NUMBER_REG;
			rbar = portMPU_REGION_BASE_ADDRESS_REG;
			rasr = portMPU_REGION_ATTRIBUTE_REG;
		}
		else
		{
			printf ("no MPU support on the board\r\n");
		}

}


int raisePrivilege(){
	/* TODO: need to switch the stack */
	__asm volatile
	(
		"	mrs r0, control						\n"
		"	tst r0, #1							\n" /* Is the task running privileged? */
		"	itt ne								\n"
		"	movne r0, #0						\n" /* CONTROL[0]!=0, return false. */
		"	svcne %0							\n" /* Switch to privileged. */
		"	bx lr								\n"
		:: "i" (portSVC_RAISE_PRIVILEGE) : "r0", "memory"
	);
	return 0; // never reached.
}


void dropPrivilege(){
	/* TODO: need to switch the stack */
	__asm volatile ( " mrs r0, control 	\n" \
					 " orr r0, #1 		\n" \
					 " msr control, r0	\n"	\
					 :::"r0", "memory" );

}


void printRegs(void){

	unsigned int  cpuid=0;

    unsigned int control = 0,apsr= 0, ipsr= 0, epsr= 0, pc= 0, lr= 0, sp=0;

    unsigned int mpu_control=0, mpu_type=0, mpu_rnr=0;
    unsigned int mpu_rbar=0, mpu_rasr=0, mpu_rbar1=0, mpu_rasr1=0, mpu_rbar2=0, mpu_rasr2=0, mpu_rbar3=0, mpu_rasr3=0;


    __asm volatile
    	(
        	"ldr r0, =0xE000ED00\n"
        	"ldr %0, [r0]\n"
    		:"=r"(cpuid)::"memory"
    	); // cpuid 0x410fc241

    __asm volatile
    	( 	"mrs %0, control\n"
    		:"=r"(control)::"memory"
    	); // control 0x0

    __asm volatile
    	( 	"mrs %0, apsr\n"
    		:"=r"(apsr)::"memory"
    	);   // apsr: 0x60000000

    __asm volatile
    	( 	"mrs %0, ipsr\n"
    		:"=r"(ipsr)::"memory"
    	); // ipsr 0x0
    __asm volatile
    	( 	"mrs %0, epsr\n"
    		:"=r"(epsr)::"memory"
    	);  // epsr 0x0


    __asm volatile
    	(
        	"ldr r0, =0xE000ED90\n"
        	"ldr %0, [r0]\n"
    		:"=r"(mpu_type)::"memory"
    	); // mpu_type: 0x800

    __asm volatile
    	( 	"ldr r0, =0xE000ED94\n"
            	"ldr %0, [r0]\n"
    		:"=r"(mpu_control)::"memory"
    	); // mpu_control: 0x0
    __asm volatile
    	( 	"ldr r0, =0xE000ED98\n"
            	"ldr %0, [r0]\n"
    		:"=r"(mpu_rnr)::"memory"
    	); // 0x0

    __asm volatile
    	( 	"ldr r0, =0xE000ED9C\n"
            	"ldr %0, [r0]\n"
    		:"=r"(mpu_rbar)::"memory"
    	); // 0x0

    __asm volatile
    	( 	"ldr r0, =0xE000EDA0\n"
            	"ldr %0, [r0]\n"
    		:"=r"(mpu_rasr)::"memory"
    	); // 0x0

    __asm volatile
    	( 	"ldr r0, =0xE000EDA4\n"
            	"ldr %0, [r0]\n"
    		:"=r"(mpu_rbar1)::"memory"
    	); // 0x0

    __asm volatile
    	( 	"ldr r0, =0xE000EDA8\n"
            	"ldr %0, [r0]\n"
    		:"=r"(mpu_rasr1)::"memory"
    	); // 0x0

    __asm volatile
    	( 	"ldr r0, =0xE000EDAC\n"
            	"ldr %0, [r0]\n"
    		:"=r"(mpu_rbar2)::"memory"
    	); // 0x0

    __asm volatile
    	( 	"ldr r0, =0xE000EDB0\n"
            	"ldr %0, [r0]\n"
    		:"=r"(mpu_rasr2)::"memory"
    	); // 0x0

    __asm volatile
    	( 	"ldr r0, =0xE000EDB4\n"
            	"ldr %0, [r0]\n"
    		:"=r"(mpu_rbar3)::"memory"
    	); // 0x0

    __asm volatile
    	( 	"ldr r0, =0xE000EDB8\n"
            	"ldr %0, [r0]\n"
    		:"=r"(mpu_rasr3)::"memory"
    	); // 0x0
    printf("--------------------\r\n");
	printf(
		"cpuid: 0x%x\r\n"
		"control: 0x%x\r\n"
		"apsr: 0x%x\r\n"
		"ipsr: 0x%x\r\n"
		"epsr: 0x%x\r\n"
		"pc: 0x%x\r\n"
		"lr: 0x%x\r\n"
		"sp: 0x%x\r\n",
		cpuid,control,apsr,ipsr,epsr,pc,lr,sp);
	printf("mpu_type: 0x%x\r\n"
		"mpu_control: 0x%x\r\n"
		"mpu_rnr(region number): 0x%x\r\n",
		mpu_type,mpu_control,mpu_rnr);
	printf("mpu_rbar(region base addr): 0x%x\r\n"
		"mpu_rasr(region attri&size): 0x%x\r\n",mpu_rbar,mpu_rasr);
	printf("mpu_rbar(region base addr 1): 0x%x\r\n"
		"mpu_rasr(region attri&size 1): 0x%x\r\n",mpu_rbar1,mpu_rasr1);
	printf("mpu_rbar(region base addr 2): 0x%x\r\n"
		"mpu_rasr(region attri&size 2): 0x%x\r\n",mpu_rbar2,mpu_rasr2);
	printf("mpu_rbar(region base addr 3): 0x%x\r\n"
		"mpu_rasr(region attri&size 3): 0x%x\r\n",mpu_rbar3,mpu_rasr3);
	printf("--------------------\r\n");

}



/* mpu_test:
 *  a simple test for mpu functionality
 *
 *  precondition: should call this function when CPU in privileged mode
 *  postcondition: MPU will throw memory fault upon illegal access. If this occurs,
 *  		the program can get trapped in the handler and this function might never return.
 *  what it do:
 *  - read shadow_stack_data when in privileged mode (faked data at the location of shadow stack)
 *  - drop privilege
 *  - read shadow stack (optional, since it will trap)
 *  - raise privilege
 *  - read shadow stack
 *
 *  Note: stack reading will use normal load and unprivileged load instructions, or simply using printf.
 *   Unmask the '#if 0' pragma to enable more tests.
 */
void mpuTest(){

#ifdef MPU_TESTING

	printf("testing mpu.\r\n");

	printRegs();

    __asm volatile
    	( "ldrt r0, %0\n"
    	  ::"m"(shadow_stack_data): "r0","memory"
    	); // 0x0

	// read shadow

    __asm volatile
    	( "ldr r0, %0\n"
    	  ::"m"(shadow_stack_data): "r0","memory"
    	); // 0x0

#if 0
    // here should get memory fault
    __asm volatile
    	( "ldrt r0, %0\n"
    	  ::"m"(shadow_stack_data): "r0","memory"
    	); // 0x0
#endif


	printf("%s\r\n", shadow_stack_data);
	// read public
	printf("%s\r\n", pub_stack_data);

	/* drop privilege */
	dropPrivilege();

	printf("user mode switch done.\r\n");

	// read public, should pass
    __asm volatile
    	( "ldr r0, %0\n"
    	  ::"m"(pub_stack_data): "r0","memory"
    	); // 0x0

	printf("%s\r\n", pub_stack_data);
#if 0
	// read shadow, should mem fault
    __asm volatile
    	( "ldr r0, %0\n"
    	  ::"m"(shadow_stack_data): "r0","memory"
    	); // 0x0
#endif

#if 0
    // read shadow, should mem fault.
	printf("%s\r\n", shadow_stack_data);
#endif

    raisePrivilege();

	printf("privilege raised.\r\n");

	// read shadow, should pass
	__asm volatile
		( "ldr r0, %0\n"
		  ::"m"(shadow_stack_data): "r0","memory"
		); // 0x0

	printf("bye. %s\r\n", shadow_stack_data);

	// read public
	printf("bye. %s\r\n", pub_stack_data);

#endif // MPU_TESTING

}
