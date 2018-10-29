#include <stdint.h>
#include <stdlib.h>
#include "sysUtils.h"
#include "chip.h"
#include <malloc.h>

typedef struct mallinfo_t {
               int arena;     /* Non-mmapped space allocated (bytes) */
               int ordblks;   /* Number of free chunks */
               int smblks;    /* Number of free fastbin blocks */
               int hblks;     /* Number of mmapped regions */
               int hblkhd;    /* Space allocated in mmapped regions (bytes) */
               int usmblks;   /* Maximum total allocated space (bytes) */
               int fsmblks;   /* Space in freed fastbin blocks (bytes) */
               int uordblks;  /* Total allocated space (bytes) */
               int fordblks;  /* Total free space (bytes) */
               int keepcost;  /* Top-most, releasable space (bytes) */
           } mi;


int main(void)
{
	sysInit();
	uint8_t * pVal1;
	uint8_t * pVal2;
	uint8_t * pVal3;

	void * ptr;

	struct mallinfo mi;
	mi = mallinfo();
	pVal1 = malloc(sizeof(uint8_t));
	//pVal1 = malloc(4096*sizeof(uint8_t));
	pVal2 = malloc(sizeof(uint8_t));
	pVal3 = malloc(sizeof(uint8_t));
	mi = mallinfo();
	*pVal1 = 0xA;
	 pVal2[0] = 5;
	*pVal3 = 0x87;
	 //ptr = _sbrk(0); /*??*/

	mi = mallinfo();


	free(pVal1);
	free(pVal2);
	free(pVal3);

	mi = mallinfo();

	while(1);
	return 0;
}
