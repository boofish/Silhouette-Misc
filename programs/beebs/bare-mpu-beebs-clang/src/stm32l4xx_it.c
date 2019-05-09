/**
  ******************************************************************************
  * @file    stm32l4xx_it.c
  * @author  Ac6
  * @version V1.0
  * @date    02-Feb-2015
  * @brief   Default Interrupt Service Routines.
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "stm32l4xx_hal.h"
#include "stm32l4xx.h"
#ifdef USE_RTOS_SYSTICK
#include <cmsis_os.h>
#endif
#include "stm32l4xx_it.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            	  	    Processor Exceptions Handlers                         */
/******************************************************************************/


/*
 * C portion of the SVC handler.  The SVC handler is split between an asm entry
 * and a C wrapper for simplicity of coding and maintenance.
 */

static void prvSVCHandler(	uint32_t *pulParam ) __attribute__(( noinline ));

void SVC_Handler( void )
{
	/* Assumes psp was in use. */
	__asm volatile
	(
			"	tst lr, #4						\n"
			"	ite eq							\n"
			"	mrseq r0, msp					\n"
			"	mrsne r0, psp					\n"
			"	b %0							\n"
			::"i"(prvSVCHandler):"r0", "memory"
	);
}
/*-----------------------------------------------------------*/

static void prvSVCHandler(	uint32_t *pulParam )
{
uint8_t ucSVCNumber;

	/* The stack contains: r0, r1, r2, r3, r12, r14, the return address and
	xPSR.  The first argument (r0) is pulParam[ 0 ]. */
	ucSVCNumber =  2;//( ( uint8_t * ) pulParam[ 6 ] )[ -2 ];
	switch( ucSVCNumber )
	{
//		case portSVC_START_SCHEDULER	:	portNVIC_SYSPRI1_REG |= portNVIC_SVC_PRI;
//											prvRestoreContextOfFirstTask();
//											break;
//
//		case portSVC_YIELD				:	portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
//											/* Barriers are normally not required
//											but do ensure the code is completely
//											within the specified behaviour for the
//											architecture. */
//											__asm volatile( "dsb" ::: "memory" );
//											__asm volatile( "isb" );
//
//											break;

		case 2	:	__asm volatile
											(
												"	mrs r1, control		\n" /* Obtain current control value. */
												"	bic r1, #1			\n" /* Set privilege bit. */
												"	msr control, r1		\n" /* Write back new control value. */
												::: "r1", "memory"
											);
											break;

		default							:	/* Unknown SVC call. */
											break;
	}
}

/**
* @brief This function handles Memory management fault.
*/
void MemManage_Handler(void)
{
  while (1)
  {
  }
}

/**
  * @brief  This function handles SysTick Handler, but only if no RTOS defines it.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
	HAL_IncTick();
	HAL_SYSTICK_IRQHandler();
#ifdef USE_RTOS_SYSTICK
	osSystickHandler();
#endif
}
