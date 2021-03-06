/*
 * secuencia.c
 *
 *  Created on: 13 oct. 2018
 *      Author: root
 */
#include "secuencia.h"
#include <lpc_types.h>
#include "hardware.h"
#include <stdint.h>
#include <string.h>
#include "sysUtils.h"

extern const digitalIO leds[];

static uint8_t iSecNro = 0;
static uint8_t iCntRep = 0;
static uint16_t iDelayMs = 1000;
static uint8_t iActPos = 0;

const uint8_t ledSec1[] = { 8, 1, 2, 3, 4, 2, 1, 8, 5};
const uint8_t ledSec2[] = { 5, 9, 4, 5, 1, 2};

const uint8_t * const secuencias [] = {ledSec1, ledSec2};


void secuencia(uint8_t secNro, uint8_t cntRep, uint16_t delayMs)
{

	iSecNro = secNro;
	iCntRep = cntRep; /*repeticiones de cada secuencia*/
	iDelayMs = delayMs;
	configurar_SysTick();

	/*etapas que tiene cada secuencia, estas se repiten el número de cntRep veces*/
	uint8_t etapasSec = 0;
	etapasSec = secuencias[iSecNro - 1][iActPos];

	uint8_t mask =  0;
	iActPos++;
	/*leo la mascara de cada secuencia*/
	mask=secuencias[iSecNro - 1][iActPos];

	while(iCntRep != 0)
	{
		for(uint8_t i = 0; i<6; i++)
		{	/***********************************************/
			/*preguntar como hacer extern el tipo digitalIO*/
			/**********************************************/
			Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[i].gpioPort, leds[i].gpioPin);
		}

		while(!finCuentaMs)
		{
			if(mask & (led6/4))
			{
				Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[0].gpioPort,leds[0].gpioPin, TRUE);
			}
			if(mask & (led1/4))
			{
				Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[1].gpioPort,leds[1].gpioPin, TRUE);
			}
			if(mask & (led2/4))
			{
				Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[2].gpioPort,leds[2].gpioPin, TRUE);
			}
			if(mask & (led3/4))
			{
				Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[3].gpioPort,leds[3].gpioPin, TRUE);
			}
		}

		if(finCuentaMs == 1)
		{
			/*cuando el systick termina de contar delayMs */

			iActPos++;
			if(iActPos > etapasSec)
			{	/*se terminan las etapas de la secuencia hay que repetir hasta que cntRep = 0*/
				iActPos = 1;
				iCntRep--;
			}
			mask=secuencias[iSecNro - 1][iActPos];
			finCuentaMs = 0;
		}

	}

	disable_SysTick();

	for(uint8_t i = 0; i<6; i++)
	{
		Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[i].gpioPort, leds[i].gpioPin);
	}

	iActPos = 0;

}



