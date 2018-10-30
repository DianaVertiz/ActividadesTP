
#include <stdlib.h>
#include <string.h>
#include "../src/sc_types.h"
#include "Cerradura.h"
#include "CerraduraRequired.h"
/*! \file Implementation of the state machine 'cerradura'
*/

/* prototypes of all internal functions */
static sc_boolean cerradura_check_main_region_led0_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_led0_r1_encendido_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_led0_r1_apagado_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_led1_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_led1_r1_encendido_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_led1_r1_apagado_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Closed_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Closed_tr1_tr1(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Closed__region0_Wait_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Closed__region0_getKey_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Unlocked_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Unlocked__region0_Wait_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Unlocked__region0_getKey_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Leds_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Leds_r1_encendido_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Leds_r1_apagado_tr0_tr0(const Cerradura* handle);
static void cerradura_effect_main_region_led0_tr0(Cerradura* handle);
static void cerradura_effect_main_region_led0_r1_encendido_tr0(Cerradura* handle);
static void cerradura_effect_main_region_led0_r1_apagado_tr0(Cerradura* handle);
static void cerradura_effect_main_region_led1_tr0(Cerradura* handle);
static void cerradura_effect_main_region_led1_r1_encendido_tr0(Cerradura* handle);
static void cerradura_effect_main_region_led1_r1_apagado_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Closed_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Closed_tr1(Cerradura* handle);
static void cerradura_effect_main_region_Closed__region0_Wait_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Closed__region0_getKey_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Unlocked_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Unlocked__region0_Wait_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Unlocked__region0_getKey_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Leds_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Leds_r1_encendido_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Leds_r1_apagado_tr0(Cerradura* handle);
static void cerradura_enact_main_region_led0(Cerradura* handle);
static void cerradura_enact_main_region_led0_r1_encendido(Cerradura* handle);
static void cerradura_enact_main_region_led0_r1_apagado(Cerradura* handle);
static void cerradura_enact_main_region_led1(Cerradura* handle);
static void cerradura_enact_main_region_led1_r1_encendido(Cerradura* handle);
static void cerradura_enact_main_region_led1_r1_apagado(Cerradura* handle);
static void cerradura_enact_main_region_Closed(Cerradura* handle);
static void cerradura_enact_main_region_Closed__region0_Wait(Cerradura* handle);
static void cerradura_enact_main_region_Closed__region0_getKey(Cerradura* handle);
static void cerradura_enact_main_region_Unlocked(Cerradura* handle);
static void cerradura_enact_main_region_Unlocked__region0_Wait(Cerradura* handle);
static void cerradura_enact_main_region_Unlocked__region0_getKey(Cerradura* handle);
static void cerradura_enact_main_region_Leds(Cerradura* handle);
static void cerradura_enact_main_region_Leds_r1_encendido(Cerradura* handle);
static void cerradura_enact_main_region_Leds_r1_apagado(Cerradura* handle);
static void cerradura_exact_main_region_led0_r1_encendido(Cerradura* handle);
static void cerradura_exact_main_region_led0_r1_apagado(Cerradura* handle);
static void cerradura_exact_main_region_led1_r1_encendido(Cerradura* handle);
static void cerradura_exact_main_region_led1_r1_apagado(Cerradura* handle);
static void cerradura_exact_main_region_Leds_r1_encendido(Cerradura* handle);
static void cerradura_exact_main_region_Leds_r1_apagado(Cerradura* handle);
static void cerradura_enseq_main_region_led0_default(Cerradura* handle);
static void cerradura_enseq_main_region_led0_r1_encendido_default(Cerradura* handle);
static void cerradura_enseq_main_region_led0_r1_apagado_default(Cerradura* handle);
static void cerradura_enseq_main_region_led1_default(Cerradura* handle);
static void cerradura_enseq_main_region_led1_r1_encendido_default(Cerradura* handle);
static void cerradura_enseq_main_region_led1_r1_apagado_default(Cerradura* handle);
static void cerradura_enseq_main_region_Closed_default(Cerradura* handle);
static void cerradura_enseq_main_region_Closed__region0_Wait_default(Cerradura* handle);
static void cerradura_enseq_main_region_Closed__region0_getKey_default(Cerradura* handle);
static void cerradura_enseq_main_region_Unlocked_default(Cerradura* handle);
static void cerradura_enseq_main_region_Unlocked__region0_Wait_default(Cerradura* handle);
static void cerradura_enseq_main_region_Unlocked__region0_getKey_default(Cerradura* handle);
static void cerradura_enseq_main_region_Leds_default(Cerradura* handle);
static void cerradura_enseq_main_region_Leds_r1_encendido_default(Cerradura* handle);
static void cerradura_enseq_main_region_Leds_r1_apagado_default(Cerradura* handle);
static void cerradura_enseq_main_region_default(Cerradura* handle);
static void cerradura_enseq_main_region_led0_r1_default(Cerradura* handle);
static void cerradura_enseq_main_region_led1_r1_default(Cerradura* handle);
static void cerradura_enseq_main_region_Closed__region0_default(Cerradura* handle);
static void cerradura_enseq_main_region_Unlocked__region0_default(Cerradura* handle);
static void cerradura_enseq_main_region_Leds_r1_default(Cerradura* handle);
static void cerradura_exseq_main_region_led0(Cerradura* handle);
static void cerradura_exseq_main_region_led0_r1_encendido(Cerradura* handle);
static void cerradura_exseq_main_region_led0_r1_apagado(Cerradura* handle);
static void cerradura_exseq_main_region_led1(Cerradura* handle);
static void cerradura_exseq_main_region_led1_r1_encendido(Cerradura* handle);
static void cerradura_exseq_main_region_led1_r1_apagado(Cerradura* handle);
static void cerradura_exseq_main_region_Closed(Cerradura* handle);
static void cerradura_exseq_main_region_Closed__region0_Wait(Cerradura* handle);
static void cerradura_exseq_main_region_Closed__region0_getKey(Cerradura* handle);
static void cerradura_exseq_main_region_Unlocked(Cerradura* handle);
static void cerradura_exseq_main_region_Unlocked__region0_Wait(Cerradura* handle);
static void cerradura_exseq_main_region_Unlocked__region0_getKey(Cerradura* handle);
static void cerradura_exseq_main_region_Leds(Cerradura* handle);
static void cerradura_exseq_main_region_Leds_r1_encendido(Cerradura* handle);
static void cerradura_exseq_main_region_Leds_r1_apagado(Cerradura* handle);
static void cerradura_exseq_main_region(Cerradura* handle);
static void cerradura_exseq_main_region_led0_r1(Cerradura* handle);
static void cerradura_exseq_main_region_led1_r1(Cerradura* handle);
static void cerradura_exseq_main_region_Closed__region0(Cerradura* handle);
static void cerradura_exseq_main_region_Unlocked__region0(Cerradura* handle);
static void cerradura_exseq_main_region_Leds_r1(Cerradura* handle);
static void cerradura_react_main_region_led0_r1_encendido(Cerradura* handle);
static void cerradura_react_main_region_led0_r1_apagado(Cerradura* handle);
static void cerradura_react_main_region_led1_r1_encendido(Cerradura* handle);
static void cerradura_react_main_region_led1_r1_apagado(Cerradura* handle);
static void cerradura_react_main_region_Closed__region0_Wait(Cerradura* handle);
static void cerradura_react_main_region_Closed__region0_getKey(Cerradura* handle);
static void cerradura_react_main_region_Unlocked__region0_Wait(Cerradura* handle);
static void cerradura_react_main_region_Unlocked__region0_getKey(Cerradura* handle);
static void cerradura_react_main_region_Leds_r1_encendido(Cerradura* handle);
static void cerradura_react_main_region_Leds_r1_apagado(Cerradura* handle);
static void cerradura_react_main_region__entry_Default(Cerradura* handle);
static void cerradura_react_main_region_led0_r1__entry_Default(Cerradura* handle);
static void cerradura_react_main_region_led1_r1__entry_Default(Cerradura* handle);
static void cerradura_react_main_region_Closed__region0__entry_Default(Cerradura* handle);
static void cerradura_react_main_region_Unlocked__region0__entry_Default(Cerradura* handle);
static void cerradura_react_main_region_Leds_r1__entry_Default(Cerradura* handle);
static void cerradura_clearInEvents(Cerradura* handle);
static void cerradura_clearOutEvents(Cerradura* handle);


void cerradura_init(Cerradura* handle)
{
	sc_integer i;

	for (i = 0; i < CERRADURA_MAX_ORTHOGONAL_STATES; ++i)
	{
		handle->stateConfVector[i] = Cerradura_last_state;
	}
	
	
	handle->stateConfVectorPosition = 0;

	cerradura_clearInEvents(handle);
	cerradura_clearOutEvents(handle);

	/* Default init sequence for statechart cerradura */
	handle->internal.claveAux = 0;
	handle->internal.claveIn = 0;
	handle->internal.claveDefault = 123321;
	handle->internal.aux = 0;
	handle->internal.aux2 = 0;
	handle->internal.iter = 0;
	handle->internal.iter2 = 0;
	handle->internal.wLen = 6;
	handle->internal.cnt = 0;

}

void cerradura_enter(Cerradura* handle)
{
	/* Default enter sequence for statechart cerradura */
	cerradura_enseq_main_region_default(handle);
}

void cerradura_exit(Cerradura* handle)
{
	/* Default exit sequence for statechart cerradura */
	cerradura_exseq_main_region(handle);
}

sc_boolean cerradura_isActive(const Cerradura* handle)
{
	sc_boolean result;
	if (handle->stateConfVector[0] != Cerradura_last_state)
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
sc_boolean cerradura_isFinal(const Cerradura* handle)
{
   return bool_false;
}

static void cerradura_clearInEvents(Cerradura* handle)
{
	handle->iface.keyPressed_raised = bool_false;
	handle->timeEvents.cerradura_main_region_led0_r1_encendido_tev0_raised = bool_false;
	handle->timeEvents.cerradura_main_region_led0_r1_apagado_tev0_raised = bool_false;
	handle->timeEvents.cerradura_main_region_led1_r1_encendido_tev0_raised = bool_false;
	handle->timeEvents.cerradura_main_region_led1_r1_apagado_tev0_raised = bool_false;
	handle->timeEvents.cerradura_main_region_Leds_r1_encendido_tev0_raised = bool_false;
	handle->timeEvents.cerradura_main_region_Leds_r1_apagado_tev0_raised = bool_false;
}

static void cerradura_clearOutEvents(Cerradura* handle)
{
}

void cerradura_runCycle(Cerradura* handle)
{
	
	cerradura_clearOutEvents(handle);
	
	for (handle->stateConfVectorPosition = 0;
		handle->stateConfVectorPosition < CERRADURA_MAX_ORTHOGONAL_STATES;
		handle->stateConfVectorPosition++)
		{
			
		switch (handle->stateConfVector[handle->stateConfVectorPosition])
		{
		case Cerradura_main_region_led0_r1_encendido :
		{
			cerradura_react_main_region_led0_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_led0_r1_apagado :
		{
			cerradura_react_main_region_led0_r1_apagado(handle);
			break;
		}
		case Cerradura_main_region_led1_r1_encendido :
		{
			cerradura_react_main_region_led1_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_led1_r1_apagado :
		{
			cerradura_react_main_region_led1_r1_apagado(handle);
			break;
		}
		case Cerradura_main_region_Closed__region0_Wait :
		{
			cerradura_react_main_region_Closed__region0_Wait(handle);
			break;
		}
		case Cerradura_main_region_Closed__region0_getKey :
		{
			cerradura_react_main_region_Closed__region0_getKey(handle);
			break;
		}
		case Cerradura_main_region_Unlocked__region0_Wait :
		{
			cerradura_react_main_region_Unlocked__region0_Wait(handle);
			break;
		}
		case Cerradura_main_region_Unlocked__region0_getKey :
		{
			cerradura_react_main_region_Unlocked__region0_getKey(handle);
			break;
		}
		case Cerradura_main_region_Leds_r1_encendido :
		{
			cerradura_react_main_region_Leds_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_Leds_r1_apagado :
		{
			cerradura_react_main_region_Leds_r1_apagado(handle);
			break;
		}
		default:
			break;
		}
	}
	
	cerradura_clearInEvents(handle);
}

void cerradura_raiseTimeEvent(const Cerradura* handle, sc_eventid evid)
{
	if ( ((sc_intptr_t)evid) >= ((sc_intptr_t)&(handle->timeEvents))
		&&  ((sc_intptr_t)evid) < ((sc_intptr_t)&(handle->timeEvents)) + sizeof(CerraduraTimeEvents))
		{
		*(sc_boolean*)evid = bool_true;
	}		
}

sc_boolean cerradura_isStateActive(const Cerradura* handle, CerraduraStates state)
{
	sc_boolean result = bool_false;
	switch (state)
	{
		case Cerradura_main_region_led0 :
			result = (sc_boolean) (handle->stateConfVector[0] >= Cerradura_main_region_led0
				&& handle->stateConfVector[0] <= Cerradura_main_region_led0_r1_apagado);
			break;
		case Cerradura_main_region_led0_r1_encendido :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_led0_r1_encendido
			);
			break;
		case Cerradura_main_region_led0_r1_apagado :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_led0_r1_apagado
			);
			break;
		case Cerradura_main_region_led1 :
			result = (sc_boolean) (handle->stateConfVector[0] >= Cerradura_main_region_led1
				&& handle->stateConfVector[0] <= Cerradura_main_region_led1_r1_apagado);
			break;
		case Cerradura_main_region_led1_r1_encendido :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_led1_r1_encendido
			);
			break;
		case Cerradura_main_region_led1_r1_apagado :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_led1_r1_apagado
			);
			break;
		case Cerradura_main_region_Closed :
			result = (sc_boolean) (handle->stateConfVector[0] >= Cerradura_main_region_Closed
				&& handle->stateConfVector[0] <= Cerradura_main_region_Closed__region0_getKey);
			break;
		case Cerradura_main_region_Closed__region0_Wait :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Closed__region0_Wait
			);
			break;
		case Cerradura_main_region_Closed__region0_getKey :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Closed__region0_getKey
			);
			break;
		case Cerradura_main_region_Unlocked :
			result = (sc_boolean) (handle->stateConfVector[0] >= Cerradura_main_region_Unlocked
				&& handle->stateConfVector[0] <= Cerradura_main_region_Unlocked__region0_getKey);
			break;
		case Cerradura_main_region_Unlocked__region0_Wait :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Unlocked__region0_Wait
			);
			break;
		case Cerradura_main_region_Unlocked__region0_getKey :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Unlocked__region0_getKey
			);
			break;
		case Cerradura_main_region_Leds :
			result = (sc_boolean) (handle->stateConfVector[0] >= Cerradura_main_region_Leds
				&& handle->stateConfVector[0] <= Cerradura_main_region_Leds_r1_apagado);
			break;
		case Cerradura_main_region_Leds_r1_encendido :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Leds_r1_encendido
			);
			break;
		case Cerradura_main_region_Leds_r1_apagado :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Leds_r1_apagado
			);
			break;
		default:
			result = bool_false;
			break;
	}
	return result;
}

