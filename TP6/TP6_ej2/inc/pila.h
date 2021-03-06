/*
 * pila.h
 *
 *  Created on: 6 oct. 2018
 *      Author: root
 */

#ifndef INC_PILA_H_
#define INC_PILA_H_
#include "chip.h"

#include <string.h>
#include "hardware.h"
#include "operaciones.h"

uint8_t * buff1;
uint8_t * buff2;




/**
 * \brief Estructura definida para representar cada pila particular.
 *
 * Nótese que el vector de almacenamiento se establece a través de la función pilaInit
 * y debe ser definido, de forma externa a la estructura y de tipo congruente
 * con los valores a alojar en la pila.
*/
typedef struct
{
	uint8_t pos ; 		/**< struct value pos. */
	uint8_t dataSize ;  /**< struct value dataSize. */
	uint8_t dataCount ; /**< struct value dataCount. */
	uint8_t * buf ;		/**< struct value buf. */
} pilaData;

/**
 * \brief Inicializa la pila
 * \param p Representación de una pila
 * \param buffer Vector de almacenamiento
 * \param bufLen Tamaño del arreglo
 * \param dataSize Tamaño de cada dato en el arreglo 1 uint8_t, 2 uint16_t, 4 uint32_t
 */
void pilaInit ( pilaData *p, void * buffer, uint8_t bufLen, uint8_t dataSize);

/**
 * \brief Apila datos a la pila
 * \param p Representación de una pila
 * \param data dato a apilar
 */
void pilaPush ( pilaData *p, void * data );

/**
 * \brief Extrae datos a la pila
 * \param p Representación de una pila
 * \param data dato a extraer
 */
void pilaPop ( pilaData *p, void * data );

/**
 * \brief Indica si la pila está vacía
 * \param p Representación de una pila
 * \return 1 si la pila está vacía
 */
uint8_t pilaEmpty ( pilaData *p);

/**
 * \brief Indica si la pila está llena
 * \param p Representación de una pila
 * \return 1 si la pila está llena
 */
uint8_t pilaFull ( pilaData *p);



#endif /* INC_PILA_H_ */
