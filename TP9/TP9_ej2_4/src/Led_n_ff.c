
#include <stdlib.h>
#include <string.h>
#include "sc_types.h"
#include "Led_n_ff.h"
#include "Led_n_ffRequired.h"
/*! \file Implementation of the state machine 'ledOnOff'
*/

/* prototypes of all internal functions */
static sc_boolean led_n_ff_check_main_region__eft_ight_tr__tr_(const Led_n_ff* handle);
static sc_boolean led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(const Led_n_ff* handle);
static sc_boolean led_n_ff_check_main_region__eft_ight_r__led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(const Led_n_ff* handle);
static sc_boolean led_n_ff_check_main_region__eft_ight_led_n_ff_check_main_region__eft_ight_r__led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(const Led_n_ff* handle);
static sc_boolean led_n_ff_check_main_region_led_n_ff_check_main_region__eft_ight_led_n_ff_check_main_region__eft_ight_r__led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(const Led_n_ff* handle);
static sc_boolean led_n_ff_check_main_region__ight_eft_tr__tr_(const Led_n_ff* handle);
static sc_boolean led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(const Led_n_ff* handle);
static sc_boolean led_n_ff_check_main_region__ight_eft_r__led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(const Led_n_ff* handle);
static sc_boolean led_n_ff_check_main_region__ight_eft_led_n_ff_check_main_region__ight_eft_r__led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(const Led_n_ff* handle);
static sc_boolean led_n_ff_check_main_region_led_n_ff_check_main_region__ight_eft_led_n_ff_check_main_region__ight_eft_r__led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(const Led_n_ff* handle);
static void led_n_ff_effect_main_region__eft_ight_tr_(Led_n_ff* handle);
static void led_n_ff_effect_main_region__eft_ight_r__led__tr_(Led_n_ff* handle);
static void led_n_ff_effect_main_region__eft_ight_r__led_n_ff_effect_main_region__eft_ight_r__led__tr_(Led_n_ff* handle);
static void led_n_ff_effect_main_region__eft_ight_led_n_ff_effect_main_region__eft_ight_r__led_n_ff_effect_main_region__eft_ight_r__led__tr_(Led_n_ff* handle);
static void led_n_ff_effect_main_region_led_n_ff_effect_main_region__eft_ight_led_n_ff_effect_main_region__eft_ight_r__led_n_ff_effect_main_region__eft_ight_r__led__tr_(Led_n_ff* handle);
static void led_n_ff_effect_main_region__ight_eft_tr_(Led_n_ff* handle);
static void led_n_ff_effect_main_region__ight_eft_r__led__tr_(Led_n_ff* handle);
static void led_n_ff_effect_main_region__ight_eft_r__led_n_ff_effect_main_region__ight_eft_r__led__tr_(Led_n_ff* handle);
static void led_n_ff_effect_main_region__ight_eft_led_n_ff_effect_main_region__ight_eft_r__led_n_ff_effect_main_region__ight_eft_r__led__tr_(Led_n_ff* handle);
static void led_n_ff_effect_main_region_led_n_ff_effect_main_region__ight_eft_led_n_ff_effect_main_region__ight_eft_r__led_n_ff_effect_main_region__ight_eft_r__led__tr_(Led_n_ff* handle);
static void led_n_ff_enact_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_enact_main_region__eft_ight_r__led_n_ff_enact_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_enact_main_region__eft_ight_led_n_ff_enact_main_region__eft_ight_r__led_n_ff_enact_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_enact_main_region_led_n_ff_enact_main_region__eft_ight_led_n_ff_enact_main_region__eft_ight_r__led_n_ff_enact_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_enact_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_enact_main_region__ight_eft_r__led_n_ff_enact_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_enact_main_region__ight_eft_led_n_ff_enact_main_region__ight_eft_r__led_n_ff_enact_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_enact_main_region_led_n_ff_enact_main_region__ight_eft_led_n_ff_enact_main_region__ight_eft_r__led_n_ff_enact_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_exact_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_exact_main_region__eft_ight_r__led_n_ff_exact_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_exact_main_region__eft_ight_led_n_ff_exact_main_region__eft_ight_r__led_n_ff_exact_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_exact_main_region_led_n_ff_exact_main_region__eft_ight_led_n_ff_exact_main_region__eft_ight_r__led_n_ff_exact_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_exact_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_exact_main_region__ight_eft_r__led_n_ff_exact_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_exact_main_region__ight_eft_led_n_ff_exact_main_region__ight_eft_r__led_n_ff_exact_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_exact_main_region_led_n_ff_exact_main_region__ight_eft_led_n_ff_exact_main_region__ight_eft_r__led_n_ff_exact_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_enseq_main_region__eft_ight_default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region__eft_ight_r__led__default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region__eft_ight_r__led_n_ff_enseq_main_region__eft_ight_r__led__default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region__eft_ight_led_n_ff_enseq_main_region__eft_ight_r__led_n_ff_enseq_main_region__eft_ight_r__led__default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region_led_n_ff_enseq_main_region__eft_ight_led_n_ff_enseq_main_region__eft_ight_r__led_n_ff_enseq_main_region__eft_ight_r__led__default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region__ight_eft_default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region__ight_eft_r__led__default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region__ight_eft_r__led_n_ff_enseq_main_region__ight_eft_r__led__default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region__ight_eft_led_n_ff_enseq_main_region__ight_eft_r__led_n_ff_enseq_main_region__ight_eft_r__led__default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region_led_n_ff_enseq_main_region__ight_eft_led_n_ff_enseq_main_region__ight_eft_r__led_n_ff_enseq_main_region__ight_eft_r__led__default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region_default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region__eft_ight_r__default(Led_n_ff* handle);
static void led_n_ff_enseq_main_region__ight_eft_r__default(Led_n_ff* handle);
static void led_n_ff_exseq_main_region__eft_ight(Led_n_ff* handle);
static void led_n_ff_exseq_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_exseq_main_region__eft_ight_led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_exseq_main_region_led_n_ff_exseq_main_region__eft_ight_led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_exseq_main_region__ight_eft(Led_n_ff* handle);
static void led_n_ff_exseq_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_exseq_main_region__ight_eft_led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_exseq_main_region_led_n_ff_exseq_main_region__ight_eft_led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_exseq_main_region(Led_n_ff* handle);
static void led_n_ff_exseq_main_region__eft_ight_r_(Led_n_ff* handle);
static void led_n_ff_exseq_main_region__ight_eft_r_(Led_n_ff* handle);
static void led_n_ff_react_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_react_main_region__eft_ight_r__led_n_ff_react_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_react_main_region__eft_ight_led_n_ff_react_main_region__eft_ight_r__led_n_ff_react_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_react_main_region_led_n_ff_react_main_region__eft_ight_led_n_ff_react_main_region__eft_ight_r__led_n_ff_react_main_region__eft_ight_r__led_(Led_n_ff* handle);
static void led_n_ff_react_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_react_main_region__ight_eft_r__led_n_ff_react_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_react_main_region__ight_eft_led_n_ff_react_main_region__ight_eft_r__led_n_ff_react_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_react_main_region_led_n_ff_react_main_region__ight_eft_led_n_ff_react_main_region__ight_eft_r__led_n_ff_react_main_region__ight_eft_r__led_(Led_n_ff* handle);
static void led_n_ff_react_main_region__entry__efault(Led_n_ff* handle);
static void led_n_ff_react_main_region__eft_ight_r___entry__efault(Led_n_ff* handle);
static void led_n_ff_react_main_region__ight_eft_r___entry__efault(Led_n_ff* handle);
static void led_n_ff_clearInEvents(Led_n_ff* handle);
static void led_n_ff_clearOutEvents(Led_n_ff* handle);


