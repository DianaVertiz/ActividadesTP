#include "packet.h"

volatile uint8_t paquete_recibido;

void loadBytes(packet* pckg)
{
	uint8_t byte =0;
	uint8_t i = 0;
	byte = serialRead(&key, 1);


	if(key == 0X0C)
	{
		pckg->db[i] = key;
		i++;
		while(key != 0xC0)
		{
			byte = serialRead(&key, 1);
			pckg->db[i] = key;
			i++;
			//inicio = 1;
			if(i==5) i=0;
		}

		paquete_recibido = 1;
	}
}

/*esta función me parece que no es necesaria por como
 * opera una unión*/
void packetUnpack(packet* pac)
{
	(pac->st).start = pac->db[0];
	//pac->st->start = pac->db[0];
	(pac->st).cmd = pac->db[1];
	(pac->st).target = pac->db[2];
	(pac->st).crc = pac->db[3];
	(pac->st).end = pac->db[4];
}


uint8_t validPacket(packet* pac)
{
	uint8_t result = 0;
	uint8_t aux_suma = ((pac->st).cmd + (pac->st).target + (pac->st).start + (pac->st).end);

	if ((pac->st).start!=0x0C)
		result = 1;
	if (((pac->st).cmd !=0x0F) && ((pac->st).cmd !=0xF0))
		result = 2;
	if (((pac->st).target > maxLeds) || ((pac->st).target < minLeds))
		result = 3;
	if ( aux_suma!= (pac->st).crc)
		result = 4;
	if ((pac->st).end != 0xC0)
		result = 5;
	return result;
}


void actions(uint8_t resultado)
{
	if(resultado != 0)
	{
		print("¡Paquete inválido!\n\r");

		switch(resultado)
		{
			case 1: print("Inicio de paquete incorrecto.\n\r"); break;
			case 2: print("Acción no reconocida.\n\r"); break;
			case 3: print("Número de led incorrecto.\n\r"); break;
			case 4: print("Suma de comprobación incorrecta.\n\r"); break;
			case 5: print("Fin de datos incorrecto.\n\r"); break;
		}
	}
	else
	{
		print("¡Paquete correcto!\n\r");

	}
}

void ledAction(packet* pac)
{
	uint8_t mask = 0;
	switch((pac->st).target)
	{
		case 1: mask = led1; break;
		case 2: mask = led2; break;
		case 3: mask = led3; break;
		case 4: mask = led4; break;
		case 5: mask = led5; break;
		case 6: mask = led6; break;
	}
	if(((pac->st).cmd)== 0x0F)
	{
		setLedFromMsk(mask);
	}
	else
	{
		setLedFromMsk(0);
	}

}
