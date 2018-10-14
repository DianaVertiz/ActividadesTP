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
#include "hardware.h"
#include "operaciones.h"

#define dataLen 5
#define maxLeds	6
#define minLeds	1
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

typedef  uint8_t  dataBytes[dataLen];

typedef  union
{
	dataPckt  st;
	dataBytes  db;
}packet;

packet package;

/**
 * Load the dataBytes array from the received bytes from USART2
 */

void loadBytes(packet*);

/**
 * Load dataPckt's values from the received bytes previously loaded into dataBytes array
 */
void packetUnpack(packet*);

/**
 * Checks the packets crc.
 * Returns the status with flags on its returning value:
 * --> 0 if valid,
 * --> 1 if start packet is not proper
 * --> 2 if action is not recognized
 * --> 3 if target is out of bound
 * --> 4 if crc is not valid
 * --> 5 if end mark is not valid
 */
uint8_t validPacket(packet*);

/**
 *
 */
void actions(uint8_t);

/**
 * Turns on/off the led indicated in the packet's values
 */
void ledAction(packet*);



#endif /* INC_PACKET_H_ */
