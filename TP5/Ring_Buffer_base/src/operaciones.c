/*
 * operaciones.c
 *
 *  Created on: 15 sep. 2018
 *      Author: root
 */
#include "operaciones.h"



const digitalIO leds[] =
{
		{PORT_PIN_RGB, PIN_RGB_RED, GPIO_PORT_RGB, GPIO_PIN_RED, SCU_MODE_INACT | SCU_MODE_FUNC4},
		{PORT_PIN_LED1, PIN_LED1, GPIO_PORT_LED1, GPIO_PIN_LED1, SCU_MODE_INACT | SCU_MODE_FUNC4},
		{PORT_PIN_LED2, PIN_LED2, GPIO_PORT_LED2, GPIO_PIN_LED2, SCU_MODE_INACT | SCU_MODE_FUNC4},
		{PORT_PIN_LED3, PIN_LED3, GPIO_PORT_LED3, GPIO_PIN_LED3, SCU_MODE_INACT | SCU_MODE_FUNC4},
		{PORT_PIN_RGB, PIN_RGB_GRN, GPIO_PORT_RGB, GPIO_PIN_GRN, SCU_MODE_INACT | SCU_MODE_FUNC4},
		{PORT_PIN_RGB, PIN_RGB_BLU, GPIO_PORT_RGB, GPIO_PIN_BLU, SCU_MODE_INACT | SCU_MODE_FUNC4}
};

const digitalIO keys[] =
{
		{PORT_PIN_KEY1, PIN_KEY1, GPIO_PORT_KEY1, GPIO_PIN_KEY1, MD_EZI|MD_ZI, FUNC0},
		{PORT_PIN_KEY2, PIN_KEY2, GPIO_PORT_KEY2, GPIO_PIN_KEY2, MD_EZI|MD_ZI, FUNC0},
		{PORT_PIN_KEY3, PIN_KEY3, GPIO_PORT_KEY3, GPIO_PIN_KEY3, MD_EZI|MD_ZI, FUNC0},
		{PORT_PIN_KEY4, PIN_KEY4, GPIO_PORT_KEY4, GPIO_PIN_KEY4, MD_EZI|MD_ZI, FUNC0},
};

void inicializar_sistema()
{
	Chip_SetupXtalClocking();
	SystemCoreClockUpdate();
	Chip_GPIO_Init(LPC_GPIO_PORT);
	fpuInit();

}

void inicializar_leds()
{
	uint8_t i;

	for(i=0; i<sizeof(leds)/ sizeof(digitalIO); i++)
	{
		Chip_SCU_PinMuxSet (leds[i].hwPort , leds[i].hwPin , leds[i].modo);
		Chip_GPIO_SetPinDIROutput (LPC_GPIO_PORT, leds[i].gpioPort, leds[i].gpioPin);
		Chip_GPIO_SetPortOutLow (LPC_GPIO_PORT , leds[i].gpioPort , leds[i].gpioPin );

	}
}

void inicializar_teclado()
{
	uint8_t i;

	for(i=0; i<sizeof(keys)/ sizeof(digitalIO); i++)
	{
		Chip_SCU_PinMuxSet (keys[i].hwPort , keys[i].hwPin , keys[i].modo);
		Chip_GPIO_SetPinDIRInput (LPC_GPIO_PORT, keys[i].gpioPort, keys[i].gpioPin);
	}
}


void inicializar_USART(void)
{

	Chip_UART_Init(LPC_USART2);
	Chip_UART_SetBaud(LPC_USART2, 115200);
	Chip_UART_ConfigData(LPC_USART2, UART_LCR_WLEN8 | UART_LCR_SBS_1BIT | UART_LCR_PARITY_DIS);
	Chip_UART_TXEnable(LPC_USART2);
	Chip_UART_SetupFIFOS(LPC_USART2, (UART_FCR_FIFO_EN | UART_FCR_RX_RS | UART_FCR_TX_RS | UART_FCR_TRG_LEV3));
	Chip_UART_IntEnable(LPC_USART2, (UART_IER_RBRINT | UART_IER_RLSINT | UART_IER_THREINT));
	//Chip_UART_SetupFIFOS(LPC_USART2, (UART_FCR_FIFO_EN | UART_FCR_TRG_LEV2));

	RingBuffer_Init(&rxRing, rxBuff, 1, BUFFSize);
	RingBuffer_Init(&txRing, txBuff, 1, BUFFSize);
	RingBuffer_Flush(&rxRing);
	RingBuffer_Flush(&txRing);
	NVIC_EnableIRQ(USART2_IRQn); /*máscara en el cmsis_43xx.h*/

	Chip_SCU_PinMux(7, 1, MD_PDN, FUNC6);
	Chip_SCU_PinMux(7, 2, MD_PLN|MD_EZI|MD_ZI, FUNC6); /*pg 373 hoja de datos*/

}

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

void displayCounter(uint8_t v)
{
	setLedFromMsk((v & 0x0F )<<2);

}

void putChr(char* ch)
{
	Chip_UART_SendRB (LPC_USART2, &txRing, &ch, 1);
}

void print(void *txt)
{
	/*uint8_t transmited = 0;
	uint8_t toInsert;
	uint8_t freeSpc;
	uint8_t dataLen = strlen(txt);
	  while(transmited < dataLen)
	  {
	    freeSpc = RingBuffer_GetFree(&txRing);
	    while(!freeSpc)
	      freeSpc = RingBuffer_GetFree(&txRing);
	    toInsert = ((freeSpc > dataLen) ? dataLen : freeSpc);
	    Chip_UART_SendRB(LPC_USART2, &txRing, &txt[transmited], toInsert);
	    transmited += toInsert;
	  }

	 return transmited;*/

	Chip_UART_SendRB (LPC_USART2, &txRing, txt, strlen(txt));
}

void USARTSendInt(uint8_t entero)
{
	itoa(entero, valor, 10);
	uint8_t k = 0;
	while(valor[k]!= '\0')
	{
		putChr(valor[k]);
		k++;
	}
}

uint8_t serialRead(uint8_t *data, uint8_t maxData)
{
  return Chip_UART_ReadRB(LPC_USART2, &rxRing, data, maxData);
}

/*
char* my_itoa(uint8_t entero, char* buffer, uint8_t base)
{
	uint8_t i=0;
	uint8_t num = entero;
	if(base < 2 || base >32)
	{
		return buffer;
	}
	do
	{
		uint8_t res = num%base;
		if(res >= 10)
		{
			buffer[i++] = 65 + (res-10);
		}
		else
		{
			buffer[i++] = 48 + res;
		}

		num = num/base;
	}
	while(num);

	buffer[i]='\0';

}*/

/**
 * C++ version 0.4 char* style "itoa":
 * Written by Lukás Chmela
 * Released under GPLv3.

 */
char* itoa(int value, char* result, int base) {
   // check that the base if valid
   if (base < 2 || base > 36) { *result = '\0'; return result; }

   char* ptr = result, *ptr1 = result, tmp_char;
   int tmp_value;

   do {
      tmp_value = value;
      value /= base;
      *ptr++ = "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [35 + (tmp_value - value * base)];
   } while ( value );

   // Apply negative sign
   if (tmp_value < 0) *ptr++ = '-';
   *ptr-- = '\0';
   while(ptr1 < ptr) {
      tmp_char = *ptr;
      *ptr--= *ptr1;
      *ptr1++ = tmp_char;
   }
   return result;
}



void configurar_SysTick(void)
{
	StopWatch_Init();
	SysTick_Config ( SystemCoreClock / 100); /*cada 10 ms*/

}