void cerraduraIface_raise_keyPressed(Cerradura* handle, sc_integer value)
{
	handle->iface.keyPressed_value = value;
	handle->iface.keyPressed_raised = bool_true;
}



/* implementations of all internal functions */

static sc_boolean cerradura_check_main_region_led0_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.cnt >= 4) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_led0_r1_encendido_tr0_tr0(const Cerradura* handle)
{
	return handle->timeEvents.cerradura_main_region_led0_r1_encendido_tev0_raised;
}

static sc_boolean cerradura_check_main_region_led0_r1_apagado_tr0_tr0(const Cerradura* handle)
{
	return ((handle->timeEvents.cerradura_main_region_led0_r1_apagado_tev0_raised) && (handle->internal.cnt < 4)) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_led1_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.cnt >= 4) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_led1_r1_encendido_tr0_tr0(const Cerradura* handle)
{
	return handle->timeEvents.cerradura_main_region_led1_r1_encendido_tev0_raised;
}

static sc_boolean cerradura_check_main_region_led1_r1_apagado_tr0_tr0(const Cerradura* handle)
{
	return ((handle->timeEvents.cerradura_main_region_led1_r1_apagado_tev0_raised) && (handle->internal.cnt < 4)) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Closed_tr0_tr0(const Cerradura* handle)
{
	return ((handle->internal.claveIn != handle->internal.claveAux) && (handle->internal.iter == handle->internal.wLen)) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Closed_tr1_tr1(const Cerradura* handle)
{
	return (handle->internal.claveIn == handle->internal.claveAux) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Closed__region0_Wait_tr0_tr0(const Cerradura* handle)
{
	return handle->iface.keyPressed_raised;
}

static sc_boolean cerradura_check_main_region_Closed__region0_getKey_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.iter < handle->internal.wLen) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Unlocked_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.iter >= 6) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Unlocked__region0_Wait_tr0_tr0(const Cerradura* handle)
{
	return handle->iface.keyPressed_raised;
}

static sc_boolean cerradura_check_main_region_Unlocked__region0_getKey_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.iter < handle->internal.wLen) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Leds_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.cnt >= 4) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Leds_r1_encendido_tr0_tr0(const Cerradura* handle)
{
	return handle->timeEvents.cerradura_main_region_Leds_r1_encendido_tev0_raised;
}

