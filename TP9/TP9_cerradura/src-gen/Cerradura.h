
#ifndef CERRADURA_H_
#define CERRADURA_H_

#include "../src/sc_types.h"
		
#ifdef __cplusplus
extern "C" { 
#endif 

/*! \file Header of the state machine 'cerradura'.
*/

/*! Enumeration of all states */ 
typedef enum
{
	Cerradura_main_region_Inicio,
	Cerradura_main_region_Inicio_r1_resetSystem,
	Cerradura_main_region_Cerrado,
	Cerradura_main_region_Cerrado_r1_wait,
	Cerradura_main_region_Cerrado_r1_getKey,
	Cerradura_main_region_Cerrado_r1_operate,
	Cerradura_main_region_Cerrado_r1_Validate,
	Cerradura_main_region_Abierto,
	Cerradura_main_region_Abierto_r1_wait,
	Cerradura_main_region_Abierto_r1_getKey,
	Cerradura_main_region_Abierto_r1_operate,
	Cerradura_main_region_Abierto_r1_init,
	Cerradura_main_region_led0,
	Cerradura_main_region_led0_r1_encendido,
	Cerradura_main_region_led0_r1_apagado,
	Cerradura_main_region_Copy_1_led0,
	Cerradura_main_region_Copy_1_led0_r1_encendido,
	Cerradura_main_region_Copy_1_led0_r1_apagado,
	Cerradura_last_state
} CerraduraStates;

/*! Type definition of the data structure for the CerraduraIface interface scope. */
typedef struct
{
	sc_boolean keyPressed_raised;
} CerraduraIface;

/*! Type definition of the data structure for the CerraduraInternal interface scope. */
typedef struct
{
	sc_integer valid;
	sc_integer clave;
	sc_integer claveIngresada;
	sc_integer aux;
	sc_integer aux2;
	sc_integer iter;
	sc_integer iter2;
	sc_integer wLen;
	sc_integer cnt;
} CerraduraInternal;

/*! Type definition of the data structure for the CerraduraTimeEvents interface scope. */
typedef struct
{
	sc_boolean cerradura_main_region_led0_r1_encendido_tev0_raised;
	sc_boolean cerradura_main_region_led0_r1_apagado_tev0_raised;
	sc_boolean cerradura_main_region_Copy_1_led0_r1_encendido_tev0_raised;
	sc_boolean cerradura_main_region_Copy_1_led0_r1_apagado_tev0_raised;
} CerraduraTimeEvents;


/*! Define dimension of the state configuration vector for orthogonal states. */
#define CERRADURA_MAX_ORTHOGONAL_STATES 1

/*! 
 * Type definition of the data structure for the Cerradura state machine.
 * This data structure has to be allocated by the client code. 
 */
typedef struct
{
	CerraduraStates stateConfVector[CERRADURA_MAX_ORTHOGONAL_STATES];
	sc_ushort stateConfVectorPosition; 
	
	CerraduraIface iface;
	CerraduraInternal internal;
	CerraduraTimeEvents timeEvents;
} Cerradura;

/*! Initializes the Cerradura state machine data structures. Must be called before first usage.*/
extern void cerradura_init(Cerradura* handle);

/*! Activates the state machine */
extern void cerradura_enter(Cerradura* handle);

/*! Deactivates the state machine */
extern void cerradura_exit(Cerradura* handle);

/*! Performs a 'run to completion' step. */
extern void cerradura_runCycle(Cerradura* handle);

/*! Raises a time event. */
extern void cerradura_raiseTimeEvent(const Cerradura* handle, sc_eventid evid);

/*! Raises the in event 'keyPressed' that is defined in the default interface scope. */ 
extern void cerraduraIface_raise_keyPressed(Cerradura* handle);


/*!
 * Checks whether the state machine is active (until 2.4.1 this method was used for states).
 * A state machine is active if it was entered. It is inactive if it has not been entered at all or if it has been exited.
 */
extern sc_boolean cerradura_isActive(const Cerradura* handle);

/*!
 * Checks if all active states are final. 
 * If there are no active states then the state machine is considered being inactive. In this case this method returns false.
 */
extern sc_boolean cerradura_isFinal(const Cerradura* handle);

/*! Checks if the specified state is active (until 2.4.1 the used method for states was called isActive()). */
extern sc_boolean cerradura_isStateActive(const Cerradura* handle, CerraduraStates state);

#ifdef __cplusplus
}
#endif 

#endif /* CERRADURA_H_ */