void led_n_ff_init(Led_n_ff* handle)
{
	sc_integer i;

	for (i = 0; i < LED_N_FF_MAX_ORTHOGONAL_STATES; ++i)
	{
		handle->stateConfVector[i] = Led_n_ff_last_state;
	}
	
	
	handle->stateConfVectorPosition = 0;

	led_n_ff_clearInEvents(handle);
	led_n_ff_clearOutEvents(handle);


}

void led_n_ff_enter(Led_n_ff* handle)
{
	/* Default enter sequence for statechart ledOnOff */
	led_n_ff_enseq_main_region_default(handle);
}

void led_n_ff_exit(Led_n_ff* handle)
{
	/* Default exit sequence for statechart ledOnOff */
	led_n_ff_exseq_main_region(handle);
}

sc_boolean led_n_ff_isActive(const Led_n_ff* handle)
{
	sc_boolean result;
	if (handle->stateConfVector[0] != Led_n_ff_last_state)
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
sc_boolean led_n_ff_isFinal(const Led_n_ff* handle)
{
   return bool_false;
}

static void led_n_ff_clearInEvents(Led_n_ff* handle)
{
	handle->iface.key_ress_raised = bool_false;
	handle->timeEvents.led_n_ff_main_region__eft_ight_r__led__tev__raised = bool_false;
	handle->timeEvents.led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised = bool_false;
	handle->timeEvents.led_n_ff_main_region__eft_ight_led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised = bool_false;
	handle->timeEvents.led_n_ff_main_region_led_n_ff_main_region__eft_ight_led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised = bool_false;
	handle->timeEvents.led_n_ff_main_region__ight_eft_r__led__tev__raised = bool_false;
	handle->timeEvents.led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised = bool_false;
	handle->timeEvents.led_n_ff_main_region__ight_eft_led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised = bool_false;
	handle->timeEvents.led_n_ff_main_region_led_n_ff_main_region__ight_eft_led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised = bool_false;
}

static void led_n_ff_clearOutEvents(Led_n_ff* handle)
{
}

void led_n_ff_runCycle(Led_n_ff* handle)
{
	
	led_n_ff_clearOutEvents(handle);
	
	for (handle->stateConfVectorPosition = 0;
		handle->stateConfVectorPosition < LED_N_FF_MAX_ORTHOGONAL_STATES;
		handle->stateConfVectorPosition++)
		{
			
		switch (handle->stateConfVector[handle->stateConfVectorPosition])
		{
		case _ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_react_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_react_main_region__eft_ight_r__led_n_ff_react_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_react_main_region__eft_ight_led_n_ff_react_main_region__eft_ight_r__led_n_ff_react_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_react_main_region_led_n_ff_react_main_region__eft_ight_led_n_ff_react_main_region__eft_ight_r__led_n_ff_react_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_react_main_region__ight_eft_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_react_main_region__ight_eft_r__led_n_ff_react_main_region__ight_eft_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_react_main_region__ight_eft_led_n_ff_react_main_region__ight_eft_r__led_n_ff_react_main_region__ight_eft_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_react_main_region_led_n_ff_react_main_region__ight_eft_led_n_ff_react_main_region__ight_eft_r__led_n_ff_react_main_region__ight_eft_r__led_(handle);
			break;
		}
		default:
			break;
		}
	}
	
	led_n_ff_clearInEvents(handle);
}