static sc_boolean cerradura_check_main_region_Leds_r1_apagado_tr0_tr0(const Cerradura* handle)
{
	return ((handle->timeEvents.cerradura_main_region_Leds_r1_apagado_tev0_raised) && (handle->internal.cnt < 4)) ? bool_true : bool_false;
}

static void cerradura_effect_main_region_led0_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_led0(handle);
	cerradura_enseq_main_region_Closed_default(handle);
}

static void cerradura_effect_main_region_led0_r1_encendido_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_led0_r1_encendido(handle);
	cerradura_enseq_main_region_led0_r1_apagado_default(handle);
}

static void cerradura_effect_main_region_led0_r1_apagado_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_led0_r1_apagado(handle);
	cerradura_enseq_main_region_led0_r1_encendido_default(handle);
}

static void cerradura_effect_main_region_led1_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_led1(handle);
	cerradura_enseq_main_region_Unlocked_default(handle);
}

static void cerradura_effect_main_region_led1_r1_encendido_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_led1_r1_encendido(handle);
	cerradura_enseq_main_region_led1_r1_apagado_default(handle);
}

static void cerradura_effect_main_region_led1_r1_apagado_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_led1_r1_apagado(handle);
	cerradura_enseq_main_region_led1_r1_encendido_default(handle);
}

