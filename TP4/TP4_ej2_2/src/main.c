/*! \mainpage EJERCICIO JUEGO DE CARA O CRUZ
 * \date 11/09/2018
 * \author Diana C. Vertiz del Valle
 * \section
 */

#include "hardware.h"
#include "utils.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "lanzamiento.h"



int main(void)
{
  systemInit();

  uint32_t semilla = genera_semilla();
  srand(semilla);


  while (1)
  {

	escanear_teclado();
	inicia_juego();
	cara_cruz();
	mostrar_resultados();
  }


  return 0;
}
