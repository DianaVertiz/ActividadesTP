#include "chip.h"
#include <stdio.h>
#include <stdlib.h>
#include <stopwatch.h>
#include "morseCode.h"
#include "hardware.h"
#include "operaciones.h"

#define tamanio 250

char entrada[250];
uint8_t flag_entrada=0;
unsigned char inBuff[tamanio];
uint8_t * dat;

void GPIO1_IRQHandler(void)
{
	/*limpiar el estado de la interrupción*/
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	delayMs(300);

}

void UART2_IRQHandler(void)
{

	Chip_UART_IRQRBHandler(LPC_USART2, &rxRing, &txRing);
	/*ocurrió interrupción, cargar toda la frase hasta que se pulse enter*/
	flag_entrada=1;
}


int main ( int argc , char * argv [])
{
	uint32_t aux = 0;
	inicializar_sistema();
	inicializar_leds();
	inicializar_teclado();
	init_interrupciones();
	inicializar_USART();
	//configurar_SysTick();

	//representacion_caracter(codigo_alfabeto[0]);
	uint8_t i = 0;
	uint8_t bytes =0;
	while (1)
	{
		__WFI();
		if(flag_entrada)
		{
			bytes = serialRead(&dat, 1);
			if(bytes > 0)
			{
				*(inBuff + i) = dat;
				i++;
				if(key == 13)
				{
				  print("\n\r");
				}
				else
				{
				  print((const char*) &dat);
				}

		    }

			if( (i >=250) || (dat == '\r') )
			{
				i = 0;
				flag_entrada=0;
				conversion_morse(inBuff);
			}
		}

	}


	return 0;
}
