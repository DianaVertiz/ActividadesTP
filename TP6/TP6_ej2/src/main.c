#include "chip.h"
#include <stdio.h>
#include <stdlib.h>
#include <stopwatch.h>
#include "hardware.h"
#include "operaciones.h"
#include "pila.h"

//extern uint8_t * buff1 = &pila1;
//extern uint8_t * buff2 = &pila2;
uint32_t pila1[20];
uint32_t pila2[50];

/*pilaData stacks[] =
{
		{0,2,20,&pila1[0]},
		{0,4,50,&pila2[0]}
};*/

pilaData stack1 =
{
		.pos = 0,
		.dataSize = 4,
		.dataCount = 20,
		.buf = pila1
};

pilaData stack2 =
{
		.pos = 0,
		.dataSize = 4,
		.dataCount = 50,
		.buf = pila2
};


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
	//configurar_SysTick();
	pilaInit (&stack1, stack1.buf, stack1.dataCount, stack1.dataSize);
	pilaInit (&stack2, stack2.buf, stack2.dataCount, stack2.dataSize);

	for(uint8_t i=0; i<20; i++)
	{
		aux++;
		pilaPush (&stack1,&aux);
	}

	for(uint8_t j=0; j<20; j++)
		{
			pilaPop (&stack1,&aux);
			pilaPush (&stack2,&aux);
		}

	while (1)
	{


		//__WFI();

	}


	return 0;
}

