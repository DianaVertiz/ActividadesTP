/*
 * morseCode.c
 *
 *  Created on: 6 oct. 2018
 *      Author: root
 */
#include "morseCode.h"

const uint8_t A[] = {PUNTO, RAYA, NULL};
const uint8_t B[] = {RAYA, PUNTO, PUNTO, PUNTO, NULL};
const uint8_t C[] = {RAYA, PUNTO, RAYA, PUNTO, NULL};
const uint8_t D[] = {RAYA, PUNTO, PUNTO, NULL};
const uint8_t E[] = {PUNTO, NULL};
const uint8_t F[] = {PUNTO, PUNTO, RAYA, PUNTO, NULL};
const uint8_t G[] = {RAYA, RAYA, PUNTO, NULL};
const uint8_t H[] = {PUNTO, PUNTO, PUNTO, PUNTO, NULL};
const uint8_t I[] = {PUNTO, PUNTO, NULL};
const uint8_t J[] = {PUNTO, RAYA, RAYA, RAYA, NULL};
const uint8_t K[] = {RAYA, PUNTO, RAYA, NULL};
const uint8_t L[] = {PUNTO, RAYA, PUNTO, PUNTO, NULL};
const uint8_t M[] = {RAYA, RAYA, NULL};
const uint8_t N[] = {RAYA, PUNTO, NULL};
const uint8_t O[] = {RAYA, RAYA, RAYA, NULL};
const uint8_t P[] = {PUNTO, RAYA, RAYA, PUNTO, NULL};
const uint8_t Q[] = {RAYA, RAYA, PUNTO, RAYA, NULL};
const uint8_t R[] = {PUNTO, RAYA, PUNTO, NULL};
const uint8_t S[] = {PUNTO, PUNTO, PUNTO, NULL};
const uint8_t T[] = {RAYA, NULL};
const uint8_t U[] = {PUNTO, PUNTO, RAYA, NULL};
const uint8_t V[] = {PUNTO, PUNTO, PUNTO, RAYA, NULL};
const uint8_t W[] = {PUNTO, RAYA, RAYA, NULL};
const uint8_t X[] = {RAYA, PUNTO, PUNTO, RAYA, NULL};
const uint8_t Y[] = {RAYA, PUNTO, RAYA, RAYA, NULL};
const uint8_t Z[] = {RAYA, RAYA, PUNTO, PUNTO, NULL};

const uint8_t DIG0[] = {RAYA, RAYA, RAYA, RAYA, RAYA, NULL};
const uint8_t DIG1[] = {PUNTO, RAYA, RAYA, RAYA, RAYA, NULL};
const uint8_t DIG2[] = {PUNTO, PUNTO, RAYA, RAYA, RAYA, NULL};
const uint8_t DIG3[] = {PUNTO, PUNTO, PUNTO, RAYA, RAYA, NULL};
const uint8_t DIG4[] = {PUNTO, PUNTO, PUNTO, PUNTO, RAYA, NULL};
const uint8_t DIG5[] = {PUNTO, PUNTO, PUNTO, PUNTO, PUNTO, NULL};
const uint8_t DIG6[] = {RAYA, PUNTO, PUNTO, PUNTO, PUNTO, NULL};
const uint8_t DIG7[] = {RAYA, RAYA, PUNTO, PUNTO, PUNTO, NULL};
const uint8_t DIG8[] = {RAYA, RAYA, RAYA, PUNTO, PUNTO, NULL};
const uint8_t DIG9[] = {RAYA, RAYA, RAYA, RAYA, PUNTO, NULL};

/**
 * \brief Tabla de consulta alojada en memoria flash
 *
*/
const uint8_t * const codigo_alfabeto[] = { A, B, C, D, E, F,
											G ,H, I, J, K, L,
											M, N, O, P, Q, R,
											S, T, U, V, W, X,
											Y, Z };

const uint8_t * const codigo_numeros[] = {DIG0, DIG1, DIG2, DIG3, DIG4,
										  DIG5, DIG6, DIG7, DIG8, DIG9};

void encendido(digitalIO led,uint16_t periodo)
{
	setLedFromMsk(0);

	ledOn(led.gpioPort, led.gpioPin);
	delayMs(periodo);

	setLedFromMsk(0);
}


void representacion_caracter(const uint8_t * caracter)
{
	uint8_t i=0;
	while(caracter[i]!= NULL)
	{
		if(caracter[i]==PUNTO)
		{
			encendido(leds[1],DURACION_PUNTO);
			delayMs(ESPERA_SIMBOLOS); /*espera entre símbolos de la misma letra o dígito*/
		}
		else
		{
			encendido(leds[1],DURACION_RAYA);
			delayMs(ESPERA_SIMBOLOS);
		}
		i++;
	}
}

uint8_t recibir_texto(unsigned char * inBuff)
{
	uint8_t i = 0;

	/*do
	{
		serialRead(&dat, 1);
		*(inBuff + i) = dat;
		i++;
	}
	while(dat != '\r' ||  i != 250);*/
	//serialRead(&dat, 1);

	return 1;
}

void conversion_morse(unsigned char * buff)
{
	uint8_t i=0;

	while(buff[i] != '\r')
	{

		if(buff[i] != ' ')
		{
			if( (buff[i] >= 97) && (buff[i] <= 122) )
			{
				representacion_caracter(codigo_alfabeto[buff[i]-97]);
			}
			if( (buff[i] >= 48) && (buff[i] <= 57) )
			{
				representacion_caracter(codigo_numeros[buff[i]-48]);
			}
			delayMs(ESPERA_LETRAS);

		}
		else
		{
			delayMs(ESPERA_PALABRAS - ESPERA_LETRAS);
		}

		i++;
	}
}