void led_n_ff_raiseTimeEvent(const Led_n_ff* handle, sc_eventid evid)
{
	if ( ((sc_intptr_t)evid) >= ((sc_intptr_t)&(handle->timeEvents))
		&&  ((sc_intptr_t)evid) < ((sc_intptr_t)&(handle->timeEvents)) + sizeof(Led_n_ffTimeEvents))
		{
		*(sc_boolean*)evid = bool_true;
	}		
}

sc_boolean led_n_ff_isStateActive(const Led_n_ff* handle, Led_n_ffStates state)
{
	sc_boolean result = bool_false;
	switch (state)
	{
		case _ed_n_ff_main_region__eft_ight :
			result = (sc_boolean) (handle->stateConfVector[0] >= _ed_n_ff_main_region__eft_ight
				&& handle->stateConfVector[0] <= _ed_n_ff_main_region__ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_);
			break;
		case _ed_n_ff_main_region__eft_ight_r__led_ :
			result = (sc_boolean) (handle->stateConfVector[0] == _ed_n_ff_main_region__eft_ight_r__led_
			);
			break;
		case _ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
			result = (sc_boolean) (handle->stateConfVector[0] == _ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_
			);
			break;
		case _ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
			result = (sc_boolean) (handle->stateConfVector[0] == _ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_
			);
			break;
		case _ed_n_ff_main_region__ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
			result = (sc_boolean) (handle->stateConfVector[0] == _ed_n_ff_main_region__ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_
			);
			break;
		case _ed_n_ff_main_region__ight_eft :
			result = (sc_boolean) (handle->stateConfVector[0] >= _ed_n_ff_main_region__ight_eft
				&& handle->stateConfVector[0] <= _ed_n_ff_main_region__ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_);
			break;
		case _ed_n_ff_main_region__ight_eft_r__led_ :
			result = (sc_boolean) (handle->stateConfVector[0] == _ed_n_ff_main_region__ight_eft_r__led_
			);
			break;
		case _ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
			result = (sc_boolean) (handle->stateConfVector[0] == _ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_
			);
			break;
		case _ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
			result = (sc_boolean) (handle->stateConfVector[0] == _ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_
			);
			break;
		case _ed_n_ff_main_region__ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
			result = (sc_boolean) (handle->stateConfVector[0] == _ed_n_ff_main_region__ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_
			);
			break;
		default:
			result = bool_false;
			break;
	}
	return result;
}

void led_n_ffIface_raise_key_ress(Led_n_ff* handle)
{
	handle->iface.key_ress_raised = bool_true;
}



/* implementations of all internal functions */

static sc_boolean led_n_ff_check_main_region__eft_ight_tr__tr_(const Led_n_ff* handle)
{
	return handle->iface.key_ress_raised;
}

static sc_boolean led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(const Led_n_ff* handle)
{
	return handle->timeEvents.led_n_ff_main_region__eft_ight_r__led__tev__raised;
}

static sc_boolean led_n_ff_check_main_region__eft_ight_r__led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(const Led_n_ff* handle)
{
	return handle->timeEvents.led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised;
}

static sc_boolean led_n_ff_check_main_region__eft_ight_led_n_ff_check_main_region__eft_ight_r__led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(const Led_n_ff* handle)
{
	return handle->timeEvents.led_n_ff_main_region__eft_ight_led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised;
}

static sc_boolean led_n_ff_check_main_region_led_n_ff_check_main_region__eft_ight_led_n_ff_check_main_region__eft_ight_r__led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(const Led_n_ff* handle)
{
	return handle->timeEvents.led_n_ff_main_region_led_n_ff_main_region__eft_ight_led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised;
}

static sc_boolean led_n_ff_check_main_region__ight_eft_tr__tr_(const Led_n_ff* handle)
{
	return handle->iface.key_ress_raised;
}

static sc_boolean led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(const Led_n_ff* handle)
{
	return handle->timeEvents.led_n_ff_main_region__ight_eft_r__led__tev__raised;
}

static sc_boolean led_n_ff_check_main_region__ight_eft_r__led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(const Led_n_ff* handle)
{
	return handle->timeEvents.led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised;
}

static sc_boolean led_n_ff_check_main_region__ight_eft_led_n_ff_check_main_region__ight_eft_r__led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(const Led_n_ff* handle)
{
	return handle->timeEvents.led_n_ff_main_region__ight_eft_led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised;
}

