
#include <stdlib.h>
#include <string.h>
#include "sc_types.h"
#include "LedOnOff.h"
#include "LedOnOffRequired.h"
/*! \file Implementation of the state machine 'ledOnOff'
*/

/* prototypes of all internal functions */
static sc_boolean ledOnOff_check_main_region_wait_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_countDown_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_countDown_tr1_tr1(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_countDown_tr2_tr2(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_countDown_r1_ledYOn_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_countDown_r1_ledYOff_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_launchStart_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_launchStart_r1_ledYOff_tr0_tr0(const LedOnOff* handle);
static void ledOnOff_effect_main_region_wait_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_countDown_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_countDown_tr1(LedOnOff* handle);
static void ledOnOff_effect_main_region_countDown_tr2(LedOnOff* handle);
static void ledOnOff_effect_main_region_countDown_r1_ledYOn_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_countDown_r1_ledYOff_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_launchStart_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_launchStart_r1_ledYOff_tr0(LedOnOff* handle);
static void ledOnOff_enact_main_region_wait_r1_resetSystem(LedOnOff* handle);
static void ledOnOff_enact_main_region_countDown(LedOnOff* handle);
static void ledOnOff_enact_main_region_countDown_r1_ledYOn(LedOnOff* handle);
static void ledOnOff_enact_main_region_countDown_r1_ledYOff(LedOnOff* handle);
static void ledOnOff_enact_main_region_launchStart_r1_ledROn(LedOnOff* handle);
static void ledOnOff_enact_main_region_launchStart_r1_ledYOff(LedOnOff* handle);
static void ledOnOff_exact_main_region_countDown(LedOnOff* handle);
static void ledOnOff_exact_main_region_countDown_r1_ledYOn(LedOnOff* handle);
static void ledOnOff_exact_main_region_countDown_r1_ledYOff(LedOnOff* handle);
static void ledOnOff_exact_main_region_launchStart_r1_ledYOff(LedOnOff* handle);
static void ledOnOff_enseq_main_region_wait_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_wait_r1_resetSystem_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_countDown_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_countDown_r1_ledYOn_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_countDown_r1_ledYOff_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_launchStart_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_launchStart_r1_ledROn_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_launchStart_r1_ledYOff_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_wait_r1_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_countDown_r1_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_launchStart_r1_default(LedOnOff* handle);
static void ledOnOff_exseq_main_region_wait(LedOnOff* handle);
static void ledOnOff_exseq_main_region_wait_r1_resetSystem(LedOnOff* handle);
static void ledOnOff_exseq_main_region_countDown(LedOnOff* handle);
static void ledOnOff_exseq_main_region_countDown_r1_ledYOn(LedOnOff* handle);
static void ledOnOff_exseq_main_region_countDown_r1_ledYOff(LedOnOff* handle);
static void ledOnOff_exseq_main_region_launchStart(LedOnOff* handle);
static void ledOnOff_exseq_main_region_launchStart_r1_ledROn(LedOnOff* handle);
static void ledOnOff_exseq_main_region_launchStart_r1_ledYOff(LedOnOff* handle);
static void ledOnOff_exseq_main_region(LedOnOff* handle);
static void ledOnOff_exseq_main_region_wait_r1(LedOnOff* handle);
static void ledOnOff_exseq_main_region_countDown_r1(LedOnOff* handle);
static void ledOnOff_exseq_main_region_launchStart_r1(LedOnOff* handle);
static void ledOnOff_react_main_region_wait_r1_resetSystem(LedOnOff* handle);
static void ledOnOff_react_main_region_countDown_r1_ledYOn(LedOnOff* handle);
static void ledOnOff_react_main_region_countDown_r1_ledYOff(LedOnOff* handle);
static void ledOnOff_react_main_region_launchStart_r1_ledROn(LedOnOff* handle);
static void ledOnOff_react_main_region_launchStart_r1_ledYOff(LedOnOff* handle);
static void ledOnOff_react_main_region__entry_Default(LedOnOff* handle);
static void ledOnOff_react_main_region_wait_r1__entry_Default(LedOnOff* handle);
static void ledOnOff_react_main_region_countDown_r1__entry_Default(LedOnOff* handle);
static void ledOnOff_react_main_region_launchStart_r1__entry_Default(LedOnOff* handle);
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
	handle->iface.keyPress1_raised = bool_false;
	handle->iface.keyPress2_raised = bool_false;
	handle->iface.keyPress3_raised = bool_false;
	handle->iface.keyPress4_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_countDown_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_countDown_r1_ledYOn_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_countDown_r1_ledYOff_tev0_raised = bool_false;
	handle->timeEvents.ledOnOff_main_region_launchStart_r1_ledYOff_tev0_raised = bool_false;
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
		case LedOnOff_main_region_wait_r1_resetSystem :
		{
			ledOnOff_react_main_region_wait_r1_resetSystem(handle);
			break;
		}
		case LedOnOff_main_region_countDown_r1_ledYOn :
		{
			ledOnOff_react_main_region_countDown_r1_ledYOn(handle);
			break;
		}
		case LedOnOff_main_region_countDown_r1_ledYOff :
		{
			ledOnOff_react_main_region_countDown_r1_ledYOff(handle);
			break;
		}
		case LedOnOff_main_region_launchStart_r1_ledROn :
		{
			ledOnOff_react_main_region_launchStart_r1_ledROn(handle);
			break;
		}
		case LedOnOff_main_region_launchStart_r1_ledYOff :
		{
			ledOnOff_react_main_region_launchStart_r1_ledYOff(handle);
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
		case LedOnOff_main_region_wait :
			result = (sc_boolean) (handle->stateConfVector[0] >= LedOnOff_main_region_wait
				&& handle->stateConfVector[0] <= LedOnOff_main_region_wait_r1_resetSystem);
			break;
		case LedOnOff_main_region_wait_r1_resetSystem :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_wait_r1_resetSystem
			);
			break;
		case LedOnOff_main_region_countDown :
			result = (sc_boolean) (handle->stateConfVector[0] >= LedOnOff_main_region_countDown
				&& handle->stateConfVector[0] <= LedOnOff_main_region_countDown_r1_ledYOff);
			break;
		case LedOnOff_main_region_countDown_r1_ledYOn :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_countDown_r1_ledYOn
			);
			break;
		case LedOnOff_main_region_countDown_r1_ledYOff :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_countDown_r1_ledYOff
			);
			break;
		case LedOnOff_main_region_launchStart :
			result = (sc_boolean) (handle->stateConfVector[0] >= LedOnOff_main_region_launchStart
				&& handle->stateConfVector[0] <= LedOnOff_main_region_launchStart_r1_ledYOff);
			break;
		case LedOnOff_main_region_launchStart_r1_ledROn :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_launchStart_r1_ledROn
			);
			break;
		case LedOnOff_main_region_launchStart_r1_ledYOff :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_launchStart_r1_ledYOff
			);
			break;
		default:
			result = bool_false;
			break;
	}
	return result;
}

