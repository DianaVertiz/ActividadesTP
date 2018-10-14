/*
 * registro.c
 *
 *  Created on: 14 sep. 2018
 *      Author: root
 */

#include "registro.h"
#include "chip.h"

void init_interrupciones()
{
	Chip_PININT_Init (LPC_GPIO_PIN_INT);
	Chip_SCU_GPIOIntPinSel (TEC1_IRQ, GPIO_PORT_KEY1, GPIO_PIN_KEY1);
	Chip_SCU_GPIOIntPinSel (TEC2_IRQ, GPIO_PORT_KEY2, GPIO_PIN_KEY2);
	Chip_SCU_GPIOIntPinSel (TEC4_IRQ, GPIO_PORT_KEY4, GPIO_PIN_KEY4);

	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	NVIC_ClearPendingIRQ (PIN_INT1_IRQn);/*PIN_INT1_IRQn es la máscara de interrupción del NVIC*/
	NVIC_ClearPendingIRQ (PIN_INT2_IRQn);
	NVIC_ClearPendingIRQ (PIN_INT4_IRQn);

	//NVIC_DisableIRQ (PIN_INT1_IRQn);/*empieza deshabilitada*/
	NVIC_EnableIRQ (PIN_INT2_IRQn);
	NVIC_EnableIRQ (PIN_INT4_IRQn);

}

void configurar_USART2()
{
	Chip_UART_Init (LPC_USART2);
	Chip_UART_ConfigData ( LPC_USART2 ,UART_LCR_WLEN8 | UART_LCR_SBS_1BIT |UART_LCR_PARITY_DIS);
	Chip_UART_SetBaud ( LPC_USART2 , 115200);
	Chip_UART_TXEnable ( LPC_USART2 );
}


void configurar_SysTick(void)
{
	SysTick_Config ( SystemCoreClock / 100); /*cada 10 ms*/
}
