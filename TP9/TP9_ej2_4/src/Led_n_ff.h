
#ifndef LED_N_FF_H_
#define LED_N_FF_H_

#include "sc_types.h"
		
#ifdef __cplusplus
extern "C" { 
#endif 

/*! \file Header of the state machine 'ledOnOff'.
*/

/*! Enumeration of all states */ 
typedef enum
{
	_ed_n_ff_main_region__eft_ight,
	_ed_n_ff_main_region__eft_ight_r__led_,
	_ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_,
	_ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_,
	_ed_n_ff_main_region__ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_,
	_ed_n_ff_main_region__ight_eft,
	_ed_n_ff_main_region__ight_eft_r__led_,
	_ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_,
	_ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_,
	_ed_n_ff_main_region__ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_,
	Led_n_ff_last_state
} Led_n_ffStates;

/*! Type definition of the data structure for the Led_n_ffIface interface scope. */
typedef struct
{
	sc_boolean key_ress_raised;
} Led_n_ffIface;

/*! Type definition of the data structure for the Led_n_ffTimeEvents interface scope. */
typedef struct
{
	sc_boolean led_n_ff_main_region__eft_ight_r__led__tev__raised;
	sc_boolean led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised;
	sc_boolean led_n_ff_main_region__eft_ight_led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised;
	sc_boolean led_n_ff_main_region_led_n_ff_main_region__eft_ight_led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised;
	sc_boolean led_n_ff_main_region__ight_eft_r__led__tev__raised;
	sc_boolean led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised;
	sc_boolean led_n_ff_main_region__ight_eft_led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised;
	sc_boolean led_n_ff_main_region_led_n_ff_main_region__ight_eft_led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised;
} Led_n_ffTimeEvents;


/*! Define dimension of the state configuration vector for orthogonal states. */
#define LED_N_FF_MAX_ORTHOGONAL_STATES 1

/*! 
 * Type definition of the data structure for the Led_n_ff state machine.
 * This data structure has to be allocated by the client code. 
 */
typedef struct
{
	Led_n_ffStates stateConfVector[LED_N_FF_MAX_ORTHOGONAL_STATES];
	sc_ushort stateConfVectorPosition; 
	
	Led_n_ffIface iface;
	Led_n_ffTimeEvents timeEvents;
} Led_n_ff;

/*! Initializes the Led_n_ff state machine data structures. Must be called before first usage.*/
extern void led_n_ff_init(Led_n_ff* handle);

/*! Activates the state machine */
extern void led_n_ff_enter(Led_n_ff* handle);

/*! Deactivates the state machine */
extern void led_n_ff_exit(Led_n_ff* handle);

/*! Performs a 'run to completion' step. */
extern void led_n_ff_runCycle(Led_n_ff* handle);

/*! Raises a time event. */
extern void led_n_ff_raiseTimeEvent(const Led_n_ff* handle, sc_eventid evid);

/*! Raises the in event 'keyPress' that is defined in the default interface scope. */ 
extern void led_n_ffIface_raise_key_ress(Led_n_ff* handle);


/*!
 * Checks whether the state machine is active (until 2.4.1 this method was used for states).
 * A state machine is active if it was entered. It is inactive if it has not been entered at all or if it has been exited.
 */
extern sc_boolean led_n_ff_isActive(const Led_n_ff* handle);

/*!
 * Checks if all active states are final. 
 * If there are no active states then the state machine is considered being inactive. In this case this method returns false.
 */
extern sc_boolean led_n_ff_isFinal(const Led_n_ff* handle);

/*! Checks if the specified state is active (until 2.4.1 the used method for states was called isActive()). */
extern sc_boolean led_n_ff_isStateActive(const Led_n_ff* handle, Led_n_ffStates state);

#ifdef __cplusplus
}
#endif 

#endif /* LED_N_FF_H_ */
