/*! \ file test .h
* \ brief Documentando header de registro.h
*
* Esta es la referencia extendida asodiada al header test .h
*/
#ifndef REGISTRO_H
#define REGISTRO_H
#include "chip.h"
#include "hardware.h"

#define TEC1_IRQ 1
#define TEC2_IRQ 2
#define TEC3_IRQ 3
#define TEC4_IRQ 4


/**
 *\brief Inicialización de interrupciones de los pulsadores
 *\brief TEC1, TEC2 y TEC4
 */
void init_interrupciones(void);

/**
 * \brief Configurar la USART2
 */
void configurar_USART2(void);
void configurar_SysTick(void);


#endif /* INC_REGISTRO_H_ */
