/*
 * mpu_task_definitions.c
 *
 *  Created on: Apr 7, 2019
 *      Author: Lele Ma
 */

#include "stm32l4xx.h"
#include "stm32l475e_iot01.h"
#include "util.h"

// FreeRTOS API
//#include "FreeRTOS.h"
//#include "task.h"

void taskPrint(void * parameter){

	unsigned long iters = 0;

	 (void *)parameter; // not used

	unsigned long delay = 10000;

	for (;;){

		unsigned int i = 0;
		unsigned long j;
		for (;i<delay; i++){
			j=i*i + iters; // do something, for the delay
		}

		printf("print task: iters=%lu, j=%lu\r\n", iters, j);

		iters ++ ;

	}

}


/**
 * This is a function used by taskFib***()
 *
 */
int fibonacci(int n){
	if (n == 0) return 0;
	else if (n == 1) return 1;
	else{
		return fibonacci(n-1) + fibonacci(n-2);
	}
}

void taskFibStatic(void * parameter){

	unsigned long iters = 0;

	unsigned long delay = 10000;

	int fib_n = *(int *)parameter;

	for (;;){

		unsigned int i = 0;
		unsigned long j;
		for (;i<delay; i++){
			j=i*i + iters; // do something, for the delay
		}

		int res = fibonacci(fib_n);

		printf("FibStatic: iters=%ld, j=%ld, fibonacci(%d)=%d\r\n", iters, j, fib_n, res);

		iters ++ ;

	}
}


void taskFibDynamic(void * parameter){

	unsigned long iters = 0;

	unsigned long delay = 10000;

	int fib_n = *(int *)parameter;

	for (;;){

		unsigned int i = 0;
		unsigned long j;
		for (;i<delay; i++){
			j=i*i + iters; // do something, for the delay
		}

		int res = fibonacci(fib_n);

		printf("FibDynamic: iters=%ld, j=%ld, fibonacci(%d)=%d\r\n", iters, j, fib_n, res);

		iters ++ ;

	}
}