void ledOnOffIface_raise_keyPress1(LedOnOff* handle)
{
	handle->iface.keyPress1_raised = bool_true;
}
void ledOnOffIface_raise_keyPress2(LedOnOff* handle)
{
	handle->iface.keyPress2_raised = bool_true;
}
void ledOnOffIface_raise_keyPress3(LedOnOff* handle)
{
	handle->iface.keyPress3_raised = bool_true;
}
void ledOnOffIface_raise_keyPress4(LedOnOff* handle)
{
	handle->iface.keyPress4_raised = bool_true;
}



/* implementations of all internal functions */

static sc_boolean ledOnOff_check_main_region_wait_tr0_tr0(const LedOnOff* handle)
{
	return handle->iface.keyPress1_raised;
}

static sc_boolean ledOnOff_check_main_region_countDown_tr0_tr0(const LedOnOff* handle)
{
	return handle->iface.keyPress2_raised;
}

static sc_boolean ledOnOff_check_main_region_countDown_tr1_tr1(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_countDown_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_countDown_tr2_tr2(const LedOnOff* handle)
{
	return handle->iface.keyPress3_raised;
}

static sc_boolean ledOnOff_check_main_region_countDown_r1_ledYOn_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_countDown_r1_ledYOn_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_countDown_r1_ledYOff_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_countDown_r1_ledYOff_tev0_raised;
}

static sc_boolean ledOnOff_check_main_region_launchStart_tr0_tr0(const LedOnOff* handle)
{
	return handle->iface.keyPress4_raised;
}

static sc_boolean ledOnOff_check_main_region_launchStart_r1_ledYOff_tr0_tr0(const LedOnOff* handle)
{
	return handle->timeEvents.ledOnOff_main_region_launchStart_r1_ledYOff_tev0_raised;
}

static void ledOnOff_effect_main_region_wait_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_wait(handle);
	ledOnOff_enseq_main_region_countDown_default(handle);
}

