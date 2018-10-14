/*
 * packet.h
 *
 *  Created on: 4 oct. 2018
 *      Author: esteban
 */

#ifndef INC_PACKET_H_
#define INC_PACKET_H_
#include "chip.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "hardware_nxp.h"

#define dataLen 5
#define maxLeds	8
#define minLeds	8
/**
 * Basic packet structure
 */
typedef  struct
{
	uint8_t  start; /** > must be recognized as 0x0C */
	uint8_t  cmd;	/** > 0x0F to turn on, 0xF0 to turn off */
	uint8_t  target;/** > 1 to 6, the led number */
	uint8_t  crc;	/** > check sum */
	uint8_t  end;	/** >  must be recognized as 0xC0 */
} dataPckt  __attribute__  (( packed ));

typedef  uint8_t  dataBytes[dataLen ];

typedef  union
{
	dataPckt  st;
	dataBytes  db;
}packet;

/**
 * Performs the load from the received dataBytes to the dataPckt structure.
 */
void packetUnpack(packet*);

/**
 * Checks the packets crc.
 * Returns the status with flags on its returning value:
 * --> 0 if valid,
 * --> 1 if start packet is not propper
 * --> 2 if target is out of bound
 * --> 3 if crc is not valid
 * -->
 */
uint8_t validPacket(packet*);

#endif /* INC_PACKET_H_ */
