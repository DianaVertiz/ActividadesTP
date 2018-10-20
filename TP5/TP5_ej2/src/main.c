#include "chip.h"
#include <stopwatch.h>
#include "hardware.h"
#include "operaciones.h"

#define intervalo_inicial 500
#define decremento 10

static BoardKeys PressedKey = 0;
static uint8_t n_pruebas = 0;


const char msg1[] = "Juego finalizado!!\r\n";
const char msg2[] = "Número de pruebas aprobadas: ";
const char msg3[] = "Tiempo de conmutación inicial: ";
const char msg4[] = "Tiempo de conmutación final: ";

volatile estado_anticipacion estado = {.intervalo =500, .led_activo = primer_led, .sentido = 0}; /*sentido = 0 de izq a der*/

/**
 * Manejo de interrupciones asociadas a la tecla 1
 */
void GPIO1_IRQHandler(void)
{
	disable_SysTick();
	delayMs(400);
	/*limpiar el estado de la interrupción*/
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	PressedKey = Key1;
	definir_estado();
	configurar_SysTick();
}

/**
 * Manejo de interrupciones asociadas a la tecla 2
 */
void GPIO2_IRQHandler(void)
{
	disable_SysTick();
	delayMs(400);
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	PressedKey = Key2;
	definir_estado();
	configurar_SysTick();
}


void GPIO3_IRQHandler(void)
{
	disable_SysTick();
	delayMs(400);
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC3_IRQ));
	PressedKey = Key3;
	definir_estado();
	configurar_SysTick();
}

/**
 * Manejo de interrupciones asociadas a la tecla 4
 */
void GPIO4_IRQHandler(void)
{
	disable_SysTick();
	delayMs(400);
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));
	PressedKey = Key4;
	definir_estado();
	configurar_SysTick();
}


void SysTick_Handler (void)
{
	static uint8_t cuenta = 0;
	cuenta++;
	setLedFromMsk(estado.led_activo);
	if(cuenta > (uint8_t)(estado.intervalo/10))
	{

		switch(estado.led_activo)
		{
			case primer_led:
				estado.sentido = 0;
				next_led(estado.led_activo);
				break;
			case segundo_led:
				if(estado.sentido == 0)
				{
					next_led(estado.led_activo);
				}
				else
				{
					prev_led(estado.led_activo);
				}
				break;
			case tercer_led:
				if(estado.sentido == 0)
				{
					next_led(estado.led_activo);
				}
				else
				{
					prev_led(estado.led_activo);
				}
				break;
			case ultimo_led:
				estado.sentido = 1;
				prev_led(estado.led_activo);
				break;
		}
		//setLedFromMsk(estado.led_activo);
		cuenta = 0;
	}
}

void UART2_IRQHandler(void)
{

	Chip_UART_IRQRBHandler(LPC_USART2, &rxRing, &txRing);
}

void definir_estado(void)
{
	if(evaluar_teclas(estado,PressedKey))
	{
		if(estado.intervalo== decremento)
		{
			mostrar_consola();
			estado.intervalo = intervalo_inicial;
			n_pruebas = 0;
		}
		estado.intervalo-= decremento;
		n_pruebas++;
	}
	else
	{
		mostrar_consola();
		estado.intervalo=intervalo_inicial;
		n_pruebas = 0;
	}
	estado.led_activo = primer_led;
	estado.sentido = 0;
}

void mostrar_consola(void)
{
	disable_SysTick();
	print(msg1);
	print(msg2);
	USARTSendInt(n_pruebas);
	print("\n\r");
	print(msg3);
	USARTSendInt(intervalo_inicial/10);
	USARTSendInt((intervalo_inicial%10));
	print("\n\r");
	print(msg4);
	if(estado.intervalo >255)
	{
		USARTSendInt(estado.intervalo/10);
		USARTSendInt(estado.intervalo%10);
	}
	else
	{
		USARTSendInt(estado.intervalo);
	}
	print("\n\r");
}

int main(void)
{
	uint8_t key = 0;
	uint8_t bytes;
	inicializar_sistema();
	inicializar_leds();
	inicializar_teclado();
	init_interrupciones();
	inicializar_USART();
	configurar_SysTick();



  while (1)
  {
	  __WFI();

  }
  return 0;
}
