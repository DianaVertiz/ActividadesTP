
#include "lanzamiento.h"

#include <stdint.h>
#include <lpc_types.h>
#include <string.h>
#define Inicio 5
#define Final 10

volatile uint8_t PressedTEC1 = 0;/*TEC1 no esta pulsada*/
volatile uint8_t PressedTEC2 = 0;
volatile uint8_t PressedTEC3 = 0;
volatile uint8_t PressedTEC4 = 0;
volatile uint8_t inicia_cara_cruz = 0;
volatile uint8_t fin_del_juego = 0;
volatile uint8_t seleccion_cara = 0;
volatile uint8_t seleccion_cruz = 0;
volatile uint8_t prende_rojo = 0;
volatile uint8_t prende_verde = 0;

uint32_t msegundos = 0;
uint32_t mticks = 0;

boardLeds ledCnt;

void escanear_teclado(void)
{
	static uint8_t anterior = 0;
	uint8_t tecla;
	tecla = getKeyPressed();

	if(tecla != anterior)
	{

		if(tecla==key1){
			PressedTEC1 = 1;
		}
		if(tecla==key2){
			PressedTEC2 = 1;
		}
		if(tecla==key3){
			PressedTEC3 = 1;
		}
		if(tecla==key4){
			PressedTEC4 = 1;
		}


		anterior = tecla;
	}

	delayMs(100);
}

uint32_t tiempo_aleatorio(uint32_t inicio, uint32_t fin)
{
	inicio = inicio*1000;
	fin = fin*1000;
	uint32_t resultado = 0;
	uint32_t margen = fin - inicio;
	uint32_t comienzo = inicio;

	if(inicio > fin)
	{
		comienzo = fin;
		margen = margen * -1;
	}

	margen = margen + 1000;
	resultado = comienzo + rand()%margen;

	return resultado;
}

uint32_t genera_semilla()
{
	uint32_t tstart = 0;
	uint32_t telapsed = 0;
	/*Inicia stopwatch para el conteo de ticks
	 * hasta que se pulsa TEC2*/
	tstart = StopWatch_Start();
	while(!PressedTEC2)
	{
		ledOn(GPIO_PORT_LED2, GPIO_PIN_LED2);
		delayMs(150);
		ledOff(GPIO_PORT_LED2, GPIO_PIN_LED2);
		escanear_teclado();
		ledOn(GPIO_PORT_LED3, GPIO_PIN_LED3);
		delayMs(150);
		ledOff(GPIO_PORT_LED3, GPIO_PIN_LED3);
		escanear_teclado();
		PressedTEC1 = 0;
		PressedTEC3 = 0;
		PressedTEC4 = 0;
	}
	telapsed = StopWatch_TicksToMs(StopWatch_Elapsed(tstart));
	ledOff(GPIO_PORT_RGB, GPIO_PIN_BLU);
	ledOff(GPIO_PORT_LED1, GPIO_PIN_LED1);
	ledOff(GPIO_PORT_LED2, GPIO_PIN_LED2);
	ledOff(GPIO_PORT_LED3, GPIO_PIN_LED3);
	PressedTEC2 = 0;
	return telapsed;
}

void inicia_juego()
{
	/*empiezan a parpadear los leds rojo y verde*/
	if(PressedTEC3 == 0 && PressedTEC4 == 0 && inicia_cara_cruz == 0 && fin_del_juego == 0)
	{
		ledOn(GPIO_PORT_LED2, GPIO_PIN_LED2);
		ledOn(GPIO_PORT_LED3, GPIO_PIN_LED3);
		delayMs(250);
		ledOff(GPIO_PORT_LED2, GPIO_PIN_LED2);
		ledOff(GPIO_PORT_LED3, GPIO_PIN_LED3);
		PressedTEC1 = 0;
		PressedTEC2 = 0;
	}
	else
	{	/*Al pulsarse TEC3 o TEC4 se selecciona cara o cruz y se inicia el juego*/
		if(PressedTEC3 && fin_del_juego == 0)
		{
			ledOff(GPIO_PORT_LED3, GPIO_PIN_LED3);
			ledOn(GPIO_PORT_LED2, GPIO_PIN_LED2);
			delayMs(600);
			seleccion_cara = 1;
			inicia_cara_cruz = 1;
			PressedTEC1 = 0;
			PressedTEC2 = 0;

		}
		else if(PressedTEC4 && fin_del_juego == 0)
		{
			ledOff(GPIO_PORT_LED2, GPIO_PIN_LED2);
			ledOn(GPIO_PORT_LED3, GPIO_PIN_LED3);
			delayMs(600);
			seleccion_cruz = 1;
			inicia_cara_cruz = 1;
			PressedTEC1 = 0;
			PressedTEC2 = 0;
		}
	}

}

