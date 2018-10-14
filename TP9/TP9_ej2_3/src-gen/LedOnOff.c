
#include <stdlib.h>
#include <string.h>
#include "../src/sc_types.h"
#include "LedOnOff.h"
#include "LedOnOffRequired.h"
/*! \file Implementation of the state machine 'ledOnOff'
*/

/* prototypes of all internal functions */
static sc_boolean ledOnOff_check_main_region_LeftRight_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_LeftRight_r1_led0_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_LeftRight_r1_led1_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_LeftRight_r1_led2_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_LeftRight_r1_led3_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_RightLeft_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_RightLeft_r1_led0_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_RightLeft_r1_led1_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_RightLeft_r1_led2_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_RightLeft_r1_led3_tr0_tr0(const LedOnOff* handle);
static void ledOnOff_effect_main_region_LeftRight_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_LeftRight_r1_led0_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_LeftRight_r1_led1_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_LeftRight_r1_led2_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_LeftRight_r1_led3_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_RightLeft_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_RightLeft_r1_led0_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_RightLeft_r1_led1_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_RightLeft_r1_led2_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_RightLeft_r1_led3_tr0(LedOnOff* handle);
static void ledOnOff_enact_main_region_LeftRight_r1_led0(LedOnOff* handle);
static void ledOnOff_enact_main_region_LeftRight_r1_led1(LedOnOff* handle);
static void ledOnOff_enact_main_region_LeftRight_r1_led2(LedOnOff* handle);
static void ledOnOff_enact_main_region_LeftRight_r1_led3(LedOnOff* handle);
static void ledOnOff_enact_main_region_RightLeft_r1_led0(LedOnOff* handle);
static void ledOnOff_enact_main_region_RightLeft_r1_led1(LedOnOff* handle);
static void ledOnOff_enact_main_region_RightLeft_r1_led2(LedOnOff* handle);
static void ledOnOff_enact_main_region_RightLeft_r1_led3(LedOnOff* handle);
static void ledOnOff_exact_main_region_LeftRight_r1_led0(LedOnOff* handle);
static void ledOnOff_exact_main_region_LeftRight_r1_led1(LedOnOff* handle);
static void ledOnOff_exact_main_region_LeftRight_r1_led2(LedOnOff* handle);
static void ledOnOff_exact_main_region_LeftRight_r1_led3(LedOnOff* handle);
static void ledOnOff_exact_main_region_RightLeft_r1_led0(LedOnOff* handle);
static void ledOnOff_exact_main_region_RightLeft_r1_led1(LedOnOff* handle);
static void ledOnOff_exact_main_region_RightLeft_r1_led2(LedOnOff* handle);
static void ledOnOff_exact_main_region_RightLeft_r1_led3(LedOnOff* handle);
static void ledOnOff_enseq_main_region_LeftRight_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_LeftRight_r1_led0_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_LeftRight_r1_led1_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_LeftRight_r1_led2_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_LeftRight_r1_led3_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_RightLeft_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_RightLeft_r1_led0_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_RightLeft_r1_led1_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_RightLeft_r1_led2_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_RightLeft_r1_led3_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_LeftRight_r1_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_RightLeft_r1_default(LedOnOff* handle);
static void ledOnOff_exseq_main_region_LeftRight(LedOnOff* handle);
static void ledOnOff_exseq_main_region_LeftRight_r1_led0(LedOnOff* handle);
static void ledOnOff_exseq_main_region_LeftRight_r1_led1(LedOnOff* handle);
static void ledOnOff_exseq_main_region_LeftRight_r1_led2(LedOnOff* handle);
static void ledOnOff_exseq_main_region_LeftRight_r1_led3(LedOnOff* handle);
static void ledOnOff_exseq_main_region_RightLeft(LedOnOff* handle);
static void ledOnOff_exseq_main_region_RightLeft_r1_led0(LedOnOff* handle);
static void ledOnOff_exseq_main_region_RightLeft_r1_led1(LedOnOff* handle);
static void ledOnOff_exseq_main_region_RightLeft_r1_led2(LedOnOff* handle);
static void ledOnOff_exseq_main_region_RightLeft_r1_led3(LedOnOff* handle);
static void ledOnOff_exseq_main_region(LedOnOff* handle);
static void ledOnOff_exseq_main_region_LeftRight_r1(LedOnOff* handle);
static void ledOnOff_exseq_main_region_RightLeft_r1(LedOnOff* handle);
static void ledOnOff_react_main_region_LeftRight_r1_led0(LedOnOff* handle);
static void ledOnOff_react_main_region_LeftRight_r1_led1(LedOnOff* handle);
static void ledOnOff_react_main_region_LeftRight_r1_led2(LedOnOff* handle);
static void ledOnOff_react_main_region_LeftRight_r1_led3(LedOnOff* handle);
static void ledOnOff_react_main_region_RightLeft_r1_led0(LedOnOff* handle);
static void ledOnOff_react_main_region_RightLeft_r1_led1(LedOnOff* handle);
static void ledOnOff_react_main_region_RightLeft_r1_led2(LedOnOff* handle);
static void ledOnOff_react_main_region_RightLeft_r1_led3(LedOnOff* handle);
static void ledOnOff_react_main_region__entry_Default(LedOnOff* handle);
static void ledOnOff_react_main_region_LeftRight_r1__entry_Default(LedOnOff* handle);
static void ledOnOff_react_main_region_RightLeft_r1__entry_Default(LedOnOff* handle);
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
	handle->iface.keyPress_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led0_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led1_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led2_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led3_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led0_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led1_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led2_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led3_tev0_raised = bool_false;
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
		case LedOnOff_main_region_LeftRight_r1_led0 :
		{
			ledOnOff_react_main_region_LeftRight_r1_led0(handle);
			break;
		}
		case LedOnOff_main_region_LeftRight_r1_led1 :
		{
			ledOnOff_react_main_region_LeftRight_r1_led1(handle);
			break;
		}
		case LedOnOff_main_region_LeftRight_r1_led2 :
		{
			ledOnOff_react_main_region_LeftRight_r1_led2(handle);
			break;
		}
		case LedOnOff_main_region_LeftRight_r1_led3 :
		{
			ledOnOff_react_main_region_LeftRight_r1_led3(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led0 :
		{
			ledOnOff_react_main_region_RightLeft_r1_led0(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led1 :
		{
			ledOnOff_react_main_region_RightLeft_r1_led1(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led2 :
		{
			ledOnOff_react_main_region_RightLeft_r1_led2(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led3 :
		{
			ledOnOff_react_main_region_RightLeft_r1_led3(handle);
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
		case LedOnOff_main_region_LeftRight :
			result = (sc_boolean) (handle->stateConfVector[0] >= LedOnOff_main_region_LeftRight
				&& handle->stateConfVector[0] <= LedOnOff_main_region_LeftRight_r1_led3);
			break;
		case LedOnOff_main_region_LeftRight_r1_led0 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_LeftRight_r1_led0
			);
			break;
		case LedOnOff_main_region_LeftRight_r1_led1 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_LeftRight_r1_led1
			);
			break;
		case LedOnOff_main_region_LeftRight_r1_led2 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_LeftRight_r1_led2
			);
			break;
		case LedOnOff_main_region_LeftRight_r1_led3 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_LeftRight_r1_led3
			);
			break;
		case LedOnOff_main_region_RightLeft :
			result = (sc_boolean) (handle->stateConfVector[0] >= LedOnOff_main_region_RightLeft
				&& handle->stateConfVector[0] <= LedOnOff_main_region_RightLeft_r1_led3);
			break;
		case LedOnOff_main_region_RightLeft_r1_led0 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_RightLeft_r1_led0
			);
			break;
		case LedOnOff_main_region_RightLeft_r1_led1 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_RightLeft_r1_led1
			);
			break;
		case LedOnOff_main_region_RightLeft_r1_led2 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_RightLeft_r1_led2
			);
			break;
		case LedOnOff_main_region_RightLeft_r1_led3 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_RightLeft_r1_led3
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

static sc_boolean ledOnOff_check_main_region_LeftRight_tr0_tr0(const LedOnOff* handle)
{
	return handle->iface.keyPress_raised;
}

static sc_boolean ledOnOff_check_main_region_LeftRight_r1_led0_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led0_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_LeftRight_r1_led1_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led1_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_LeftRight_r1_led2_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led2_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_LeftRight_r1_led3_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led3_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_RightLeft_tr0_tr0(const LedOnOff* handle)
{
	return handle->iface.keyPress_raised;
}

static sc_boolean ledOnOff_check_main_region_RightLeft_r1_led0_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led0_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_RightLeft_r1_led1_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led1_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_RightLeft_r1_led2_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led2_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_RightLeft_r1_led3_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led3_tev0_raised;
}

static void ledOnOff_effect_main_region_LeftRight_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_LeftRight(handle);
	ledOnOff_enseq_main_region_RightLeft_default(handle);
}

