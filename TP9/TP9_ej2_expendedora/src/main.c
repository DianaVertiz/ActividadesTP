#include "hardware.h"
#include "comandos.h"
#include "sysUtils.h"
#include "Expendedora.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <chip.h>
#include "sc_types.h"
#include "timerTicks.h"

#define NOF_TIMERS (sizeof(ExpendedoraTimeEvents)/sizeof(sc_boolean))
uint8_t cuentas = 0;
uint8_t habilitado = 0;
uint8_t flag_refresco = 0;
char str[100];
static uint8_t keyPressed = 0;



static TimerTicks ticks[NOF_TIMERS];

void expendedora_setTimer(Expendedora* handle, const sc_eventid evid, const sc_integer time_ms, const sc_boolean periodic)
{
	SetNewTimerTick(ticks, NOF_TIMERS, evid, time_ms, periodic);
}

void expendedora_unsetTimer(Expendedora* handle, const sc_eventid evid)
{
	UnsetTimerTick(ticks, NOF_TIMERS, evid);
}

void expendedoraIface_ledOn(const Expendedora* handle, const sc_integer led)
{
	ledOn(led);
}

void expendedoraIface_ledOff(const Expendedora* handle, const sc_integer led)
{
	ledOff(led);
}

sc_integer expendedoraIface_getKeyPressed(const Expendedora* handle)
{
	return keyPressed;
}

sc_integer expendedoraIface_stockCheck(const Expendedora* handle, const sc_integer selected, const sc_integer stockA, const sc_integer stockB)
{
	uint8_t stockOK = 2;

	switch (selected)
	{
		case 2:
			if(stockA > 0){
				stockOK = 1;
			}
			else
				stockOK = 0;
			break;
		case 3:
			if(stockB > 0){
				stockOK = 1;
			}
			else
				stockOK = 0;
			break;

	}

	return stockOK;
}

sc_integer expendedoraIface_setLed(const Expendedora* handle, const sc_integer sel)
{
	uint8_t aux;

	switch(sel)
	{
		case 2:
			aux= 3; break;
		case 3:
			aux= 1; break;
	}

	return aux;
}

void GPIO0_IRQHandler(void)
{
	keyPressed = 1;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(0));
}

void GPIO1_IRQHandler(void)
{
	keyPressed = 2;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(1));
}
void GPIO2_IRQHandler(void)
{
	keyPressed = 3;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(2));
}
void GPIO3_IRQHandler(void)
{
	keyPressed = 4;
	delayMs(300);
	Chip_PININT_ClearIntStatus(LPC_GPIO_PIN_INT, PININTCH(3));
}

uint8_t getKeyPressed(void)
{
	return keyPressed;
}

void rstKeyPressed(void)
{
	keyPressed = 0;
}

int main(void)
{
  int i;
  Expendedora expend;
  sysInit();
  expendedora_init(&expend);
  expendedora_enter(&expend);


  while (1)
  {
	__WFI();

    if(getSysTickEv())
    {
      rstSysTickEv();

      UpdateTimers(ticks, NOF_TIMERS);

      for (i = 0; i < NOF_TIMERS; i++)
      {
        if (IsPendEvent(ticks, NOF_TIMERS, ticks[i].evid))
        {
          expendedora_raiseTimeEvent(&expend, ticks[i].evid);
          MarkAsAttEvent(ticks, NOF_TIMERS, ticks[i].evid);
        }
      }

	}

	if(getKeyPressed())
	{
		expendedoraIface_raise_keyPress(&expend);
	}

	expendedora_runCycle(&expend);
	if (getKeyPressed())
		rstKeyPressed();
  }
  return 0;
}
