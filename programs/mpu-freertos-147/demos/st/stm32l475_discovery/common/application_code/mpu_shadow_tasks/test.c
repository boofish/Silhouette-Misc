/*
 * test.c
 *
 *  Created on: Apr 7, 2019
 *      Author: Lele Ma
 */


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

    //    __asm volatile
    //    	( 	"mrs %0, pc\n"
    //    		:"=r"(pc)::"memory"
    //    	);
    //    __asm volatile
    //    	( 	"mrs %0, lr\n"
    //    		:"=r"(lr)::"memory"
    //    	);
    //    __asm volatile
    //    	( 	"mrs %0, sp\n"
    //    		:"=r"(sp)::"memory"
    //    	);

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


