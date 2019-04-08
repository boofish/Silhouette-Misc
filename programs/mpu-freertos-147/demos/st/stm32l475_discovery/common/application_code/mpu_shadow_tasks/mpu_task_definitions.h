/*
 * mpu_task_definitions.h
 *
 *  Created on: Apr 7, 2019
 *      Author: Lele Ma
 */

#ifndef APPLICATION_CODE_MPU_SHADOW_TASKS_MPU_TASK_DEFINITIONS_H_
#define APPLICATION_CODE_MPU_SHADOW_TASKS_MPU_TASK_DEFINITIONS_H_



/************************* Example Task -- printing **************************/

/** taskPrint
 *     This is an example task definition to run under FreeRTOS.
 *     There is no input for it, just printing related to internal state.
 * */

void taskPrint(void);

/**
 * Define Structures to create print task
 */

#define printTaskParameter NULL

/** This is a dynamic task definition example **/

static StackType_t printTaskStackBuffer[STACK_SIZE * 2] __attribute__ ((aligned (32)));
// Create an TaskParameters_t structure that defines the task to be created.
static const TaskParameters_t printTaskParameters =
{
	taskPrint,		// pvTaskCode - the function that implements the task.
	"task_print",	// pcName - just a text name for the task to assist debugging.
	STACK_SIZE,		// usStackDepth	- the stack size DEFINED IN WORDS.
	printTaskParameter,		// pvParameters - passed into the task function as the function parameters.
	( 1UL | portPRIVILEGE_BIT ),// uxPriority - task priority, set the portPRIVILEGE_BIT if the task should run in a privileged state.
	printTaskStackBuffer,// puxStackBuffer - the buffer to be used as the task stack.

	// xRegions - Allocate up to three separate memory regions for access by
	// the task, with appropriate access permissions.  Different processors have
	// different memory alignment requirements - refer to the FreeRTOS documentation
	// for full information.
	{
		// {Base address,	Length,	Parameters}
		{ &printTaskStackBuffer[STACK_SIZE],	STACK_SIZE_IN_BYTES, portMPU_REGION_PRIVILEGED_READ_WRITE }, // shadow stack.
		{ 0,0,0 }, // the other two region left unused.
		{ 0,0,0 }
	}
};


/******************* Example task Fibonacci ************************/


/**
 * This is a function used by taskFib***()
 *
 */
int fibonacci(int n);

/**
 * taskFibStatic
 *
 * 		This is an example task definition to run under FreeRTOS.
 *
 * 		It computes fibonacci numbers for a given number fib_n.
 *
 * 		The task will be statically allocated.
 *
 *   Input:
 *   - parameter, should point to an integer as fibonacci input
 *
 */

void taskFibStatic(void * parameter);


/**
 * taskFibDynamic
 *
 * 		This is an example task definition to run under FreeRTOS.
 *
 * 		It computes fibonacci numbers for a given number fib_n.
 *
 * 		The task will be dynamically allocated.
 *
 *   Input:
 *   - parameter: should point to an integer as fibonacci input
 *
 */
void taskFibDynamic(void * parameter);


/**
 * Define Structures to create fibonacci tasks
 */

static int fib_n = 4;

#define fibTaskParameter (void *)&fib_n

/** This is a dynamic task definition example **/

static StackType_t fibDynamicStackBuffer[STACK_SIZE * 2] __attribute__ ((aligned (32)));
// Create an TaskParameters_t structure that defines the task to be created.
static const TaskParameters_t fibTaskDynamicParameters =
{
	taskFibDynamic,		// pvTaskCode - the function that implements the task.
	"task_Fib_Dynamic",	// pcName - just a text name for the task to assist debugging.
	STACK_SIZE,		// usStackDepth	- the stack size DEFINED IN WORDS.
	fibTaskParameter,		// pvParameters - passed into the task function as the function parameters.
	( 1UL | portPRIVILEGE_BIT ),// uxPriority - task priority, set the portPRIVILEGE_BIT if the task should run in a privileged state.
	fibDynamicStackBuffer,// puxStackBuffer - the buffer to be used as the task stack.

	// xRegions - Allocate up to three separate memory regions for access by
	// the task, with appropriate access permissions.  Different processors have
	// different memory alignment requirements - refer to the FreeRTOS documentation
	// for full information.
	{
		// {Base address,	Length,	Parameters}
		{ &fibDynamicStackBuffer[STACK_SIZE],	STACK_SIZE_IN_BYTES, portMPU_REGION_PRIVILEGED_READ_WRITE }, // shadow stack.
		{ 0,0,0 }, // the other two region left unused.
		{ 0,0,0 }
	}
};

/**
 * Create an TaskParameters_t structure that defines the task to be created.
 *
 * This is a static task definition example.
 */

//
static StaticTask_t fibStaticTaskBuffer;

static StackType_t fibStaticStackBuffer[STACK_SIZE * 2] __attribute__ ((aligned (32)));

static const TaskParameters_t fibTaskStaticParameters =
{
	taskFibStatic,		// pvTaskCode - the function that implements the task.
	"task_Fib_Static",	// pcName - just a text name for the task to assist debugging.
	STACK_SIZE,		// usStackDepth	- the stack size DEFINED IN WORDS.
	fibTaskParameter,		// pvParameters - passed into the task function as the function parameters.
	( 1UL | portPRIVILEGE_BIT ),// uxPriority - task priority, set the portPRIVILEGE_BIT if the task should run in a privileged state.
	fibStaticStackBuffer,// puxStackBuffer - the buffer to be used as the task stack.

	// xRegions - Allocate up to three separate memory regions for access by
	// the task, with appropriate access permissions.  Different processors have
	// different memory alignment requirements - refer to the FreeRTOS documentation
	// for full information.
	// for full information.
	{
		// {Base address,	Length,	Parameters}
		{ &fibStaticStackBuffer[STACK_SIZE],	STACK_SIZE_IN_BYTES, portMPU_REGION_PRIVILEGED_READ_WRITE }, // shadow stack.
		{ 0,0,0 }, // the other two region left unused.
		{ 0,0,0 }
	},

	// The StaticTask_t variable is only included in the structure when configSUPPORT_STATIC_ALLOCATION is set to 1.
	&fibStaticTaskBuffer // Holds the task's data structure.
};


#endif /* APPLICATION_CODE_MPU_SHADOW_TASKS_MPU_TASK_DEFINITIONS_H_ */
