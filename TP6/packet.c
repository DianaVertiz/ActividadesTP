#include "packet.h"


void packetUnpack(packet* pac)
{
	pac->st->start = pac->db[0];
	pac->st->cmd = pac->db[1];
	pac->st->target = pac->db[2];
	pac->st->crc = pac->db[3];
	pac->st->end = pac->db[4];
}


uint8_t validPacket(packet* pac)
{
	uint8_t result = 0;
	if (pac->st!=0x0C)
		result+=1<<1;
	if ((pac->st->cmd !=0x0F)||(pac->st->cmd !=0xF0))
		result+=1<<2;
	if ((pac->st->target > maxLeds) || (pac->st->target < minLeds))
		result+=1<<3;
	if ((pac->st->cmd + pac->st->target + pac->st->start) != pac->st->crc)
		result+=1<<4;
	if (pac->st->end != 0xC0)
		result+=1<<5;
	return result;
}
