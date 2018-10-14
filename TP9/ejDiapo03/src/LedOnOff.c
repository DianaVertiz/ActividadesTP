
#include <stdlib.h>
#include <string.h>
#include "sc_types.h"
#include "LedOnOff.h"
#include "LedOnOffRequired.h"
/*! \file Implementation of the state machine 'ledOnOff'
*/

/* prototypes of all internal functions */
static sc_boolean ledOnOff_check_main_region_led0_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_led3_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_led1_tr0_tr0(const LedOnOff* handle);
static sc_boolean ledOnOff_check_main_region_led2_tr0_tr0(const LedOnOff* handle);
static void ledOnOff_effect_main_region_led0_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_led3_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_led1_tr0(LedOnOff* handle);
static void ledOnOff_effect_main_region_led2_tr0(LedOnOff* handle);
static void ledOnOff_enact_main_region_led0(LedOnOff* handle);
static void ledOnOff_enact_main_region_led3(LedOnOff* handle);
static void ledOnOff_enact_main_region_led1(LedOnOff* handle);
static void ledOnOff_enact_main_region_led2(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led0_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led3_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led1_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_led2_default(LedOnOff* handle);
static void ledOnOff_enseq_main_region_default(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led0(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led3(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led1(LedOnOff* handle);
static void ledOnOff_exseq_main_region_led2(LedOnOff* handle);
static void ledOnOff_exseq_main_region(LedOnOff* handle);
static void ledOnOff_react_main_region_led0(LedOnOff* handle);
static void ledOnOff_react_main_region_led3(LedOnOff* handle);
static void ledOnOff_react_main_region_led1(LedOnOff* handle);
static void ledOnOff_react_main_region_led2(LedOnOff* handle);
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
	handle->iface.keyPress_raised = bool_false;
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
		case LedOnOff_main_region_led0 :
		{
			ledOnOff_react_main_region_led0(handle);
			break;
		}
		case LedOnOff_main_region_led3 :
		{
			ledOnOff_react_main_region_led3(handle);
			break;
		}
		case LedOnOff_main_region_led1 :
		{
			ledOnOff_react_main_region_led1(handle);
			break;
		}
		case LedOnOff_main_region_led2 :
		{
			ledOnOff_react_main_region_led2(handle);
			break;
		}
		default:
			break;
		}
	}
	
	ledOnOff_clearInEvents(handle);
}


sc_boolean ledOnOff_isStateActive(const LedOnOff* handle, LedOnOffStates state)
{
	sc_boolean result = bool_false;
	switch (state)
	{
		case LedOnOff_main_region_led0 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_led0
			);
			break;
		case LedOnOff_main_region_led3 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_led3
			);
			break;
		case LedOnOff_main_region_led1 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_led1
			);
			break;
		case LedOnOff_main_region_led2 :
			result = (sc_boolean) (handle->stateConfVector[0] == LedOnOff_main_region_led2
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

static sc_boolean ledOnOff_check_main_region_led3_tr0_tr0(const LedOnOff* handle)
{
	return handle->iface.keyPress_raised;
}

static sc_boolean ledOnOff_check_main_region_led1_tr0_tr0(const LedOnOff* handle)
{
	return handle->iface.keyPress_raised;
}

static sc_boolean ledOnOff_check_main_region_led2_tr0_tr0(const LedOnOff* handle)
{
	return handle->iface.keyPress_raised;
}

static void ledOnOff_effect_main_region_led0_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_led0(handle);
	ledOnOff_enseq_main_region_led1_default(handle);
}

static void ledOnOff_effect_main_region_led3_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_led3(handle);
	ledOnOff_enseq_main_region_led0_default(handle);
}

static void ledOnOff_effect_main_region_led1_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_led1(handle);
	ledOnOff_enseq_main_region_led2_default(handle);
}

static void ledOnOff_effect_main_region_led2_tr0(LedOnOff* handle)
{
	ledOnOff_exseq_main_region_led2(handle);
	ledOnOff_enseq_main_region_led3_default(handle);
}

/* Entry action for state 'led0'. */
static void ledOnOff_enact_main_region_led0(LedOnOff* handle)
{
	/* Entry action for state 'led0'. */
	ledOnOffIface_setLedFromMask(handle, 0x4);
}

