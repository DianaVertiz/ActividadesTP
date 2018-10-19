/*
 * sysInit.h
 *
 *  Created on: 8 sep. 2018
 *      Author: sergio
 */

#ifndef INC_SYSUTILS_H_
#define INC_SYSUTILS_H_

#include <stdint.h>
#include "stopwatch.h"



typedef struct
{
	uint8_t hwPort;
	uint8_t hwPin;
	uint8_t gpioPort;
	uint8_t gpioPin;
	uint16_t modo;
}digitalIO;
typedef enum {
	Led_Rojo = 1,   /**< Identificación del terminal asociado al color rojo  */
	Led_Verde = 2,  /**< Identificación del terminal asociado al color verde */
	Led_Azul = 4    /**< Identificación del terminal asociado al color azul  */
}rgbLeds;

/**
 * @brief Enumeración utilizada para identificar los leds presentes en la EDU-CIAA NXP
 */
typedef enum {
	led4 = Led_Rojo,  /**< Led rojo (RGB)   */
	led5 = Led_Verde, /**< Led verde (RGB)   */
	led6 = Led_Azul,  /**< Led zul (RGB)  */
	led1 = 8,        /**< Led 1            */
	led2 = 16,       /**< Led 2            */
	led3 = 32,       /**< Led 3            */
} boardLeds;


/**
 * @brief Genera un delay de x milisegundos utilizando las primitivas del módulo "stopwatch" de lpcOpen.
 * @param[in] x Cantidad de milisegundos de espera.
 */
#define delayMs(x) \
		StopWatch_DelayMs(x)

void sysInit(void);
void print(const char *txt);
void ledOn(uint8_t ledNro);
void ledOff(uint8_t ledNro);


void GPIO0_IRQHandler(void);
void GPIO1_IRQHandler(void);
void GPIO2_IRQHandler(void);
void GPIO3_IRQHandler(void);

void SysTick_Handler(void);
uint8_t getSysTickEv(void);
void rstSysTickEv(void);

//uint8_t getKeyPressed(void);
void rstKeyPressed(void);

#endif /* INC_SYSUTILS_H_ */
