/*
 * code_manager.h
 *
 *  @date 08/09/2018
 *  @brief Declaraciones de funciones y variables para manipular las claves de la cerradura digital
 */

#ifndef code_manager_h
#define code_manager_h

#include "chip.h"
#include <stopwatch.h>
#include <stdint.h>

/**
 * @brief Array para almacenar la clave por defecto
 */
uint8_t code_default [6] = {1,2,3,3,2,1};

/**
 * @brief Array para almacenar una clave nueva
 */
uint8_t code_in [6];

/**
 * @brief Función para comparar dos claves,
 * @param[in] code_default Array que almacena la clave por defecto
 * @param[in] code_in Array que almacena la clave ingresada
 * @param[in] tam tamaño de la clave
 * @return retorna 1 si son iguales, en caso contrario retorna 0
 */
uint8_t comparar_claves(uint8_t *code_default, uint8_t *code_in, uint8_t tam);





#endif /* INC_CODE_MANAGER_H_ */
