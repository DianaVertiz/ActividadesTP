#include <stdint.h>
#include "sysUtils.h"
#include "chip.h"
#include "sc_types.h"
#include "Cerradura.h"
#include "timerTicks.h"

#define NOF_TIMERS (sizeof(CerraduraTimeEvents)/sizeof(sc_boolean))


static TimerTicks ticks[NOF_TIMERS];

void cerradura_setTimer(Cerradura* handle, const sc_eventid evid,
		const sc_integer time_ms, const sc_boolean periodic){
	SetNewTimerTick(ticks, NOF_TIMERS, evid, time_ms, periodic);
}


void cerradura_unsetTimer(Cerradura* handle, const sc_eventid evid)
{
	UnsetTimerTick(ticks, NOF_TIMERS, evid);
}

void cerraduraIface_setLedFromMask(const Cerradura* handle, const sc_integer ledMask)
{
	setLedFromMask(ledMask);
}

sc_integer cerraduraIface_getKeyPressed(const Cerradura* handle)
{
	return getKeyPressed();
}

void cerraduraIface_delayMs(const Cerradura* handle, const sc_integer time)
{
	StopWatch_DelayMs(time);
}

int main(void)
{
  int i;
  //uint8_t key = 0;
  Cerradura keyLock;
  sysInit();
  cerradura_init(&keyLock);
  cerradura_enter(&keyLock);

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
          cerradura_raiseTimeEvent(&keyLock, ticks[i].evid);
          MarkAsAttEvent(ticks, NOF_TIMERS, ticks[i].evid);
        }
      }

	}
    if(getKeyPressed())
    {
    	cerraduraIface_raise_keyPressed(&keyLock,getKeyPressed());

    }
    cerradura_runCycle(&keyLock);
    rstKeyPressed();
  }
  return 0;
}