static void ledOnOff_effect_main_region_countDown_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_countDown(handle);
	ledOnOff_enseq_main_region_wait_default(handle);
}

static void ledOnOff_effect_main_region_countDown_tr1(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_countDown(handle);
	ledOnOff_enseq_main_region_launchStart_default(handle);
}

static void ledOnOff_effect_main_region_countDown_tr2(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_countDown(handle);
	ledOnOff_enseq_main_region_wait_default(handle);
}

static void ledOnOff_effect_main_region_countDown_r1_ledYOn_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_countDown_r1_ledYOn(handle);
	ledOnOff_enseq_main_region_countDown_r1_ledYOff_default(handle);
}

static void ledOnOff_effect_main_region_countDown_r1_ledYOff_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_countDown_r1_ledYOff(handle);
	ledOnOff_enseq_main_region_countDown_r1_ledYOn_default(handle);
}

static void ledOnOff_effect_main_region_launchStart_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_launchStart(handle);
	ledOnOff_enseq_main_region_wait_default(handle);
}

static void ledOnOff_effect_main_region_launchStart_r1_ledYOff_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_launchStart_r1_ledYOff(handle);
	ledOnOff_enseq_main_region_launchStart_r1_ledROn_default(handle);
}

/* Entry action for state 'resetSystem'. */
static void ledOnOff_enact_main_region_wait_r1_resetSystem(LedOnOff* handle)
{
	/* Entry action for state 'resetSystem'. */
	ledOnOffIface_setLedFromMask(handle, 0);
}