static void ledOnOff_effect_main_region_LeftRight_r1_led0_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_LeftRight_r1_led0(handle);
	ledOnOff_enseq_main_region_LeftRight_r1_led1_default(handle);
}

static void ledOnOff_effect_main_region_LeftRight_r1_led1_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_LeftRight_r1_led1(handle);
	ledOnOff_enseq_main_region_LeftRight_r1_led2_default(handle);
}

static void ledOnOff_effect_main_region_LeftRight_r1_led2_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_LeftRight_r1_led2(handle);
	ledOnOff_enseq_main_region_LeftRight_r1_led3_default(handle);
}

static void ledOnOff_effect_main_region_LeftRight_r1_led3_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_LeftRight_r1_led3(handle);
	ledOnOff_enseq_main_region_LeftRight_r1_led0_default(handle);
}

static void ledOnOff_effect_main_region_RightLeft_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_RightLeft(handle);
	ledOnOff_enseq_main_region_LeftRight_default(handle);
}

static void ledOnOff_effect_main_region_RightLeft_r1_led0_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_RightLeft_r1_led0(handle);
	ledOnOff_enseq_main_region_RightLeft_r1_led3_default(handle);
}

static void ledOnOff_effect_main_region_RightLeft_r1_led1_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_RightLeft_r1_led1(handle);
	ledOnOff_enseq_main_region_RightLeft_r1_led0_default(handle);
}

