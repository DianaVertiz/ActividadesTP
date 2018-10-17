#include <stdint.h>
#include "sysUtils.h"
#include "chip.h"
#include "sc_types.h"
#include "LedOnOff.h"
#include "timerTicks.h"

#define NOF_TIMERS (sizeof(LedOnOffTimeEvents)/sizeof(sc_boolean))

static TimerTicks ticks[NOF_TIMERS];

void ledOnOff_setTimer(LedOnOff* handle, const sc_eventid evid,
		const sc_integer time_ms, const sc_boolean periodic){
	SetNewTimerTick(ticks, NOF_TIMERS, evid, time_ms, periodic);
}


void ledOnOff_unsetTimer(LedOnOff* handle, const sc_eventid evid)
{
	UnsetTimerTick(ticks, NOF_TIMERS, evid);
}


void ledOnOffIface_ledOn(const LedOnOff* handle, const sc_integer led)
{
	ledOn(led);
}

void ledOnOffIface_ledOff(
		const LedOnOff* handle, const sc_integer led)
{
	ledOff(led);
}

int main(void)
{
  int i;
  //uint8_t key = 0;
  LedOnOff estados;
  sysInit();
  ledOnOff_init(&estados);
  ledOnOff_enter(&estados);

  while(1){

    __WFI();

    if(getSysTickEv())
    {
      rstSysTickEv();

      UpdateTimers(ticks, NOF_TIMERS);

      for (i = 0; i < NOF_TIMERS; i++)
      {
        if (IsPendEvent(ticks, NOF_TIMERS, ticks[i].evid))
        {
          ledOnOff_raiseTimeEvent(&estados, ticks[i].evid);
          MarkAsAttEvent(ticks, NOF_TIMERS, ticks[i].evid);
        }
      }

	}

    switch(getKeyPressed())
    {
    	case 1:
    		ledOnOffIface_raise_keyPress1(&estados); break;
    	case 2:
    		ledOnOffIface_raise_keyPress2(&estados); break;
    	case 3:
    		ledOnOffIface_raise_keyPress3(&estados); break;
    	case 4:
    		ledOnOffIface_raise_keyPress4(&estados); break;
    }
	ledOnOff_runCycle(&estados);
  }
  return 0;
}