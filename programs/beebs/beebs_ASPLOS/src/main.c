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
#include "stm32l4xx_ll_system.h"
#include "stm32l475e_iot01.h"
#include "support.h"
#include "main.h"
#include "mpu.h"
#include "cycle_counter.h"
/* The printf's may be removed to isolate just the math calculations */
// From main.c in FreeRTOS Repository
static UART_HandleTypeDef xConsoleUart;



/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the CPU, AHB and APB busses clocks
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 40;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(char *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif


/**
 * @brief UART console initialization function.
 */
static void Console_UART_Init( void )
{
    xConsoleUart.Instance = USART1;
    xConsoleUart.Init.BaudRate = 115200;
    xConsoleUart.Init.WordLength = UART_WORDLENGTH_8B;
    xConsoleUart.Init.StopBits = UART_STOPBITS_1;
    xConsoleUart.Init.Parity = UART_PARITY_NONE;
    xConsoleUart.Init.Mode = UART_MODE_TX_RX;
    xConsoleUart.Init.HwFlowCtl = UART_HWCONTROL_NONE;
    xConsoleUart.Init.OverSampling = UART_OVERSAMPLING_16;
    xConsoleUart.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
    xConsoleUart.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
    BSP_COM_Init( 0, &xConsoleUart );
}
void vMainUARTPrintString( char * pcString )
{
    const uint32_t ulTimeout = 3000UL;

    HAL_UART_Transmit( &xConsoleUart,
                       ( uint8_t * ) pcString,
                       strlen( pcString ),
                       ulTimeout );
}

// From stm32cubel4's UART_printf example
/**
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */

/* Private function prototypes -----------------------------------------------*/
#ifdef __GNUC__
/* With GCC, small printf (option LD Linker->Libraries->Small printf
   set to 'Yes') calls __io_putchar() */
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */
PUTCHAR_PROTOTYPE
{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the USART1 and Loop until the end of transmission */
  HAL_UART_Transmit(&xConsoleUart, (uint8_t *)&ch, 1, 0xFFFF);

  return ch;
}

// Following code from BEEBS's main.c
#pragma weak main
#pragma weak initialise_benchmark
#pragma weak verify_benchmark

int initialise_benchmark()
{
    return 0;
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
#if 0
	LL_FLASH_EnablePrefetch();
	LL_FLASH_DisableInstCache();
	LL_FLASH_DisableDataCache();
	LL_FLASH_EnableInstCacheReset();
	LL_FLASH_EnableDataCacheReset();
#endif

	initMPU();
	SystemClock_Config();
	Console_UART_Init();

	printf("Start to run nettle-arcfour.");
	printf("\r\n");

#if 0
	uint32_t useless_time = HAL_GetTick();
	for (int i = 0; i < 2000000; i++){
		uint32_t temp = HAL_GetTick();
		useless_time = (temp > useless_time) ? temp : useless_time;
	}
	printf("Useless time: %u", useless_time);
	printf("\r\n");
#endif

	HAL_Init();

#if 0
	flush();
#endif

#if 0
	// Testing CFI checks
	unsigned int (*func)();
	unsigned int val;
	if (t_start == 0){
		func = &HAL_GetDEVID;
	} else {
		func = &HAL_GetHalVersion;
	}
	flush();
	val = (*func)();
#endif

#if 0
	KIN1_InitCycleCounter(); /* enable DWT hardware */
	KIN1_ResetCycleCounter(); /* reset cycle counter */
	KIN1_EnableCycleCounter(); /* start counting */
#else
	uint32_t t_start, t_end, t;
	t_start = HAL_GetTick();
#endif
	int result = 0;
	for (int i = 0; i < REPEAT_FACTOR; i++) {
		initialise_benchmark();
		asm volatile ("" :: "r" (result) : "memory");
		result = benchmark();
		asm volatile ("" :: "r" (result) : "memory");
	}
#if 0
	t = KIN1_GetCycleCounter();
	t =  t / 4000;
#else
	t_end = HAL_GetTick();
	t = t_end - t_start;
#endif

	switch (verify_benchmark(result)) {
	case 1:
		printf("Finished successfully: in %u ms.", t);
		break;
	case -1:
		printf("Finished in %u ms, but no verify_benchmark() run.", t);
		break;
	default:
		printf("Finished in %u ms, but verify_benchmark() found errors.", t);
		break;
	}
	printf("\r\n\n");

	return 0;
}

int toggleBP(int toggle){
	if (toggle){
		__asm volatile ( " mrs r0, control 	\n" \
						 " orr r0, #262144	\n" \
						 " msr control, r0	\n"	\
						 :::"r0", "memory" );
	} else {
		__asm volatile ( " mrs r0, control 	   \n" \
						 " and r0, #4294705151 \n" \
						 " msr control, r0	   \n"	\
						 :::"r0", "memory" );
	}

}

int getBP(){
	__asm volatile ( " mrs r0, control 	\n" \
					 " and r0, #262144	\n" \
					 :::"r0", "memory" );
}

void flush(){
	__asm volatile ( " isb #15	 	\n" );
}

