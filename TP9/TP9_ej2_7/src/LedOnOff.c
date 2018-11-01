
#include <stdlib.h>
#include <string.h>
#include "sc_types.h"
#include "LedOnOff.h"
#include "LedOnOffRequired.h"
/*! \file Implementation of the state machine 'ledOnOff'
*/

/* prototypes of all internal functions */
static sc_boolean ledOnOff_check_main_region_led0_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_led0_r1_encendido_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_led0_r1_apagado_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_led3_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_led3_r1_encendido_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_led3_r1_apagado_tr0_tr0(const LedOnOff* handle);
static void ledOnOff_effect_main_region_led0_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_led0_r1_encendido_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_led0_r1_apagado_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_led3_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_led3_r1_encendido_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_led3_r1_apagado_tr0(LedOnOff* handle);
static void ledOnOff_enact_main_region_led0(LedOnOff* handle);
static void ledOnOff_enact_main_region_led0_r1_encendido(LedOnOff* handle);
static void ledOnOff_enact_main_region_led0_r1_apagado(LedOnOff* handle);
static void ledOnOff_enact_main_region_led3(LedOnOff* handle);
static void ledOnOff_enact_main_region_led3_r1_encendido(LedOnOff* handle);
static void ledOnOff_enact_main_region_led3_r1_apagado(LedOnOff* handle);
static void ledOnOff_exact_main_region_led0_r1_encendido(LedOnOff* handle);
static void ledOnOff_exact_main_region_led0_r1_apagado(LedOnOff* handle);
static void ledOnOff_exact_main_region_led3_r1_encendido(LedOnOff* handle);
static void ledOnOff_exact_main_region_led3_r1_apagado(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led0_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led0_r1_encendido_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led0_r1_apagado_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led3_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led3_r1_encendido_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led3_r1_apagado_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led0_r1_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led3_r1_default(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led0(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led0_r1_encendido(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led0_r1_apagado(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led3(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led3_r1_encendido(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led3_r1_apagado(LedOnOff* handle);
static void ledOnOff_exseq_main_region(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led0_r1(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led3_r1(LedOnOff* handle);
static void ledOnOff_react_main_region_led0_r1_encendido(LedOnOff* handle);
static void ledOnOff_react_main_region_led0_r1_apagado(LedOnOff* handle);
static void ledOnOff_react_main_region_led3_r1_encendido(LedOnOff* handle);
static void ledOnOff_react_main_region_led3_r1_apagado(LedOnOff* handle);
static void ledOnOff_react_main_region__entry_Default(LedOnOff* handle);
static void ledOnOff_react_main_region_led0_r1__entry_Default(LedOnOff* handle);
static void ledOnOff_react_main_region_led3_r1__entry_Default(LedOnOff* handle);
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

	/* Default init sequence for statechart ledOnOff */
	handle->internal.cnt = 0;

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
	handle->iface.keyPress_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_led0_r1_encendido_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_led0_r1_apagado_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_led3_r1_encendido_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_led3_r1_apagado_tev0_raised = bool_false;
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
		case LedOnOff_main_region_led0_r1_encendido :
		{
			ledOnOff_react_main_region_led0_r1_encendido(handle);
			break;
		}
		case LedOnOff_main_region_led0_r1_apagado :
		{
			ledOnOff_react_main_region_led0_r1_apagado(handle);
			break;
		}
		case LedOnOff_main_region_led3_r1_encendido :
		{
			ledOnOff_react_main_region_led3_r1_encendido(handle);
			break;
		}
		case LedOnOff_main_region_led3_r1_apagado :
		{
			ledOnOff_react_main_region_led3_r1_apagado(handle);
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
		case LedOnOff_main_region_led0 :
			result = (sc_boolean) (handle->stateConfVector[0] >= LedOnOff_main_region_led0
				&& handle->stateConfVector[0] <= LedOnOff_main_region_led0_r1_apagado);
			break;
		case LedOnOff_main_region_led0_r1_encendido :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_led0_r1_encendido
			);
			break;
		case LedOnOff_main_region_led0_r1_apagado :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_led0_r1_apagado
			);
			break;
		case LedOnOff_main_region_led3 :
			result = (sc_boolean) (handle->stateConfVector[0] >= LedOnOff_main_region_led3
				&& handle->stateConfVector[0] <= LedOnOff_main_region_led3_r1_apagado);
			break;
		case LedOnOff_main_region_led3_r1_encendido :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_led3_r1_encendido
			);
			break;
		case LedOnOff_main_region_led3_r1_apagado :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_led3_r1_apagado
			);
			break;
		default:
			result = bool_false;
			break;
	}
	return result;
}

void ledOnOffIface_raise_keyPress(LedOnOff* handle)
{
	handle->iface.keyPress_raised = bool_true;
}



/* implementations of all internal functions */

static sc_boolean ledOnOff_check_main_region_led0_tr0_tr0(const LedOnOff* handle)
{
	return handle->iface.keyPress_raised;
}

static sc_boolean ledOnOff_check_main_region_led0_r1_encendido_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_led0_r1_encendido_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_led0_r1_apagado_tr0_tr0(const LedOnOff* handle)
{
	return ((handle->timeEvents.ledOnOff_main_region_led0_r1_apagado_tev0_raised) && (handle->internal.cnt < 4)) ? bool_true : bool_false;
}

static sc_boolean ledOnOff_check_main_region_led3_tr0_tr0(const LedOnOff* handle)
{
	return handle->iface.keyPress_raised;
}

static sc_boolean ledOnOff_check_main_region_led3_r1_encendido_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_led3_r1_encendido_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_led3_r1_apagado_tr0_tr0(const LedOnOff* handle)
{
	return ((handle->timeEvents.ledOnOff_main_region_led3_r1_apagado_tev0_raised) && (handle->internal.cnt < 4)) ? bool_true : bool_false;
}

static void ledOnOff_effect_main_region_led0_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_led0(handle);
	ledOnOff_enseq_main_region_led3_default(handle);
}

static void ledOnOff_effect_main_region_led0_r1_encendido_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_led0_r1_encendido(handle);
	ledOnOff_enseq_main_region_led0_r1_apagado_default(handle);
}

static void ledOnOff_effect_main_region_led0_r1_apagado_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_led0_r1_apagado(handle);
	ledOnOff_enseq_main_region_led0_r1_encendido_default(handle);
}

static void ledOnOff_effect_main_region_led3_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_led3(handle);
	ledOnOff_enseq_main_region_led0_default(handle);
}

