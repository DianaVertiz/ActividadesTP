#include <stdint.h>
#include "sysUtils.h"
#include "chip.h"
#include "microrl.h"

uint8_t flag_entrada=0;

uint8_t * dato = 0;

microrl_t rl;

const char msg1[] = "Ejemplo usando ring buffers\r\n";

void GPIO1_IRQHandler(void)
{
	/*limpiar el estado de la interrupción*/
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	delayMs(300);

}


void UART2_IRQHandler(void)
{
	Chip_UART_IRQRBHandler(LPC_USART2, &rxRing, &txRing);
	/*uint8_t dat = serialReadRB(&dato, 1);

	if(dat > 0)
	{
		microrl_insert_char(&rl, dato);
		flag_entrada=1;
	}*/

}


int main (void)
{
	inicializar_sistema();
	inicializar_leds();
	inicializar_teclado();
	init_interrupciones();
	inicializar_USART();
	configurar_SysTick();
	//sysInit();

	uint8_t bytes =0;
	printRB (msg1);

	while (1)
	{


		__WFI();
		/*if(flag_entrada)
		{
			putChrRB((char *)dato);
			flag_entrada = 0;
		}*/

	}


	return 0;
}

