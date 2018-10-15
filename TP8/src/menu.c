/*
 * menu.c
 *
 *  Created on: 15 oct. 2018
 *      Author: esteban
 */
#include "menu.h"

const menuItem  menuled1[] =
{
	{"1.1 - Encender  led 1\n\r", led1On},
	{"1.2 - Apagar  led 1\n\r", led1Off},
	{"1.3 - Conmutar led1\r\n",led1Toggle},
	{NULL , NULL}
};

const menuItem  menuled2[] =
{
	{"1.1 - Encender  led 2\n\r", led2On},
	{"1.2 - Apagar  led 2\n\r", led2Off},
	{"1.3 - Conmutar led 2\r\n",led2Toggle},
	{NULL , NULL}
};

const menuItem menuled3[] =
{
		{"3.2 - Encender  led 3\n\r", led3On},
		{"3.2 - Apagar  led 3\n\r", led3Off},
		{"3.3 - Conmutar led3\r\n",led3Toggle},
		{NULL , NULL}
};

const menuItem menuledrgb[] =
{
		{"3. Led R \n\r", ledr},
		{"3. Led G\n\r", ledg},
		{"3. Led B\r\n",ledb},
		{NULL , NULL}
};

const menuItem menuledr[] =
{
		{"1. Encender led R", ledrOn},
		{"1. Apagar led R", ledrOff},
		{"1. Conmutar led R", ledrToggle},
};

const menuItem menuledg[] =
{
		{"1. Encender led G", ledgOn},
		{"1. Apagar led G", ledgOff},
		{"1. Conmutar led G", ledgToggle},
};

const menuItem menuledb[] =
{
		{"1. Encender led B", ledbOn},
		{"1. Apagar led B", ledbOff},
		{"1. Conmutar led B", ledbToggle},
};

const menuItem mainMenu[] =
{
		{"1. Led 1", led1},
		{"2. Led 2", led2},
		{"3. Led 3", led3},
		{"4. Led RGB", ledrgb}
};

menuItem * led1(void)
{
	return &menuled1[0];
}

void led1On(void)
{
	// perform led 1 activation
}

void led1Off(void)
{
	// perform led 1 deactivation
}

void led1Toggle(void)
{
	// perform led 1 teggle
}

menuItem * led2(void)
{
	return &menuled2[0];
}

void led2On(void)
{
	// perform led 2 activation
}

void led2Off(void)
{
	// perform led 2 deactivation
}

void led2Toggle(void)
{
	// perform led 2 toggle
}

menuItem * led3(void)
{
	return &menuled3[0];
}

void led3On(void)
{
	// perform led 3 activation
}

void led3Off(void)
{
	// perform led 3 deactivation
}

void led3Toggle(void)
{
	// perform led 3 toggle
}

menuItem * ledrgb(void)
{
	return &menuledrgb[0];
}

menuItem * ledr(void)
{
	return &menuledr[0];
}

void ledrOn(void)
{

}

void ledrOff(void)
{

}

void ledrToggle(void)
{

}

menuItem * ledg(void)
{
	return &menuledg[0];
}

void ledgOn(void)
{

}

void ledgOff(void)
{

}

void ledgToggle(void)
{

}

menuItem * ledb(void)
{
	return &menuledb[0];
}

void ledbOn(void)
{

}

void ledbOff(void)
{

}
void ledbToggle(void)
{

}




