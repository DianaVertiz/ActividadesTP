/*
 * main.c
 *
 *  Created on: 31 ago. 2018
 *      Author: alumno
 */
#include <stdio.h>
#include <stdint.h>
#include <math.h>
int main(int argc, char * argv[])
{
	int32_t oDato = 126456;
	int32_t tmp0Dato = oDato ;
	int32_t n = 3;
	int32_t resultado, digitos = 1;
	int32_t divisor = 1;
	while(oDato >=10)
	{
		digitos++;
		oDato/=10;
	}
	divisor = pow (10,digitos-n);
	/*int k = 0;
	for (k = 0; k<digitos-n; k++)
		divisor *= 10;*/
	//divisor = (int32_t) pow(10,(digitos-n));
	resultado = tmp0Dato / divisor;
	printf("Dato Original: '%d' , resultado: '%d'", tmp0Dato, resultado );
}