static sc_boolean led_n_ff_check_main_region_led_n_ff_check_main_region__ight_eft_led_n_ff_check_main_region__ight_eft_r__led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(const Led_n_ff* handle)
{
	return handle->timeEvents.led_n_ff_main_region_led_n_ff_main_region__ight_eft_led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised;
}

static void led_n_ff_effect_main_region__eft_ight_tr_(Led_n_ff* handle)
{
	led_n_ff_exseq_main_region__eft_ight(handle);
	led_n_ff_enseq_main_region__ight_eft_default(handle);
}

static void led_n_ff_effect_main_region__eft_ight_r__led__tr_(Led_n_ff* handle)
{
	led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
	led_n_ff_enseq_main_region__eft_ight_r__led_n_ff_enseq_main_region__eft_ight_r__led__default(handle);
}

static void led_n_ff_effect_main_region__eft_ight_r__led_n_ff_effect_main_region__eft_ight_r__led__tr_(Led_n_ff* handle)
{
	led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
	led_n_ff_enseq_main_region__eft_ight_led_n_ff_enseq_main_region__eft_ight_r__led_n_ff_enseq_main_region__eft_ight_r__led__default(handle);
}

static void led_n_ff_effect_main_region__eft_ight_led_n_ff_effect_main_region__eft_ight_r__led_n_ff_effect_main_region__eft_ight_r__led__tr_(Led_n_ff* handle)
{
	led_n_ff_exseq_main_region__eft_ight_led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
	led_n_ff_enseq_main_region_led_n_ff_enseq_main_region__eft_ight_led_n_ff_enseq_main_region__eft_ight_r__led_n_ff_enseq_main_region__eft_ight_r__led__default(handle);
}

static void led_n_ff_effect_main_region_led_n_ff_effect_main_region__eft_ight_led_n_ff_effect_main_region__eft_ight_r__led_n_ff_effect_main_region__eft_ight_r__led__tr_(Led_n_ff* handle)
{
	led_n_ff_exseq_main_region_led_n_ff_exseq_main_region__eft_ight_led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
	led_n_ff_enseq_main_region__eft_ight_r__led__default(handle);
}

static void led_n_ff_effect_main_region__ight_eft_tr_(Led_n_ff* handle)
{
	led_n_ff_exseq_main_region__ight_eft(handle);
	led_n_ff_enseq_main_region__eft_ight_default(handle);
}

static void led_n_ff_effect_main_region__ight_eft_r__led__tr_(Led_n_ff* handle)
{
	led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
	led_n_ff_enseq_main_region_led_n_ff_enseq_main_region__ight_eft_led_n_ff_enseq_main_region__ight_eft_r__led_n_ff_enseq_main_region__ight_eft_r__led__default(handle);
}

static void led_n_ff_effect_main_region__ight_eft_r__led_n_ff_effect_main_region__ight_eft_r__led__tr_(Led_n_ff* handle)
{
	led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
	led_n_ff_enseq_main_region__ight_eft_r__led__default(handle);
}

static void led_n_ff_effect_main_region__ight_eft_led_n_ff_effect_main_region__ight_eft_r__led_n_ff_effect_main_region__ight_eft_r__led__tr_(Led_n_ff* handle)
{
	led_n_ff_exseq_main_region__ight_eft_led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
	led_n_ff_enseq_main_region__ight_eft_r__led_n_ff_enseq_main_region__ight_eft_r__led__default(handle);
}

static void led_n_ff_effect_main_region_led_n_ff_effect_main_region__ight_eft_led_n_ff_effect_main_region__ight_eft_r__led_n_ff_effect_main_region__ight_eft_r__led__tr_(Led_n_ff* handle)
{
	led_n_ff_exseq_main_region_led_n_ff_exseq_main_region__ight_eft_led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
	led_n_ff_enseq_main_region__ight_eft_led_n_ff_enseq_main_region__ight_eft_r__led_n_ff_enseq_main_region__ight_eft_r__led__default(handle);
}

/* Entry action for state 'led0'. */
static void led_n_ff_enact_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Entry action for state 'led0'. */
	led_n_ff_setTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__eft_ight_r__led__tev__raised) , 500, bool_false);
	led_n_ffIface__et_ed_rom_ask(handle, 0x4);
}

/* Entry action for state 'led1'. */
static void led_n_ff_enact_main_region__eft_ight_r__led_n_ff_enact_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Entry action for state 'led1'. */
	led_n_ff_setTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised) , 500, bool_false);
	led_n_ffIface__et_ed_rom_ask(handle, 0x8);
}

/* Entry action for state 'led2'. */
static void led_n_ff_enact_main_region__eft_ight_led_n_ff_enact_main_region__eft_ight_r__led_n_ff_enact_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Entry action for state 'led2'. */
	led_n_ff_setTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__eft_ight_led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised) , 500, bool_false);
	led_n_ffIface__et_ed_rom_ask(handle, 0x10);
}

/* Entry action for state 'led3'. */
static void led_n_ff_enact_main_region_led_n_ff_enact_main_region__eft_ight_led_n_ff_enact_main_region__eft_ight_r__led_n_ff_enact_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Entry action for state 'led3'. */
	led_n_ff_setTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region_led_n_ff_main_region__eft_ight_led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised) , 500, bool_false);
	led_n_ffIface__et_ed_rom_ask(handle, 0x20);
}

