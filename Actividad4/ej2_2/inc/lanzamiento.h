/*
 * lanzamiento.h
 *
 *  @date 11/09/2018
 *  @brief
 */

#ifndef lanzamiento_h
#define lanzamiento_h

#include "chip.h"
#include "hardware.h"
#include <time.h>
#include <stopwatch.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>
#include <sys/timespec.h>




void escanear_teclado(void);
uint32_t tiempo_aleatorio(uint32_t inicio, uint32_t fin);
void tiempo_inicial(void);
void lanzamiento(void);
void mostrar_resultado(void);

#endif
