
#include <stdlib.h>
#include <string.h>
#include "sc_types.h"
#include "Contador.h"
#include "ContadorRequired.h"
/*! \file Implementation of the state machine 'contador'
*/

/* prototypes of all internal functions */
static sc_boolean contador_check_main_region_Init_tr0_tr0(const Contador* handle);
static sc_boolean contador_check_main_region_wait_tr0_tr0(const Contador* handle);
static sc_boolean contador_check_main_region_wait_tr1_tr1(const Contador* handle);
static sc_boolean contador_check_main_region_wait_tr2_tr2(const Contador* handle);
static sc_boolean contador_check_main_region_Increment_tr0_tr0(const Contador* handle);
static sc_boolean contador_check_main_region_rstCnt_tr0_tr0(const Contador* handle);
static sc_boolean contador_check_main_region_lockToggle_tr0_tr0(const Contador* handle);
static void contador_effect_main_region_Init_tr0(Contador* handle);
static void contador_effect_main_region_wait_tr0(Contador* handle);
static void contador_effect_main_region_wait_tr1(Contador* handle);
static void contador_effect_main_region_wait_tr2(Contador* handle);
static void contador_effect_main_region_Increment_tr0(Contador* handle);
static void contador_effect_main_region_rstCnt_tr0(Contador* handle);
static void contador_effect_main_region_lockToggle_tr0(Contador* handle);
static void contador_enact_main_region_Init(Contador* handle);
static void contador_enact_main_region_Increment(Contador* handle);
static void contador_enact_main_region_rstCnt(Contador* handle);
static void contador_enact_main_region_lockToggle(Contador* handle);
static void contador_enseq_main_region_Init_default(Contador* handle);
static void contador_enseq_main_region_wait_default(Contador* handle);
static void contador_enseq_main_region_Increment_default(Contador* handle);
static void contador_enseq_main_region_rstCnt_default(Contador* handle);
static void contador_enseq_main_region_lockToggle_default(Contador* handle);
static void contador_enseq_main_region_default(Contador* handle);
static void contador_exseq_main_region_Init(Contador* handle);
static void contador_exseq_main_region_wait(Contador* handle);
static void contador_exseq_main_region_Increment(Contador* handle);
static void contador_exseq_main_region_rstCnt(Contador* handle);
static void contador_exseq_main_region_lockToggle(Contador* handle);
static void contador_exseq_main_region(Contador* handle);
static void contador_react_main_region_Init(Contador* handle);
static void contador_react_main_region_wait(Contador* handle);
static void contador_react_main_region_Increment(Contador* handle);
static void contador_react_main_region_rstCnt(Contador* handle);
static void contador_react_main_region_lockToggle(Contador* handle);
static void contador_react_main_region__entry_Default(Contador* handle);
static void contador_clearInEvents(Contador* handle);
static void contador_clearOutEvents(Contador* handle);


void contador_init(Contador* handle)
{
	sc_integer i;

	for (i = 0; i < CONTADOR_MAX_ORTHOGONAL_STATES; ++i)
	{
		handle->stateConfVector[i] = Contador_last_state;
	}
	
	
	handle->stateConfVectorPosition = 0;

	contador_clearInEvents(handle);
	contador_clearOutEvents(handle);

	/* Default init sequence for statechart contador */
	handle->internal.cnt = 0;
	handle->internal.locked = 0;

}

void contador_enter(Contador* handle)
{
	/* Default enter sequence for statechart contador */
	contador_enseq_main_region_default(handle);
}

void contador_exit(Contador* handle)
{
	/* Default exit sequence for statechart contador */
	contador_exseq_main_region(handle);
}

