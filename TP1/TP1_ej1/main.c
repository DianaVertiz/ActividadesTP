/*
 * main.c
 *
 *  Created on: 31 ago. 2018
 *      Author: alumno
 */
#include <stdio.h>
#include <stdint.h>
#include <math.h>


int devolver_digitos(int numero)
{
	int digitos = 0;

	while(numero>=1)
	{
		digitos++;
		numero/=10;
	}

	return digitos;
}

int devolver_significativos(int numero, int ndig)
{
	int aux = devolver_digitos(numero);

	int expo;

	if(aux>ndig)
	{
		expo = aux-ndig;
	}
	else
	{
		expo = 0;
	}

	numero = numero/(pow(10,expo));

	return numero;
}



void showbits(unsigned char x) {
    for(int i = (sizeof(x) * 8) - 1; i >= 0; i--) {
       (x & (1u << i)) ? putchar('1') : putchar('0');
    }
    printf("\n");
}

void show32bits(uint32_t x) {
    for(int i = (sizeof(x)*8) - 1; i >= 0; i--) {
       (x & (1u << i)) ? putchar('1') : putchar('0');
       if((i%4) == 0)
       {
    	   printf(" ");
       }
    }
    printf("\n");
}

/************************************ */
/*** ejercicico 1 Reflexión de bits****/
/**************************************/

/*int main(int argc, char * argv[])
{

	char aux, rDato, oDato = 0x32;
	rDato =0;
	aux = oDato;
	char k = 0;
	printf("Reflexión de datos\r\n");

	for (k = 0; k < sizeof(rDato)*8-1; k++) // si tuviera definido iria uint8_t
	{
		printf("oDato en iteracion %d: %x \r\n",k,oDato);
		printf("rDato: ");
		showbits(rDato);
		rDato += (oDato)%2; // Agrego en el lsb de rDato el lsb de oDato
     	rDato = rDato << 1; // Corro rDato hacia la izquierda
		oDato = oDato >> 1; // Corro oDato hacia la derecha

	}
	printf("Resultado: \r\n");
	printf("oDato: ");
	showbits(aux);
	printf("\r\nrDato: ");
	showbits(rDato);

	return 0;
}

/**************************************************/
/****Ejercicio 2***********************************/

int main(int argc, char * argv[])
{
	int32_t oDato = 150;
	uint8_t ndig = 4;
	int32_t resultado, digitos = 1;

	resultado = devolver_digitos(oDato);
	digitos = devolver_significativos(oDato, ndig);

	printf("Dato Original: %d \r\nnúmero de dígitos: %d \r\n", oDato, resultado );
	printf("%d dígitos más significativos: %d \r\n", ndig, digitos );
	printf("Representación en base 2: \r\n");
	show32bits(oDato);
	return 0;
}