void cara_cruz(void)
{
	if(inicia_cara_cruz)
	{	/*al iniciar el juego se define el tiempo aleatorio
	 	 del lanzamiento de la moneda*/
		ledOff(GPIO_PORT_LED2, GPIO_PIN_LED2);
		ledOff(GPIO_PORT_LED3, GPIO_PIN_LED3);
		ledOff(GPIO_PORT_RGB, GPIO_PIN_RED);
		ledOff(GPIO_PORT_RGB, GPIO_PIN_GRN);
		PressedTEC3 = 0;
		PressedTEC4 = 0;
		msegundos = tiempo_aleatorio(Inicio, Final);
		mticks = StopWatch_MsToTicks(msegundos);

		uint32_t startTime = StopWatch_Start();
		while (StopWatch_Elapsed(startTime) < mticks)
		{
			if(msegundos % 2 == 0)
			{
				ledOff(GPIO_PORT_RGB, GPIO_PIN_GRN);
				ledOn(GPIO_PORT_RGB, GPIO_PIN_RED);
				prende_verde = 0;
				prende_rojo = 1;
				delayMs(50);
				ledOff(GPIO_PORT_RGB, GPIO_PIN_RED);
				ledOn(GPIO_PORT_RGB, GPIO_PIN_GRN);
				prende_rojo = 0;
				prende_verde = 1;
				delayMs(50);
			}
			else
			{
				ledOff(GPIO_PORT_RGB, GPIO_PIN_RED);
				ledOn(GPIO_PORT_RGB, GPIO_PIN_GRN);
				prende_rojo = 0;
				prende_verde = 1;
				delayMs(50);
				ledOff(GPIO_PORT_RGB, GPIO_PIN_GRN);
				ledOn(GPIO_PORT_RGB, GPIO_PIN_RED);
				prende_verde = 0;
				prende_rojo = 1;
				delayMs(50);
			}

		}
		/*finaliza el lanzamiento*/
		inicia_cara_cruz=0;
		fin_del_juego = 1;
		delayMs(250);
	}
}

void mostrar_resultados(void)
{
	uint32_t var = 0;

	if(fin_del_juego == 1)
	{
		while(!PressedTEC1)
		{

			if(seleccion_cara == 1)
			{
				if(prende_rojo ==1)
				{
					/*ganó deben parapadear ambos leds a 75ms*/
					ledOn(GPIO_PORT_RGB, GPIO_PIN_RED);
					ledOn(GPIO_PORT_LED2, GPIO_PIN_LED2);
					delayMs(75);
					ledOff(GPIO_PORT_RGB, GPIO_PIN_RED);
					ledOff(GPIO_PORT_LED2, GPIO_PIN_LED2);
				}
				else
				{
					/*perdió parapadean a 300ms*/
					ledOn(GPIO_PORT_RGB, GPIO_PIN_GRN);
					ledOn(GPIO_PORT_LED2, GPIO_PIN_LED2);
					delayMs(300);
					ledOff(GPIO_PORT_RGB, GPIO_PIN_GRN);
					ledOff(GPIO_PORT_LED2, GPIO_PIN_LED2);
				}
			}
			else if(seleccion_cruz == 1)
				{
					if(prende_verde == 1)
					{
						/*ganó deben parapadear ambos leds a 75ms*/
						ledOn(GPIO_PORT_RGB, GPIO_PIN_GRN);
						ledOn(GPIO_PORT_LED3, GPIO_PIN_LED3);
						delayMs(75);
						ledOff(GPIO_PORT_RGB, GPIO_PIN_GRN);
						ledOff(GPIO_PORT_LED3, GPIO_PIN_LED3);
					}
					else
					{
						/*perdió parapadean a 300ms*/
						ledOn(GPIO_PORT_RGB, GPIO_PIN_RED);
						ledOn(GPIO_PORT_LED3, GPIO_PIN_LED3);
						delayMs(300);
						ledOff(GPIO_PORT_RGB, GPIO_PIN_RED);
						ledOff(GPIO_PORT_LED3, GPIO_PIN_LED3);
					}
				}
			escanear_teclado();
		}


		prende_rojo = 0;
		seleccion_cara = 0;
		prende_verde = 0;
		seleccion_cruz = 0;
	}
	fin_del_juego = 0;
}
