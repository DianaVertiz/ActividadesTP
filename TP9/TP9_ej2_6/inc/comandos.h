/*
 * comandos.h
 *
 *  Created on: 13 oct. 2018
 *      Author: root
 */

#ifndef INC_COMANDOS_H_
#define INC_COMANDOS_H_

#include "chip.h"
#include <stopwatch.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "hardware.h"
#include "sysUtils.h"


uint16_t delay;
uint8_t repeticiones;
uint8_t nroSec;
uint8_t firstTime;

typedef void (*doAction)(int, const char * const *); /** <puntero a una función que no retorna nada*/

/**
 *
 */
typedef struct
{
	char * cmdName;
	doAction cmdAct;

}cmdItem;


void help(int, const char * const *);

void sec1(int, const char * const *);

void sec2(int, const char * const *);

void led1On(int, const char * const *);

void led2On(int, const char * const *);

void led3On(int, const char * const *);

void led4On(int, const char * const *);

void led1Off(int, const char * const *);

void led2Off(int, const char * const *);

void led3Off(int, const char * const *);

void led4Off(int, const char * const *);

void cls(int, const char * const *);

cmdItem *getMenuItems(void);

uint8_t getMenuItemsCount(void);


#endif /* INC_COMANDOS_H_ */
