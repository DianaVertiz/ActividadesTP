
#ifndef LEDONOFFREQUIRED_H_
#define LEDONOFFREQUIRED_H_

#include "../src/sc_types.h"
#include "LedOnOff.h"

#ifdef __cplusplus
extern "C"
{
#endif 

/*! \file This header defines prototypes for all functions that are required by the state machine implementation.

This state machine makes use of operations declared in the state machines interface or internal scopes. Thus the function prototypes:
	- ledOnOffIface_setLedFromMask
are defined.

These functions will be called during a 'run to completion step' (runCycle) of the statechart. 
There are some constraints that have to be considered for the implementation of these functions:
	- never call the statechart API functions from within these functions.
	- make sure that the execution time is as short as possible.
 
*/
extern void ledOnOffIface_setLedFromMask(const LedOnOff* handle, const sc_integer ledMask);





#ifdef __cplusplus
}
#endif 

#endif /* LEDONOFFREQUIRED_H_ */
