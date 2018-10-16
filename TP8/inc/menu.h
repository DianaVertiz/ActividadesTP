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
menuItem * getMainMenu(void);
/**
 * @brief Función para volver al menú principal
 */
menuItem * backMainMenu(void);

/**
 * @brief Función para volver al menú RGB
 */
menuItem * backMenuRGB(void);


/*Opciones de menú de primer nivel (menú principal)*/

menuItem * menuLed1(void);
menuItem * menuLed2(void);
menuItem * menuLed3(void);
menuItem * menuLedrgb(void);

/* Opciones de segundo nivel*/

menuItem * menuLedr(void);
menuItem * menuLedg(void);
menuItem * menuLedb(void);

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

/* Función para reiniciar el la edu-ciaa*/
menuItem * doReset (void);



#endif /* INC_MENU_H_ */
