
#ifndef CONTADOR_H_
#define CONTADOR_H_

#include "../src/sc_types.h"
		
#ifdef __cplusplus
extern "C" { 
#endif 

/*! \file Header of the state machine 'contador'.
*/

/*! Enumeration of all states */ 
typedef enum
{
	Contador_main_region_Init,
	Contador_main_region_wait,
	Contador_main_region_Increment,
	Contador_main_region_rstCnt,
	Contador_main_region_lockToggle,
	Contador_main_region_decode,
	Contador_last_state
} ContadorStates;

/*! Type definition of the data structure for the ContadorIface interface scope. */
typedef struct
{
	sc_boolean keyPress_raised;
} ContadorIface;

/*! Type definition of the data structure for the ContadorInternal interface scope. */
typedef struct
{
	sc_integer cnt;
	sc_integer locked;
	sc_integer aux;
} ContadorInternal;


/*! Define dimension of the state configuration vector for orthogonal states. */
#define CONTADOR_MAX_ORTHOGONAL_STATES 1

/*! 
 * Type definition of the data structure for the Contador state machine.
 * This data structure has to be allocated by the client code. 
 */
typedef struct
{
	ContadorStates stateConfVector[CONTADOR_MAX_ORTHOGONAL_STATES];
	sc_ushort stateConfVectorPosition; 
	
	ContadorIface iface;
	ContadorInternal internal;
} Contador;

/*! Initializes the Contador state machine data structures. Must be called before first usage.*/
extern void contador_init(Contador* handle);

/*! Activates the state machine */
extern void contador_enter(Contador* handle);

/*! Deactivates the state machine */
extern void contador_exit(Contador* handle);

/*! Performs a 'run to completion' step. */
extern void contador_runCycle(Contador* handle);


/*! Raises the in event 'keyPress' that is defined in the default interface scope. */ 
extern void contadorIface_raise_keyPress(Contador* handle);


/*!
 * Checks whether the state machine is active (until 2.4.1 this method was used for states).
 * A state machine is active if it was entered. It is inactive if it has not been entered at all or if it has been exited.
 */
extern sc_boolean contador_isActive(const Contador* handle);

/*!
 * Checks if all active states are final. 
 * If there are no active states then the state machine is considered being inactive. In this case this method returns false.
 */
extern sc_boolean contador_isFinal(const Contador* handle);

/*! Checks if the specified state is active (until 2.4.1 the used method for states was called isActive()). */
extern sc_boolean contador_isStateActive(const Contador* handle, ContadorStates state);

#ifdef __cplusplus
}
#endif 

#endif /* CONTADOR_H_ */