/* Entry action for state 'led0'. */
static void led_n_ff_enact_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Entry action for state 'led0'. */
	led_n_ff_setTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__ight_eft_r__led__tev__raised) , 500, bool_false);
	led_n_ffIface__et_ed_rom_ask(handle, 0x4);
}

/* Entry action for state 'led1'. */
static void led_n_ff_enact_main_region__ight_eft_r__led_n_ff_enact_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Entry action for state 'led1'. */
	led_n_ff_setTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised) , 500, bool_false);
	led_n_ffIface__et_ed_rom_ask(handle, 0x8);
}

/* Entry action for state 'led2'. */
static void led_n_ff_enact_main_region__ight_eft_led_n_ff_enact_main_region__ight_eft_r__led_n_ff_enact_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Entry action for state 'led2'. */
	led_n_ff_setTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__ight_eft_led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised) , 500, bool_false);
	led_n_ffIface__et_ed_rom_ask(handle, 0x10);
}

/* Entry action for state 'led3'. */
static void led_n_ff_enact_main_region_led_n_ff_enact_main_region__ight_eft_led_n_ff_enact_main_region__ight_eft_r__led_n_ff_enact_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Entry action for state 'led3'. */
	led_n_ff_setTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region_led_n_ff_main_region__ight_eft_led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised) , 500, bool_false);
	led_n_ffIface__et_ed_rom_ask(handle, 0x20);
}

/* Exit action for state 'led0'. */
static void led_n_ff_exact_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Exit action for state 'led0'. */
	led_n_ff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__eft_ight_r__led__tev__raised) );		
}

/* Exit action for state 'led1'. */
static void led_n_ff_exact_main_region__eft_ight_r__led_n_ff_exact_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Exit action for state 'led1'. */
	led_n_ff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised) );		
}

/* Exit action for state 'led2'. */
static void led_n_ff_exact_main_region__eft_ight_led_n_ff_exact_main_region__eft_ight_r__led_n_ff_exact_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Exit action for state 'led2'. */
	led_n_ff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__eft_ight_led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised) );		
}

/* Exit action for state 'led3'. */
static void led_n_ff_exact_main_region_led_n_ff_exact_main_region__eft_ight_led_n_ff_exact_main_region__eft_ight_r__led_n_ff_exact_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Exit action for state 'led3'. */
	led_n_ff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region_led_n_ff_main_region__eft_ight_led_n_ff_main_region__eft_ight_r__led_n_ff_main_region__eft_ight_r__led__tev__raised) );		
}

/* Exit action for state 'led0'. */
static void led_n_ff_exact_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Exit action for state 'led0'. */
	led_n_ff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__ight_eft_r__led__tev__raised) );		
}

/* Exit action for state 'led1'. */
static void led_n_ff_exact_main_region__ight_eft_r__led_n_ff_exact_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Exit action for state 'led1'. */
	led_n_ff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised) );		
}

/* Exit action for state 'led2'. */
static void led_n_ff_exact_main_region__ight_eft_led_n_ff_exact_main_region__ight_eft_r__led_n_ff_exact_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Exit action for state 'led2'. */
	led_n_ff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region__ight_eft_led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised) );		
}

/* Exit action for state 'led3'. */
static void led_n_ff_exact_main_region_led_n_ff_exact_main_region__ight_eft_led_n_ff_exact_main_region__ight_eft_r__led_n_ff_exact_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Exit action for state 'led3'. */
	led_n_ff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.led_n_ff_main_region_led_n_ff_main_region__ight_eft_led_n_ff_main_region__ight_eft_r__led_n_ff_main_region__ight_eft_r__led__tev__raised) );		
}

/* 'default' enter sequence for state LeftRight */
static void led_n_ff_enseq_main_region__eft_ight_default(Led_n_ff* handle)
{
	/* 'default' enter sequence for state LeftRight */
	led_n_ff_enseq_main_region__eft_ight_r__default(handle);
}

