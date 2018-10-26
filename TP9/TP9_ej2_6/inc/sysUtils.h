/*
 * sysInit.h
 *
 *  Created on: 8 sep. 2018
 *      Author: sergio
 */

#ifndef INC_SYSUTILS_H_
#define INC_SYSUTILS_H_

#include <stdint.h>

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

#define TEC1_IRQ 1
#define TEC2_IRQ 2
#define TEC3_IRQ 3
#define TEC4_IRQ 4
#define BUFFSize 512 /**< Cantidad máxima de valores a alojar en el buffer de entrada y en el de salida*/

char str[100];
static char valor [10];
uint8_t key; /*variable para el eco*/

unsigned char rxBuff[BUFFSize]; /**< Vector para contener los datos asociados el buffer de entrada */
unsigned char txBuff[BUFFSize]; /**< Vector para contener los datos asociados el buffer de salida */

RINGBUFF_T txRing; /**< Estructura asociado al buffer circular de transmisión. */
RINGBUFF_T rxRing; /**< Estructura asociada al buffer circular de recepción.  */

/**
 * @brief Genera un delay de x milisegundos utilizando las primitivas del módulo "stopwatch" de lpcOpen.
 * @param[in] x Cantidad de milisegundos de espera.
 */
#define delayMs(x) \
		StopWatch_DelayMs(x)

void inicializar_sistema(void);
void inicializar_leds(void);
void inicializar_teclado(void);
void inicializar_USART(void);
void init_interrupciones(void);

void print(const char *txt);
void ledOn(uint8_t ledNro);
void ledOff(uint8_t ledNro);
void setLedFromMask(uint8_t ledMask);

void GPIO0_IRQHandler(void);
void GPIO1_IRQHandler(void);
void GPIO2_IRQHandler(void);
void GPIO3_IRQHandler(void);

void configurar_SysTick(void);
void disable_SysTick(void);
void SysTick_Handler(void);
uint8_t getSysTickEv(void);
void rstSysTickEv(void);

uint8_t getKeyPressed(void);
void rstKeyPressed(void);

#endif /* INC_SYSUTILS_H_ */
