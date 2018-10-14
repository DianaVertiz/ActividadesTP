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

uint8_t getKeyPressed(void);
void rstKeyPressed(void);

#endif /* INC_SYSUTILS_H_ */
