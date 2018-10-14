#include <stdint.h>
#include "sysUtils.h"
#include "chip.h"
#include "sc_types.h"
#include "LedOnOff.h"

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
  LedOnOff estados;
  sysInit();
  ledOnOff_init(&estados);
  ledOnOff_enter(&estados);

  while(1){
    __WFI();
    if(getKeyPressed() == 1){
      ledOnOffIface_raise_keyPress(&estados);
      rstKeyPressed();
	}
	ledOnOff_runCycle(&estados);
  }
  return 0;
}
