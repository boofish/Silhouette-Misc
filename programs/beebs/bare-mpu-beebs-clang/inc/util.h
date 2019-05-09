/**
 * Currently this file serves to help print outputs in minicom.
 *
 * */

#include "stm32l4xx.h"
#include "stm32l475e_iot01.h"

//
// to print in minicom
/* Private variables ---------------------------------------------------------*/
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
    BSP_COM_Init( COM1, &xConsoleUart );
}

/*-----------------------------------------------------------*/
void vMainUARTPrintString( char * pcString )
{
    const uint32_t ulTimeout = 3000UL;

    HAL_UART_Transmit( &xConsoleUart,
                       ( uint8_t * ) pcString,
                       strlen( pcString ),
                       ulTimeout );
}
/*-----------------------------------------------------------*/

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