static void ledOnOff_effect_main_region_RightLeft_r1_led2_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_RightLeft_r1_led2(handle);
	ledOnOff_enseq_main_region_RightLeft_r1_led1_default(handle);
}

static void ledOnOff_effect_main_region_RightLeft_r1_led3_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_RightLeft_r1_led3(handle);
	ledOnOff_enseq_main_region_RightLeft_r1_led2_default(handle);
}

/* Entry action for state 'led0'. */
static void ledOnOff_enact_main_region_LeftRight_r1_led0(LedOnOff* handle)
{
	/* Entry action for state 'led0'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led0_tev0_raised) , 500, bool_false);
	ledOnOffIface_setLedFromMask(handle, 0x4);
}

/* Entry action for state 'led1'. */
static void ledOnOff_enact_main_region_LeftRight_r1_led1(LedOnOff* handle)
{
	/* Entry action for state 'led1'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led1_tev0_raised) , 500, bool_false);
	ledOnOffIface_setLedFromMask(handle, 0x8);
}

/* Entry action for state 'led2'. */
static void ledOnOff_enact_main_region_LeftRight_r1_led2(LedOnOff* handle)
{
	/* Entry action for state 'led2'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led2_tev0_raised) , 500, bool_false);
	ledOnOffIface_setLedFromMask(handle, 0x10);
}

/* Entry action for state 'led3'. */
static void ledOnOff_enact_main_region_LeftRight_r1_led3(LedOnOff* handle)
{
	/* Entry action for state 'led3'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led3_tev0_raised) , 500, bool_false);
	ledOnOffIface_setLedFromMask(handle, 0x20);
}

/* Entry action for state 'led0'. */
static void ledOnOff_enact_main_region_RightLeft_r1_led0(LedOnOff* handle)
{
	/* Entry action for state 'led0'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led0_tev0_raised) , 500, bool_false);
	ledOnOffIface_setLedFromMask(handle, 0x4);
}

/* Entry action for state 'led1'. */
static void ledOnOff_enact_main_region_RightLeft_r1_led1(LedOnOff* handle)
{
	/* Entry action for state 'led1'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led1_tev0_raised) , 500, bool_false);
	ledOnOffIface_setLedFromMask(handle, 0x8);
}

/* Entry action for state 'led2'. */
static void ledOnOff_enact_main_region_RightLeft_r1_led2(LedOnOff* handle)
{
	/* Entry action for state 'led2'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led2_tev0_raised) , 500, bool_false);
	ledOnOffIface_setLedFromMask(handle, 0x10);
}

/* Entry action for state 'led3'. */
static void ledOnOff_enact_main_region_RightLeft_r1_led3(LedOnOff* handle)
{
	/* Entry action for state 'led3'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led3_tev0_raised) , 500, bool_false);
	ledOnOffIface_setLedFromMask(handle, 0x20);
}

/* Exit action for state 'led0'. */
static void ledOnOff_exact_main_region_LeftRight_r1_led0(LedOnOff* handle)
{
	/* Exit action for state 'led0'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led0_tev0_raised) );		
}

/* Exit action for state 'led1'. */
static void ledOnOff_exact_main_region_LeftRight_r1_led1(LedOnOff* handle)
{
	/* Exit action for state 'led1'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led1_tev0_raised) );		
}

/* Exit action for state 'led2'. */
static void ledOnOff_exact_main_region_LeftRight_r1_led2(LedOnOff* handle)
{
	/* Exit action for state 'led2'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led2_tev0_raised) );		
}

/* Exit action for state 'led3'. */
static void ledOnOff_exact_main_region_LeftRight_r1_led3(LedOnOff* handle)
{
	/* Exit action for state 'led3'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_LeftRight_r1_led3_tev0_raised) );		
}

/* Exit action for state 'led0'. */
static void ledOnOff_exact_main_region_RightLeft_r1_led0(LedOnOff* handle)
{
	/* Exit action for state 'led0'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led0_tev0_raised) );		
}

/* Exit action for state 'led1'. */
static void ledOnOff_exact_main_region_RightLeft_r1_led1(LedOnOff* handle)
{
	/* Exit action for state 'led1'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led1_tev0_raised) );		
}

/* Exit action for state 'led2'. */
static void ledOnOff_exact_main_region_RightLeft_r1_led2(LedOnOff* handle)
{
	/* Exit action for state 'led2'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led2_tev0_raised) );		
}

/* Exit action for state 'led3'. */
static void ledOnOff_exact_main_region_RightLeft_r1_led3(LedOnOff* handle)
{
	/* Exit action for state 'led3'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_RightLeft_r1_led3_tev0_raised) );		
}

/* 'default' enter sequence for state LeftRight */
static void ledOnOff_enseq_main_region_LeftRight_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state LeftRight */
	ledOnOff_enseq_main_region_LeftRight_r1_default(handle);
}

/* 'default' enter sequence for state led0 */
static void ledOnOff_enseq_main_region_LeftRight_r1_led0_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led0 */
	ledOnOff_enact_main_region_LeftRight_r1_led0(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_LeftRight_r1_led0;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led1 */
static void ledOnOff_enseq_main_region_LeftRight_r1_led1_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led1 */
	ledOnOff_enact_main_region_LeftRight_r1_led1(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_LeftRight_r1_led1;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led2 */
static void ledOnOff_enseq_main_region_LeftRight_r1_led2_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led2 */
	ledOnOff_enact_main_region_LeftRight_r1_led2(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_LeftRight_r1_led2;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led3 */
static void ledOnOff_enseq_main_region_LeftRight_r1_led3_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led3 */
	ledOnOff_enact_main_region_LeftRight_r1_led3(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_LeftRight_r1_led3;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state RightLeft */
static void ledOnOff_enseq_main_region_RightLeft_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state RightLeft */
	ledOnOff_enseq_main_region_RightLeft_r1_default(handle);
}

/* 'default' enter sequence for state led0 */
static void ledOnOff_enseq_main_region_RightLeft_r1_led0_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led0 */
	ledOnOff_enact_main_region_RightLeft_r1_led0(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_RightLeft_r1_led0;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led1 */
static void ledOnOff_enseq_main_region_RightLeft_r1_led1_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led1 */
	ledOnOff_enact_main_region_RightLeft_r1_led1(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_RightLeft_r1_led1;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led2 */
static void ledOnOff_enseq_main_region_RightLeft_r1_led2_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led2 */
	ledOnOff_enact_main_region_RightLeft_r1_led2(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_RightLeft_r1_led2;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led3 */
static void ledOnOff_enseq_main_region_RightLeft_r1_led3_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led3 */
	ledOnOff_enact_main_region_RightLeft_r1_led3(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_RightLeft_r1_led3;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void ledOnOff_enseq_main_region_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region main region */
	ledOnOff_react_main_region__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void ledOnOff_enseq_main_region_LeftRight_r1_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region r1 */
	ledOnOff_react_main_region_LeftRight_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void ledOnOff_enseq_main_region_RightLeft_r1_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region r1 */
	ledOnOff_react_main_region_RightLeft_r1__entry_Default(handle);
}

/* Default exit sequence for state LeftRight */
static void ledOnOff_exseq_main_region_LeftRight(LedOnOff* handle)
{
	/* Default exit sequence for state LeftRight */
	ledOnOff_exseq_main_region_LeftRight_r1(handle);
}

/* Default exit sequence for state led0 */
static void ledOnOff_exseq_main_region_LeftRight_r1_led0(LedOnOff* handle)
{
	/* Default exit sequence for state led0 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_LeftRight_r1_led0(handle);
}

/* Default exit sequence for state led1 */
static void ledOnOff_exseq_main_region_LeftRight_r1_led1(LedOnOff* handle)
{
	/* Default exit sequence for state led1 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_LeftRight_r1_led1(handle);
}

/* Default exit sequence for state led2 */
static void ledOnOff_exseq_main_region_LeftRight_r1_led2(LedOnOff* handle)
{
	/* Default exit sequence for state led2 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_LeftRight_r1_led2(handle);
}

/* Default exit sequence for state led3 */
static void ledOnOff_exseq_main_region_LeftRight_r1_led3(LedOnOff* handle)
{
	/* Default exit sequence for state led3 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_LeftRight_r1_led3(handle);
}

/* Default exit sequence for state RightLeft */
static void ledOnOff_exseq_main_region_RightLeft(LedOnOff* handle)
{
	/* Default exit sequence for state RightLeft */
	ledOnOff_exseq_main_region_RightLeft_r1(handle);
}

/* Default exit sequence for state led0 */
static void ledOnOff_exseq_main_region_RightLeft_r1_led0(LedOnOff* handle)
{
	/* Default exit sequence for state led0 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_RightLeft_r1_led0(handle);
}

/* Default exit sequence for state led1 */
static void ledOnOff_exseq_main_region_RightLeft_r1_led1(LedOnOff* handle)
{
	/* Default exit sequence for state led1 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_RightLeft_r1_led1(handle);
}

/* Default exit sequence for state led2 */
static void ledOnOff_exseq_main_region_RightLeft_r1_led2(LedOnOff* handle)
{
	/* Default exit sequence for state led2 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_RightLeft_r1_led2(handle);
}

/* Default exit sequence for state led3 */
static void ledOnOff_exseq_main_region_RightLeft_r1_led3(LedOnOff* handle)
{
	/* Default exit sequence for state led3 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_RightLeft_r1_led3(handle);
}

/* Default exit sequence for region main region */
static void ledOnOff_exseq_main_region(LedOnOff* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of ledOnOff.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_LeftRight_r1_led0 :
		{
			ledOnOff_exseq_main_region_LeftRight_r1_led0(handle);
			break;
		}
		case LedOnOff_main_region_LeftRight_r1_led1 :
		{
			ledOnOff_exseq_main_region_LeftRight_r1_led1(handle);
			break;
		}
		case LedOnOff_main_region_LeftRight_r1_led2 :
		{
			ledOnOff_exseq_main_region_LeftRight_r1_led2(handle);
			break;
		}
		case LedOnOff_main_region_LeftRight_r1_led3 :
		{
			ledOnOff_exseq_main_region_LeftRight_r1_led3(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led0 :
		{
			ledOnOff_exseq_main_region_RightLeft_r1_led0(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led1 :
		{
			ledOnOff_exseq_main_region_RightLeft_r1_led1(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led2 :
		{
			ledOnOff_exseq_main_region_RightLeft_r1_led2(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led3 :
		{
			ledOnOff_exseq_main_region_RightLeft_r1_led3(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void ledOnOff_exseq_main_region_LeftRight_r1(LedOnOff* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of ledOnOff.main_region.LeftRight.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_LeftRight_r1_led0 :
		{
			ledOnOff_exseq_main_region_LeftRight_r1_led0(handle);
			break;
		}
		case LedOnOff_main_region_LeftRight_r1_led1 :
		{
			ledOnOff_exseq_main_region_LeftRight_r1_led1(handle);
			break;
		}
		case LedOnOff_main_region_LeftRight_r1_led2 :
		{
			ledOnOff_exseq_main_region_LeftRight_r1_led2(handle);
			break;
		}
		case LedOnOff_main_region_LeftRight_r1_led3 :
		{
			ledOnOff_exseq_main_region_LeftRight_r1_led3(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void ledOnOff_exseq_main_region_RightLeft_r1(LedOnOff* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of ledOnOff.main_region.RightLeft.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_RightLeft_r1_led0 :
		{
			ledOnOff_exseq_main_region_RightLeft_r1_led0(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led1 :
		{
			ledOnOff_exseq_main_region_RightLeft_r1_led1(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led2 :
		{
			ledOnOff_exseq_main_region_RightLeft_r1_led2(handle);
			break;
		}
		case LedOnOff_main_region_RightLeft_r1_led3 :
		{
			ledOnOff_exseq_main_region_RightLeft_r1_led3(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state led0. */
static void ledOnOff_react_main_region_LeftRight_r1_led0(LedOnOff* handle)
{
	/* The reactions of state led0. */
	if (ledOnOff_check_main_region_LeftRight_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_LeftRight_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_LeftRight_r1_led0_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_LeftRight_r1_led0_tr0(handle);
		} 
	}
}

/* The reactions of state led1. */
static void ledOnOff_react_main_region_LeftRight_r1_led1(LedOnOff* handle)
{
	/* The reactions of state led1. */
	if (ledOnOff_check_main_region_LeftRight_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_LeftRight_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_LeftRight_r1_led1_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_LeftRight_r1_led1_tr0(handle);
		} 
	}
}

/* The reactions of state led2. */
static void ledOnOff_react_main_region_LeftRight_r1_led2(LedOnOff* handle)
{
	/* The reactions of state led2. */
	if (ledOnOff_check_main_region_LeftRight_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_LeftRight_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_LeftRight_r1_led2_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_LeftRight_r1_led2_tr0(handle);
		} 
	}
}

/* The reactions of state led3. */
static void ledOnOff_react_main_region_LeftRight_r1_led3(LedOnOff* handle)
{
	/* The reactions of state led3. */
	if (ledOnOff_check_main_region_LeftRight_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_LeftRight_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_LeftRight_r1_led3_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_LeftRight_r1_led3_tr0(handle);
		} 
	}
}

/* The reactions of state led0. */
static void ledOnOff_react_main_region_RightLeft_r1_led0(LedOnOff* handle)
{
	/* The reactions of state led0. */
	if (ledOnOff_check_main_region_RightLeft_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_RightLeft_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_RightLeft_r1_led0_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_RightLeft_r1_led0_tr0(handle);
		} 
	}
}

/* The reactions of state led1. */
static void ledOnOff_react_main_region_RightLeft_r1_led1(LedOnOff* handle)
{
	/* The reactions of state led1. */
	if (ledOnOff_check_main_region_RightLeft_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_RightLeft_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_RightLeft_r1_led1_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_RightLeft_r1_led1_tr0(handle);
		} 
	}
}

/* The reactions of state led2. */
static void ledOnOff_react_main_region_RightLeft_r1_led2(LedOnOff* handle)
{
	/* The reactions of state led2. */
	if (ledOnOff_check_main_region_RightLeft_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_RightLeft_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_RightLeft_r1_led2_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_RightLeft_r1_led2_tr0(handle);
		} 
	}
}

/* The reactions of state led3. */
static void ledOnOff_react_main_region_RightLeft_r1_led3(LedOnOff* handle)
{
	/* The reactions of state led3. */
	if (ledOnOff_check_main_region_RightLeft_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_RightLeft_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_RightLeft_r1_led3_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_RightLeft_r1_led3_tr0(handle);
		} 
	}
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_LeftRight_default(handle);
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region_LeftRight_r1__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_LeftRight_r1_led0_default(handle);
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region_RightLeft_r1__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_RightLeft_r1_led3_default(handle);
}