static void ledOnOff_effect_main_region_led3_r1_encendido_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_led3_r1_encendido(handle);
	ledOnOff_enseq_main_region_led3_r1_apagado_default(handle);
}

static void ledOnOff_effect_main_region_led3_r1_apagado_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_led3_r1_apagado(handle);
	ledOnOff_enseq_main_region_led3_r1_encendido_default(handle);
}

/* Entry action for state 'led0'. */
static void ledOnOff_enact_main_region_led0(LedOnOff* handle)
{
	/* Entry action for state 'led0'. */
	ledOnOffIface_ledOff(handle, 3);
	handle->internal.cnt = 0;
}

/* Entry action for state 'encendido'. */
static void ledOnOff_enact_main_region_led0_r1_encendido(LedOnOff* handle)
{
	/* Entry action for state 'encendido'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_led0_r1_encendido_tev0_raised) , 250, bool_false);
	ledOnOffIface_ledOn(handle, 0);
	handle->internal.cnt = handle->internal.cnt + 1;
}

/* Entry action for state 'apagado'. */
static void ledOnOff_enact_main_region_led0_r1_apagado(LedOnOff* handle)
{
	/* Entry action for state 'apagado'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_led0_r1_apagado_tev0_raised) , 250, bool_false);
	ledOnOffIface_ledOff(handle, 0);
}

/* Entry action for state 'led3'. */
static void ledOnOff_enact_main_region_led3(LedOnOff* handle)
{
	/* Entry action for state 'led3'. */
	ledOnOffIface_ledOff(handle, 0);
	handle->internal.cnt = 0;
}

/* Entry action for state 'encendido'. */
static void ledOnOff_enact_main_region_led3_r1_encendido(LedOnOff* handle)
{
	/* Entry action for state 'encendido'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_led3_r1_encendido_tev0_raised) , 250, bool_false);
	ledOnOffIface_ledOn(handle, 3);
	handle->internal.cnt = handle->internal.cnt + 1;
}

/* Entry action for state 'apagado'. */
static void ledOnOff_enact_main_region_led3_r1_apagado(LedOnOff* handle)
{
	/* Entry action for state 'apagado'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_led3_r1_apagado_tev0_raised) , 250, bool_false);
	ledOnOffIface_ledOff(handle, 3);
}

/* Exit action for state 'encendido'. */
static void ledOnOff_exact_main_region_led0_r1_encendido(LedOnOff* handle)
{
	/* Exit action for state 'encendido'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_led0_r1_encendido_tev0_raised) );		
}

/* Exit action for state 'apagado'. */
static void ledOnOff_exact_main_region_led0_r1_apagado(LedOnOff* handle)
{
	/* Exit action for state 'apagado'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_led0_r1_apagado_tev0_raised) );		
}

/* Exit action for state 'encendido'. */
static void ledOnOff_exact_main_region_led3_r1_encendido(LedOnOff* handle)
{
	/* Exit action for state 'encendido'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_led3_r1_encendido_tev0_raised) );		
}

/* Exit action for state 'apagado'. */
static void ledOnOff_exact_main_region_led3_r1_apagado(LedOnOff* handle)
{
	/* Exit action for state 'apagado'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_led3_r1_apagado_tev0_raised) );		
}

/* 'default' enter sequence for state led0 */
static void ledOnOff_enseq_main_region_led0_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led0 */
	ledOnOff_enact_main_region_led0(handle);
	ledOnOff_enseq_main_region_led0_r1_default(handle);
}

/* 'default' enter sequence for state encendido */
static void ledOnOff_enseq_main_region_led0_r1_encendido_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state encendido */
	ledOnOff_enact_main_region_led0_r1_encendido(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_led0_r1_encendido;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state apagado */
static void ledOnOff_enseq_main_region_led0_r1_apagado_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state apagado */
	ledOnOff_enact_main_region_led0_r1_apagado(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_led0_r1_apagado;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led3 */
static void ledOnOff_enseq_main_region_led3_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led3 */
	ledOnOff_enact_main_region_led3(handle);
	ledOnOff_enseq_main_region_led3_r1_default(handle);
}

/* 'default' enter sequence for state encendido */
static void ledOnOff_enseq_main_region_led3_r1_encendido_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state encendido */
	ledOnOff_enact_main_region_led3_r1_encendido(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_led3_r1_encendido;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state apagado */
static void ledOnOff_enseq_main_region_led3_r1_apagado_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state apagado */
	ledOnOff_enact_main_region_led3_r1_apagado(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_led3_r1_apagado;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void ledOnOff_enseq_main_region_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region main region */
	ledOnOff_react_main_region__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void ledOnOff_enseq_main_region_led0_r1_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region r1 */
	ledOnOff_react_main_region_led0_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void ledOnOff_enseq_main_region_led3_r1_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region r1 */
	ledOnOff_react_main_region_led3_r1__entry_Default(handle);
}

/* Default exit sequence for state led0 */
static void ledOnOff_exseq_main_region_led0(LedOnOff* handle)
{
	/* Default exit sequence for state led0 */
	ledOnOff_exseq_main_region_led0_r1(handle);
}

/* Default exit sequence for state encendido */
static void ledOnOff_exseq_main_region_led0_r1_encendido(LedOnOff* handle)
{
	/* Default exit sequence for state encendido */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_led0_r1_encendido(handle);
}

/* Default exit sequence for state apagado */
static void ledOnOff_exseq_main_region_led0_r1_apagado(LedOnOff* handle)
{
	/* Default exit sequence for state apagado */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_led0_r1_apagado(handle);
}

/* Default exit sequence for state led3 */
static void ledOnOff_exseq_main_region_led3(LedOnOff* handle)
{
	/* Default exit sequence for state led3 */
	ledOnOff_exseq_main_region_led3_r1(handle);
}

/* Default exit sequence for state encendido */
static void ledOnOff_exseq_main_region_led3_r1_encendido(LedOnOff* handle)
{
	/* Default exit sequence for state encendido */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_led3_r1_encendido(handle);
}

/* Default exit sequence for state apagado */
static void ledOnOff_exseq_main_region_led3_r1_apagado(LedOnOff* handle)
{
	/* Default exit sequence for state apagado */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_led3_r1_apagado(handle);
}

/* Default exit sequence for region main region */
static void ledOnOff_exseq_main_region(LedOnOff* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of ledOnOff.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_led0_r1_encendido :
		{
			ledOnOff_exseq_main_region_led0_r1_encendido(handle);
			break;
		}
		case LedOnOff_main_region_led0_r1_apagado :
		{
			ledOnOff_exseq_main_region_led0_r1_apagado(handle);
			break;
		}
		case LedOnOff_main_region_led3_r1_encendido :
		{
			ledOnOff_exseq_main_region_led3_r1_encendido(handle);
			break;
		}
		case LedOnOff_main_region_led3_r1_apagado :
		{
			ledOnOff_exseq_main_region_led3_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void ledOnOff_exseq_main_region_led0_r1(LedOnOff* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of ledOnOff.main_region.led0.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_led0_r1_encendido :
		{
			ledOnOff_exseq_main_region_led0_r1_encendido(handle);
			break;
		}
		case LedOnOff_main_region_led0_r1_apagado :
		{
			ledOnOff_exseq_main_region_led0_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void ledOnOff_exseq_main_region_led3_r1(LedOnOff* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of ledOnOff.main_region.led3.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_led3_r1_encendido :
		{
			ledOnOff_exseq_main_region_led3_r1_encendido(handle);
			break;
		}
		case LedOnOff_main_region_led3_r1_apagado :
		{
			ledOnOff_exseq_main_region_led3_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state encendido. */
static void ledOnOff_react_main_region_led0_r1_encendido(LedOnOff* handle)
{
	/* The reactions of state encendido. */
	if (ledOnOff_check_main_region_led0_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_led0_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_led0_r1_encendido_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_led0_r1_encendido_tr0(handle);
		} 
	}
}

/* The reactions of state apagado. */
static void ledOnOff_react_main_region_led0_r1_apagado(LedOnOff* handle)
{
	/* The reactions of state apagado. */
	if (ledOnOff_check_main_region_led0_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_led0_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_led0_r1_apagado_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_led0_r1_apagado_tr0(handle);
		} 
	}
}

/* The reactions of state encendido. */
static void ledOnOff_react_main_region_led3_r1_encendido(LedOnOff* handle)
{
	/* The reactions of state encendido. */
	if (ledOnOff_check_main_region_led3_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_led3_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_led3_r1_encendido_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_led3_r1_encendido_tr0(handle);
		} 
	}
}

/* The reactions of state apagado. */
static void ledOnOff_react_main_region_led3_r1_apagado(LedOnOff* handle)
{
	/* The reactions of state apagado. */
	if (ledOnOff_check_main_region_led3_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_led3_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_led3_r1_apagado_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_led3_r1_apagado_tr0(handle);
		} 
	}
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_led0_default(handle);
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region_led0_r1__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_led0_r1_encendido_default(handle);
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region_led3_r1__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_led3_r1_encendido_default(handle);
}