/* Entry action for state 'countDown'. */
static void ledOnOff_enact_main_region_countDown(LedOnOff* handle)
{
	/* Entry action for state 'countDown'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_countDown_tev0_raised) , 10 * 1000, bool_false);
}

/* Entry action for state 'ledYOn'. */
static void ledOnOff_enact_main_region_countDown_r1_ledYOn(LedOnOff* handle)
{
	/* Entry action for state 'ledYOn'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_countDown_r1_ledYOn_tev0_raised) , 500, bool_false);
	ledOnOffIface_setLedFromMask(handle, 16);
}

/* Entry action for state 'ledYOff'. */
static void ledOnOff_enact_main_region_countDown_r1_ledYOff(LedOnOff* handle)
{
	/* Entry action for state 'ledYOff'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_countDown_r1_ledYOff_tev0_raised) , 500, bool_false);
	ledOnOffIface_setLedFromMask(handle, 0);
}

/* Entry action for state 'ledROn'. */
static void ledOnOff_enact_main_region_launchStart_r1_ledROn(LedOnOff* handle)
{
	/* Entry action for state 'ledROn'. */
	ledOnOffIface_setLedFromMask(handle, 8);
}

/* Entry action for state 'ledYOff'. */
static void ledOnOff_enact_main_region_launchStart_r1_ledYOff(LedOnOff* handle)
{
	/* Entry action for state 'ledYOff'. */
	ledOnOff_setTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_launchStart_r1_ledYOff_tev0_raised) , 1 / 1000, bool_false);
	ledOnOffIface_setLedFromMask(handle, 0);
}

/* Exit action for state 'countDown'. */
static void ledOnOff_exact_main_region_countDown(LedOnOff* handle)
{
	/* Exit action for state 'countDown'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_countDown_tev0_raised) );		
}

/* Exit action for state 'ledYOn'. */
static void ledOnOff_exact_main_region_countDown_r1_ledYOn(LedOnOff* handle)
{
	/* Exit action for state 'ledYOn'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_countDown_r1_ledYOn_tev0_raised) );		
}

/* Exit action for state 'ledYOff'. */
static void ledOnOff_exact_main_region_countDown_r1_ledYOff(LedOnOff* handle)
{
	/* Exit action for state 'ledYOff'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_countDown_r1_ledYOff_tev0_raised) );		
}

/* Exit action for state 'ledYOff'. */
static void ledOnOff_exact_main_region_launchStart_r1_ledYOff(LedOnOff* handle)
{
	/* Exit action for state 'ledYOff'. */
	ledOnOff_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.ledOnOff_main_region_launchStart_r1_ledYOff_tev0_raised) );		
}

/* 'default' enter sequence for state wait */
static void ledOnOff_enseq_main_region_wait_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state wait */
	ledOnOff_enseq_main_region_wait_r1_default(handle);
}

/* 'default' enter sequence for state resetSystem */
static void ledOnOff_enseq_main_region_wait_r1_resetSystem_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state resetSystem */
	ledOnOff_enact_main_region_wait_r1_resetSystem(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_wait_r1_resetSystem;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state countDown */
static void ledOnOff_enseq_main_region_countDown_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state countDown */
	ledOnOff_enact_main_region_countDown(handle);
	ledOnOff_enseq_main_region_countDown_r1_default(handle);
}

/* 'default' enter sequence for state ledYOn */
static void ledOnOff_enseq_main_region_countDown_r1_ledYOn_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state ledYOn */
	ledOnOff_enact_main_region_countDown_r1_ledYOn(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_countDown_r1_ledYOn;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state ledYOff */
static void ledOnOff_enseq_main_region_countDown_r1_ledYOff_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state ledYOff */
	ledOnOff_enact_main_region_countDown_r1_ledYOff(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_countDown_r1_ledYOff;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state launchStart */
static void ledOnOff_enseq_main_region_launchStart_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state launchStart */
	ledOnOff_enseq_main_region_launchStart_r1_default(handle);
}

/* 'default' enter sequence for state ledROn */
static void ledOnOff_enseq_main_region_launchStart_r1_ledROn_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state ledROn */
	ledOnOff_enact_main_region_launchStart_r1_ledROn(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_launchStart_r1_ledROn;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state ledYOff */
static void ledOnOff_enseq_main_region_launchStart_r1_ledYOff_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state ledYOff */
	ledOnOff_enact_main_region_launchStart_r1_ledYOff(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_launchStart_r1_ledYOff;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void ledOnOff_enseq_main_region_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region main region */
	ledOnOff_react_main_region__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void ledOnOff_enseq_main_region_wait_r1_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region r1 */
	ledOnOff_react_main_region_wait_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void ledOnOff_enseq_main_region_countDown_r1_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region r1 */
	ledOnOff_react_main_region_countDown_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void ledOnOff_enseq_main_region_launchStart_r1_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region r1 */
	ledOnOff_react_main_region_launchStart_r1__entry_Default(handle);
}

/* Default exit sequence for state wait */
static void ledOnOff_exseq_main_region_wait(LedOnOff* handle)
{
	/* Default exit sequence for state wait */
	ledOnOff_exseq_main_region_wait_r1(handle);
}

/* Default exit sequence for state resetSystem */
static void ledOnOff_exseq_main_region_wait_r1_resetSystem(LedOnOff* handle)
{
	/* Default exit sequence for state resetSystem */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state countDown */
static void ledOnOff_exseq_main_region_countDown(LedOnOff* handle)
{
	/* Default exit sequence for state countDown */
	ledOnOff_exseq_main_region_countDown_r1(handle);
	ledOnOff_exact_main_region_countDown(handle);
}

/* Default exit sequence for state ledYOn */
static void ledOnOff_exseq_main_region_countDown_r1_ledYOn(LedOnOff* handle)
{
	/* Default exit sequence for state ledYOn */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_countDown_r1_ledYOn(handle);
}

/* Default exit sequence for state ledYOff */
static void ledOnOff_exseq_main_region_countDown_r1_ledYOff(LedOnOff* handle)
{
	/* Default exit sequence for state ledYOff */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_countDown_r1_ledYOff(handle);
}

/* Default exit sequence for state launchStart */
static void ledOnOff_exseq_main_region_launchStart(LedOnOff* handle)
{
	/* Default exit sequence for state launchStart */
	ledOnOff_exseq_main_region_launchStart_r1(handle);
}

/* Default exit sequence for state ledROn */
static void ledOnOff_exseq_main_region_launchStart_r1_ledROn(LedOnOff* handle)
{
	/* Default exit sequence for state ledROn */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state ledYOff */
static void ledOnOff_exseq_main_region_launchStart_r1_ledYOff(LedOnOff* handle)
{
	/* Default exit sequence for state ledYOff */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
	ledOnOff_exact_main_region_launchStart_r1_ledYOff(handle);
}

/* Default exit sequence for region main region */
static void ledOnOff_exseq_main_region(LedOnOff* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of ledOnOff.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_wait_r1_resetSystem :
		{
			ledOnOff_exseq_main_region_wait_r1_resetSystem(handle);
			break;
		}
		case LedOnOff_main_region_countDown_r1_ledYOn :
		{
			ledOnOff_exseq_main_region_countDown_r1_ledYOn(handle);
			ledOnOff_exact_main_region_countDown(handle);
			break;
		}
		case LedOnOff_main_region_countDown_r1_ledYOff :
		{
			ledOnOff_exseq_main_region_countDown_r1_ledYOff(handle);
			ledOnOff_exact_main_region_countDown(handle);
			break;
		}
		case LedOnOff_main_region_launchStart_r1_ledROn :
		{
			ledOnOff_exseq_main_region_launchStart_r1_ledROn(handle);
			break;
		}
		case LedOnOff_main_region_launchStart_r1_ledYOff :
		{
			ledOnOff_exseq_main_region_launchStart_r1_ledYOff(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void ledOnOff_exseq_main_region_wait_r1(LedOnOff* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of ledOnOff.main_region.wait.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_wait_r1_resetSystem :
		{
			ledOnOff_exseq_main_region_wait_r1_resetSystem(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void ledOnOff_exseq_main_region_countDown_r1(LedOnOff* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of ledOnOff.main_region.countDown.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_countDown_r1_ledYOn :
		{
			ledOnOff_exseq_main_region_countDown_r1_ledYOn(handle);
			break;
		}
		case LedOnOff_main_region_countDown_r1_ledYOff :
		{
			ledOnOff_exseq_main_region_countDown_r1_ledYOff(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void ledOnOff_exseq_main_region_launchStart_r1(LedOnOff* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of ledOnOff.main_region.launchStart.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_launchStart_r1_ledROn :
		{
			ledOnOff_exseq_main_region_launchStart_r1_ledROn(handle);
			break;
		}
		case LedOnOff_main_region_launchStart_r1_ledYOff :
		{
			ledOnOff_exseq_main_region_launchStart_r1_ledYOff(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state resetSystem. */
static void ledOnOff_react_main_region_wait_r1_resetSystem(LedOnOff* handle)
{
	/* The reactions of state resetSystem. */
	if (ledOnOff_check_main_region_wait_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_wait_tr0(handle);
	}  else
	{
	}
}

/* The reactions of state ledYOn. */
static void ledOnOff_react_main_region_countDown_r1_ledYOn(LedOnOff* handle)
{
	/* The reactions of state ledYOn. */
	if (ledOnOff_check_main_region_countDown_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_countDown_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_countDown_tr1_tr1(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_countDown_tr1(handle);
		}  else
		{
			if (ledOnOff_check_main_region_countDown_tr2_tr2(handle) == bool_true)
			{ 
				ledOnOff_effect_main_region_countDown_tr2(handle);
			}  else
			{
				if (ledOnOff_check_main_region_countDown_r1_ledYOn_tr0_tr0(handle) == bool_true)
				{ 
					ledOnOff_effect_main_region_countDown_r1_ledYOn_tr0(handle);
				} 
			}
		}
	}
}

/* The reactions of state ledYOff. */
static void ledOnOff_react_main_region_countDown_r1_ledYOff(LedOnOff* handle)
{
	/* The reactions of state ledYOff. */
	if (ledOnOff_check_main_region_countDown_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_countDown_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_countDown_tr1_tr1(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_countDown_tr1(handle);
		}  else
		{
			if (ledOnOff_check_main_region_countDown_tr2_tr2(handle) == bool_true)
			{ 
				ledOnOff_effect_main_region_countDown_tr2(handle);
			}  else
			{
				if (ledOnOff_check_main_region_countDown_r1_ledYOff_tr0_tr0(handle) == bool_true)
				{ 
					ledOnOff_effect_main_region_countDown_r1_ledYOff_tr0(handle);
				} 
			}
		}
	}
}

/* The reactions of state ledROn. */
static void ledOnOff_react_main_region_launchStart_r1_ledROn(LedOnOff* handle)
{
	/* The reactions of state ledROn. */
	if (ledOnOff_check_main_region_launchStart_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_launchStart_tr0(handle);
	}  else
	{
	}
}

/* The reactions of state ledYOff. */
static void ledOnOff_react_main_region_launchStart_r1_ledYOff(LedOnOff* handle)
{
	/* The reactions of state ledYOff. */
	if (ledOnOff_check_main_region_launchStart_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_launchStart_tr0(handle);
	}  else
	{
		if (ledOnOff_check_main_region_launchStart_r1_ledYOff_tr0_tr0(handle) == bool_true)
		{ 
			ledOnOff_effect_main_region_launchStart_r1_ledYOff_tr0(handle);
		} 
	}
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_wait_default(handle);
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region_wait_r1__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_wait_r1_resetSystem_default(handle);
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region_countDown_r1__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_countDown_r1_ledYOff_default(handle);
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region_launchStart_r1__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_launchStart_r1_ledYOff_default(handle);
}


