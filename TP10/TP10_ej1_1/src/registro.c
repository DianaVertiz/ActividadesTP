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
	/*inicializa las interrupciones de los pines GPIO
	 * disponibles para interrupción*/
	Chip_PININT_Init (LPC_GPIO_PIN_INT);

	/*se selecciona los pines a utilizar para cada interrupción
	 * Chip_SCU_GPIOIntPinSel(uint8_t PortSel, uint8_t PortNum, uint8_t PinNum)
	 * PortSel selecciona el puerto como fuente para la interrupción del pin seleccionado
	 * PortNum Puerto del módulo GPIO del pin seleccionado 0 to 7
	 * PinNum  pin seleccionado */
	Chip_SCU_GPIOIntPinSel (TEC1_IRQ, GPIO_PORT_KEY1, GPIO_PIN_KEY1);
	Chip_SCU_GPIOIntPinSel (TEC2_IRQ, GPIO_PORT_KEY2, GPIO_PIN_KEY2);
	Chip_SCU_GPIOIntPinSel (TEC4_IRQ, GPIO_PORT_KEY4, GPIO_PIN_KEY4);

	/*limpia el estado de la interrupción */
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	/*limpia el bit de la interrupción externa*/
	NVIC_ClearPendingIRQ (PIN_INT1_IRQn);/*PIN_INT1_IRQn es la máscara de interrupción del NVIC*/
	NVIC_ClearPendingIRQ (PIN_INT2_IRQn);
	NVIC_ClearPendingIRQ (PIN_INT4_IRQn);

	/*Each pin interrupt must be enabled in the NVIC.*/
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
