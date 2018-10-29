/*
 * fsRWDrv.h
 *
 *  Created on: 29 oct. 2018
 *      Author: root
 */

//#ifndef INC_FSRWDRV_H_
//#define INC_FSRWDRV_H_

#ifndef fsRWDrv_h
#define fsRWDrv_h
#include <stdint.h>
//#include <ff.h>

uint8_t *getFsStartAddr( void );
uint8_t *getFsEndAddr( void );
uint32_t getFsSize( void );
#endif



//#endif /* INC_FSRWDRV_H_ */
