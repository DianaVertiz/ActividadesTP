/*
 * menu.h
 *
 *  Created on: 15 oct. 2018
 *      Author: esteban
 */

#ifndef INC_MENU_H_
#define INC_MENU_H_

#include "chip.h"
#include  <stdint.h>
#include "sysUtils.h"

typedef  void* (* action )(void); /* <puntero a una función que retorna un puntero*/

/**
 * @brief Estructura que representa un elemento de un menú
 */
typedef  struct{
	char *txt; 			/** < Etiqueta de la opción en el menú */
	action  doAction;	/** < Función a ejecutar al elegir la opción */
} menuItem;

/**
 * @brief Función para retornar la dirección de memoria del menú principal
 */
void * getMainMenu(void);
/**
 * @brief Función para volver al menú principal
 */
void * backMainMenu(void);

/**
 * @brief Función para volver al menú RGB
 */
void * backMenuRGB(void);


/*Opciones de menú de primer nivel (menú principal)*/

void * menuLed1(void);
void * menuLed2(void);
void * menuLed3(void);
void * menuLedrgb(void);

/* Opciones de segundo nivel*/

void * menuLedr(void);
void * menuLedg(void);
void * menuLedb(void);

/* Opciones asociadas al led1*/

void * led1On(void);
void * led1Off(void);
void * led1Toggle(void);

/* Opciones asociadas al led2*/

void * led2On(void);
void * led2Off(void);
void * led2Toggle(void);

/* Opciones asociadas al led3*/

void * led3On(void);
void * led3Off(void);
void * led3Toggle(void);

/* Opciones asociadas al ledRGB_red*/

void * ledrOn(void);
void * ledrOff(void);
void * ledrToggle(void);

/* Opciones asociadas al ledRGB_green*/

void * ledgOn(void);
void * ledgOff(void);
void * ledgToggle(void);

/* Opciones asociadas al ledRGB_blue*/

void * ledbOn(void);
void * ledbOff(void);
void * ledbToggle(void);

/* Función para reiniciar el la edu-ciaa*/
void * doReset (void);



#endif /* INC_MENU_H_ */
