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


void ledOnOffIface_ledOn(
		const LedOnOff* handle)
{
	ledOn(0);
}

void ledOnOffIface_ledOff(
		const LedOnOff* handle)
{
	ledOff(0);
}


int main(void)
{
  int i;
  LedOnOff estados;
  sysInit();
  ledOnOff_init(&estados);
  ledOnOff_enter(&estados);

  while(1){
    __WFI();
    if(getSysTickEv()){
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
	ledOnOff_runCycle(&estados);
  }
  return 0;
}
