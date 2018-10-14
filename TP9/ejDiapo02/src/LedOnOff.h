
#ifndef LEDONOFF_H_
#define LEDONOFF_H_

#include "sc_types.h"
		
#ifdef __cplusplus
extern "C" { 
#endif 

/*! \file Header of the state machine 'ledOnOff'.
*/

/*! Enumeration of all states */ 
typedef enum
{
	LedOnOff_main_region_ledApagado,
	LedOnOff_main_region_ledEncendido,
	LedOnOff_last_state
} LedOnOffStates;

/*! Type definition of the data structure for the LedOnOffTimeEvents interface scope. */
typedef struct
{
	sc_boolean ledOnOff_main_region_ledApagado_tev0_raised;
	sc_boolean ledOnOff_main_region_ledEncendido_tev0_raised;
} LedOnOffTimeEvents;


/*! Define dimension of the state configuration vector for orthogonal states. */
#define LEDONOFF_MAX_ORTHOGONAL_STATES 1

/*! 
 * Type definition of the data structure for the LedOnOff state machine.
 * This data structure has to be allocated by the client code. 
 */
typedef struct
{
	LedOnOffStates stateConfVector[LEDONOFF_MAX_ORTHOGONAL_STATES];
	sc_ushort stateConfVectorPosition; 
	
	LedOnOffTimeEvents timeEvents;
} LedOnOff;

/*! Initializes the LedOnOff state machine data structures. Must be called before first usage.*/
extern void ledOnOff_init(LedOnOff* handle);

/*! Activates the state machine */
extern void ledOnOff_enter(LedOnOff* handle);

/*! Deactivates the state machine */
extern void ledOnOff_exit(LedOnOff* handle);

/*! Performs a 'run to completion' step. */
extern void ledOnOff_runCycle(LedOnOff* handle);

/*! Raises a time event. */
extern void ledOnOff_raiseTimeEvent(const LedOnOff* handle, sc_eventid evid);


/*!
 * Checks whether the state machine is active (until 2.4.1 this method was used for states).
 * A state machine is active if it was entered. It is inactive if it has not been entered at all or if it has been exited.
 */
extern sc_boolean ledOnOff_isActive(const LedOnOff* handle);

/*!
 * Checks if all active states are final. 
 * If there are no active states then the state machine is considered being inactive. In this case this method returns false.
 */
extern sc_boolean ledOnOff_isFinal(const LedOnOff* handle);

/*! Checks if the specified state is active (until 2.4.1 the used method for states was called isActive()). */
extern sc_boolean ledOnOff_isStateActive(const LedOnOff* handle, LedOnOffStates state);

#ifdef __cplusplus
}
#endif 

#endif /* LEDONOFF_H_ */
