/*! \mainpage EJERCICIO CERRADURA DIGITAL
 * \date 09/09/2018
 * \author Diana C. Vertiz del Valle
 * \section
 */

#include "hardware.h"
#include "utils.h"
#include "code_manager.h"
#include <stdint.h>

#define TAM 6

extern uint8_t clave_seteada;

extern uint8_t clave_ingresada;

uint8_t clave_por_defecto = 0;

extern uint8_t ingrese_clave;

uint8_t n = 0;

uint8_t code_default[6] = {1,2,3,3,2,1}; /**< Array para almacenar la clave por defecto  */

uint8_t code_in [6]; /** <Array para almacenar una clave nueva  */

int main(void)
{
  systemInit();

  //uint8_t var;
  uint8_t n;

  while (1)
  {
	  /*está bloqueado*/
	  escanear_teclado();
	  n = recibir_clave(code_in, TAM);

	  if(n == TAM)
	  {
		  ingrese_clave = 1;
		  clave_ingresada = 1;
		  n = 0;

		  if(clave_ingresada ==1 && clave_por_defecto == 0) /*ingresé clave, falta desbloqueo de fábrica*/
		  {
			  if(comparar_claves(code_default, code_in, TAM))
			  {
				  /*las claves son iguales, se desbloquea y puede setearse nueva clave*/
				  /*parpadea 5 veces el led verde*/
				  parpadea_led(GPIO_PORT_LED3, GPIO_PIN_LED3);
				  clave_por_defecto = 1;

				  for(uint8_t i=0; i<TAM; i++)
				  {
					  code_in[i]=0;
				  }

			  }
			  else
			  {
				  /*las claves son diferentes*/
				  /*parapadea 5 veces el led rojo*/
				  parpadea_led(GPIO_PORT_LED1, GPIO_PIN_LED1);

				  for(uint8_t i=0; i<TAM; i++)
				  {
					  code_in[i]=0;
				  }
			  }
		  }
		  else if(clave_por_defecto == 1 && clave_seteada == 0) /*ingresé clave por defecto y ahora falta cambio de clave*/
		  	  {


			  	  for(uint8_t i=0; i<TAM; i++)
			  	  {
			  		  code_default[i]= code_in[i];
			  	  }

			  	  clave_seteada = 1;
		  		  /*Todos los leds deben parpadear 5 veces---> clave establecida*/
		  		  clave_establecida();
		  	  }

		  	  else if(clave_por_defecto == 1 && clave_seteada == 1)
		  	  	  {
		  		  	  /*se bloquea y espera a ser desbloqueada con la clave estabecida*/
				  	  if(comparar_claves(code_default, code_in, TAM))
				  	  {
				  		  /*las claves son iguales, se desbloquea*/
				  		  /*parpadea 5 veces el led verde*/
				  		  parpadea_led(GPIO_PORT_LED3, GPIO_PIN_LED3);
				  		  for(uint8_t i=0; i<TAM; i++)
				  		  {
				  			  code_in[i]=0;
				  		  }
				  	  }
				  	  else
				  	  {
				  		 parpadea_led(GPIO_PORT_LED1, GPIO_PIN_LED1);
				  		 for(uint8_t i=0; i<TAM; i++)
				  		 {
				  			 code_in[i]=0;
				  		 }
				  	  }

		  	  	  }
	  }

  }


  return 0;
}