static void cerradura_effect_main_region_Closed_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Closed(handle);
	cerradura_enseq_main_region_led0_default(handle);
}

static void cerradura_effect_main_region_Closed_tr1(Cerradura* handle)
{
	cerradura_exseq_main_region_Closed(handle);
	cerradura_enseq_main_region_led1_default(handle);
}

static void cerradura_effect_main_region_Closed__region0_Wait_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Closed__region0_Wait(handle);
	cerradura_enseq_main_region_Closed__region0_getKey_default(handle);
}

static void cerradura_effect_main_region_Closed__region0_getKey_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Closed__region0_getKey(handle);
	cerradura_enseq_main_region_Closed__region0_Wait_default(handle);
}

static void cerradura_effect_main_region_Unlocked_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Unlocked(handle);
	cerradura_enseq_main_region_Leds_default(handle);
}

static void cerradura_effect_main_region_Unlocked__region0_Wait_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Unlocked__region0_Wait(handle);
	cerradura_enseq_main_region_Unlocked__region0_getKey_default(handle);
}

static void cerradura_effect_main_region_Unlocked__region0_getKey_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Unlocked__region0_getKey(handle);
	cerradura_enseq_main_region_Unlocked__region0_Wait_default(handle);
}

static void cerradura_effect_main_region_Leds_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Leds(handle);
	cerradura_enseq_main_region_Closed_default(handle);
}

static void cerradura_effect_main_region_Leds_r1_encendido_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Leds_r1_encendido(handle);
	cerradura_enseq_main_region_Leds_r1_apagado_default(handle);
}

static void cerradura_effect_main_region_Leds_r1_apagado_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Leds_r1_apagado(handle);
	cerradura_enseq_main_region_Leds_r1_encendido_default(handle);
}

/* Entry action for state 'led0'. */
static void cerradura_enact_main_region_led0(Cerradura* handle)
{
	/* Entry action for state 'led0'. */
	cerraduraIface_setLedFromMask(handle, 8);
	handle->internal.cnt = 0;
}

/* Entry action for state 'encendido'. */
static void cerradura_enact_main_region_led0_r1_encendido(Cerradura* handle)
{
	/* Entry action for state 'encendido'. */
	cerradura_setTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_led0_r1_encendido_tev0_raised) , 250, bool_false);
	cerraduraIface_setLedFromMask(handle, 8);
}

/* Entry action for state 'apagado'. */
static void cerradura_enact_main_region_led0_r1_apagado(Cerradura* handle)
{
	/* Entry action for state 'apagado'. */
	cerradura_setTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_led0_r1_apagado_tev0_raised) , 250, bool_false);
	cerraduraIface_setLedFromMask(handle, 0);
	handle->internal.cnt = handle->internal.cnt + 1;
}

