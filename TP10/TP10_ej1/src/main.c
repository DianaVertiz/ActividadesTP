#include <stdint.h>
#include "sysUtils.h"
#include "chip.h"


int main(void)
{
	sysInit();
	uint8_t * pVal1;
	uint8_t * pVal2;
	uint8_t * pVal3;

	pVal1 = malloc(sizeof(uint8_t));
	pVal2 = malloc(sizeof(uint8_t));
	pVal3 = malloc(sizeof(uint8_t));
	*pVal1 = 0xAB;
	*pVal2 = 0xCD;
	*pVal3 = 0xEF;
	free(pVal1);
	free(pVal2);
	free(pVal3);

	while(1);
	return 0;
}