/* 'default' enter sequence for state led0 */
static void led_n_ff_enseq_main_region__eft_ight_r__led__default(Led_n_ff* handle)
{
	/* 'default' enter sequence for state led0 */
	led_n_ff_enact_main_region__eft_ight_r__led_(handle);
	handle->stateConfVector[0] = _ed_n_ff_main_region__eft_ight_r__led_;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led1 */
static void led_n_ff_enseq_main_region__eft_ight_r__led_n_ff_enseq_main_region__eft_ight_r__led__default(Led_n_ff* handle)
{
	/* 'default' enter sequence for state led1 */
	led_n_ff_enact_main_region__eft_ight_r__led_n_ff_enact_main_region__eft_ight_r__led_(handle);
	handle->stateConfVector[0] = _ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led2 */
static void led_n_ff_enseq_main_region__eft_ight_led_n_ff_enseq_main_region__eft_ight_r__led_n_ff_enseq_main_region__eft_ight_r__led__default(Led_n_ff* handle)
{
	/* 'default' enter sequence for state led2 */
	led_n_ff_enact_main_region__eft_ight_led_n_ff_enact_main_region__eft_ight_r__led_n_ff_enact_main_region__eft_ight_r__led_(handle);
	handle->stateConfVector[0] = _ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led3 */
static void led_n_ff_enseq_main_region_led_n_ff_enseq_main_region__eft_ight_led_n_ff_enseq_main_region__eft_ight_r__led_n_ff_enseq_main_region__eft_ight_r__led__default(Led_n_ff* handle)
{
	/* 'default' enter sequence for state led3 */
	led_n_ff_enact_main_region_led_n_ff_enact_main_region__eft_ight_led_n_ff_enact_main_region__eft_ight_r__led_n_ff_enact_main_region__eft_ight_r__led_(handle);
	handle->stateConfVector[0] = _ed_n_ff_main_region__ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state RightLeft */
static void led_n_ff_enseq_main_region__ight_eft_default(Led_n_ff* handle)
{
	/* 'default' enter sequence for state RightLeft */
	led_n_ff_enseq_main_region__ight_eft_r__default(handle);
}

/* 'default' enter sequence for state led0 */
static void led_n_ff_enseq_main_region__ight_eft_r__led__default(Led_n_ff* handle)
{
	/* 'default' enter sequence for state led0 */
	led_n_ff_enact_main_region__ight_eft_r__led_(handle);
	handle->stateConfVector[0] = _ed_n_ff_main_region__ight_eft_r__led_;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led1 */
static void led_n_ff_enseq_main_region__ight_eft_r__led_n_ff_enseq_main_region__ight_eft_r__led__default(Led_n_ff* handle)
{
	/* 'default' enter sequence for state led1 */
	led_n_ff_enact_main_region__ight_eft_r__led_n_ff_enact_main_region__ight_eft_r__led_(handle);
	handle->stateConfVector[0] = _ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led2 */
static void led_n_ff_enseq_main_region__ight_eft_led_n_ff_enseq_main_region__ight_eft_r__led_n_ff_enseq_main_region__ight_eft_r__led__default(Led_n_ff* handle)
{
	/* 'default' enter sequence for state led2 */
	led_n_ff_enact_main_region__ight_eft_led_n_ff_enact_main_region__ight_eft_r__led_n_ff_enact_main_region__ight_eft_r__led_(handle);
	handle->stateConfVector[0] = _ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led3 */
static void led_n_ff_enseq_main_region_led_n_ff_enseq_main_region__ight_eft_led_n_ff_enseq_main_region__ight_eft_r__led_n_ff_enseq_main_region__ight_eft_r__led__default(Led_n_ff* handle)
{
	/* 'default' enter sequence for state led3 */
	led_n_ff_enact_main_region_led_n_ff_enact_main_region__ight_eft_led_n_ff_enact_main_region__ight_eft_r__led_n_ff_enact_main_region__ight_eft_r__led_(handle);
	handle->stateConfVector[0] = _ed_n_ff_main_region__ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void led_n_ff_enseq_main_region_default(Led_n_ff* handle)
{
	/* 'default' enter sequence for region main region */
	led_n_ff_react_main_region__entry__efault(handle);
}

/* 'default' enter sequence for region r1 */
static void led_n_ff_enseq_main_region__eft_ight_r__default(Led_n_ff* handle)
{
	/* 'default' enter sequence for region r1 */
	led_n_ff_react_main_region__eft_ight_r___entry__efault(handle);
}

/* 'default' enter sequence for region r1 */
static void led_n_ff_enseq_main_region__ight_eft_r__default(Led_n_ff* handle)
{
	/* 'default' enter sequence for region r1 */
	led_n_ff_react_main_region__ight_eft_r___entry__efault(handle);
}

/* Default exit sequence for state LeftRight */
static void led_n_ff_exseq_main_region__eft_ight(Led_n_ff* handle)
{
	/* Default exit sequence for state LeftRight */
	led_n_ff_exseq_main_region__eft_ight_r_(handle);
}

/* Default exit sequence for state led0 */
static void led_n_ff_exseq_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Default exit sequence for state led0 */
	handle->stateConfVector[0] = Led_n_ff_last_state;
	handle->stateConfVectorPosition = 0;
	led_n_ff_exact_main_region__eft_ight_r__led_(handle);
}

/* Default exit sequence for state led1 */
static void led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Default exit sequence for state led1 */
	handle->stateConfVector[0] = Led_n_ff_last_state;
	handle->stateConfVectorPosition = 0;
	led_n_ff_exact_main_region__eft_ight_r__led_n_ff_exact_main_region__eft_ight_r__led_(handle);
}

/* Default exit sequence for state led2 */
static void led_n_ff_exseq_main_region__eft_ight_led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Default exit sequence for state led2 */
	handle->stateConfVector[0] = Led_n_ff_last_state;
	handle->stateConfVectorPosition = 0;
	led_n_ff_exact_main_region__eft_ight_led_n_ff_exact_main_region__eft_ight_r__led_n_ff_exact_main_region__eft_ight_r__led_(handle);
}

/* Default exit sequence for state led3 */
static void led_n_ff_exseq_main_region_led_n_ff_exseq_main_region__eft_ight_led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* Default exit sequence for state led3 */
	handle->stateConfVector[0] = Led_n_ff_last_state;
	handle->stateConfVectorPosition = 0;
	led_n_ff_exact_main_region_led_n_ff_exact_main_region__eft_ight_led_n_ff_exact_main_region__eft_ight_r__led_n_ff_exact_main_region__eft_ight_r__led_(handle);
}

/* Default exit sequence for state RightLeft */
static void led_n_ff_exseq_main_region__ight_eft(Led_n_ff* handle)
{
	/* Default exit sequence for state RightLeft */
	led_n_ff_exseq_main_region__ight_eft_r_(handle);
}

/* Default exit sequence for state led0 */
static void led_n_ff_exseq_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Default exit sequence for state led0 */
	handle->stateConfVector[0] = Led_n_ff_last_state;
	handle->stateConfVectorPosition = 0;
	led_n_ff_exact_main_region__ight_eft_r__led_(handle);
}

/* Default exit sequence for state led1 */
static void led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Default exit sequence for state led1 */
	handle->stateConfVector[0] = Led_n_ff_last_state;
	handle->stateConfVectorPosition = 0;
	led_n_ff_exact_main_region__ight_eft_r__led_n_ff_exact_main_region__ight_eft_r__led_(handle);
}

/* Default exit sequence for state led2 */
static void led_n_ff_exseq_main_region__ight_eft_led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Default exit sequence for state led2 */
	handle->stateConfVector[0] = Led_n_ff_last_state;
	handle->stateConfVectorPosition = 0;
	led_n_ff_exact_main_region__ight_eft_led_n_ff_exact_main_region__ight_eft_r__led_n_ff_exact_main_region__ight_eft_r__led_(handle);
}

/* Default exit sequence for state led3 */
static void led_n_ff_exseq_main_region_led_n_ff_exseq_main_region__ight_eft_led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* Default exit sequence for state led3 */
	handle->stateConfVector[0] = Led_n_ff_last_state;
	handle->stateConfVectorPosition = 0;
	led_n_ff_exact_main_region_led_n_ff_exact_main_region__ight_eft_led_n_ff_exact_main_region__ight_eft_r__led_n_ff_exact_main_region__ight_eft_r__led_(handle);
}

