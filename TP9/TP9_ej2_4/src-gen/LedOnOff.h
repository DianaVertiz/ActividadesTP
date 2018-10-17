
#ifndef LEDONOFF_H_
#define LEDONOFF_H_

#include "../src/sc_types.h"
		
#ifdef __cplusplus
extern "C" { 
#endif 

/*! \file Header of the state machine 'ledOnOff'.
*/

/*! Enumeration of all states */ 
typedef enum
{
	LedOnOff_main_region_wait,
	LedOnOff_main_region_wait_r1_resetSystem,
	LedOnOff_main_region_countDown,
	LedOnOff_main_region_countDown_r1_ledYOn,
	LedOnOff_main_region_countDown_r1_ledYOff,
	LedOnOff_main_region_launchStart,
	LedOnOff_main_region_launchStart_r1_ledROn,
	LedOnOff_main_region_launchStart_r1_ledYOff,
	LedOnOff_last_state
} LedOnOffStates;

/*! Type definition of the data structure for the LedOnOffIface interface scope. */
typedef struct
{
	sc_boolean keyPress1_raised;
	sc_boolean keyPress2_raised;
	sc_boolean keyPress3_raised;
	sc_boolean keyPress4_raised;
} LedOnOffIface;

/*! Type definition of the data structure for the LedOnOffTimeEvents interface scope. */
typedef struct
{
	sc_boolean ledOnOff_main_region_countDown_tev0_raised;
	sc_boolean ledOnOff_main_region_countDown_r1_ledYOn_tev0_raised;
	sc_boolean ledOnOff_main_region_countDown_r1_ledYOff_tev0_raised;
	sc_boolean ledOnOff_main_region_launchStart_r1_ledYOff_tev0_raised;
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
	
	LedOnOffIface iface;
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

/*! Raises the in event 'keyPress1' that is defined in the default interface scope. */ 
extern void ledOnOffIface_raise_keyPress1(LedOnOff* handle);

/*! Raises the in event 'keyPress2' that is defined in the default interface scope. */ 
extern void ledOnOffIface_raise_keyPress2(LedOnOff* handle);

/*! Raises the in event 'keyPress3' that is defined in the default interface scope. */ 
extern void ledOnOffIface_raise_keyPress3(LedOnOff* handle);

/*! Raises the in event 'keyPress4' that is defined in the default interface scope. */ 
extern void ledOnOffIface_raise_keyPress4(LedOnOff* handle);


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