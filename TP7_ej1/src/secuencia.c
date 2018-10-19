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
extern uint8_t firstTime;
const uint8_t ledSec1[] = { 8, 1, 2, 3, 4, 2, 1, 8, 5};
const uint8_t ledSec2[] = { 5, 9, 4, 5, 1, 2};

const uint8_t * const secuencias [] = {ledSec1, ledSec2};


void secuencia(uint8_t secNro, uint8_t cntRep, uint16_t delayMs)
{

	//static uint8_t iSecNro = 0;
	static uint8_t iCntRep = 0; /*repeticiones de cada secuencia*/
	static uint16_t iDelayMs = 0;
	static uint8_t iActPos = 0;
	static uint8_t mask =  0;
	static uint8_t etapasSec = 0;
	if (firstTime)
	{
		iCntRep = cntRep;
		firstTime = 0;
	}

	/*etapas que tiene cada secuencia, estas se repiten el número de cntRep veces*/
	if(!iActPos)
	{
		etapasSec = secuencias[secNro - 1][iActPos];
		iActPos++;
	}

	/*leo la mascara de cada secuencia*/
	mask=secuencias[secNro - 1][iActPos];

	if(iCntRep)
	{
		if(iDelayMs == delayMs)
		{
			if(iActPos <= etapasSec)
			{
				for(uint8_t i = 0; i<6; i++)
				{
					Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[i].gpioPort, leds[i].gpioPin);
				}

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
			else
			{
				iActPos = 0;
				iCntRep--;
			}

			iActPos++;
			iDelayMs = 0;
		}
		else
		{
			iDelayMs++;
		}

	}

	else
	{
		for(uint8_t i = 0; i<6; i++)
		{
			Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[i].gpioPort, leds[i].gpioPin);
		}

		iActPos = 0;
		// deshabilitar systick
		disable_SysTick();
	}

}



