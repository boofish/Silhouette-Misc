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
#include "support.h"
#include "mpu.h"
#include "cycle_counter.h"
			
/* The printf's may be removed to isolate just the math calculations */

// From main.c in FreeRTOS Repository
static UART_HandleTypeDef xConsoleUart;

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

    // Initialize the printer.
	Console_UART_Init();

    // setup memory permissions
    initMPU();
    
	initialise_benchmark();
    uint32_t t_start, t_end, t;
    uint32_t t2; /* to hold cycle counter */
    
    // Record running time.
    printf("Start to run bubblesort.");
    printf("\r\n");
    int num_of_err;
	HAL_Init();
	
	KIN1_InitCycleCounter(); /* enable DWT hardware */
	KIN1_ResetCycleCounter(); /* reset cycle counter */
	KIN1_EnableCycleCounter(); /* start counting */
	
	t_start = HAL_GetTick();
    for (int i = 0; i < REPEAT_FACTOR; i++) {
        initialise_benchmark();
        num_of_err = benchmark();
    }
	t_end = HAL_GetTick();
    t = t_end - t_start;
	t2 = KIN1_GetCycleCounter(); /* get cycle counter */

#if 0
	printf("Start running benchmark. Time: %u\r\n", t0);
#endif 

	int result = verify_benchmark(num_of_err);
	
	printf ("Cycle count: %u\r\n", t2);
	
	if (result == 1){
		printf("Finished successfully: in %u ms.\r\n\n", t);
	} else if (result == -1) {
        printf("Finished in %u ms, but no verify_benchmark() run.\r\n\n", t);
    } else{
		printf("Finished in %u ms, but verify_benchmark() found errors.\r\n\n", t);
	}

	return 0;
}

