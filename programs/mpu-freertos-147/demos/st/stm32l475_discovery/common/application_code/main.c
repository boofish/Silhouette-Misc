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
#include "util.h"

// FreeRTOS API
#include "FreeRTOS.h"
#include "task.h"

// Task definitions using MPU with protected shadow stack
#include "mpu_task_definitions.h"

int main(void)
{

	Console_UART_Init();

	int test_fib = 2;

	int test[STACK_SIZE*2];
	int *testaddr = test;

	printf ("testaddr=%p, test: %p, &test: %p, test[STACK_SIZE]: %p, &test[STACK_SIZE]\r\n",
			testaddr, test, &test, test[STACK_SIZE], &test[STACK_SIZE]);

	printf("good. fibonacci(%d)=%d\r\n", test_fib, fibonacci(test_fib));

	printRegs();

	/**
	 * Example Tasks
	 */

	TaskHandle_t xHandlePrint, xHandleFibStatic, xHandleFibDynamic;

	xTaskCreateRestricted( &printTaskParameters, &xHandlePrint );
	// set up shadow stack permissions after dynamic allocation

	xTaskCreateRestricted( &fibTaskDynamicParameters, &xHandleFibDynamic );
	// set up shadow stack permissions after dynamic allocation

	xTaskCreateRestrictedStatic( &fibTaskStaticParameters, &xHandleFibStatic );
	// for static allocated task, mpu permission for shadow stack is specified at creation time.

	/**
	 * Start scheduler
	 */

    vTaskStartScheduler(); // should never return.


	//for(;;);
}
