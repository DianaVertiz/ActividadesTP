/*! \ mainpage Una p´a gina principal
*
* \ section genDesc Descripci ´on general
*
* Lorem ipsum dolor sit amet , consectetur adipiscing elit . Sed vel augue ut tortor
* Nam dolor metus , tincidunt eget consequat sit amet , ultricies consectetur dolor .
* Praesent ultrices orci at risus auctor placerat . Sed eget ultricies tortor .
*
* \ subsection subSec01 Una subsecci ´on
* Phasellus at sapien sollicitudin , posuere arcu nec , blandit ante .
* egestas ex , at consequat quam fringilla sit amet . Vestibulum ante
* ultrices posuere cubilia Curae ; Nulla vestibulum felis in ullamcorper
* rhoncus fringilla .
*
* \ section doc Documentaci ´on
* Quisque laoreet tempor libero , at varius velit scelerisque a. Praesent
* ultrices orci at risus auctor placerat .
* Sed eget ultricies tortor . Maecenas sed neque id justo aliquet ornare
* vel , placerat quis felis . Nunc nec interdum mauris .
*
*/

#include "hardware.h"
#include "utils.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "registro.h"

uint8_t cuentas = 0;
uint8_t habilitado = 0;
uint8_t flag_refresco = 0;
char str[100];

void GPIO1_IRQHandler(void)
{
	/*limpiar el estado de la interrupción*/
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	delayMs(600);
	cuentas ++;
	flag_refresco = 1;
}

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

void GPIO4_IRQHandler(void)
{
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));
	delayMs(600);
	cuentas = 0;
	flag_refresco = 1;
}

void SysTick_Handler (void)
{
	uint8_t mask = (0x0F & cuentas)<<2;
	if(flag_refresco)
	{
		itoa(cuentas,str,10);
		Chip_UART_SendBlocking ( LPC_USART2 ,strcat(str,"\n\r"), sizeof(str));
		setLedFromMsk(mask);

		flag_refresco = 0;
	}
}


int main(void)
{
  systemInit();
  init_interrupciones();
  configurar_USART2();
  configurar_SysTick();

  while (1)
  {

	__WFI();

  }


  return 0;
}
