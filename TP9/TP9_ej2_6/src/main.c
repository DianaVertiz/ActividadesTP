#include "hardware.h"
#include "Contador.h"
#include "comandos.h"
#include "sysUtils.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <chip.h>

uint8_t cuentas = 0;
uint8_t habilitado = 0;
uint8_t flag_refresco = 0;
char str[100];
static uint8_t keyPressed = 0;

void contadorIface_updateOutput(const Contador* handle, const sc_integer cuenta)
{
	itoa(cuenta,str,10);
	Chip_UART_SendBlocking ( LPC_USART2 ,strcat(str,"\n\r"), sizeof(str));
}
void GPIO0_IRQHandler(void)
{
	keyPressed = 1;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(TEC1_IRQ));
}

void GPIO1_IRQHandler(void)
{
	keyPressed = 2;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(TEC2_IRQ));
}
void GPIO3_IRQHandler(void)
{
	keyPressed = 4;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(TEC4_IRQ));
}

uint8_t getKeyPressed(void)
{
	return keyPressed;
}

void rstKeyPressed(void)
{
	keyPressed = 0;
}

int main(void)
{
  uint8_t aux;
  inicializar_sistema();
  inicializar_leds();
  inicializar_teclado();
  inicializar_USART();
  init_interrupciones();
  configurar_SysTick();
  Contador contador;
  contador_init(&contador);
  contador_enter(&contador);


  while (1)
  {
	__WFI();

	aux = getKeyPressed();
	switch(aux)
	{
		case 1:
			contadorIface_raise_keyPress1(&contador);
			break;
		case 2:
			contadorIface_raise_keyPress2(&contador);
			break;
		case 4:
			contadorIface_raise_keyPress4(&contador);
			break;
	}
	contador_runCycle(&contador);
	rstKeyPressed();
  }
  return 0;
}
