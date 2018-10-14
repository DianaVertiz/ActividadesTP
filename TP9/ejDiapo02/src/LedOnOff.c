
#include <stdlib.h>
#include <string.h>
#include "sc_types.h"
#include "LedOnOff.h"
#include "LedOnOffRequired.h"
/*! \file Implementation of the state machine 'ledOnOff'
*/

/* prototypes of all internal functions */
static sc_boolean ledOnOff_check_main_region_ledApagado_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_ledEncendido_tr0_tr0(const LedOnOff* handle);
static void ledOnOff_effect_main_region_ledApagado_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_ledEncendido_tr0(LedOnOff* handle);
static void ledOnOff_enact_main_region_ledApagado(LedOnOff* handle);
static void ledOnOff_enact_main_region_ledEncendido(LedOnOff* handle);
static void ledOnOff_exact_main_region_ledApagado(LedOnOff* handle);
static void ledOnOff_exact_main_region_ledEncendido(LedOnOff* handle);
static void ledOnOff_enseq_main_region_ledApagado_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_ledEncendido_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_default(LedOnOff* handle);
static void ledOnOff_exseq_main_region_ledApagado(LedOnOff* handle);
static void ledOnOff_exseq_main_region_ledEncendido(LedOnOff* handle);
static void ledOnOff_exseq_main_region(LedOnOff* handle);
static void ledOnOff_react_main_region_ledApagado(LedOnOff* handle);
static void ledOnOff_react_main_region_ledEncendido(LedOnOff* handle);
static void ledOnOff_react_main_region__entry_Default(LedOnOff* handle);
static void ledOnOff_clearInEvents(LedOnOff* handle);
static void ledOnOff_clearOutEvents(LedOnOff* handle);


void ledOnOff_init(LedOnOff* handle)
{
	sc_integer i;

	for (i = 0; i < LEDONOFF_MAX_ORTHOGONAL_STATES; ++i)
	{
		handle->stateConfVector[i] = LedOnOff_last_state;
	}
	
	
	handle->stateConfVectorPosition = 0;

	ledOnOff_clearInEvents(handle);
	ledOnOff_clearOutEvents(handle);


}

void ledOnOff_enter(LedOnOff* handle)
{
	/* Default enter sequence for statechart ledOnOff */
	ledOnOff_enseq_main_region_default(handle);
}

void ledOnOff_exit(LedOnOff* handle)
{
	/* Default exit sequence for statechart ledOnOff */
	ledOnOff_exseq_main_region(handle);
}

sc_boolean ledOnOff_isActive(const LedOnOff* handle)
{
	sc_boolean result;
	if (handle->stateConfVector[0] != LedOnOff_last_state)
	{
		result =  bool_true;
	}
	else
	{
		result = bool_false;
	}
	return result;
}

/* 
 * Always returns 'false' since this state machine can never become final.
 */
sc_boolean ledOnOff_isFinal(const LedOnOff* handle)
{
   return bool_false;
}

static void ledOnOff_clearInEvents(LedOnOff* handle)
{
	handle->timeEvents.ledOnOff_main_region_ledApagado_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_ledEncendido_tev0_raised = bool_false;
}

static void ledOnOff_clearOutEvents(LedOnOff* handle)
{
}

void ledOnOff_runCycle(LedOnOff* handle)
{
	
	ledOnOff_clearOutEvents(handle);
	
	for (handle->stateConfVectorPosition = 0;
		handle->stateConfVectorPosition < LEDONOFF_MAX_ORTHOGONAL_STATES;
		handle->stateConfVectorPosition++)
		{
			
		switch (handle->stateConfVector[handle->stateConfVectorPosition])
		{
		case LedOnOff_main_region_ledApagado :
		{
			ledOnOff_react_main_region_ledApagado(handle);
			break;
		}
		case LedOnOff_main_region_ledEncendido :
		{
			ledOnOff_react_main_region_ledEncendido(handle);
			break;
		}
		default:
			break;
		}
	}
	
	ledOnOff_clearInEvents(handle);
}

