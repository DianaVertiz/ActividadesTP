
#include "code_manager.h"
#include <stdint.h>
#include <lpc_types.h>
#include <string.h>

boardKeys TEC;

uint8_t clave_seteada = 0;
uint8_t clave_ingresada = 0;
uint8_t ingrese_clave = 0;

static uint8_t digito = 0; /**< Variable que representa un dígito en la clave ingresada  */

static uint8_t igual_default = 0; /**< Flag que indica si la clave ingresada es igual a la clave por defecto  */

static uint8_t flag_igual = 0; /**< Flag que indica igualdad entre claves*/

volatile uint8_t PressedTEC1 = 0;/*TEC1 no esta pulsada*/
volatile uint8_t PressedTEC2 = 0;
volatile uint8_t PressedTEC3 = 0;
volatile uint8_t PressedTEC4 = 0;


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

uint8_t recibir_clave(uint8_t *code_in, uint8_t tam)
{
	if (ingrese_clave)
	{
		digito = 0;
		ingrese_clave = 0;
	}
/*usar un switch en lugar de if*/
		if(PressedTEC1)
		{
			code_in[digito] = 1;
			PressedTEC1 = 0;
			ledOn(GPIO_PORT_RGB, GPIO_PIN_BLU);
			delayMs(500);
			ledOff(GPIO_PORT_RGB, GPIO_PIN_BLU);
			digito++;
		}
		else if(PressedTEC2)
			{
				code_in[digito] = 2;
				PressedTEC2 = 0;
				ledOn(GPIO_PORT_LED1, GPIO_PIN_LED1);
				delayMs(500);
				ledOff(GPIO_PORT_LED1, GPIO_PIN_LED1);
				digito++;
			}
			else if(PressedTEC3)
				{
					code_in[digito] = 3;
					PressedTEC3 = 0;
					ledOn(GPIO_PORT_LED2, GPIO_PIN_LED2);
					delayMs(500);
					ledOff(GPIO_PORT_LED2, GPIO_PIN_LED2);
					digito++;
				}
				else if(PressedTEC4)
					{
						code_in[digito] = 4;
						PressedTEC4 = 0;
						ledOn(GPIO_PORT_LED3, GPIO_PIN_LED3);
						delayMs(500);
						ledOff(GPIO_PORT_LED3, GPIO_PIN_LED3);
						digito++;
					}


	return digito;
}

uint8_t comparar_claves(uint8_t *code_before, uint8_t *code_new, uint8_t tam)
{
	flag_igual = 1;
	uint8_t i = 0;
	for(i=0; i<tam && flag_igual== 1 ; i++)
	{
		if(code_new[i] != code_before[i])
		{
			flag_igual = 0;
		}

	}

	return flag_igual;

}

void parpadea_led(uint8_t ledPort, uint8_t ledPin)
{
	for(uint8_t i=0; i<5; i++)
	{
		ledOn(ledPort, ledPin);
		delayMs(200);
		ledOff(ledPort, ledPin);
		delayMs(200);
	}
}

void clave_establecida(void)
{
	for(uint8_t i=0; i<5 ; i++)
	{
		ledOn(GPIO_PORT_RGB, GPIO_PIN_BLU);
		ledOn(GPIO_PORT_LED1, GPIO_PIN_LED1);
		ledOn(GPIO_PORT_LED2, GPIO_PIN_LED2);
		ledOn(GPIO_PORT_LED3, GPIO_PIN_LED3);
		delayMs(200);
		ledOff(GPIO_PORT_RGB, GPIO_PIN_BLU);
		ledOff(GPIO_PORT_LED1, GPIO_PIN_LED1);
		ledOff(GPIO_PORT_LED2, GPIO_PIN_LED2);
		ledOff(GPIO_PORT_LED3, GPIO_PIN_LED3);
		delayMs(200);
	}

}

