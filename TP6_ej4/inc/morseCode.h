/*
 * morseCode.h
 *
 *  Created on: 6 oct. 2018
 *      Author: root
 */

#ifndef INC_MORSECODE_H_
#define INC_MORSECODE_H_
#include "chip.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "hardware.h"
#include "operaciones.h"


extern const digitalIO leds[];


#define PUNTO 1 /*duración del punto*/
#define RAYA 2
#define DURACION_PUNTO 300
#define DURACION_RAYA (3*DURACION_PUNTO)
#define ESPERA_SIMBOLOS DURACION_PUNTO
#define ESPERA_LETRAS (3*DURACION_PUNTO)
#define ESPERA_PALABRAS (5*DURACION_PUNTO)

//const uint8_t * const codigo_alfabeto[];
//const uint8_t * const codigo_numeros[];
/**
 * \brief Representa el código Morse de una letra/dígito que se pasa como parámetro
 * \param caracter corresponde al arreglo que contiene el código Morse del caracter
 */
void representacion_caracter(const uint8_t * caracter);

/**
 * \brief Prende un led durante el tiempo especificado como parámetro
 * \param led representa el led
 * \param período tiempo de encendido del led
 */
void encendido(digitalIO led,uint16_t periodo);

/**
 * \brief Recibe la entrada de consola que queda guardada en el buffer rxBuff de ringbuffer
 * \return devuelve 1 si termina la recepción con el caracter '\r'
 */
uint8_t recibir_texto(unsigned char * inBuff);

/**
 * \brief Recibe el buffer con el texto almacenado y realiza la conversión al código Morse
 * \param
 * \return 1 si la pila está vacía
 */
void conversion_morse(unsigned char * buff);

/**
 * \brief Indica si la pila está llena
 * \param p Representación de una pila
 * \return 1 si la pila está llena
 */




#endif /* INC_MORSECODE_H_ */
