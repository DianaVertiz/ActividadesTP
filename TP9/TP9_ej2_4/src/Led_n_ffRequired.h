
#ifndef LED_N_FFREQUIRED_H_
#define LED_N_FFREQUIRED_H_

#include "sc_types.h"
#include "Led_n_ff.h"

#ifdef __cplusplus
extern "C"
{
#endif 

/*! \file This header defines prototypes for all functions that are required by the state machine implementation.

This is a state machine uses time events which require access to a timing service. Thus the function prototypes:
	- led_n_ff_setTimer and
	- led_n_ff_unsetTimer
are defined.

This state machine makes use of operations declared in the state machines interface or internal scopes. Thus the function prototypes:
	- led_n_ffIface__et_ed_rom_ask
are defined.

These functions will be called during a 'run to completion step' (runCycle) of the statechart. 
There are some constraints that have to be considered for the implementation of these functions:
	- never call the statechart API functions from within these functions.
	- make sure that the execution time is as short as possible.
 
*/
extern void led_n_ffIface__et_ed_rom_ask(const Led_n_ff* handle, const sc_integer led_ask);



/*!
 * This is a timed state machine that requires timer services
 */ 

/*! This function has to set up timers for the time events that are required by the state machine. */
/*! 
	This function will be called for each time event that is relevant for a state when a state will be entered.
	\param evid An unique identifier of the event.
	\time_ms The time in milli seconds
	\periodic Indicates the the time event must be raised periodically until the timer is unset 
*/
extern void led_n_ff_setTimer(Led_n_ff* handle, const sc_eventid evid, const sc_integer time_ms, const sc_boolean periodic);

/*! This function has to unset timers for the time events that are required by the state machine. */
/*! 
	This function will be called for each time event taht is relevant for a state when a state will be left.
	\param evid An unique identifier of the event.
*/
extern void led_n_ff_unsetTimer(Led_n_ff* handle, const sc_eventid evid);



#ifdef __cplusplus
}
#endif 

#endif /* LED_N_FFREQUIRED_H_ */
