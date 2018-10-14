#include "chip.h"
#include "hardware.h"
#include "operaciones.h"

/* Transmit and receive ring buffers */
STATIC RINGBUFF_T txring, rxring;

/* Transmit and receive ring buffer sizes */
#define UART_SRB_SIZE 128	/* Send */
#define UART_RRB_SIZE 32	/* Receive */

/* Transmit and receive buffers */
static uint8_t rxbuff[UART_RRB_SIZE], txbuff[UART_SRB_SIZE];

const char inst1[] = "LPC18xx/43xx UART example using ring buffers\r\n";
const char inst2[] = "Press a key to echo it back or ESC to quit\r\n";



void UARTx_IRQHandler(void)
{
	/* Want to handle any errors? Do it here. */

	/* Use default ring buffer handler. Override this with your own
	   code if you need more capability. */
	Chip_UART_IRQRBHandler(LPC_USART2, &rxring, &txring);
}

/**
 * @brief	Main UART program body
 * @return	Always returns 1
 */
int main(void)
{
	systemInit();
	uint8_t key;
	int bytes;


	//Board_UART_Init(LPC_USART2);
	//Board_LED_Set(0, false);
	Chip_SCU_PinMuxSet(0x2, 10, (SCU_MODE_PULLDOWN | SCU_MODE_FUNC2));				/* P2.10 : UART2_TXD */
	Chip_SCU_PinMuxSet(0x2, 11, (SCU_MODE_INACT | SCU_MODE_INBUFF_EN | SCU_MODE_ZIF_DIS | SCU_MODE_FUNC2)); /* P2.11 :


	/* Setup UART for 115.2K8N1 */
	Chip_UART_Init(LPC_USART2);
	Chip_UART_SetBaud(LPC_USART2, 115200);
	Chip_UART_ConfigData(LPC_USART2, (UART_LCR_WLEN8 | UART_LCR_SBS_1BIT));
	Chip_UART_SetupFIFOS(LPC_USART2, (UART_FCR_FIFO_EN | UART_FCR_TRG_LEV2));
	Chip_UART_TXEnable(LPC_USART2);

	/* Before using the ring buffers, initialize them using the ring
	   buffer init function */
	RingBuffer_Init(&rxring, rxbuff, 1, UART_RRB_SIZE);
	RingBuffer_Init(&txring, txbuff, 1, UART_SRB_SIZE);

	/* Reset and enable FIFOs, FIFO trigger level 3 (14 chars) */
	Chip_UART_SetupFIFOS(LPC_USART2, (UART_FCR_FIFO_EN | UART_FCR_RX_RS |
							UART_FCR_TX_RS | UART_FCR_TRG_LEV3));

	/* Enable receive data and line status interrupt */
	Chip_UART_IntEnable(LPC_USART2, (UART_IER_RBRINT | UART_IER_RLSINT));

	/* preemption = 1, sub-priority = 1 */
	NVIC_SetPriority(USART2_IRQn, 1);
	NVIC_EnableIRQ(USART2_IRQn);

	/* Send initial messages */
	Chip_UART_SendRB(LPC_USART2, &txring, inst1, strlen(inst1));
	Chip_UART_SendRB(LPC_USART2, &txring, inst2, sizeof(inst2) - 1);

	/* Poll the receive ring buffer for the ESC (ASCII 27) key */
	key = 0;
	while (key != 27) {
		bytes = Chip_UART_ReadRB(LPC_USART2, &rxring, &key, 1);
		if (bytes > 0) {
			/* Wrap value back around */
			if (Chip_UART_SendRB(LPC_USART2, &txring, (const uint8_t *) &key, 1) != 1) {
				//Board_LED_Toggle(0);/* Toggle LED if the TX FIFO is full */
			}
		}
	}

	/* DeInitialize UART0 peripheral */
	NVIC_DisableIRQ(USART2_IRQn);
	Chip_UART_DeInit(LPC_USART2);

	return 1;
}
