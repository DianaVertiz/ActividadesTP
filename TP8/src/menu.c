/*
 * menu.c
 *
 *  Created on: 15 oct. 2018
 *      Author: esteban
 */
#include "menu.h"
#include "hardware.h"
#include "sysUtils.h"

extern const digitalIO leds[];

const menuItem  menuled1[] =
{
	{"1 - Encender  led 1\n\r", led1On},
	{"2 - Apagar  led 1\n\r", led1Off},
	{"3 - Conmutar led1\r\n",led1Toggle},
	{"4. Volver al menú ppal\n\r", backMainMenu},
	{NULL , NULL}
};

const menuItem  menuled2[] =
{
	{"1 - Encender  led 2\n\r", led2On},
	{"2 - Apagar  led 2\n\r", led2Off},
	{"3 - Conmutar led 2\r\n",led2Toggle},
	{"4. Volver al menú ppal\n\r", backMainMenu},
	{NULL , NULL}
};

const menuItem menuled3[] =
{
		{"1 - Encender  led 3\n\r", led3On},
		{"2 - Apagar  led 3\n\r", led3Off},
		{"3 - Conmutar led3\r\n",led3Toggle},
		{"4. Volver al menú ppal\n\r", backMainMenu},
		{NULL , NULL}
};

const menuItem menuledrgb[] =
{
		{"1. Led R \n\r", menuLedr},
		{"2. Led G\n\r", menuLedg},
		{"3. Led B\r\n",menuLedb},
		{"4. Volver al menú ppal\n\r", backMainMenu},
		{NULL , NULL}
};

const menuItem menuledr[] =
{
		{"1. Encender led R\n\r", ledrOn},
		{"2. Apagar led R\n\r", ledrOff},
		{"3. Conmutar led R\n\r", ledrToggle},
		{"4. Volver al menú ppal\n\r", backMenuRGB},
		{NULL , NULL}
};

const menuItem menuledg[] =
{
		{"1. Encender led G\n\r", ledgOn},
		{"2. Apagar led G\n\r", ledgOff},
		{"3. Conmutar led G\n\r", ledgToggle},
		{"4. Volver al menú ppal\n\r", backMenuRGB},
		{NULL , NULL}
};

const menuItem menuledb[] =
{
		{"1. Encender led B\n\r", ledbOn},
		{"2. Apagar led B\n\r", ledbOff},
		{"3. Conmutar led B\n\r", ledbToggle},
		{"4. Volver al menú ppal\n\r", backMenuRGB},
		{NULL , NULL}
};

const menuItem mainMenu[] =
{
		{"1. Led 1\n\r", menuLed1},
		{"2. Led 2\n\r", menuLed2},
		{"3. Led 3\n\r", menuLed3},
		{"4. Led RGB\n\r", menuLedrgb},
		{"5. System Reset\n\r", doReset},
		{NULL , NULL}
};

menuItem * getMainMenu(void)
{
	return mainMenu;
}

menuItem * backMainMenu(void)
{
	return &mainMenu[0];
}

menuItem * backMenuRGB(void)
{
	return &menuledrgb[0];
}

menuItem * menuLed1(void)
{
	return &menuled1[0];
}

menuItem * led1On(void)
{
	// perform led 1 activation
	Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[1].gpioPort,leds[1].gpioPin, TRUE);
	return &menuled1[0];
}

menuItem * led1Off(void)
{
	// perform led 1 deactivation
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[1].gpioPort, leds[1].gpioPin);
	return &menuled1[0];
}

menuItem * led1Toggle(void)
{
	// perform led 1 teggle
	Chip_GPIO_SetPinToggle(LPC_GPIO_PORT,leds[1].gpioPort, leds[1].gpioPin);
	return &menuled1[0];
}

menuItem * menuLed2(void)
{
	return &menuled2[0];
}

menuItem * led2On(void)
{
	// perform led 2 activation
	Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[2].gpioPort,leds[2].gpioPin, TRUE);
	return &menuled2[0];
}

menuItem * led2Off(void)
{
	// perform led 2 deactivation
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[2].gpioPort, leds[2].gpioPin);
	return &menuled2[0];
}

menuItem * led2Toggle(void)
{
	// perform led 2 toggle
	Chip_GPIO_SetPinToggle(LPC_GPIO_PORT,leds[2].gpioPort, leds[2].gpioPin);
	return &menuled2[0];
}

menuItem * menuLed3(void)
{
	return &menuled3[0];
}

menuItem * led3On(void)
{
	// perform led 3 activation
	Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[3].gpioPort,leds[3].gpioPin, TRUE);
	return &menuled3[0];
}

menuItem * led3Off(void)
{
	// perform led 3 deactivation
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[3].gpioPort, leds[3].gpioPin);
	return &menuled3[0];
}

menuItem * led3Toggle(void)
{
	// perform led 3 toggle
	Chip_GPIO_SetPinToggle(LPC_GPIO_PORT,leds[3].gpioPort, leds[3].gpioPin);
	return &menuled3[0];
}

menuItem * menuLedrgb(void)
{
	return menuledrgb;
}

menuItem * menuLedr(void)
{
	return &menuledr[0];
}

menuItem * ledrOn(void)
{
	Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[4].gpioPort,leds[4].gpioPin, TRUE);
	return &menuledr[0];
}

menuItem * ledrOff(void)
{
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[4].gpioPort, leds[4].gpioPin);
	return &menuledr[0];
}

menuItem * ledrToggle(void)
{
	Chip_GPIO_SetPinToggle(LPC_GPIO_PORT,leds[4].gpioPort, leds[4].gpioPin);
	return &menuledr[0];
}


menuItem * menuLedg(void)
{
	return &menuledg[0];
}

menuItem * ledgOn(void)
{
	Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[5].gpioPort,leds[5].gpioPin, TRUE);
	return &menuledg[0];
}

menuItem * ledgOff(void)
{
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[5].gpioPort, leds[5].gpioPin);
	return &menuledg[0];
}

menuItem * ledgToggle(void)
{
	Chip_GPIO_SetPinToggle(LPC_GPIO_PORT,leds[5].gpioPort, leds[5].gpioPin);
	return &menuledg[0];
}

menuItem * menuLedb(void)
{
	return &menuledb[0];
}

menuItem *  ledbOn(void)
{
	Chip_GPIO_SetPinState(LPC_GPIO_PORT,leds[0].gpioPort,leds[0].gpioPin, TRUE);
	return &menuledb[0];
}

menuItem *  ledbOff(void)
{
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT,leds[0].gpioPort, leds[0].gpioPin);
	return &menuledb[0];
}
menuItem *  ledbToggle(void)
{
	Chip_GPIO_SetPinToggle(LPC_GPIO_PORT,leds[0].gpioPort, leds[0].gpioPin);
	return &menuledb[0];
}

menuItem * doReset (void)
{
	Chip_RGU_TriggerReset ( RGU_CORE_RST );
	return mainMenu;
}



