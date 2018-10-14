/*
 * code_manager.h
 *
 *  @date 08/09/2018
 *  @brief Declaraciones de funciones y variables para manipular las claves de la cerradura digital
 */

#ifndef code_manager_h
#define code_manager_h

#include "chip.h"
#include "hardware.h"
#include <stopwatch.h>
#include <stdint.h>




void escanear_teclado(void);
/**
 * @brief Función que almacena el valor de la clave dependiendo de la
 * tecla pulsada
 * @param[in] code_in Array que almacena la clave ingresada
 * @param[in] key valor de tecla pulsada
 * @param[in] tam tamaño de la clave
 * @return retorna el número de dígitos recibidos
 * */
uint8_t recibir_clave(uint8_t *code_in, uint8_t tam);

/**
 * @brief Función para comparar dos claves,
 * @param[in] code_before Array que almacena la clave por defecto
 * @param[in] code_new Array que almacena la clave ingresada
 * @param[in] tam tamaño de la clave
 * @return retorna 1 si son iguales, en caso contrario retorna 0
 */
uint8_t comparar_claves(uint8_t *code_before, uint8_t *code_new, uint8_t tam);

void parpadea_led(uint8_t ledPort, uint8_t ledPin);

void clave_establecida(void);



#endif /* INC_CODE_MANAGER_H_ */
