#include "chip.h"
#include <stdio.h>
#include <stdlib.h>
#include <stopwatch.h>
#include "hardware.h"
#include "operaciones.h"
#include "pila.h"

#define NUM 12345


int devolver_digitos(int numero)
{
	int digitos = 0;

	while(numero>=1)
	{
		digitos++;
		numero/=10;
	}

	return digitos;
}

void showInt(uint32_t numero)
{
	uint8_t dig = devolver_digitos(numero);
	uint8_t pila[dig];
	uint8_t aux;

	pilaData stack1 =
	{
			.pos = 0,
			.dataSize = 1,
			.dataCount = dig,
			.buf = pila
	};

	pilaInit (&stack1, stack1.buf, stack1.dataCount, stack1.dataSize);

	for(uint8_t i= 0; i< dig; i++)
	{
		aux = numero%10;
		pilaPush (&stack1,&aux);
		numero/=10;
	}

	for(uint8_t j = 0; j <dig; j++ )
	{
		pilaPop(&stack1,&aux);
		putChr(aux + 48);

	}

	putChr('\n\r');
}


void UART2_IRQHandler(void)
{

	Chip_UART_IRQRBHandler(LPC_USART2, &rxRing, &txRing);
}


int main ( int argc , char * argv [])
{
	uint32_t aux = 0;
	inicializar_sistema();
	inicializar_leds();
	inicializar_USART();

	showInt(NUM);

	while (1)
	{
		//__WFI();
	}


	return 0;
}

