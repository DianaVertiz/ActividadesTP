/*! \mainpage Mi primera aplicación
 * \date 01/09/2018
 * \author E. Sergio Burgos
 * \section genDesc Descripción general
 *
 * Esta es una primera aplicación diseñada con el objetivo de verificar la integridad del sistema
 * de desarrollo. A los fines de facilitar la elaboración de los informes posteriores, es recomendable
 * que a continuación complete la documentación de este archivo según progrese en el desarrollo de
 * las actividades propuestas.
 *
 *\section desarrolloObs Observaciones generales
 * [Complete aquí con sus observaciones]
 *
 * \section changelog Registro de cambios
 *
 * |   Fecha    | Descripción                                    |
 * |:----------:|:-----------------------------------------------|
 * | 01/09/2018 | Creación del documento                         |
 *
 */

#include "hardware.h"
#include "utils.h"


int main(void)
{
  systemInit();
  while (1)
  {
	  ledOn(GPIO_PORT_LED1, GPIO_PIN_LED1);
	  delayMs(1000);
	  if(Chip_GPIO_GetPinState(LPC_GPIO_PORT, GPIO_PORT_LED1, GPIO_PIN_LED1))
	  		{

	  		}
  }
  return 0;
}
