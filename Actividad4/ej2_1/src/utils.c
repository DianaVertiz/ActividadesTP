#include <string.h>
#include <stdint.h>
#include "utils.h"

void print(char *msg)
{
	serialWrite(msg, strlen(msg));
}

void error(char *msg)
{
	serialWrite(msg, strlen(msg));
	while(1);
}

