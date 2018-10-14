/*
 * operaciones.h
 *
 *  Created on: 15 sep. 2018
 *      Author: root
 */

#ifndef INC_OPERACIONES_H_
#define INC_OPERACIONES_H_


#include "chip.h"
#include <stdio.h>
#include <string.h>
#include "hardware.h"

#define TEC1_IRQ 1
#define TEC2_IRQ 2
#define TEC3_IRQ 3
#define TEC4_IRQ 4
# define BUFFLEN 128

char str[100];

typedef struct
{
uint8_t hwPort ;
uint8_t hwPin ;
uint8_t gpioPort ;
uint8_t gpioPin ;
uint16_t modo ;
} digitalIO ;


RINGBUFF_T rbTx , rbRx ;
uint8_t txBuff [ BUFFLEN ], rxBuff [ BUFFLEN ];


void inicializar_sistema(void);
void inicializar_leds(void);
void inicializar_teclado(void);
void init_interrupciones(void);
void inicializar_USART(void);

/**
 * Representa en los leds los 4 bits menos significativos del argumento v.
 * Utiliza operadores
 * a nivel de bit
 * @arguments v: valor a enmascarar.
 */
void displayCounter(uint8_t v);

/**
 * Enviar un carácter a través de la USART2.
 *
 */
void putChr(char ch);


/**
 * Enviar una cadena de caracteres a través de la USART2. Considere utilizar la función
strlen del header string.h.
 */
void print(char *txt);

/**
 * Envia enteros a traves de USART
 */
void USARTSendInt(uint8_t v);


void configurar_SysTick(void);




#endif /* INC_OPERACIONES_H_ */
