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


/* configUSE_STATIC_ALLOCATION is set to 1, so the application must provide an
 * implementation of vApplicationGetIdleTaskMemory() to provide the memory that is
 * used by the Idle task. */
void vApplicationGetIdleTaskMemory( StaticTask_t ** ppxIdleTaskTCBBuffer,
                                    StackType_t ** ppxIdleTaskStackBuffer,
                                    uint32_t * pulIdleTaskStackSize )
{
/* If the buffers to be provided to the Idle task are declared inside this
 * function then they must be declared static - otherwise they will be allocated on
 * the stack and so not exists after this function exits. */
    static StaticTask_t xIdleTaskTCB;
    static StackType_t uxIdleTaskStack[ configMINIMAL_STACK_SIZE ]; //[ configMINIMAL_STACK_SIZE ]//Lele: should we *2 for shadow stack?;

    /* Pass out a pointer to the StaticTask_t structure in which the Idle
     * task's state will be stored. */
    *ppxIdleTaskTCBBuffer = &xIdleTaskTCB;

    /* Pass out the array that will be used as the Idle task's stack. */
    *ppxIdleTaskStackBuffer = uxIdleTaskStack;

    /* Pass out the size of the array pointed to by *ppxIdleTaskStackBuffer.
     * Note that, as the array is necessarily of type StackType_t,
     * configMINIMAL_STACK_SIZE is specified in words, not bytes. */
    *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
}
/*-----------------------------------------------------------*/


/**
 * @brief Loop forever if stack overflow is detected.
 *
 * If configCHECK_FOR_STACK_OVERFLOW is set to 1,
 * this hook provides a location for applications to
 * define a response to a stack overflow.
 *
 * Use this hook to help identify that a stack overflow
 * has occurred.
 *
 */
void vApplicationStackOverflowHook( TaskHandle_t xTask,
                                    char * pcTaskName )
{
    portDISABLE_INTERRUPTS();

    /* Loop forever */
    for( ; ; );
}
/*-----------------------------------------------------------*/

/**
 * @brief Initializes the FreeRTOS heap.
 *
 * Heap_5 is being used because the RAM is not contiguous, therefore the heap
 * needs to be initialized.  See http://www.freertos.org/a00111.html
 */

static void prvInitializeHeap( void )
{
    static uint8_t ucHeap1[ configTOTAL_HEAP_SIZE ];
    static uint8_t ucHeap2[ 1 * 1024 ] __attribute__( ( section( ".freertos_heap2" ) ) ); // 27 * 1024

    HeapRegion_t xHeapRegions[] =
    {
        { ( unsigned char * ) ucHeap1, sizeof( ucHeap1 ) },
        { ( unsigned char * ) ucHeap2, sizeof( ucHeap2 ) },
        { NULL,                                        0 }
    };

    vPortDefineHeapRegions( xHeapRegions );
}
/*-----------------------------------------------------------*/

/**
 * @brief Initializes the board.
 */
static void prvMiscInitialization( void )
{
    /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
    HAL_Init();

    /* Heap_5 is being used because the RAM is not contiguous in memory, so the
     * heap must be initialized. */
    prvInitializeHeap();

    /* UART console init. */
    Console_UART_Init();
}
/*-----------------------------------------------------------*/


int main(void)
{


    /* Perform any hardware initialization that does not require the RTOS to be
     * running.  */
    prvMiscInitialization();
    //	Console_UART_Init(); // above prvMiscInitialization() already call this.

	int test_fib = 2;

	int test[STACK_SIZE*2];
	int *testaddr = test;

	printf ("testaddr=%p, test: %p, &test: %p, \r\ntest[STACK_SIZE]: %d, &test[STACK_SIZE]:%p\r\n",
			testaddr, test, &test, test[STACK_SIZE], &test[STACK_SIZE]);

	printf("good. fibonacci(%d)=%d\r\n", test_fib, fibonacci(test_fib));

	printRegs();


	/**
	 * Example Tasks
	 */

	TaskHandle_t xHandlePrint, xHandleFibStatic, xHandleFibDynamic;

//	xTaskCreateRestricted( &printTaskParameters, &xHandlePrint );
	// set up shadow stack permissions after dynamic allocation

	xTaskCreateRestricted( &fibTaskDynamicParameters, &xHandleFibDynamic );
	// set up shadow stack permissions after dynamic allocation

//	xTaskCreateRestrictedStatic( &fibTaskStaticParameters, &xHandleFibStatic );
	// for static allocated task, mpu permission for shadow stack is specified at creation time.

	/**
	 * Start scheduler
	 */

    vTaskStartScheduler(); // should never return.


	//for(;;);
}
