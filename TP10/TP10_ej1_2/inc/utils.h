/** @addtogroup utils
 *  @{
 *  @file utils.h
 *  @brief Diversas funciones de utilidad simplificar el desarrollo de
 *  software para aplicaciones embebidas.
 *  @date 09/07/2018
 */
#ifndef UTILS_H_
#define UTILS_H_

/**
 * @brief Envía una cadena de caracteres terminada en null por el puerto de
 * comunicaciones serie (USART).
 * @param[in] msg Cadena de caracteres a transmitir. El envío de los datos se realiza
 * utilizando la función \a serialWrite.
 */

void print(char *msg);

/**
 * @brief Envía una cadena de caracteres terminada en null por el puerto de
 * comunicaciones serie (USART). A diferencia de la función \ref print, esta función no retorna
 * bloqueando la aplicación.
 * @param[in] msg Cadena de caracteres a transmitir. El envío de los datos se realiza
 * utilizando la función \a serialWrite.
 */

void error(char *msg);


#endif /* SRC_UTILS_H_ */

/** @}*/
