/** @addtogroup operaciones
 *  @{
 *  @file operaciones.h
 *  @brief Declaraciones de funciones y constantes simbólicas correspondientes con la EDU-CIAA NXP
 *  @date 15/09/2018
 */

#ifndef OPERACIONES_H_INCLUDED
#define OPERACIONES_H_INCLUDED


#include "chip.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stopwatch.h>
#include "hardware.h"

#define TEC1_IRQ 1
#define TEC2_IRQ 2
#define TEC3_IRQ 3
#define TEC4_IRQ 4

#define BUFFSize 512 /**< Cantidad máxima de valores a alojar en el buffer de entrada y en el de salida*/

#define primer_led	4
#define segundo_led 8
#define tercer_led 16
#define ultimo_led 32

#define max_iter 11

/**
 * @brief Enumeración utilizada para identificar los pulsadores presentes en la EDU-CIAA NXP
 */
typedef enum {
	Key1=4, /**< Tecla 1 (TEC1) */
	Key2=8, /**< Tecla 2 (TEC2) */
	Key3=16, /**< Tecla 3 (TEC3) */
	Key4=32  /**< Tecla 4 (TEC4) */
} BoardKeys;

/**
 * @brief Estructuta utilizada para identificar los GPIO en la EDU-CIAA NXP, válido para
 * los leds y los pulsadores
 * Esta estructura permite definir un array de leds para simplificar la inicialización
 * de los mismos, haciendo:
 * @code
 *
 *	const digitalIO leds[] = {...........}
 *
 * for(i=0; i<sizeof(leds)/ sizeof(digitalIO); i++)
 * {
 * 		Chip_SCU_PinMuxSet (leds[i].hwPort , leds[i].hwPin , leds[i].modo);
 * 		Chip_GPIO_SetPinDIROutput (LPC_GPIO_PORT, leds[i].gpioPort, leds[i].gpioPin);
 * 		Chip_GPIO_SetPortOutLow (LPC_GPIO_PORT , leds[i].gpioPort , leds[i].gpioPin );
 * 	}
 *
 * @endcode
 */

typedef struct
{
	uint8_t hwPort ;
	uint8_t hwPin ;
	uint8_t gpioPort ;
	uint8_t gpioPin ;
	uint16_t modo ;
	uint16_t func ;
	uint8_t pinsel;
	uint8_t nvic_mask;
} digitalIO ;

/**
 * @brief Estructura que caracteriza una secuencia
 */

typedef struct
{
	digitalIO leds[max_iter];
	uint16_t periodo;
}secuencia_t;


unsigned char rxBuff[BUFFSize]; /**< Vector para contener los datos asociados el buffer de entrada */
unsigned char txBuff[BUFFSize]; /**< Vector para contener los datos asociados el buffer de salida */

RINGBUFF_T txRing; /**< Estructura asociado al buffer circular de transmisión. */
RINGBUFF_T rxRing; /**< Estructura asociada al buffer circular de recepción.  */

/**
 * @brief Arreglo de leds
 */
extern const digitalIO leds[];

/**
 * @brief Arreglo de pulsadores
 */
extern const digitalIO keys[];

secuencia_t secuencia , secuencia_ingresada;

uint8_t pos_secuencia;
uint8_t pos_ingreso;

/**
 * @brief Inicializa los módulos básicos de la EDU-CIAA NXP.
 * Los módulos configurados por esta función son:
 * - Oscilador principal: Establece la configuración para utilizar el cristal externo incorporado
 * en la placa.
 * - Inicializa el stopwatch
 * - Inicializa la fpu
*/
void inicializar_sistema(void);

/**
 * @brief Inicializa los GPIO Leds
 * Configura los pines asociados a los leds como salidas, estableciendo como valor inicial "apagado"
 */
void inicializar_leds(void);

/**
 * @brief Inicializa los GPIO teclas
 * Configura los pines asociadas a las teclas como entradas
 */
void inicializar_teclado(void);

/**
 * @brief configura la USART2
 * USART: configura la USART2 utilizando interrupciones (115200/8/N/1). La configuración utilizada
 * es transparente al usuario, la que el resultado del uso de interrupciones permite el envío y
 * la recepción de caracteres sin bloqueo.
 */
void inicializar_USART(void);

/**
 * @brief Función implementada para procesar las interrupciones del teclado.
 * Esta función invoca a GPIO1_IRQHandler, GPIO2_IRQHandler, GPIO3_IRQHandler y GPIO4_IRQHandler
 * correspondientes a cada una de las teclas de la EDU-CIAA NXP.
 */
void init_interrupciones(void);

/**
 * @brief Representa en los leds los 4 bits menos significativos del argumento v.
 * Utiliza operadores a nivel de bit
 * @param v: valor a enmascarar.
 */
void displayCounter(uint8_t v);

/**
 * @brief Envia un carácter a través de la USART2.
 * @param ch: caracter a enviar
 */
void putChr(char* ch);

/**
 * @brief Envia una cadena de caracteres a través de la USART2.
 * @param txt: cadena de texto
 * @note Esta función utiliza strlen
 */
void print(void* txt);

/**
 * @brief Envia enteros a traves de la USART2
 * @param integer: valor del número entero de 8 bits a mostrar
 */
void USARTSendInt(uint8_t integer);

/**
 * @brief Recibe datos a través de la USART2 utilizando ringbuffers
 * @param data: array de uint8_t donde guardar el valor recibido
 * @param maxData: tamaño del array pasado como parámetro
 * @return devuelve el número de bytes recibidos
 */
uint8_t serialRead(uint8_t* data, uint8_t maxData);

/**
 * @brief Muestra por la terminal el valor que se ingresa
 */
void terminal_eco(void);

/**
 * @brief Rutina para inicializar las interrupciones del System Tick Timer
 * @note Esta rutina permite reactivar el Systick en caso haya sido deshabilitado
 */
void configurar_SysTick(void);

/**
 * @brief Deshabilita el System Tick Timer
 */
void disable_SysTick(void);

/**
 * @brief Escanea el teclado y habilita los flags PressedTECX indicando la tecla que fue pulsada
 */
void escanear_teclado(void);

/**
 * @brief Genera la secuencia de leds
 */
void generar_secuencia(void);

/**
 * @brief Genera la semilla aleatoria para usar en la función srand
 * La aletoriedad es implementada contando el número de ticks desde que se activa el
 * StopWatch hasta que se pulsa la tecla 1
 *
 * @return valor de la semilla
 */
uint32_t genera_semilla(void);

/**
 * @brief Compara la secuencia ingresada con la generada
 * Cuando se ingresa una secuencia de botones con igual número de elementos que la generada,
 * evalua que haya sido la misma
 */
void evaluar_secuencia(void);

/**
 * @brief Muestra la secuencia del juego
 * Recorre el vector de secuencias hasta la posicion (etapa) de juego y empieza cuenta regresiva para el ingreso de la secuencia.
 */
void mostrar_secuencia(void);

/**
 * @brief Hace titilar un led en particular, una cierta cantidad de veces
 * @param led: Arreglo de leds
 * @param periodo: período al cual titila el led
 * @param cant: número de veces que titila el led
 * @note Usa retardo bloqueante.
 */
void titilar(digitalIO led,uint16_t periodo, uint8_t cant);

#endif /* INC_OPERACIONES_H_ */
