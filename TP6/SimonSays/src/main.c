#include "chip.h"
#include <stopwatch.h>
#include "operaciones.h"

volatile uint8_t inicio = 0;
extern uint8_t pos_secuencia;

void respuesta_teclado(uint8_t tecla)
{
	titilar(leds[tecla],300,1);
	secuencia_ingresada.leds[pos_ingreso] = leds[tecla];
}


/**
 * Manejo de interrupciones asociadas a la tecla 1
 */
void GPIO1_IRQHandler(void)
{
	disable_SysTick();
	delayMs(400);

	respuesta_teclado(5);
	pos_ingreso++;

	if(inicio && (pos_ingreso >= pos_secuencia))
	{
		pos_ingreso = 0;
		evaluar_secuencia();
	}
	/*limpiar el estado de la interrupción*/
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
//	configurar_SysTick();
	if(!inicio)
	{
		uint32_t semilla = genera_semilla();
		srand(semilla);
		generar_secuencia();
		inicio = 1;
		pos_secuencia = 1;
		mostrar_secuencia();

		delayMs(500);
	}
}

/**
 * Manejo de interrupciones asociadas a la tecla 2
 */
void GPIO2_IRQHandler(void)
{
	//disable_SysTick();
	delayMs(400);
	respuesta_teclado(1);
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	pos_ingreso++;
	if(inicio && (pos_ingreso >= pos_secuencia))
	{
		pos_ingreso = 0;
		evaluar_secuencia();
	}
	//configurar_SysTick();
}


void GPIO3_IRQHandler(void)
{
	//disable_SysTick();
	delayMs(400);
	respuesta_teclado(2);
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC3_IRQ));
	pos_ingreso++;

	if(inicio && (pos_ingreso >= pos_secuencia))
	{
		pos_ingreso = 0;
		evaluar_secuencia();
	}
	//configurar_SysTick();
}

/**
 * Manejo de interrupciones asociadas a la tecla 4
 */
void GPIO4_IRQHandler(void)
{
	//disable_SysTick();
	delayMs(400);
	respuesta_teclado(3);
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));
	pos_ingreso++;

	if(inicio && (pos_ingreso >= pos_secuencia))
	{
		pos_ingreso = 0;
		evaluar_secuencia();
	}
	//configurar_SysTick();
}


void SysTick_Handler (void)
{
	static uint8_t iter = 0;
	static uint8_t k = 0;
	if (!inicio)
	{
		if (iter >= 50)
		{
			setLedFromMsk(0);
			Chip_GPIO_SetPinState(LPC_GPIO_PORT,secuencia.leds[k].gpioPort,secuencia.leds[k].gpioPin, TRUE);
			iter = 0;
			k++;
			if (k>= max_iter)
				k = 0;
		}
		iter++;
	}
}

void UART2_IRQHandler(void)
{

	Chip_UART_IRQRBHandler(LPC_USART2, &rxRing, &txRing);
}



int main(void)
{
	uint8_t key = 0;
	uint8_t bytes;
	inicializar_sistema();
	inicializar_leds();
	inicializar_teclado();
	inicializar_USART();
	configurar_SysTick();
	uint32_t semilla;
	srand(semilla);
	pos_secuencia = max_iter;
	generar_secuencia();
	//mostrar_secuencia();
	init_interrupciones();

  while (1)
  {
	  __WFI();

  }
  return 0;
}
