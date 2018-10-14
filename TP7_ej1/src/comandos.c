/*
 * comandos.c
 *
 *  Created on: 13 oct. 2018
 *      Author: root
 */

#include "comandos.h"
#include "secuencia.h"
#include <lpc_types.h>
#include "hardware.h"
#include <stdint.h>
#include <string.h>
#include "sysUtils.h"

const cmdItem menu[] =
{
		{ "help", help },
		{ "led1On", led1On },
		{ "led2On", led2On },
		{ "led3On", led3On },
		{ "led4On", led4On },

		{ "led1Off", led1Off },
		{ "led2Off", led2Off },
		{ "led3Off", led3Off },
		{ "led4Off", led4Off },

		{"secuencia_1", sec1 },
		{"secuencia_2", sec2 },
		{"cls", cls}
};

const char* printMenu[] =
{
		"help - visualizar menú de ayuda\n\r",
		"led1On - Encender led1\n\r",
		"led2On - Encender led2\n\r",
		"led3On - Encender led3\n\r",
		"led4On - Encender led1\n\r",
		"led1Off - Apagar led1\n\r",
		"led2Off - Apagar led2\n\r",
		"led3Off - Apagar led3\n\r",
		"led4Off - Apagar led4\n\r",
};


extern const digitalIO leds[];

void help(int argc, const char * const * argv)
{
	print("\r");
	for(uint8_t i=0; i<sizeof(printMenu)/sizeof(char); i++)
	{
		print(printMenu[i]);
	}
}

void sec1(int argc, const char * const * argv)
{
	uint8_t cRep;
	uint16_t delay;
	cRep = atoi(argv[1]);
	delay = atoi(argv[2]);
	//configurar_SysTick();
	SystemCoreClockUpdate();
	secuencia(1, cRep, delay);
	//disable_SysTick();
}

void sec2(int argc, const char * const * argv)
{
	uint8_t cRep;
	uint16_t delay;
	cRep = atoi(argv[1]);
	delay = atoi(argv[2]);
	secuencia(2, cRep, delay);

}

void led1On(int argc, const char * const * argv)
{

	Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[0].gpioPort,leds[0].gpioPin, TRUE);
}

void led2On(int aux, const char * const * argv)
{
	Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[1].gpioPort,leds[1].gpioPin, TRUE);
}

void led3On(int argc, const char * const * argv)
{
	Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[2].gpioPort,leds[2].gpioPin, TRUE);
}

void led4On(int argc, const char * const * argv)
{
	Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[3].gpioPort,leds[3].gpioPin, TRUE);
}

void led1Off(int argc, const char * const * argv)
{
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[0].gpioPort, leds[0].gpioPin);
}

void led2Off(int argc, const char * const * argv)
{
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[1].gpioPort, leds[1].gpioPin);
}

void led3Off(int argc, const char * const * argv)
{
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[2].gpioPort, leds[2].gpioPin);
}

void led4Off(int argc, const char * const * argv)
{
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[3].gpioPort, leds[3].gpioPin);
}


cmdItem *getMenuItems(void)
{
	return &menu[0];
}

uint8_t getMenuItemsCount(void)
{
	return (sizeof(menu)/sizeof(cmdItem));
}

void cls(int argc, const char * const * argv)
{
	print("\033[2J\033[;f");
}