/* Entry action for state 'led3'. */
static void ledOnOff_enact_main_region_led3(LedOnOff* handle)
{
	/* Entry action for state 'led3'. */
	ledOnOffIface_setLedFromMask(handle, 0x20);
}

/* Entry action for state 'led1'. */
static void ledOnOff_enact_main_region_led1(LedOnOff* handle)
{
	/* Entry action for state 'led1'. */
	ledOnOffIface_setLedFromMask(handle, 0x8);
}

/* Entry action for state 'led2'. */
static void ledOnOff_enact_main_region_led2(LedOnOff* handle)
{
	/* Entry action for state 'led2'. */
	ledOnOffIface_setLedFromMask(handle, 0x10);
}

/* 'default' enter sequence for state led0 */
static void ledOnOff_enseq_main_region_led0_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led0 */
	ledOnOff_enact_main_region_led0(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_led0;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led3 */
static void ledOnOff_enseq_main_region_led3_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led3 */
	ledOnOff_enact_main_region_led3(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_led3;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led1 */
static void ledOnOff_enseq_main_region_led1_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led1 */
	ledOnOff_enact_main_region_led1(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_led1;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state led2 */
static void ledOnOff_enseq_main_region_led2_default(LedOnOff* handle)
{
	/* 'default' enter sequence for state led2 */
	ledOnOff_enact_main_region_led2(handle);
	handle->stateConfVector[0] = LedOnOff_main_region_led2;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void ledOnOff_enseq_main_region_default(LedOnOff* handle)
{
	/* 'default' enter sequence for region main region */
	ledOnOff_react_main_region__entry_Default(handle);
}

/* Default exit sequence for state led0 */
static void ledOnOff_exseq_main_region_led0(LedOnOff* handle)
{
	/* Default exit sequence for state led0 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state led3 */
static void ledOnOff_exseq_main_region_led3(LedOnOff* handle)
{
	/* Default exit sequence for state led3 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state led1 */
static void ledOnOff_exseq_main_region_led1(LedOnOff* handle)
{
	/* Default exit sequence for state led1 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state led2 */
static void ledOnOff_exseq_main_region_led2(LedOnOff* handle)
{
	/* Default exit sequence for state led2 */
	handle->stateConfVector[0] = LedOnOff_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for region main region */
static void ledOnOff_exseq_main_region(LedOnOff* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of ledOnOff.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case LedOnOff_main_region_led0 :
		{
			ledOnOff_exseq_main_region_led0(handle);
			break;
		}
		case LedOnOff_main_region_led3 :
		{
			ledOnOff_exseq_main_region_led3(handle);
			break;
		}
		case LedOnOff_main_region_led1 :
		{
			ledOnOff_exseq_main_region_led1(handle);
			break;
		}
		case LedOnOff_main_region_led2 :
		{
			ledOnOff_exseq_main_region_led2(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state led0. */
static void ledOnOff_react_main_region_led0(LedOnOff* handle)
{
	/* The reactions of state led0. */
	if (ledOnOff_check_main_region_led0_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_led0_tr0(handle);
	} 
}

/* The reactions of state led3. */
static void ledOnOff_react_main_region_led3(LedOnOff* handle)
{
	/* The reactions of state led3. */
	if (ledOnOff_check_main_region_led3_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_led3_tr0(handle);
	} 
}

/* The reactions of state led1. */
static void ledOnOff_react_main_region_led1(LedOnOff* handle)
{
	/* The reactions of state led1. */
	if (ledOnOff_check_main_region_led1_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_led1_tr0(handle);
	} 
}

/* The reactions of state led2. */
static void ledOnOff_react_main_region_led2(LedOnOff* handle)
{
	/* The reactions of state led2. */
	if (ledOnOff_check_main_region_led2_tr0_tr0(handle) == bool_true)
	{ 
		ledOnOff_effect_main_region_led2_tr0(handle);
	} 
}

/* Default react sequence for initial entry  */
static void ledOnOff_react_main_region__entry_Default(LedOnOff* handle)
{
	/* Default react sequence for initial entry  */
	ledOnOff_enseq_main_region_led0_default(handle);
}


