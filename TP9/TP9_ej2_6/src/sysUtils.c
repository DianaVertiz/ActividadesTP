
#include "chip.h"
#include "hardware.h"
#include <lpc_types.h>
#include "sysUtils.h"
const uint32_t ExtRateIn = 0;
const uint32_t OscRateIn = 12000000;



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


void inicializar_sistema()
{
	Chip_SetupXtalClocking();
	SystemCoreClockUpdate();
	fpuInit();
	StopWatch_Init();

}

void inicializar_leds()
{
	uint8_t i;

	Chip_GPIO_Init(LPC_GPIO_PORT);
	for(i=0; i<sizeof(leds)/ sizeof(digitalIO); i++)
	{
		Chip_SCU_PinMuxSet (leds[i].hwPort , leds[i].hwPin , leds[i].modo);
		Chip_GPIO_SetPinDIROutput (LPC_GPIO_PORT, leds[i].gpioPort, leds[i].gpioPin);
		Chip_GPIO_SetPortOutLow (LPC_GPIO_PORT , leds[i].gpioPort , leds[i].gpioPin );
	}
}

void inicializar_teclado()
{
	uint8_t i;

	for(i=0; i<sizeof(keys)/ sizeof(digitalIO); i++)
	{
		Chip_SCU_PinMuxSet (keys[i].hwPort , keys[i].hwPin , keys[i].modo);
		Chip_GPIO_SetPinDIRInput (LPC_GPIO_PORT, keys[i].gpioPort, keys[i].gpioPin);
	}
}


void inicializar_USART(void)
{

	RingBuffer_Init(&rxRing, rxBuff, 1, BUFFSize);
	RingBuffer_Init(&txRing, txBuff, 1, BUFFSize);
	Chip_SCU_PinMux(7, 1, MD_PDN, FUNC6);
	Chip_SCU_PinMux(7, 2, MD_PLN|MD_EZI|MD_ZI, FUNC6); /*pg 373 hoja de datos*/
	Chip_UART_Init(LPC_USART2);
	Chip_UART_ConfigData(LPC_USART2, UART_LCR_WLEN8 | UART_LCR_SBS_1BIT | UART_LCR_PARITY_DIS);
	Chip_UART_SetBaud(LPC_USART2, 115200);
	Chip_UART_SetupFIFOS(LPC_USART2, (UART_FCR_FIFO_EN | UART_FCR_RX_RS | UART_FCR_TX_RS | UART_FCR_TRG_LEV3));
	Chip_UART_IntEnable(LPC_USART2, (UART_IER_RBRINT | UART_IER_RLSINT));
	NVIC_EnableIRQ(USART2_IRQn); /*máscara en el cmsis_43xx.h*/
	Chip_UART_TXEnable(LPC_USART2);


}

void init_interrupciones()
{
	/*inicializa las interrupciones de los pines GPIO
	 * disponibles para interrupción*/
	Chip_PININT_Init (LPC_GPIO_PIN_INT);

	/*se selecciona los pines a utilizar para cada interrupción
	 * Chip_SCU_GPIOIntPinSel(uint8_t PortSel, uint8_t PortNum, uint8_t PinNum)
	 * PortSel selecciona el puerto como fuente para la interrupción del pin seleccionado
	 * PortNum Puerto del módulo GPIO del pin seleccionado 0 to 7
	 * PinNum  pin seleccionado */
	Chip_SCU_GPIOIntPinSel (TEC1_IRQ, GPIO_PORT_KEY1, GPIO_PIN_KEY1);
	Chip_SCU_GPIOIntPinSel (TEC2_IRQ, GPIO_PORT_KEY2, GPIO_PIN_KEY2);
	Chip_SCU_GPIOIntPinSel (TEC4_IRQ, GPIO_PORT_KEY4, GPIO_PIN_KEY4);

	/*limpia el estado de la interrupción */
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	/*limpia el bit de la interrupción externa*/
	NVIC_ClearPendingIRQ (PIN_INT1_IRQn);/*PIN_INT1_IRQn es la máscara de interrupción del NVIC*/
	NVIC_ClearPendingIRQ (PIN_INT2_IRQn);
	NVIC_ClearPendingIRQ (PIN_INT4_IRQn);

	/*Each pin interrupt must be enabled in the NVIC.*/
	//NVIC_DisableIRQ (PIN_INT1_IRQn);/*empieza deshabilitada*/
	NVIC_EnableIRQ (PIN_INT2_IRQn);
	NVIC_EnableIRQ (PIN_INT4_IRQn);

}



void setLedFromMask(uint8_t ledMask)
{

	ledOff(0);
	ledOff(5);
	ledOff(4);
	ledOff(3);
	ledOff(2);
	ledOff(1);
	if (ledMask & led1) ledOn(1);

	  if (ledMask & led2) ledOn(2);


	  if (ledMask & led3) ledOn(3);

	  if (ledMask & led4) ledOn(4);


	  if (ledMask & led5) ledOn(5);


	  if (ledMask & led6) ledOn(0);

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


void configurar_SysTick(void)
{
	SysTick_Config ( SystemCoreClock / 1000); /*cada 1 ms*/

}

void disable_SysTick(void)
{
	SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_ENABLE_Msk;

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
/*
void GPIO0_IRQHandler(void)
{
	keyPressed = 1;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(TEC1_IRQ));
}

void GPIO1_IRQHandler(void)
{
	keyPressed = 2;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(TEC2_IRQ));
}
/*void GPIO2_IRQHandler(void)
{
	keyPressed = 3;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(TEC3_IRQ));
}

void GPIO3_IRQHandler(void)
{
	keyPressed = 4;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(TEC4_IRQ));
}

uint8_t getKeyPressed(void)
{
	return keyPressed;
}

void rstKeyPressed(void)
{
	keyPressed = 0;
}
*/