/* Default exit sequence for region main region */
static void led_n_ff_exseq_main_region(Led_n_ff* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of ledOnOff.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case _ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_exseq_main_region__eft_ight_led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_exseq_main_region_led_n_ff_exseq_main_region__eft_ight_led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_exseq_main_region__ight_eft_led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_exseq_main_region_led_n_ff_exseq_main_region__ight_eft_led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void led_n_ff_exseq_main_region__eft_ight_r_(Led_n_ff* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of ledOnOff.main_region.LeftRight.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case _ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_exseq_main_region__eft_ight_led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ed_n_ff_main_region__eft_ight__ed_n_ff_main_region__eft_ight_r___ed_n_ff_main_region__eft_ight_r__led_ :
		{
			led_n_ff_exseq_main_region_led_n_ff_exseq_main_region__eft_ight_led_n_ff_exseq_main_region__eft_ight_r__led_n_ff_exseq_main_region__eft_ight_r__led_(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void led_n_ff_exseq_main_region__ight_eft_r_(Led_n_ff* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of ledOnOff.main_region.RightLeft.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case _ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_exseq_main_region__ight_eft_led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
			break;
		}
		case _ed_n_ff_main_region__ed_n_ff_main_region__ight_eft__ed_n_ff_main_region__ight_eft_r___ed_n_ff_main_region__ight_eft_r__led_ :
		{
			led_n_ff_exseq_main_region_led_n_ff_exseq_main_region__ight_eft_led_n_ff_exseq_main_region__ight_eft_r__led_n_ff_exseq_main_region__ight_eft_r__led_(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state led0. */
static void led_n_ff_react_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* The reactions of state led0. */
	if (led_n_ff_check_main_region__eft_ight_tr__tr_(handle) == bool_true)
	{ 
		led_n_ff_effect_main_region__eft_ight_tr_(handle);
	}  else
	{
		if (led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(handle) == bool_true)
		{ 
			led_n_ff_effect_main_region__eft_ight_r__led__tr_(handle);
		} 
	}
}

/* The reactions of state led1. */
static void led_n_ff_react_main_region__eft_ight_r__led_n_ff_react_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* The reactions of state led1. */
	if (led_n_ff_check_main_region__eft_ight_tr__tr_(handle) == bool_true)
	{ 
		led_n_ff_effect_main_region__eft_ight_tr_(handle);
	}  else
	{
		if (led_n_ff_check_main_region__eft_ight_r__led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(handle) == bool_true)
		{ 
			led_n_ff_effect_main_region__eft_ight_r__led_n_ff_effect_main_region__eft_ight_r__led__tr_(handle);
		} 
	}
}

/* The reactions of state led2. */
static void led_n_ff_react_main_region__eft_ight_led_n_ff_react_main_region__eft_ight_r__led_n_ff_react_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* The reactions of state led2. */
	if (led_n_ff_check_main_region__eft_ight_tr__tr_(handle) == bool_true)
	{ 
		led_n_ff_effect_main_region__eft_ight_tr_(handle);
	}  else
	{
		if (led_n_ff_check_main_region__eft_ight_led_n_ff_check_main_region__eft_ight_r__led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(handle) == bool_true)
		{ 
			led_n_ff_effect_main_region__eft_ight_led_n_ff_effect_main_region__eft_ight_r__led_n_ff_effect_main_region__eft_ight_r__led__tr_(handle);
		} 
	}
}

/* The reactions of state led3. */
static void led_n_ff_react_main_region_led_n_ff_react_main_region__eft_ight_led_n_ff_react_main_region__eft_ight_r__led_n_ff_react_main_region__eft_ight_r__led_(Led_n_ff* handle)
{
	/* The reactions of state led3. */
	if (led_n_ff_check_main_region__eft_ight_tr__tr_(handle) == bool_true)
	{ 
		led_n_ff_effect_main_region__eft_ight_tr_(handle);
	}  else
	{
		if (led_n_ff_check_main_region_led_n_ff_check_main_region__eft_ight_led_n_ff_check_main_region__eft_ight_r__led_n_ff_check_main_region__eft_ight_r__led__tr__tr_(handle) == bool_true)
		{ 
			led_n_ff_effect_main_region_led_n_ff_effect_main_region__eft_ight_led_n_ff_effect_main_region__eft_ight_r__led_n_ff_effect_main_region__eft_ight_r__led__tr_(handle);
		} 
	}
}

/* The reactions of state led0. */
static void led_n_ff_react_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* The reactions of state led0. */
	if (led_n_ff_check_main_region__ight_eft_tr__tr_(handle) == bool_true)
	{ 
		led_n_ff_effect_main_region__ight_eft_tr_(handle);
	}  else
	{
		if (led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(handle) == bool_true)
		{ 
			led_n_ff_effect_main_region__ight_eft_r__led__tr_(handle);
		} 
	}
}

/* The reactions of state led1. */
static void led_n_ff_react_main_region__ight_eft_r__led_n_ff_react_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* The reactions of state led1. */
	if (led_n_ff_check_main_region__ight_eft_tr__tr_(handle) == bool_true)
	{ 
		led_n_ff_effect_main_region__ight_eft_tr_(handle);
	}  else
	{
		if (led_n_ff_check_main_region__ight_eft_r__led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(handle) == bool_true)
		{ 
			led_n_ff_effect_main_region__ight_eft_r__led_n_ff_effect_main_region__ight_eft_r__led__tr_(handle);
		} 
	}
}

/* The reactions of state led2. */
static void led_n_ff_react_main_region__ight_eft_led_n_ff_react_main_region__ight_eft_r__led_n_ff_react_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* The reactions of state led2. */
	if (led_n_ff_check_main_region__ight_eft_tr__tr_(handle) == bool_true)
	{ 
		led_n_ff_effect_main_region__ight_eft_tr_(handle);
	}  else
	{
		if (led_n_ff_check_main_region__ight_eft_led_n_ff_check_main_region__ight_eft_r__led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(handle) == bool_true)
		{ 
			led_n_ff_effect_main_region__ight_eft_led_n_ff_effect_main_region__ight_eft_r__led_n_ff_effect_main_region__ight_eft_r__led__tr_(handle);
		} 
	}
}

