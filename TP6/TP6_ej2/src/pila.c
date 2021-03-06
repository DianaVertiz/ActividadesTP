/*
 * pila.c
 *
 *  Created on: 6 oct. 2018
 *      Author: root
 */
#include "pila.h"
#include <stdio.h>
#include <stdlib.h>

//#define numero_pilas 2

void pilaInit (pilaData *p, void * buffer, uint8_t bufLen, uint8_t dataSize)
{
	p->dataSize = dataSize;
	p->buf = buffer;
	p->pos = 0;
	p->dataCount = bufLen *((p->dataSize)*(sizeof(uint8_t)));
}

uint8_t pilaEmpty ( pilaData *p)
{
	if((p->pos) == 0)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

uint8_t pilaFull ( pilaData *p)
{
	if((p->pos) >= (((p->dataCount))*sizeof(uint8_t)) )
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

void pilaPush ( pilaData *p, void *data )
{
	uint8_t *ptr = p->buf;

	if(!pilaFull(p))
	{
		ptr+=(p->pos)*((p->dataSize)*sizeof(uint8_t));
		memcpy(ptr,data,(p->dataSize)*sizeof(uint8_t));

		p->pos++;
	}
}

void pilaPop ( pilaData *p, void * data )
{
	uint8_t *ptr = p->buf;

	if(!pilaEmpty(p))
	{
		p->pos--;
		ptr+=(p->pos)*((p->dataSize)*sizeof(uint8_t));
		memcpy(data,ptr,(p->dataSize)*sizeof(uint8_t));


	}
}
