#include "sysUtils.h"
#include "chip.h"
#include "hardware.h"
#include "secuencia.h"
#include "microrl.h"

extern uint16_t delay;
extern uint8_t repeticiones;
extern uint8_t nroSec;
extern uint8_t firstTime;

microrl_t rl;
extern uint8_t finCuentaMs = 0;
volatile uint8_t habilitado = 0;
volatile uint8_t flag_refresco = 0;

const char msg1[] = "hola mundo\r\n";
const char msg2[] = "TEC2 habilita y deshabilita el conteo\r\n";
const char msg3[] = "Habilitado el conteo, el mismo se muestra por pantalla\r\n";
const char msg4[] = "Deshabilitado el conteo, ingrese un caracter para mostrar el eco\r\n";
/**
 * Manejo de interrupciones asociadas a la tecla 1
 */
void GPIO1_IRQHandler(void)
{
	/*limpiar el estado de la interrupción*/
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	delayMs(300);
}

/**
 * Manejo de interrupciones asociadas a la tecla 2
 */
void GPIO2_IRQHandler(void)
{
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	delayMs(300);
}

/**
 * Manejo de interrupciones asociadas a la tecla 4
 */
void GPIO4_IRQHandler(void)
{
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));
	delayMs(300);
}


void SysTick_Handler (void)
{
	secuencia(nroSec, repeticiones, delay);

}

void UART2_IRQHandler(void)
{
	uint8_t data = Chip_UART_ReadByte(LPC_USART2);
	microrl_insert_char(&rl, data);
}

int main(void)
{
	uint8_t key;
	uint8_t bytes;
	inicializar_sistema();
	inicializar_leds();
	inicializar_teclado();
	firstTime = 1;
	init_interrupciones();
	inicializar_USART();

	microrl_init(&rl, print);
	microrl_set_execute_callback(&rl, cmdExecute);
	microrl_set_sigint_callback(&rl, sigint);

  while (1)
  {
	  __WFI();
  }
  return 0;
}
