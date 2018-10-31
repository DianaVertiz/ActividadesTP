/*
 * fsRWDrv.c
 *
 *  Created on: 29 oct. 2018
 *      Author: root
 */

/* ----- fsRWDrv .c -----*/
#include <fsRWDrv.h>

extern uint8_t _binary_myFileSystem_img_start;
extern uint8_t _binary_myFileSystem_img_end;
extern uint8_t _binary_myFileSystem_img_size;

uint8_t *getFsStartAddr( void )
{
	return (uint8_t *)&_binary_myFileSystem_img_start ;
}
uint8_t * getFsEndAddr ( void )
{
	return ( uint8_t *)&_binary_myFileSystem_img_end ;
}
uint32_t getFsSize( void )
{
	return _binary_myFileSystem_img_size;
}


