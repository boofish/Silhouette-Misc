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
#include "mpu.h"
#include "support.h"


// Following code from BEEBS's main.c
#pragma weak main
#pragma weak initialise_benchmark
#pragma weak verify_benchmark

int initialise_benchmark()
{
    return 0;
}

int benchmark(){
	return initialise_benchmark();
}

// each benchmark will need to override this function
// otherwise this function returns -1 to indicate no verification done
int verify_benchmark(int unused)
{
    return -1;
}
// End of code from BEEBS's main.c

int main(void)
{

	Console_UART_Init();

	// Record running time.
	HAL_Init();
	initMPU();
	printf("SS ");

	uint32_t t_start, t_end, t;
	int i, num_of_err;
	t_start = HAL_GetTick();
	for (i = 0; i < 10000000; i++){

		benchmark();
	}
	t_end = HAL_GetTick();
	t = t_end - t_start;
	int result = verify_benchmark(num_of_err);
	if (result == 1){
		printf("Finished successfully: in %u ms.\r\n\n", t);
	} else if (result == -1) {
		printf("Finished %d iterations in %u ms, but no verify_benchmark() run.\r\n\n", i, t);
	} else{
		printf("Finished in %u ms, but verify_benchmark() found errors.\r\n\n", t);
	}
	return 0;
}
