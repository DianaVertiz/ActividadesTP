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

sc_integer contadorIface_getKeyPressed(const Contador* handle)
{
	return keyPressed;
}

void contadorIface_updateOutput(const Contador* handle, const sc_integer cuenta)
{
	uint8_t mask = (0x0F & cuentas)<<2;
	itoa(cuenta,str,10);
	Chip_UART_SendBlocking ( LPC_USART2 ,strcat(str,"\n\r"), sizeof(str));
	setLedFromMask(mask);
}
void GPIO0_IRQHandler(void)
{
	keyPressed = 1;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(0));
}

void GPIO1_IRQHandler(void)
{
	keyPressed = 2;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(1));
}
void GPIO3_IRQHandler(void)
{
	keyPressed = 4;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(3));
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
  /*inicializar_sistema();
  inicializar_leds();
  inicializar_teclado();
  inicializar_USART();
  init_interrupciones();
  configurar_SysTick();*/
  Contador contador;
  sysInit();
  contador_init(&contador);
  contador_enter(&contador);


  while (1)
  {
	__WFI();

	if(getKeyPressed())
	{
		contadorIface_raise_keyPress(&contador,getKeyPressed());
	}

	contador_runCycle(&contador);
	if (getKeyPressed())
		rstKeyPressed();
  }
  return 0;
}