/* Entry action for state 'led1'. */
static void cerradura_enact_main_region_led1(Cerradura* handle)
{
	/* Entry action for state 'led1'. */
	cerraduraIface_setLedFromMask(handle, 32);
	handle->internal.cnt = 0;
}

/* Entry action for state 'encendido'. */
static void cerradura_enact_main_region_led1_r1_encendido(Cerradura* handle)
{
	/* Entry action for state 'encendido'. */
	cerradura_setTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_led1_r1_encendido_tev0_raised) , 250, bool_false);
	cerraduraIface_setLedFromMask(handle, 32);
}

/* Entry action for state 'apagado'. */
static void cerradura_enact_main_region_led1_r1_apagado(Cerradura* handle)
{
	/* Entry action for state 'apagado'. */
	cerradura_setTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_led1_r1_apagado_tev0_raised) , 250, bool_false);
	cerraduraIface_setLedFromMask(handle, 0);
	handle->internal.cnt = handle->internal.cnt + 1;
}

/* Entry action for state 'Closed'. */
static void cerradura_enact_main_region_Closed(Cerradura* handle)
{
	/* Entry action for state 'Closed'. */
	cerraduraIface_setLedFromMask(handle, 0);
	handle->internal.iter = 0;
	handle->internal.claveIn = 0;
	handle->internal.aux = 0;
	handle->internal.claveAux = handle->internal.claveDefault;
}

/* Entry action for state 'Wait'. */
static void cerradura_enact_main_region_Closed__region0_Wait(Cerradura* handle)
{
	/* Entry action for state 'Wait'. */
	handle->internal.claveIn = 10 * handle->internal.claveIn;
}

/* Entry action for state 'getKey'. */
static void cerradura_enact_main_region_Closed__region0_getKey(Cerradura* handle)
{
	/* Entry action for state 'getKey'. */
	handle->internal.iter = handle->internal.iter + 1;
	handle->internal.aux = cerraduraIface_getKeyPressed(handle);
	cerraduraIface_titilar(handle, handle->internal.aux);
	handle->internal.claveIn = handle->internal.claveIn + handle->internal.aux;
}

/* Entry action for state 'Unlocked'. */
static void cerradura_enact_main_region_Unlocked(Cerradura* handle)
{
	/* Entry action for state 'Unlocked'. */
	cerraduraIface_setLedFromMask(handle, 0);
	handle->internal.iter = 0;
	handle->internal.aux = 0;
	handle->internal.claveDefault = 0;
	handle->internal.claveIn = 0;
}

/* Entry action for state 'Wait'. */
static void cerradura_enact_main_region_Unlocked__region0_Wait(Cerradura* handle)
{
	/* Entry action for state 'Wait'. */
	handle->internal.claveDefault = 10 * handle->internal.claveDefault;
}

/* Entry action for state 'getKey'. */
static void cerradura_enact_main_region_Unlocked__region0_getKey(Cerradura* handle)
{
	/* Entry action for state 'getKey'. */
	handle->internal.iter = handle->internal.iter + 1;
	handle->internal.aux = cerraduraIface_getKeyPressed(handle);
	cerraduraIface_titilar(handle, handle->internal.aux);
	handle->internal.claveDefault = handle->internal.claveDefault + handle->internal.aux;
}

/* Entry action for state 'Leds'. */
static void cerradura_enact_main_region_Leds(Cerradura* handle)
{
	/* Entry action for state 'Leds'. */
	handle->internal.cnt = 0;
}

/* Entry action for state 'encendido'. */
static void cerradura_enact_main_region_Leds_r1_encendido(Cerradura* handle)
{
	/* Entry action for state 'encendido'. */
	cerradura_setTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_Leds_r1_encendido_tev0_raised) , 250, bool_false);
	cerraduraIface_ledOn(handle, 0);
	cerraduraIface_ledOn(handle, 1);
	cerraduraIface_ledOn(handle, 2);
	cerraduraIface_ledOn(handle, 3);
}

/* Entry action for state 'apagado'. */
static void cerradura_enact_main_region_Leds_r1_apagado(Cerradura* handle)
{
	/* Entry action for state 'apagado'. */
	cerradura_setTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_Leds_r1_apagado_tev0_raised) , 250, bool_false);
	cerraduraIface_setLedFromMask(handle, 0);
	handle->internal.cnt = handle->internal.cnt + 1;
}

/* Exit action for state 'encendido'. */
static void cerradura_exact_main_region_led0_r1_encendido(Cerradura* handle)
{
	/* Exit action for state 'encendido'. */
	cerradura_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_led0_r1_encendido_tev0_raised) );		
}

/* Exit action for state 'apagado'. */
static void cerradura_exact_main_region_led0_r1_apagado(Cerradura* handle)
{
	/* Exit action for state 'apagado'. */
	cerradura_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_led0_r1_apagado_tev0_raised) );		
}

/* Exit action for state 'encendido'. */
static void cerradura_exact_main_region_led1_r1_encendido(Cerradura* handle)
{
	/* Exit action for state 'encendido'. */
	cerradura_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_led1_r1_encendido_tev0_raised) );		
}

/* Exit action for state 'apagado'. */
static void cerradura_exact_main_region_led1_r1_apagado(Cerradura* handle)
{
	/* Exit action for state 'apagado'. */
	cerradura_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_led1_r1_apagado_tev0_raised) );		
}

/* Exit action for state 'encendido'. */
static void cerradura_exact_main_region_Leds_r1_encendido(Cerradura* handle)
{
	/* Exit action for state 'encendido'. */
	cerradura_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_Leds_r1_encendido_tev0_raised) );		
}

