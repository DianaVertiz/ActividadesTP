
#include "chip.h"
#include <lpc_types.h>
#include "sysUtils.h"
// manejo de heap
#include  <errno.h>
#include  <stdint.h>
#include <reent.h>
#include <stdlib.h>

#undef  errno
extern  int  errno;

extern  char * __bot_heap;
extern  char * __top_heap;
char *__env [1] = { 0 };
char **  environ = __env;
// manejo de heap

const uint32_t ExtRateIn = 0;
const uint32_t OscRateIn = 12000000;

static uint8_t keyPressed = 0;

const digitalIO
  leds[] =
  {
     {0x02, 0x02, 0x05, 0x02, SCU_MODE_INACT | SCU_MODE_FUNC4}, // P2_2 GPIO5_2 ->  rgb blue
     {0x02, 0x0A, 0x00, 0x0E, SCU_MODE_INACT | SCU_MODE_FUNC0}, // P2_A GPIO0_14 -> led 1
	 {0x02, 0x0B, 0x01, 0x0B, SCU_MODE_INACT | SCU_MODE_FUNC0}, // P2_B GPIO1_11 -> led 2
	 {0x02, 0x0C, 0x01, 0x0C, SCU_MODE_INACT | SCU_MODE_FUNC0}, // P2_C GPIO1_12 -> led 3
	 {0x02, 0x00, 0x05, 0x00, SCU_MODE_INACT | SCU_MODE_FUNC4}, // P2_0 GPIO5_0  -> rgb red
	 {0x02, 0x01, 0x05, 0x01, SCU_MODE_INACT | SCU_MODE_FUNC4}  // P2_1 GPIO5_1  -> rgb green

  };

const digitalIO
  keys[] =
  {
    {0x01, 0x00, 0x00, 0x04, SCU_MODE_INACT | SCU_MODE_FUNC0 | SCU_MODE_INBUFF_EN},
    {0x01, 0x01, 0x00, 0x08, SCU_MODE_INACT | SCU_MODE_FUNC0 | SCU_MODE_INBUFF_EN},
	{0x01, 0x02, 0x00, 0x09, SCU_MODE_INACT | SCU_MODE_FUNC0 | SCU_MODE_INBUFF_EN},
	{0x01, 0x06, 0x01, 0x09, SCU_MODE_INACT | SCU_MODE_FUNC0 | SCU_MODE_INBUFF_EN}
  };



void sysInit(void)
{
  int i;
  Chip_SetupXtalClocking();
  SystemCoreClockUpdate();
  StopWatch_Init();
  fpuInit();
  Chip_GPIO_Init(LPC_GPIO_PORT);

  for(i = 0; i < sizeof(leds)/sizeof(digitalIO); i++)
  {
	  Chip_SCU_PinMuxSet(leds[i].hwPort, leds[i].hwPin, leds[i].modo);
	  Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, leds[i].gpioPort, leds[i].gpioPin);
	  Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT, leds[i].gpioPort, leds[i].gpioPin);
  }

  for(i = 0; i < sizeof(keys)/sizeof(digitalIO); i++)
  {
	  Chip_SCU_PinMuxSet(keys[i].hwPort, keys[i].hwPin, keys[i].modo);
	  Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, keys[i].gpioPort, keys[i].gpioPin);
  }


  Chip_SCU_PinMuxSet(7, 1, SCU_MODE_PULLDOWN | SCU_MODE_FUNC6);
  Chip_SCU_PinMuxSet(7, 2, SCU_MODE_INACT | SCU_MODE_INBUFF_EN | SCU_MODE_ZIF_DIS | SCU_MODE_FUNC6);
  Chip_UART_Init(LPC_USART2);
  Chip_UART_ConfigData(LPC_USART2, UART_LCR_WLEN8 | UART_LCR_SBS_1BIT | UART_LCR_PARITY_DIS);
  Chip_UART_SetBaud(LPC_USART2, 115200);
  Chip_UART_SetupFIFOS(LPC_USART2, (UART_FCR_FIFO_EN | UART_FCR_RX_RS |	UART_FCR_TX_RS | UART_FCR_TRG_LEV3));
  Chip_UART_IntEnable(LPC_USART2, UART_IER_RBRINT);

  for(i=0; i < 4; i++)
  {
	  Chip_SCU_GPIOIntPinSel(i, keys[i].gpioPort, keys[i].gpioPin);
	  Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(i));
	  Chip_PININT_SetPinModeEdge(LPC_GPIO_PIN_INT, PININTCH(i));
	  Chip_PININT_EnableIntLow(LPC_GPIO_PIN_INT, PININTCH(i));
  }

  NVIC_ClearPendingIRQ(PIN_INT0_IRQn);
  NVIC_ClearPendingIRQ(PIN_INT1_IRQn);
  NVIC_ClearPendingIRQ(PIN_INT2_IRQn);
  NVIC_ClearPendingIRQ(PIN_INT3_IRQn);

  NVIC_EnableIRQ(PIN_INT0_IRQn);
  NVIC_EnableIRQ(PIN_INT1_IRQn);
  NVIC_EnableIRQ(PIN_INT2_IRQn);
  NVIC_EnableIRQ(PIN_INT3_IRQn);


  NVIC_EnableIRQ(USART2_IRQn);
  Chip_UART_TXEnable(LPC_USART2);
  SysTick_Config(SystemCoreClock / 1000);
}

