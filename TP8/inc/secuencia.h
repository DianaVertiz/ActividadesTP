/*
 * secuencia.h
 *
 *  Created on: 13 oct. 2018
 *      Author: root
 */

#ifndef INC_SECUENCIA_H_
#define INC_SECUENCIA_H_


#include "chip.h"
#include <stopwatch.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "hardware.h"
#include "sysUtils.h"

uint8_t finCuentaMs;
extern const digitalIO leds[];

void secuencia(uint8_t, uint8_t, uint16_t);


#endif /* INC_SECUENCIA_H_ */