/* Exit action for state 'apagado'. */
static void cerradura_exact_main_region_Leds_r1_apagado(Cerradura* handle)
{
	/* Exit action for state 'apagado'. */
	cerradura_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_Leds_r1_apagado_tev0_raised) );		
}

/* 'default' enter sequence for state led0 */
static void cerradura_enseq_main_region_led0_default(Cerradura* handle)
{
	/* 'default' enter sequence for state led0 */
	cerradura_enact_main_region_led0(handle);
	cerradura_enseq_main_region_led0_r1_default(handle);
}

/* 'default' enter sequence for state encendido */
static void cerradura_enseq_main_region_led0_r1_encendido_default(Cerradura* handle)
{
	/* 'default' enter sequence for state encendido */
	cerradura_enact_main_region_led0_r1_encendido(handle);
	handle->stateConfVector[0] = Cerradura_main_region_led0_r1_encendido;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state apagado */
static void cerradura_enseq_main_region_led0_r1_apagado_default(Cerradura* handle)
{
	/* 'default' enter sequence for state apagado */
	cerradura_enact_main_region_led0_r1_apagado(handle);
	handle->stateConfVector[0] = Cerradura_main_region_led0_r1_apagado;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led1 */
static void cerradura_enseq_main_region_led1_default(Cerradura* handle)
{
	/* 'default' enter sequence for state led1 */
	cerradura_enact_main_region_led1(handle);
	cerradura_enseq_main_region_led1_r1_default(handle);
}

/* 'default' enter sequence for state encendido */
static void cerradura_enseq_main_region_led1_r1_encendido_default(Cerradura* handle)
{
	/* 'default' enter sequence for state encendido */
	cerradura_enact_main_region_led1_r1_encendido(handle);
	handle->stateConfVector[0] = Cerradura_main_region_led1_r1_encendido;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state apagado */
static void cerradura_enseq_main_region_led1_r1_apagado_default(Cerradura* handle)
{
	/* 'default' enter sequence for state apagado */
	cerradura_enact_main_region_led1_r1_apagado(handle);
	handle->stateConfVector[0] = Cerradura_main_region_led1_r1_apagado;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state Closed */
static void cerradura_enseq_main_region_Closed_default(Cerradura* handle)
{
	/* 'default' enter sequence for state Closed */
	cerradura_enact_main_region_Closed(handle);
	cerradura_enseq_main_region_Closed__region0_default(handle);
}

/* 'default' enter sequence for state Wait */
static void cerradura_enseq_main_region_Closed__region0_Wait_default(Cerradura* handle)
{
	/* 'default' enter sequence for state Wait */
	cerradura_enact_main_region_Closed__region0_Wait(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Closed__region0_Wait;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state getKey */
static void cerradura_enseq_main_region_Closed__region0_getKey_default(Cerradura* handle)
{
	/* 'default' enter sequence for state getKey */
	cerradura_enact_main_region_Closed__region0_getKey(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Closed__region0_getKey;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state Unlocked */
static void cerradura_enseq_main_region_Unlocked_default(Cerradura* handle)
{
	/* 'default' enter sequence for state Unlocked */
	cerradura_enact_main_region_Unlocked(handle);
	cerradura_enseq_main_region_Unlocked__region0_default(handle);
}

/* 'default' enter sequence for state Wait */
static void cerradura_enseq_main_region_Unlocked__region0_Wait_default(Cerradura* handle)
{
	/* 'default' enter sequence for state Wait */
	cerradura_enact_main_region_Unlocked__region0_Wait(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Unlocked__region0_Wait;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state getKey */
static void cerradura_enseq_main_region_Unlocked__region0_getKey_default(Cerradura* handle)
{
	/* 'default' enter sequence for state getKey */
	cerradura_enact_main_region_Unlocked__region0_getKey(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Unlocked__region0_getKey;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state Leds */
static void cerradura_enseq_main_region_Leds_default(Cerradura* handle)
{
	/* 'default' enter sequence for state Leds */
	cerradura_enact_main_region_Leds(handle);
	cerradura_enseq_main_region_Leds_r1_default(handle);
}

/* 'default' enter sequence for state encendido */
static void cerradura_enseq_main_region_Leds_r1_encendido_default(Cerradura* handle)
{
	/* 'default' enter sequence for state encendido */
	cerradura_enact_main_region_Leds_r1_encendido(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Leds_r1_encendido;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state apagado */
static void cerradura_enseq_main_region_Leds_r1_apagado_default(Cerradura* handle)
{
	/* 'default' enter sequence for state apagado */
	cerradura_enact_main_region_Leds_r1_apagado(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Leds_r1_apagado;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void cerradura_enseq_main_region_default(Cerradura* handle)
{
	/* 'default' enter sequence for region main region */
	cerradura_react_main_region__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void cerradura_enseq_main_region_led0_r1_default(Cerradura* handle)
{
	/* 'default' enter sequence for region r1 */
	cerradura_react_main_region_led0_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void cerradura_enseq_main_region_led1_r1_default(Cerradura* handle)
{
	/* 'default' enter sequence for region r1 */
	cerradura_react_main_region_led1_r1__entry_Default(handle);
}

/* 'default' enter sequence for region null */
static void cerradura_enseq_main_region_Closed__region0_default(Cerradura* handle)
{
	/* 'default' enter sequence for region null */
	cerradura_react_main_region_Closed__region0__entry_Default(handle);
}

/* 'default' enter sequence for region null */
static void cerradura_enseq_main_region_Unlocked__region0_default(Cerradura* handle)
{
	/* 'default' enter sequence for region null */
	cerradura_react_main_region_Unlocked__region0__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void cerradura_enseq_main_region_Leds_r1_default(Cerradura* handle)
{
	/* 'default' enter sequence for region r1 */
	cerradura_react_main_region_Leds_r1__entry_Default(handle);
}

/* Default exit sequence for state led0 */
static void cerradura_exseq_main_region_led0(Cerradura* handle)
{
	/* Default exit sequence for state led0 */
	cerradura_exseq_main_region_led0_r1(handle);
}

/* Default exit sequence for state encendido */
static void cerradura_exseq_main_region_led0_r1_encendido(Cerradura* handle)
{
	/* Default exit sequence for state encendido */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
	cerradura_exact_main_region_led0_r1_encendido(handle);
}

/* Default exit sequence for state apagado */
static void cerradura_exseq_main_region_led0_r1_apagado(Cerradura* handle)
{
	/* Default exit sequence for state apagado */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
	cerradura_exact_main_region_led0_r1_apagado(handle);
}

/* Default exit sequence for state led1 */
static void cerradura_exseq_main_region_led1(Cerradura* handle)
{
	/* Default exit sequence for state led1 */
	cerradura_exseq_main_region_led1_r1(handle);
}

/* Default exit sequence for state encendido */
static void cerradura_exseq_main_region_led1_r1_encendido(Cerradura* handle)
{
	/* Default exit sequence for state encendido */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
	cerradura_exact_main_region_led1_r1_encendido(handle);
}

/* Default exit sequence for state apagado */
static void cerradura_exseq_main_region_led1_r1_apagado(Cerradura* handle)
{
	/* Default exit sequence for state apagado */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
	cerradura_exact_main_region_led1_r1_apagado(handle);
}

/* Default exit sequence for state Closed */
static void cerradura_exseq_main_region_Closed(Cerradura* handle)
{
	/* Default exit sequence for state Closed */
	cerradura_exseq_main_region_Closed__region0(handle);
}

/* Default exit sequence for state Wait */
static void cerradura_exseq_main_region_Closed__region0_Wait(Cerradura* handle)
{
	/* Default exit sequence for state Wait */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state getKey */
static void cerradura_exseq_main_region_Closed__region0_getKey(Cerradura* handle)
{
	/* Default exit sequence for state getKey */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state Unlocked */
static void cerradura_exseq_main_region_Unlocked(Cerradura* handle)
{
	/* Default exit sequence for state Unlocked */
	cerradura_exseq_main_region_Unlocked__region0(handle);
}

/* Default exit sequence for state Wait */
static void cerradura_exseq_main_region_Unlocked__region0_Wait(Cerradura* handle)
{
	/* Default exit sequence for state Wait */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state getKey */
static void cerradura_exseq_main_region_Unlocked__region0_getKey(Cerradura* handle)
{
	/* Default exit sequence for state getKey */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state Leds */
static void cerradura_exseq_main_region_Leds(Cerradura* handle)
{
	/* Default exit sequence for state Leds */
	cerradura_exseq_main_region_Leds_r1(handle);
}

/* Default exit sequence for state encendido */
static void cerradura_exseq_main_region_Leds_r1_encendido(Cerradura* handle)
{
	/* Default exit sequence for state encendido */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
	cerradura_exact_main_region_Leds_r1_encendido(handle);
}

/* Default exit sequence for state apagado */
static void cerradura_exseq_main_region_Leds_r1_apagado(Cerradura* handle)
{
	/* Default exit sequence for state apagado */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
	cerradura_exact_main_region_Leds_r1_apagado(handle);
}

/* Default exit sequence for region main region */
static void cerradura_exseq_main_region(Cerradura* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of cerradura.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_led0_r1_encendido :
		{
			cerradura_exseq_main_region_led0_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_led0_r1_apagado :
		{
			cerradura_exseq_main_region_led0_r1_apagado(handle);
			break;
		}
		case Cerradura_main_region_led1_r1_encendido :
		{
			cerradura_exseq_main_region_led1_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_led1_r1_apagado :
		{
			cerradura_exseq_main_region_led1_r1_apagado(handle);
			break;
		}
		case Cerradura_main_region_Closed__region0_Wait :
		{
			cerradura_exseq_main_region_Closed__region0_Wait(handle);
			break;
		}
		case Cerradura_main_region_Closed__region0_getKey :
		{
			cerradura_exseq_main_region_Closed__region0_getKey(handle);
			break;
		}
		case Cerradura_main_region_Unlocked__region0_Wait :
		{
			cerradura_exseq_main_region_Unlocked__region0_Wait(handle);
			break;
		}
		case Cerradura_main_region_Unlocked__region0_getKey :
		{
			cerradura_exseq_main_region_Unlocked__region0_getKey(handle);
			break;
		}
		case Cerradura_main_region_Leds_r1_encendido :
		{
			cerradura_exseq_main_region_Leds_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_Leds_r1_apagado :
		{
			cerradura_exseq_main_region_Leds_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void cerradura_exseq_main_region_led0_r1(Cerradura* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of cerradura.main_region.led0.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_led0_r1_encendido :
		{
			cerradura_exseq_main_region_led0_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_led0_r1_apagado :
		{
			cerradura_exseq_main_region_led0_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void cerradura_exseq_main_region_led1_r1(Cerradura* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of cerradura.main_region.led1.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_led1_r1_encendido :
		{
			cerradura_exseq_main_region_led1_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_led1_r1_apagado :
		{
			cerradura_exseq_main_region_led1_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region null */
static void cerradura_exseq_main_region_Closed__region0(Cerradura* handle)
{
	/* Default exit sequence for region null */
	/* Handle exit of all possible states (of cerradura.main_region.Closed._region0) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_Closed__region0_Wait :
		{
			cerradura_exseq_main_region_Closed__region0_Wait(handle);
			break;
		}
		case Cerradura_main_region_Closed__region0_getKey :
		{
			cerradura_exseq_main_region_Closed__region0_getKey(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region null */
static void cerradura_exseq_main_region_Unlocked__region0(Cerradura* handle)
{
	/* Default exit sequence for region null */
	/* Handle exit of all possible states (of cerradura.main_region.Unlocked._region0) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_Unlocked__region0_Wait :
		{
			cerradura_exseq_main_region_Unlocked__region0_Wait(handle);
			break;
		}
		case Cerradura_main_region_Unlocked__region0_getKey :
		{
			cerradura_exseq_main_region_Unlocked__region0_getKey(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void cerradura_exseq_main_region_Leds_r1(Cerradura* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of cerradura.main_region.Leds.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_Leds_r1_encendido :
		{
			cerradura_exseq_main_region_Leds_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_Leds_r1_apagado :
		{
			cerradura_exseq_main_region_Leds_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state encendido. */
static void cerradura_react_main_region_led0_r1_encendido(Cerradura* handle)
{
	/* The reactions of state encendido. */
	if (cerradura_check_main_region_led0_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_led0_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_led0_r1_encendido_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_led0_r1_encendido_tr0(handle);
		} 
	}
}

/* The reactions of state apagado. */
static void cerradura_react_main_region_led0_r1_apagado(Cerradura* handle)
{
	/* The reactions of state apagado. */
	if (cerradura_check_main_region_led0_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_led0_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_led0_r1_apagado_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_led0_r1_apagado_tr0(handle);
		} 
	}
}

/* The reactions of state encendido. */
static void cerradura_react_main_region_led1_r1_encendido(Cerradura* handle)
{
	/* The reactions of state encendido. */
	if (cerradura_check_main_region_led1_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_led1_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_led1_r1_encendido_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_led1_r1_encendido_tr0(handle);
		} 
	}
}

/* The reactions of state apagado. */
static void cerradura_react_main_region_led1_r1_apagado(Cerradura* handle)
{
	/* The reactions of state apagado. */
	if (cerradura_check_main_region_led1_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_led1_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_led1_r1_apagado_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_led1_r1_apagado_tr0(handle);
		} 
	}
}

/* The reactions of state Wait. */
static void cerradura_react_main_region_Closed__region0_Wait(Cerradura* handle)
{
	/* The reactions of state Wait. */
	if (cerradura_check_main_region_Closed_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Closed_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Closed_tr1_tr1(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Closed_tr1(handle);
		}  else
		{
			if (cerradura_check_main_region_Closed__region0_Wait_tr0_tr0(handle) == bool_true)
			{ 
				cerradura_effect_main_region_Closed__region0_Wait_tr0(handle);
			} 
		}
	}
}

/* The reactions of state getKey. */
static void cerradura_react_main_region_Closed__region0_getKey(Cerradura* handle)
{
	/* The reactions of state getKey. */
	if (cerradura_check_main_region_Closed_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Closed_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Closed_tr1_tr1(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Closed_tr1(handle);
		}  else
		{
			if (cerradura_check_main_region_Closed__region0_getKey_tr0_tr0(handle) == bool_true)
			{ 
				cerradura_effect_main_region_Closed__region0_getKey_tr0(handle);
			} 
		}
	}
}

/* The reactions of state Wait. */
static void cerradura_react_main_region_Unlocked__region0_Wait(Cerradura* handle)
{
	/* The reactions of state Wait. */
	if (cerradura_check_main_region_Unlocked_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Unlocked_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Unlocked__region0_Wait_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Unlocked__region0_Wait_tr0(handle);
		} 
	}
}

/* The reactions of state getKey. */
static void cerradura_react_main_region_Unlocked__region0_getKey(Cerradura* handle)
{
	/* The reactions of state getKey. */
	if (cerradura_check_main_region_Unlocked_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Unlocked_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Unlocked__region0_getKey_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Unlocked__region0_getKey_tr0(handle);
		} 
	}
}

/* The reactions of state encendido. */
static void cerradura_react_main_region_Leds_r1_encendido(Cerradura* handle)
{
	/* The reactions of state encendido. */
	if (cerradura_check_main_region_Leds_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Leds_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Leds_r1_encendido_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Leds_r1_encendido_tr0(handle);
		} 
	}
}

/* The reactions of state apagado. */
static void cerradura_react_main_region_Leds_r1_apagado(Cerradura* handle)
{
	/* The reactions of state apagado. */
	if (cerradura_check_main_region_Leds_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Leds_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Leds_r1_apagado_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Leds_r1_apagado_tr0(handle);
		} 
	}
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_Closed_default(handle);
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region_led0_r1__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_led0_r1_encendido_default(handle);
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region_led1_r1__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_led1_r1_encendido_default(handle);
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region_Closed__region0__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_Closed__region0_Wait_default(handle);
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region_Unlocked__region0__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_Unlocked__region0_Wait_default(handle);
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region_Leds_r1__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_Leds_r1_encendido_default(handle);
}