void print(const char *txt)
{
	Chip_UART_SendBlocking(LPC_USART2, (const void*) txt, strlen(txt));
}

void ledOn(uint8_t ledNro)
{
	Chip_GPIO_SetPinOutHigh(LPC_GPIO_PORT, leds[ledNro].gpioPort, leds[ledNro].gpioPin);
}

void ledOff(uint8_t ledNro)
{
	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT, leds[ledNro].gpioPort, leds[ledNro].gpioPin);
}

void ledToggle(uint8_t ledNro)
{
	Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, leds[ledNro].gpioPort, leds[ledNro].gpioPin);
}

static uint8_t sysTickEv = 0;

void SysTick_Handler(void)
{
	sysTickEv = 1;
}

uint8_t getSysTickEv(void)
{
	return sysTickEv;
}

void rstSysTickEv(void)
{
	sysTickEv = 0;
}


void GPIO0_IRQHandler(void)
{
	keyPressed = 1;
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(0));
}

void GPIO1_IRQHandler(void)
{
	keyPressed = 2;
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(1));
}
void GPIO2_IRQHandler(void)
{
	keyPressed = 3;
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(2));
}

void GPIO3_IRQHandler(void)
{
	keyPressed = 4;
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(3));
}

/*
uint8_t getKeyPressed(void)
{
	return keyPressed;
}
*/
void rstKeyPressed(void)
{
	keyPressed = 0;
}


/* Aloja memoria para ser utilizada a través de  la función malloc,
 * si incr>0 aloja espacio a continuación del último alojamiento
 * Retorna la dirección de memoria donde empieza el bloque alojado.
 */
void * _sbrk(int  incr)
{
	char * prev_heap_end;
	static  char * lastHeapAssigned = (char  *)& __bot_heap;
	prev_heap_end   = lastHeapAssigned;
	lastHeapAssigned  += incr;
	if( lastHeapAssigned  >= (char *) (& __top_heap ))
	{
		lastHeapAssigned = prev_heap_end;
		errno = ENOMEM;
		abort ();
	}
	return (void *)  prev_heap_end;
}

/*Envía una señal (sig) a un proceso determinado (pid). */
int  _kill(int pid , int  sig)
{
	errno = EINVAL;
	return  -1;
}

/*
 * Retorna un valor entero que identifica el proceso desde el que se realiza
 * la invocación a la función
 */
int  _getpid(void)
{
return  1;
}

/*
 * Se invoca cuando la aplicación debe finalizar
 */
void _exit(int code)
{
	_Exit(code);
}

void error(void)
{
	char txt[] = "error de lectura\n\r";
	Chip_UART_SendBlocking(LPC_USART2, (const void*) txt, strlen(txt));
}

int devolver_digitos(int numero)
{
	int digitos = 0;

	while(numero>=1)
	{
		digitos++;
		numero/=10;
	}

	return digitos;
}

uint8_t menos_significativo(uint32_t numero)
{
	uint8_t aux = 0;

	if(devolver_digitos(numero))
	{
		aux = numero%10;
	}

	return aux;
}

void uint10ToStr(uint32_t numero, char * aux)
{
	uint8_t dig = devolver_digitos(numero);
	uint8_t array[dig];
	//char aux;

	for(uint8_t i=dig; i>0; i--)
	{
		array[i-1] = menos_significativo(numero);
		numero/=10;
	}

	for(uint8_t j = 0; j <dig; j++ )
	{
		aux[j] = (array[j]) + 48;
		//putchar(aux);
	}
	 //printf("\n");
}

/*
 *Crea un nuevo proceso
 */

/*
int  _fork(void)
{
	errno = EAGAIN;
	return  -1;
}

/*
 * Transfiere el control a un nuevo proceso
 */
/*int  _execve(char *name , char **argv , char **env) {
	errno = ENOMEM;
	return  -1;
}*/



