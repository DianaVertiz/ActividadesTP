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
#include "sysInit.h"

typedef  void* (* action )(void); /* <puntero a una función que retorna un puntero*/

/**
 * @brief Estructura que representa un elemento de un menú
 */
typedef  struct{
	char *txt; 			/** < Etiqueta de la opción en el menú */
	action  doAction;	/** < Función a ejecutar al elegir la opción */
} menuItem;

/*Opciones de menú de primer nivel (menú principal)*/

menuItem * led1(void);
menuItem * led2(void);
menuItem * led3(void);
menuItem * ledrgb(void);

/**
 * Función para volver al menú principal
 */
menuItem * BackMainMenu(void);

/* Opciones de segundo nivel*/

menuItem * ledr(void);
menuItem * ledg(void);
menuItem * ledb(void);

/* Opciones asociadas al led1*/

menuItem * led1On(void);
menuItem * led1Off(void);
menuItem * led1Toggle(void);

/* Opciones asociadas al led2*/

menuItem * led2On(void);
menuItem * led2Off(void);
menuItem * led2Toggle(void);

/* Opciones asociadas al led3*/

menuItem * led3On(void);
menuItem * led3Off(void);
menuItem * led3Toggle(void);

/* Opciones asociadas al ledRGB_red*/

menuItem * ledrOn(void);
menuItem * ledrOff(void);
menuItem * ledrToggle(void);

/* Opciones asociadas al ledRGB_green*/

menuItem * ledgOn(void);
menuItem * ledgOff(void);
menuItem * ledgToggle(void);

/* Opciones asociadas al ledRGB_blue*/

menuItem * ledbOn(void);
menuItem * ledbOff(void);
menuItem * ledbToggle(void);




#endif /* INC_MENU_H_ */
