
#include "chip.h"
#include "hardware.h"
#include "sysUtils.h"
#include "menu.h"


#define delay 1000


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
	static uint32_t cntTick = 0;

	/*cada milisegundo se incrementa la variable*/
	cntTick++;

	/*cuando se alacanza el tiempo de retardo se inicializa el
	 * contador y se actualiza la secuencia*/
	if(cntTick >= delay)
	{
		finCuentaMs = 1;
		cntTick = 0;
	}


}

void UART2_IRQHandler(void)
{
	uint8_t data = Chip_UART_ReadByte(LPC_USART2);
}

int main(void)
{
	uint8_t key;
	uint8_t bytes;
	inicializar_sistema();
	inicializar_leds();
	inicializar_teclado();
	init_interrupciones();
	inicializar_USART();

	uint8_t op;
	uint8_t i = 0;
	uint8_t data;
	menuItem * m = getMainMenu(); /*tiene la direccion de memoria del menú principal*/
	print (" -= Implementación de un menú jerárquico =-\n");

  while (1)
  {

		while( m[i].doAction() != NULL )
		{
			print(m[i].txt);
			i++; /*i llega en el menú principal hasta 5*/
		}

		Chip_UART_ReadBlocking ( LPC_USART2 , &data , 1);


	  	op = ((uint8_t)data - '0'); /*las opciones son 1, 2, 3, 4 o 5*/

	  	print("\n\r");

	  	op--; 			/*para llevarlo a 0,1,2,3 o 4*/
	  	if((op < i) && (op >= 0))
	  	{
	  		m = m[op].doAction(); /*la dirección de memoria cambia a la del submenú
	  		 	 	 	 	 	 	 de la opción seleccionada*/
	  	}
	  	else
	  	{
	  		print("Opción inválida\n\r");
	  	}

	  	i=0;


  }

  return 0;

}
