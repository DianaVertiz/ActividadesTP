
#ifndef EXPENDEDORA_H_
#define EXPENDEDORA_H_

#include "sc_types.h"
		
#ifdef __cplusplus
extern "C" { 
#endif 

/*! \file Header of the state machine 'expendedora'.
*/

/*! Enumeration of all states */ 
typedef enum
{
	Expendedora_main_region_init,
	Expendedora_main_region_wait,
	Expendedora_main_region_ingresoMonedas,
	Expendedora_main_region_priceCheck,
	Expendedora_main_region_stockCheck,
	Expendedora_main_region_entregaGaseosa,
	Expendedora_main_region_entregaGaseosa_r1_ledOn,
	Expendedora_main_region_entregaGaseosa_r1_ledOff,
	Expendedora_main_region_Decode,
	Expendedora_main_region_return,
	Expendedora_main_region_return_r1_encendido,
	Expendedora_main_region_return_r1_apagado,
	Expendedora_last_state
} ExpendedoraStates;

/*! Type definition of the data structure for the ExpendedoraIface interface scope. */
typedef struct
{
	sc_boolean keyPress_raised;
} ExpendedoraIface;

/*! Type definition of the data structure for the ExpendedoraInternal interface scope. */
typedef struct
{
	sc_integer credito;
	sc_integer cantA;
	sc_integer cantB;
	sc_integer precio;
	sc_integer selected;
	sc_integer aprobado;
	sc_integer stockOk;
	sc_integer led;
	sc_integer aux;
} ExpendedoraInternal;

/*! Type definition of the data structure for the ExpendedoraTimeEvents interface scope. */
typedef struct
{
	sc_boolean expendedora_main_region_entregaGaseosa_r1_ledOn_tev0_raised;
	sc_boolean expendedora_main_region_return_r1_encendido_tev0_raised;
	sc_boolean expendedora_main_region_return_r1_apagado_tev0_raised;
} ExpendedoraTimeEvents;


/*! Define dimension of the state configuration vector for orthogonal states. */
#define EXPENDEDORA_MAX_ORTHOGONAL_STATES 1

/*! 
 * Type definition of the data structure for the Expendedora state machine.
 * This data structure has to be allocated by the client code. 
 */
typedef struct
{
	ExpendedoraStates stateConfVector[EXPENDEDORA_MAX_ORTHOGONAL_STATES];
	sc_ushort stateConfVectorPosition; 
	
	ExpendedoraIface iface;
	ExpendedoraInternal internal;
	ExpendedoraTimeEvents timeEvents;
} Expendedora;

/*! Initializes the Expendedora state machine data structures. Must be called before first usage.*/
extern void expendedora_init(Expendedora* handle);

/*! Activates the state machine */
extern void expendedora_enter(Expendedora* handle);

/*! Deactivates the state machine */
extern void expendedora_exit(Expendedora* handle);

/*! Performs a 'run to completion' step. */
extern void expendedora_runCycle(Expendedora* handle);

/*! Raises a time event. */
extern void expendedora_raiseTimeEvent(const Expendedora* handle, sc_eventid evid);

/*! Raises the in event 'keyPress' that is defined in the default interface scope. */ 
extern void expendedoraIface_raise_keyPress(Expendedora* handle);


/*!
 * Checks whether the state machine is active (until 2.4.1 this method was used for states).
 * A state machine is active if it was entered. It is inactive if it has not been entered at all or if it has been exited.
 */
extern sc_boolean expendedora_isActive(const Expendedora* handle);

/*!
 * Checks if all active states are final. 
 * If there are no active states then the state machine is considered being inactive. In this case this method returns false.
 */
extern sc_boolean expendedora_isFinal(const Expendedora* handle);

/*! Checks if the specified state is active (until 2.4.1 the used method for states was called isActive()). */
extern sc_boolean expendedora_isStateActive(const Expendedora* handle, ExpendedoraStates state);

#ifdef __cplusplus
}
#endif 

#endif /* EXPENDEDORA_H_ */