sc_boolean contador_isActive(const Contador* handle)
{
	sc_boolean result;
	if (handle->stateConfVector[0] != Contador_last_state)
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
sc_boolean contador_isFinal(const Contador* handle)
{
   return bool_false;
}

static void contador_clearInEvents(Contador* handle)
{
	handle->iface.keyPress1_raised = bool_false;
	handle->iface.keyPress2_raised = bool_false;
	handle->iface.keyPress4_raised = bool_false;
}

static void contador_clearOutEvents(Contador* handle)
{
}

void contador_runCycle(Contador* handle)
{
	
	contador_clearOutEvents(handle);
	
	for (handle->stateConfVectorPosition = 0;
		handle->stateConfVectorPosition < CONTADOR_MAX_ORTHOGONAL_STATES;
		handle->stateConfVectorPosition++)
		{
			
		switch (handle->stateConfVector[handle->stateConfVectorPosition])
		{
		case Contador_main_region_Init :
		{
			contador_react_main_region_Init(handle);
			break;
		}
		case Contador_main_region_wait :
		{
			contador_react_main_region_wait(handle);
			break;
		}
		case Contador_main_region_Increment :
		{
			contador_react_main_region_Increment(handle);
			break;
		}
		case Contador_main_region_rstCnt :
		{
			contador_react_main_region_rstCnt(handle);
			break;
		}
		case Contador_main_region_lockToggle :
		{
			contador_react_main_region_lockToggle(handle);
			break;
		}
		default:
			break;
		}
	}
	
	contador_clearInEvents(handle);
}


sc_boolean contador_isStateActive(const Contador* handle, ContadorStates state)
{
	sc_boolean result = bool_false;
	switch (state)
	{
		case Contador_main_region_Init :
			result = (sc_boolean) (handle->stateConfVector[0] == Contador_main_region_Init
			);
			break;
		case Contador_main_region_wait :
			result = (sc_boolean) (handle->stateConfVector[0] == Contador_main_region_wait
			);
			break;
		case Contador_main_region_Increment :
			result = (sc_boolean) (handle->stateConfVector[0] == Contador_main_region_Increment
			);
			break;
		case Contador_main_region_rstCnt :
			result = (sc_boolean) (handle->stateConfVector[0] == Contador_main_region_rstCnt
			);
			break;
		case Contador_main_region_lockToggle :
			result = (sc_boolean) (handle->stateConfVector[0] == Contador_main_region_lockToggle
			);
			break;
		default:
			result = bool_false;
			break;
	}
	return result;
}

void contadorIface_raise_keyPress1(Contador* handle)
{
	handle->iface.keyPress1_raised = bool_true;
}
void contadorIface_raise_keyPress2(Contador* handle)
{
	handle->iface.keyPress2_raised = bool_true;
}
void contadorIface_raise_keyPress4(Contador* handle)
{
	handle->iface.keyPress4_raised = bool_true;
}



/* implementations of all internal functions */

static sc_boolean contador_check_main_region_Init_tr0_tr0(const Contador* handle)
{
	return bool_true;
}

static sc_boolean contador_check_main_region_wait_tr0_tr0(const Contador* handle)
{
	return handle->iface.keyPress1_raised;
}

static sc_boolean contador_check_main_region_wait_tr1_tr1(const Contador* handle)
{
	return (handle->iface.keyPress4_raised && (handle->internal.locked == 0)) ? bool_true : bool_false;
}

static sc_boolean contador_check_main_region_wait_tr2_tr2(const Contador* handle)
{
	return handle->iface.keyPress2_raised;
}

static sc_boolean contador_check_main_region_Increment_tr0_tr0(const Contador* handle)
{
	return bool_true;
}

static sc_boolean contador_check_main_region_rstCnt_tr0_tr0(const Contador* handle)
{
	return bool_true;
}

static sc_boolean contador_check_main_region_lockToggle_tr0_tr0(const Contador* handle)
{
	return bool_true;
}

static void contador_effect_main_region_Init_tr0(Contador* handle)
{
	contador_exseq_main_region_Init(handle);
	contador_enseq_main_region_wait_default(handle);
}

static void contador_effect_main_region_wait_tr0(Contador* handle)
{
	contador_exseq_main_region_wait(handle);
	contador_enseq_main_region_Increment_default(handle);
}

static void contador_effect_main_region_wait_tr1(Contador* handle)
{
	contador_exseq_main_region_wait(handle);
	contador_enseq_main_region_rstCnt_default(handle);
}

static void contador_effect_main_region_wait_tr2(Contador* handle)
{
	contador_exseq_main_region_wait(handle);
	contador_enseq_main_region_lockToggle_default(handle);
}

static void contador_effect_main_region_Increment_tr0(Contador* handle)
{
	contador_exseq_main_region_Increment(handle);
	contador_enseq_main_region_wait_default(handle);
}

static void contador_effect_main_region_rstCnt_tr0(Contador* handle)
{
	contador_exseq_main_region_rstCnt(handle);
	contador_enseq_main_region_wait_default(handle);
}

static void contador_effect_main_region_lockToggle_tr0(Contador* handle)
{
	contador_exseq_main_region_lockToggle(handle);
	contador_enseq_main_region_wait_default(handle);
}

/* Entry action for state 'Init'. */
static void contador_enact_main_region_Init(Contador* handle)
{
	/* Entry action for state 'Init'. */
	handle->internal.cnt = 0;
	handle->internal.locked = 1;
	contadorIface_updateOutput(handle, handle->internal.cnt);
}

/* Entry action for state 'Increment'. */
static void contador_enact_main_region_Increment(Contador* handle)
{
	/* Entry action for state 'Increment'. */
	handle->internal.cnt = handle->internal.cnt + (1 - handle->internal.locked);
	contadorIface_updateOutput(handle, handle->internal.cnt);
}

/* Entry action for state 'rstCnt'. */
static void contador_enact_main_region_rstCnt(Contador* handle)
{
	/* Entry action for state 'rstCnt'. */
	handle->internal.cnt = 0;
	contadorIface_updateOutput(handle, handle->internal.cnt);
}

/* Entry action for state 'lockToggle'. */
static void contador_enact_main_region_lockToggle(Contador* handle)
{
	/* Entry action for state 'lockToggle'. */
	handle->internal.locked = (handle->internal.locked + 1) % 2;
}

/* 'default' enter sequence for state Init */
static void contador_enseq_main_region_Init_default(Contador* handle)
{
	/* 'default' enter sequence for state Init */
	contador_enact_main_region_Init(handle);
	handle->stateConfVector[0] = Contador_main_region_Init;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state wait */
static void contador_enseq_main_region_wait_default(Contador* handle)
{
	/* 'default' enter sequence for state wait */
	handle->stateConfVector[0] = Contador_main_region_wait;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state Increment */
static void contador_enseq_main_region_Increment_default(Contador* handle)
{
	/* 'default' enter sequence for state Increment */
	contador_enact_main_region_Increment(handle);
	handle->stateConfVector[0] = Contador_main_region_Increment;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state rstCnt */
static void contador_enseq_main_region_rstCnt_default(Contador* handle)
{
	/* 'default' enter sequence for state rstCnt */
	contador_enact_main_region_rstCnt(handle);
	handle->stateConfVector[0] = Contador_main_region_rstCnt;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state lockToggle */
static void contador_enseq_main_region_lockToggle_default(Contador* handle)
{
	/* 'default' enter sequence for state lockToggle */
	contador_enact_main_region_lockToggle(handle);
	handle->stateConfVector[0] = Contador_main_region_lockToggle;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void contador_enseq_main_region_default(Contador* handle)
{
	/* 'default' enter sequence for region main region */
	contador_react_main_region__entry_Default(handle);
}

/* Default exit sequence for state Init */
static void contador_exseq_main_region_Init(Contador* handle)
{
	/* Default exit sequence for state Init */
	handle->stateConfVector[0] = Contador_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state wait */
static void contador_exseq_main_region_wait(Contador* handle)
{
	/* Default exit sequence for state wait */
	handle->stateConfVector[0] = Contador_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state Increment */
static void contador_exseq_main_region_Increment(Contador* handle)
{
	/* Default exit sequence for state Increment */
	handle->stateConfVector[0] = Contador_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state rstCnt */
static void contador_exseq_main_region_rstCnt(Contador* handle)
{
	/* Default exit sequence for state rstCnt */
	handle->stateConfVector[0] = Contador_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state lockToggle */
static void contador_exseq_main_region_lockToggle(Contador* handle)
{
	/* Default exit sequence for state lockToggle */
	handle->stateConfVector[0] = Contador_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for region main region */
static void contador_exseq_main_region(Contador* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of contador.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Contador_main_region_Init :
		{
			contador_exseq_main_region_Init(handle);
			break;
		}
		case Contador_main_region_wait :
		{
			contador_exseq_main_region_wait(handle);
			break;
		}
		case Contador_main_region_Increment :
		{
			contador_exseq_main_region_Increment(handle);
			break;
		}
		case Contador_main_region_rstCnt :
		{
			contador_exseq_main_region_rstCnt(handle);
			break;
		}
		case Contador_main_region_lockToggle :
		{
			contador_exseq_main_region_lockToggle(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state Init. */
static void contador_react_main_region_Init(Contador* handle)
{
	/* The reactions of state Init. */
	contador_effect_main_region_Init_tr0(handle);
}

/* The reactions of state wait. */
static void contador_react_main_region_wait(Contador* handle)
{
	/* The reactions of state wait. */
	if (contador_check_main_region_wait_tr0_tr0(handle) == bool_true)
	{ 
		contador_effect_main_region_wait_tr0(handle);
	}  else
	{
		if (contador_check_main_region_wait_tr1_tr1(handle) == bool_true)
		{ 
			contador_effect_main_region_wait_tr1(handle);
		}  else
		{
			if (contador_check_main_region_wait_tr2_tr2(handle) == bool_true)
			{ 
				contador_effect_main_region_wait_tr2(handle);
			} 
		}
	}
}

/* The reactions of state Increment. */
static void contador_react_main_region_Increment(Contador* handle)
{
	/* The reactions of state Increment. */
	contador_effect_main_region_Increment_tr0(handle);
}

/* The reactions of state rstCnt. */
static void contador_react_main_region_rstCnt(Contador* handle)
{
	/* The reactions of state rstCnt. */
	contador_effect_main_region_rstCnt_tr0(handle);
}

/* The reactions of state lockToggle. */
static void contador_react_main_region_lockToggle(Contador* handle)
{
	/* The reactions of state lockToggle. */
	contador_effect_main_region_lockToggle_tr0(handle);
}

/* Default react sequence for initial entry  */
static void contador_react_main_region__entry_Default(Contador* handle)
{
	/* Default react sequence for initial entry  */
	contador_enseq_main_region_Init_default(handle);
}


