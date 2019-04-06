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
			

int main(void)
{

	Console_UART_Init();

	mpuTest(); // a simple test for mpu functionality

	for(;;);
}
