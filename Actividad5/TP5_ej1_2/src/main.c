#include "chip.h"
#include "hardware.h"
#include "operaciones.h"


volatile uint8_t habilitado = 0;
volatile uint8_t flag_refresco = 0;
volatile uint8_t cuentas = 0;


/**
 * Manejo de interrupciones asociadas a la tecla 1
 */
void GPIO1_IRQHandler(void)
{
	/*limpiar el estado de la interrupción*/
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	delayMs(600);
	cuentas ++;
	flag_refresco = 1;
}

/**
 * Manejo de interrupciones asociadas a la tecla 2
 */
void GPIO2_IRQHandler(void)
{
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	delayMs(600);
	if(habilitado)
	{
		NVIC_DisableIRQ(PIN_INT1_IRQn);

	}
	else
	{	/*importante el orden, la forma alternativa es deshabilitar el periférico
	 	 con el Chip_PININT_DisableIntLow*/
		Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
		NVIC_ClearPendingIRQ (PIN_INT1_IRQn);

		NVIC_EnableIRQ(PIN_INT1_IRQn);
	}

	habilitado = (habilitado + 1)%2;
}

/**
 * Manejo de interrupciones asociadas a la tecla 4
 */
void GPIO4_IRQHandler(void)
{
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));
	delayMs(600);
	cuentas = 0;
	flag_refresco = 1;
}


void SysTick_Handler (void)
{
	uint8_t mask = cuentas & 0x0F;
	if(flag_refresco)
	{
		/*itoa(cuentas,str,10);
		Chip_UART_SendBlocking ( LPC_USART2 ,strcat(str,"\n\r"), sizeof(str));*/

		USARTSendInt(cuentas);
		displayCounter(cuentas);
		flag_refresco = 0;
	}
}

int main(void)
{

 	inicializar_sistema();
	inicializar_leds();
	inicializar_teclado();
	init_interrupciones();
	inicializar_USART();
	configurar_SysTick();


  while (1)
  {
	  __WFI();
  }
  return 0;
}