void ledOnOff_raiseTimeEvent(const LedOnOff* handle, sc_eventid evid)
{
	if ( ((sc_intptr_t)evid) >= ((sc_intptr_t)&(handle->timeEvents))
		&&  ((sc_intptr_t)evid) < ((sc_intptr_t)&(handle->timeEvents)) + sizeof(LedOnOffTimeEvents))
		{
		*(sc_boolean*)evid = bool_true;
	}		
}

sc_boolean ledOnOff_isStateActive(const LedOnOff* handle, LedOnOffStates state)
{
	sc_boolean result = bool_false;
	switch (state)
	{
		case LedOnOff_main_region_ledApagado :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_ledApagado
			);
			break;
		case LedOnOff_main_region_ledEncendido :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_ledEncendido
			);
			break;
		default:
			result = bool_false;
			break;
	}
	return result;
}




/* implementations of all internal functions */

static sc_boolean ledOnOff_check_main_region_ledApagado_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_ledApagado_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_ledEncendido_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_ledEncendido_tev0_raised;
}

static void ledOnOff_effect_main_region_ledApagado_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_ledApagado(handle);
	ledOnOff_enseq_main_region_ledEncendido_default(handle);
}

static void ledOnOff_effect_main_region_ledEncendido_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_ledEncendido(handle);
	ledOnOff_enseq_main_region_ledApagado_default(handle);
}

/* Entry action for state 'ledApagado'. */
static void ledOnOff_enact_main_region_ledApagado(LedOnOff* handle)
{
	/* Entry action for state 'ledApagado'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_ledApagado_tev0_raised) , 250, bool_false);
	ledOnOffIface_ledOff(handle);
}

/* Entry action for state 'ledEncendido'. */
static void ledOnOff_enact_main_region_ledEncendido(LedOnOff* handle)
{
	/* Entry action for state 'ledEncendido'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_ledEncendido_tev0_raised) , 250, bool_false);
	ledOnOffIface_ledOn(handle);
}

/* Exit action for state 'ledApagado'. */
static void ledOnOff_exact_main_region_ledApagado(LedOnOff* handle)
{
	/* Exit action for state 'ledApagado'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_ledApagado_tev0_raised) );		
}

/* Exit action for state 'ledEncendido'. */
static void ledOnOff_exact_main_region_ledEncendido(LedOnOff* handle)
{
	/* Exit action for state 'ledEncendido'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_ledEncendido_tev0_raised) );		
}

/* 'default' enter sequence for state ledApagado */
static void ledOnOff_enseq_main_region_ledApagado_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state ledApagado */
	ledOnOff_enact_main_region_ledApagado(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_ledApagado;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state ledEncendido */
static void ledOnOff_enseq_main_region_ledEncendido_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state ledEncendido */
	ledOnOff_enact_main_region_ledEncendido(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_ledEncendido;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void ledOnOff_enseq_main_region_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region main region */
	ledOnOff_react_main_region__entry_Default(handle);
}

/* Default exit sequence for state ledApagado */
static void ledOnOff_exseq_main_region_ledApagado(LedOnOff* handle)
{
	/* Default exit sequence for state ledApagado */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_ledApagado(handle);
}

/* Default exit sequence for state ledEncendido */
static void ledOnOff_exseq_main_region_ledEncendido(LedOnOff* handle)
{
	/* Default exit sequence for state ledEncendido */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_ledEncendido(handle);
}

/* Default exit sequence for region main region */
static void ledOnOff_exseq_main_region(LedOnOff* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of ledOnOff.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_ledApagado :
		{
			ledOnOff_exseq_main_region_ledApagado(handle);
			break;
		}
		case LedOnOff_main_region_ledEncendido :
		{
			ledOnOff_exseq_main_region_ledEncendido(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state ledApagado. */
static void ledOnOff_react_main_region_ledApagado(LedOnOff* handle)
{
	/* The reactions of state ledApagado. */
	if (ledOnOff_check_main_region_ledApagado_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_ledApagado_tr0(handle);
	} 
}

/* The reactions of state ledEncendido. */
static void ledOnOff_react_main_region_ledEncendido(LedOnOff* handle)
{
	/* The reactions of state ledEncendido. */
	if (ledOnOff_check_main_region_ledEncendido_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_ledEncendido_tr0(handle);
	} 
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_ledApagado_default(handle);
}