/* The reactions of state led3. */
static void led_n_ff_react_main_region_led_n_ff_react_main_region__ight_eft_led_n_ff_react_main_region__ight_eft_r__led_n_ff_react_main_region__ight_eft_r__led_(Led_n_ff* handle)
{
	/* The reactions of state led3. */
	if (led_n_ff_check_main_region__ight_eft_tr__tr_(handle) == bool_true)
	{ 
		led_n_ff_effect_main_region__ight_eft_tr_(handle);
	}  else
	{
		if (led_n_ff_check_main_region_led_n_ff_check_main_region__ight_eft_led_n_ff_check_main_region__ight_eft_r__led_n_ff_check_main_region__ight_eft_r__led__tr__tr_(handle) == bool_true)
		{ 
			led_n_ff_effect_main_region_led_n_ff_effect_main_region__ight_eft_led_n_ff_effect_main_region__ight_eft_r__led_n_ff_effect_main_region__ight_eft_r__led__tr_(handle);
		} 
	}
}

/* Default react sequence for initial entry  */
static void led_n_ff_react_main_region__entry__efault(Led_n_ff* handle)
{
	/* Default react sequence for initial entry  */
	led_n_ff_enseq_main_region__eft_ight_default(handle);
}

/* Default react sequence for initial entry  */
static void led_n_ff_react_main_region__eft_ight_r___entry__efault(Led_n_ff* handle)
{
	/* Default react sequence for initial entry  */
	led_n_ff_enseq_main_region__eft_ight_r__led__default(handle);
}

/* Default react sequence for initial entry  */
static void led_n_ff_react_main_region__ight_eft_r___entry__efault(Led_n_ff* handle)
{
	/* Default react sequence for initial entry  */
	led_n_ff_enseq_main_region_led_n_ff_enseq_main_region__ight_eft_led_n_ff_enseq_main_region__ight_eft_r__led_n_ff_enseq_main_region__ight_eft_r__led__default(handle);
}


