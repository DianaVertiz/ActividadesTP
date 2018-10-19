
#include <stdlib.h>
#include <string.h>
#include "sc_types.h"
#include "Cerradura.h"
#include "CerraduraRequired.h"
/*! \file Implementation of the state machine 'cerradura'
*/

/* prototypes of all internal functions */
static sc_boolean cerradura_check_main_region_Inicio_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Cerrado_r1_wait_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Cerrado_r1_getKey_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Cerrado_r1_operate_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Cerrado_r1_operate_tr1_tr1(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Cerrado_r1_Validate_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Cerrado_r1_Validate_tr1_tr1(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Abierto_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Abierto_r1_wait_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Abierto_r1_getKey_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Abierto_r1_operate_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Abierto_r1_init_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_led0_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_led0_r1_encendido_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_led0_r1_apagado_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Copy_1_led0_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Copy_1_led0_r1_encendido_tr0_tr0(const Cerradura* handle);
static sc_boolean cerradura_check_main_region_Copy_1_led0_r1_apagado_tr0_tr0(const Cerradura* handle);
static void cerradura_effect_main_region_Inicio_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Cerrado_r1_wait_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Cerrado_r1_getKey_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Cerrado_r1_operate_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Cerrado_r1_operate_tr1(Cerradura* handle);
static void cerradura_effect_main_region_Cerrado_r1_Validate_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Cerrado_r1_Validate_tr1(Cerradura* handle);
static void cerradura_effect_main_region_Abierto_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Abierto_r1_wait_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Abierto_r1_getKey_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Abierto_r1_operate_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Abierto_r1_init_tr0(Cerradura* handle);
static void cerradura_effect_main_region_led0_tr0(Cerradura* handle);
static void cerradura_effect_main_region_led0_r1_encendido_tr0(Cerradura* handle);
static void cerradura_effect_main_region_led0_r1_apagado_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Copy_1_led0_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Copy_1_led0_r1_encendido_tr0(Cerradura* handle);
static void cerradura_effect_main_region_Copy_1_led0_r1_apagado_tr0(Cerradura* handle);
static void cerradura_enact_main_region_Inicio_r1_resetSystem(Cerradura* handle);
static void cerradura_enact_main_region_Cerrado(Cerradura* handle);
static void cerradura_enact_main_region_Cerrado_r1_wait(Cerradura* handle);
static void cerradura_enact_main_region_Cerrado_r1_getKey(Cerradura* handle);
static void cerradura_enact_main_region_Cerrado_r1_operate(Cerradura* handle);
static void cerradura_enact_main_region_Cerrado_r1_Validate(Cerradura* handle);
static void cerradura_enact_main_region_Abierto_r1_wait(Cerradura* handle);
static void cerradura_enact_main_region_Abierto_r1_getKey(Cerradura* handle);
static void cerradura_enact_main_region_Abierto_r1_operate(Cerradura* handle);
static void cerradura_enact_main_region_Abierto_r1_init(Cerradura* handle);
static void cerradura_enact_main_region_led0(Cerradura* handle);
static void cerradura_enact_main_region_led0_r1_encendido(Cerradura* handle);
static void cerradura_enact_main_region_led0_r1_apagado(Cerradura* handle);
static void cerradura_enact_main_region_Copy_1_led0(Cerradura* handle);
static void cerradura_enact_main_region_Copy_1_led0_r1_encendido(Cerradura* handle);
static void cerradura_enact_main_region_Copy_1_led0_r1_apagado(Cerradura* handle);
static void cerradura_exact_main_region_led0_r1_encendido(Cerradura* handle);
static void cerradura_exact_main_region_led0_r1_apagado(Cerradura* handle);
static void cerradura_exact_main_region_Copy_1_led0_r1_encendido(Cerradura* handle);
static void cerradura_exact_main_region_Copy_1_led0_r1_apagado(Cerradura* handle);
static void cerradura_enseq_main_region_Inicio_default(Cerradura* handle);
static void cerradura_enseq_main_region_Inicio_r1_resetSystem_default(Cerradura* handle);
static void cerradura_enseq_main_region_Cerrado_default(Cerradura* handle);
static void cerradura_enseq_main_region_Cerrado_r1_wait_default(Cerradura* handle);
static void cerradura_enseq_main_region_Cerrado_r1_getKey_default(Cerradura* handle);
static void cerradura_enseq_main_region_Cerrado_r1_operate_default(Cerradura* handle);
static void cerradura_enseq_main_region_Cerrado_r1_Validate_default(Cerradura* handle);
static void cerradura_enseq_main_region_Abierto_default(Cerradura* handle);
static void cerradura_enseq_main_region_Abierto_r1_wait_default(Cerradura* handle);
static void cerradura_enseq_main_region_Abierto_r1_getKey_default(Cerradura* handle);
static void cerradura_enseq_main_region_Abierto_r1_operate_default(Cerradura* handle);
static void cerradura_enseq_main_region_Abierto_r1_init_default(Cerradura* handle);
static void cerradura_enseq_main_region_led0_default(Cerradura* handle);
static void cerradura_enseq_main_region_led0_r1_encendido_default(Cerradura* handle);
static void cerradura_enseq_main_region_led0_r1_apagado_default(Cerradura* handle);
static void cerradura_enseq_main_region_Copy_1_led0_default(Cerradura* handle);
static void cerradura_enseq_main_region_Copy_1_led0_r1_encendido_default(Cerradura* handle);
static void cerradura_enseq_main_region_Copy_1_led0_r1_apagado_default(Cerradura* handle);
static void cerradura_enseq_main_region_default(Cerradura* handle);
static void cerradura_enseq_main_region_Inicio_r1_default(Cerradura* handle);
static void cerradura_enseq_main_region_Cerrado_r1_default(Cerradura* handle);
static void cerradura_enseq_main_region_Abierto_r1_default(Cerradura* handle);
static void cerradura_enseq_main_region_led0_r1_default(Cerradura* handle);
static void cerradura_enseq_main_region_Copy_1_led0_r1_default(Cerradura* handle);
static void cerradura_exseq_main_region_Inicio(Cerradura* handle);
static void cerradura_exseq_main_region_Inicio_r1_resetSystem(Cerradura* handle);
static void cerradura_exseq_main_region_Cerrado(Cerradura* handle);
static void cerradura_exseq_main_region_Cerrado_r1_wait(Cerradura* handle);
static void cerradura_exseq_main_region_Cerrado_r1_getKey(Cerradura* handle);
static void cerradura_exseq_main_region_Cerrado_r1_operate(Cerradura* handle);
static void cerradura_exseq_main_region_Cerrado_r1_Validate(Cerradura* handle);
static void cerradura_exseq_main_region_Abierto(Cerradura* handle);
static void cerradura_exseq_main_region_Abierto_r1_wait(Cerradura* handle);
static void cerradura_exseq_main_region_Abierto_r1_getKey(Cerradura* handle);
static void cerradura_exseq_main_region_Abierto_r1_operate(Cerradura* handle);
static void cerradura_exseq_main_region_Abierto_r1_init(Cerradura* handle);
static void cerradura_exseq_main_region_led0(Cerradura* handle);
static void cerradura_exseq_main_region_led0_r1_encendido(Cerradura* handle);
static void cerradura_exseq_main_region_led0_r1_apagado(Cerradura* handle);
static void cerradura_exseq_main_region_Copy_1_led0(Cerradura* handle);
static void cerradura_exseq_main_region_Copy_1_led0_r1_encendido(Cerradura* handle);
static void cerradura_exseq_main_region_Copy_1_led0_r1_apagado(Cerradura* handle);
static void cerradura_exseq_main_region(Cerradura* handle);
static void cerradura_exseq_main_region_Inicio_r1(Cerradura* handle);
static void cerradura_exseq_main_region_Cerrado_r1(Cerradura* handle);
static void cerradura_exseq_main_region_Abierto_r1(Cerradura* handle);
static void cerradura_exseq_main_region_led0_r1(Cerradura* handle);
static void cerradura_exseq_main_region_Copy_1_led0_r1(Cerradura* handle);
static void cerradura_react_main_region_Inicio_r1_resetSystem(Cerradura* handle);
static void cerradura_react_main_region_Cerrado_r1_wait(Cerradura* handle);
static void cerradura_react_main_region_Cerrado_r1_getKey(Cerradura* handle);
static void cerradura_react_main_region_Cerrado_r1_operate(Cerradura* handle);
static void cerradura_react_main_region_Cerrado_r1_Validate(Cerradura* handle);
static void cerradura_react_main_region_Abierto_r1_wait(Cerradura* handle);
static void cerradura_react_main_region_Abierto_r1_getKey(Cerradura* handle);
static void cerradura_react_main_region_Abierto_r1_operate(Cerradura* handle);
static void cerradura_react_main_region_Abierto_r1_init(Cerradura* handle);
static void cerradura_react_main_region_led0_r1_encendido(Cerradura* handle);
static void cerradura_react_main_region_led0_r1_apagado(Cerradura* handle);
static void cerradura_react_main_region_Copy_1_led0_r1_encendido(Cerradura* handle);
static void cerradura_react_main_region_Copy_1_led0_r1_apagado(Cerradura* handle);
static void cerradura_react_main_region__entry_Default(Cerradura* handle);
static void cerradura_react_main_region_Inicio_r1__entry_Default(Cerradura* handle);
static void cerradura_react_main_region_Cerrado_r1__entry_Default(Cerradura* handle);
static void cerradura_react_main_region_Abierto_r1__entry_Default(Cerradura* handle);
static void cerradura_react_main_region_led0_r1__entry_Default(Cerradura* handle);
static void cerradura_react_main_region_Copy_1_led0_r1__entry_Default(Cerradura* handle);
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
	handle->internal.valid = 0;
	handle->internal.clave = 0;
	handle->internal.claveIngresada = 0;
	handle->internal.aux = 0;
	handle->internal.aux2 = 0;
	handle->internal.iter = 0;
	handle->internal.iter2 = 0;
	handle->internal.wLen = 0;
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
	handle->timeEvents.cerradura_main_region_Copy_1_led0_r1_encendido_tev0_raised = bool_false;
	handle->timeEvents.cerradura_main_region_Copy_1_led0_r1_apagado_tev0_raised = bool_false;
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
		case Cerradura_main_region_Inicio_r1_resetSystem :
		{
			cerradura_react_main_region_Inicio_r1_resetSystem(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_wait :
		{
			cerradura_react_main_region_Cerrado_r1_wait(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_getKey :
		{
			cerradura_react_main_region_Cerrado_r1_getKey(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_operate :
		{
			cerradura_react_main_region_Cerrado_r1_operate(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_Validate :
		{
			cerradura_react_main_region_Cerrado_r1_Validate(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_wait :
		{
			cerradura_react_main_region_Abierto_r1_wait(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_getKey :
		{
			cerradura_react_main_region_Abierto_r1_getKey(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_operate :
		{
			cerradura_react_main_region_Abierto_r1_operate(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_init :
		{
			cerradura_react_main_region_Abierto_r1_init(handle);
			break;
		}
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
		case Cerradura_main_region_Copy_1_led0_r1_encendido :
		{
			cerradura_react_main_region_Copy_1_led0_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_Copy_1_led0_r1_apagado :
		{
			cerradura_react_main_region_Copy_1_led0_r1_apagado(handle);
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
		case Cerradura_main_region_Inicio :
			result = (sc_boolean) (handle->stateConfVector[0] >= Cerradura_main_region_Inicio
				&& handle->stateConfVector[0] <= Cerradura_main_region_Inicio_r1_resetSystem);
			break;
		case Cerradura_main_region_Inicio_r1_resetSystem :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Inicio_r1_resetSystem
			);
			break;
		case Cerradura_main_region_Cerrado :
			result = (sc_boolean) (handle->stateConfVector[0] >= Cerradura_main_region_Cerrado
				&& handle->stateConfVector[0] <= Cerradura_main_region_Cerrado_r1_Validate);
			break;
		case Cerradura_main_region_Cerrado_r1_wait :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Cerrado_r1_wait
			);
			break;
		case Cerradura_main_region_Cerrado_r1_getKey :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Cerrado_r1_getKey
			);
			break;
		case Cerradura_main_region_Cerrado_r1_operate :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Cerrado_r1_operate
			);
			break;
		case Cerradura_main_region_Cerrado_r1_Validate :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Cerrado_r1_Validate
			);
			break;
		case Cerradura_main_region_Abierto :
			result = (sc_boolean) (handle->stateConfVector[0] >= Cerradura_main_region_Abierto
				&& handle->stateConfVector[0] <= Cerradura_main_region_Abierto_r1_init);
			break;
		case Cerradura_main_region_Abierto_r1_wait :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Abierto_r1_wait
			);
			break;
		case Cerradura_main_region_Abierto_r1_getKey :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Abierto_r1_getKey
			);
			break;
		case Cerradura_main_region_Abierto_r1_operate :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Abierto_r1_operate
			);
			break;
		case Cerradura_main_region_Abierto_r1_init :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Abierto_r1_init
			);
			break;
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
		case Cerradura_main_region_Copy_1_led0 :
			result = (sc_boolean) (handle->stateConfVector[0] >= Cerradura_main_region_Copy_1_led0
				&& handle->stateConfVector[0] <= Cerradura_main_region_Copy_1_led0_r1_apagado);
			break;
		case Cerradura_main_region_Copy_1_led0_r1_encendido :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Copy_1_led0_r1_encendido
			);
			break;
		case Cerradura_main_region_Copy_1_led0_r1_apagado :
			result = (sc_boolean) (handle->stateConfVector[0] == Cerradura_main_region_Copy_1_led0_r1_apagado
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

static sc_boolean cerradura_check_main_region_Inicio_tr0_tr0(const Cerradura* handle)
{
	return bool_true;
}

static sc_boolean cerradura_check_main_region_Cerrado_r1_wait_tr0_tr0(const Cerradura* handle)
{
	return handle->iface.keyPressed_raised;
}

static sc_boolean cerradura_check_main_region_Cerrado_r1_getKey_tr0_tr0(const Cerradura* handle)
{
	return bool_true;
}

static sc_boolean cerradura_check_main_region_Cerrado_r1_operate_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.iter < handle->internal.wLen) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Cerrado_r1_operate_tr1_tr1(const Cerradura* handle)
{
	return (handle->internal.iter >= handle->internal.wLen) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Cerrado_r1_Validate_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.claveIngresada == handle->internal.clave) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Cerrado_r1_Validate_tr1_tr1(const Cerradura* handle)
{
	return (handle->internal.claveIngresada != handle->internal.clave) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Abierto_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.iter2 >= handle->internal.wLen) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Abierto_r1_wait_tr0_tr0(const Cerradura* handle)
{
	return handle->iface.keyPressed_raised;
}

static sc_boolean cerradura_check_main_region_Abierto_r1_getKey_tr0_tr0(const Cerradura* handle)
{
	return bool_true;
}

static sc_boolean cerradura_check_main_region_Abierto_r1_operate_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.iter2 < handle->internal.wLen) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Abierto_r1_init_tr0_tr0(const Cerradura* handle)
{
	return bool_true;
}

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

static sc_boolean cerradura_check_main_region_Copy_1_led0_tr0_tr0(const Cerradura* handle)
{
	return (handle->internal.cnt >= 4) ? bool_true : bool_false;
}

static sc_boolean cerradura_check_main_region_Copy_1_led0_r1_encendido_tr0_tr0(const Cerradura* handle)
{
	return handle->timeEvents.cerradura_main_region_Copy_1_led0_r1_encendido_tev0_raised;
}

static sc_boolean cerradura_check_main_region_Copy_1_led0_r1_apagado_tr0_tr0(const Cerradura* handle)
{
	return ((handle->timeEvents.cerradura_main_region_Copy_1_led0_r1_apagado_tev0_raised) && (handle->internal.cnt < 4)) ? bool_true : bool_false;
}

static void cerradura_effect_main_region_Inicio_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Inicio(handle);
	cerradura_enseq_main_region_Cerrado_default(handle);
}

static void cerradura_effect_main_region_Cerrado_r1_wait_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Cerrado_r1_wait(handle);
	cerradura_enseq_main_region_Cerrado_r1_getKey_default(handle);
}

static void cerradura_effect_main_region_Cerrado_r1_getKey_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Cerrado_r1_getKey(handle);
	cerradura_enseq_main_region_Cerrado_r1_operate_default(handle);
}

static void cerradura_effect_main_region_Cerrado_r1_operate_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Cerrado_r1_operate(handle);
	cerradura_enseq_main_region_Cerrado_r1_wait_default(handle);
}

static void cerradura_effect_main_region_Cerrado_r1_operate_tr1(Cerradura* handle)
{
	cerradura_exseq_main_region_Cerrado_r1_operate(handle);
	cerradura_enseq_main_region_Cerrado_r1_Validate_default(handle);
}

static void cerradura_effect_main_region_Cerrado_r1_Validate_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Cerrado(handle);
	cerradura_enseq_main_region_Copy_1_led0_default(handle);
}

static void cerradura_effect_main_region_Cerrado_r1_Validate_tr1(Cerradura* handle)
{
	cerradura_exseq_main_region_Cerrado(handle);
	cerradura_enseq_main_region_led0_default(handle);
}

static void cerradura_effect_main_region_Abierto_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Abierto(handle);
	cerradura_enseq_main_region_Cerrado_default(handle);
}

static void cerradura_effect_main_region_Abierto_r1_wait_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Abierto_r1_wait(handle);
	cerradura_enseq_main_region_Abierto_r1_getKey_default(handle);
}

static void cerradura_effect_main_region_Abierto_r1_getKey_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Abierto_r1_getKey(handle);
	cerradura_enseq_main_region_Abierto_r1_operate_default(handle);
}

static void cerradura_effect_main_region_Abierto_r1_operate_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Abierto_r1_operate(handle);
	cerradura_enseq_main_region_Abierto_r1_wait_default(handle);
}

static void cerradura_effect_main_region_Abierto_r1_init_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Abierto_r1_init(handle);
	cerradura_enseq_main_region_Abierto_r1_wait_default(handle);
}

static void cerradura_effect_main_region_led0_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_led0(handle);
	cerradura_enseq_main_region_Cerrado_default(handle);
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

static void cerradura_effect_main_region_Copy_1_led0_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Copy_1_led0(handle);
	cerradura_enseq_main_region_Abierto_default(handle);
}

static void cerradura_effect_main_region_Copy_1_led0_r1_encendido_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Copy_1_led0_r1_encendido(handle);
	cerradura_enseq_main_region_Copy_1_led0_r1_apagado_default(handle);
}

static void cerradura_effect_main_region_Copy_1_led0_r1_apagado_tr0(Cerradura* handle)
{
	cerradura_exseq_main_region_Copy_1_led0_r1_apagado(handle);
	cerradura_enseq_main_region_Copy_1_led0_r1_encendido_default(handle);
}

/* Entry action for state 'resetSystem'. */
static void cerradura_enact_main_region_Inicio_r1_resetSystem(Cerradura* handle)
{
	/* Entry action for state 'resetSystem'. */
	cerraduraIface_setLedFromMask(handle, 0);
	handle->internal.iter = 0;
	handle->internal.wLen = 6;
	handle->internal.clave = 123321;
	handle->internal.claveIngresada = 0;
}

/* Entry action for state 'Cerrado'. */
static void cerradura_enact_main_region_Cerrado(Cerradura* handle)
{
	/* Entry action for state 'Cerrado'. */
	handle->internal.claveIngresada = 0;
}

/* Entry action for state 'wait'. */
static void cerradura_enact_main_region_Cerrado_r1_wait(Cerradura* handle)
{
	/* Entry action for state 'wait'. */
	cerraduraIface_setLedFromMask(handle, 8);
	handle->internal.claveIngresada *= 10;
}

/* Entry action for state 'getKey'. */
static void cerradura_enact_main_region_Cerrado_r1_getKey(Cerradura* handle)
{
	/* Entry action for state 'getKey'. */
	handle->internal.aux = handle->iface.keyPressed_value;
}

/* Entry action for state 'operate'. */
static void cerradura_enact_main_region_Cerrado_r1_operate(Cerradura* handle)
{
	/* Entry action for state 'operate'. */
	handle->internal.iter = handle->internal.iter + 1;
	handle->internal.claveIngresada = handle->internal.claveIngresada + handle->internal.aux;
}

/* Entry action for state 'Validate'. */
static void cerradura_enact_main_region_Cerrado_r1_Validate(Cerradura* handle)
{
	/* Entry action for state 'Validate'. */
	handle->internal.iter = 0;
	handle->internal.aux = 0;
}

/* Entry action for state 'wait'. */
static void cerradura_enact_main_region_Abierto_r1_wait(Cerradura* handle)
{
	/* Entry action for state 'wait'. */
	cerraduraIface_setLedFromMask(handle, 16);
	handle->internal.clave *= 10;
}

/* Entry action for state 'getKey'. */
static void cerradura_enact_main_region_Abierto_r1_getKey(Cerradura* handle)
{
	/* Entry action for state 'getKey'. */
	handle->internal.aux2 = cerraduraIface_getKeyPressed(handle);
}

/* Entry action for state 'operate'. */
static void cerradura_enact_main_region_Abierto_r1_operate(Cerradura* handle)
{
	/* Entry action for state 'operate'. */
	handle->internal.iter2 = handle->internal.iter2 + 1;
	handle->internal.clave += handle->internal.aux2;
}

/* Entry action for state 'init'. */
static void cerradura_enact_main_region_Abierto_r1_init(Cerradura* handle)
{
	/* Entry action for state 'init'. */
	handle->internal.claveIngresada = 0;
	handle->internal.clave = 0;
	handle->internal.aux2 = 0;
	handle->internal.iter2 = 0;
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
	handle->internal.cnt = handle->internal.cnt + 1;
}

/* Entry action for state 'apagado'. */
static void cerradura_enact_main_region_led0_r1_apagado(Cerradura* handle)
{
	/* Entry action for state 'apagado'. */
	cerradura_setTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_led0_r1_apagado_tev0_raised) , 250, bool_false);
	cerraduraIface_setLedFromMask(handle, 0);
}

/* Entry action for state 'Copy_1_led0'. */
static void cerradura_enact_main_region_Copy_1_led0(Cerradura* handle)
{
	/* Entry action for state 'Copy_1_led0'. */
	cerraduraIface_setLedFromMask(handle, 32);
	handle->internal.cnt = 0;
}

/* Entry action for state 'encendido'. */
static void cerradura_enact_main_region_Copy_1_led0_r1_encendido(Cerradura* handle)
{
	/* Entry action for state 'encendido'. */
	cerradura_setTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_Copy_1_led0_r1_encendido_tev0_raised) , 250, bool_false);
	cerraduraIface_setLedFromMask(handle, 8);
	handle->internal.cnt = handle->internal.cnt + 1;
}

/* Entry action for state 'apagado'. */
static void cerradura_enact_main_region_Copy_1_led0_r1_apagado(Cerradura* handle)
{
	/* Entry action for state 'apagado'. */
	cerradura_setTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_Copy_1_led0_r1_apagado_tev0_raised) , 250, bool_false);
	cerraduraIface_setLedFromMask(handle, 0);
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
static void cerradura_exact_main_region_Copy_1_led0_r1_encendido(Cerradura* handle)
{
	/* Exit action for state 'encendido'. */
	cerradura_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_Copy_1_led0_r1_encendido_tev0_raised) );		
}

/* Exit action for state 'apagado'. */
static void cerradura_exact_main_region_Copy_1_led0_r1_apagado(Cerradura* handle)
{
	/* Exit action for state 'apagado'. */
	cerradura_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.cerradura_main_region_Copy_1_led0_r1_apagado_tev0_raised) );		
}

/* 'default' enter sequence for state Inicio */
static void cerradura_enseq_main_region_Inicio_default(Cerradura* handle)
{
	/* 'default' enter sequence for state Inicio */
	cerradura_enseq_main_region_Inicio_r1_default(handle);
}

/* 'default' enter sequence for state resetSystem */
static void cerradura_enseq_main_region_Inicio_r1_resetSystem_default(Cerradura* handle)
{
	/* 'default' enter sequence for state resetSystem */
	cerradura_enact_main_region_Inicio_r1_resetSystem(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Inicio_r1_resetSystem;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state Cerrado */
static void cerradura_enseq_main_region_Cerrado_default(Cerradura* handle)
{
	/* 'default' enter sequence for state Cerrado */
	cerradura_enact_main_region_Cerrado(handle);
	cerradura_enseq_main_region_Cerrado_r1_default(handle);
}

/* 'default' enter sequence for state wait */
static void cerradura_enseq_main_region_Cerrado_r1_wait_default(Cerradura* handle)
{
	/* 'default' enter sequence for state wait */
	cerradura_enact_main_region_Cerrado_r1_wait(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Cerrado_r1_wait;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state getKey */
static void cerradura_enseq_main_region_Cerrado_r1_getKey_default(Cerradura* handle)
{
	/* 'default' enter sequence for state getKey */
	cerradura_enact_main_region_Cerrado_r1_getKey(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Cerrado_r1_getKey;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state operate */
static void cerradura_enseq_main_region_Cerrado_r1_operate_default(Cerradura* handle)
{
	/* 'default' enter sequence for state operate */
	cerradura_enact_main_region_Cerrado_r1_operate(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Cerrado_r1_operate;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state Validate */
static void cerradura_enseq_main_region_Cerrado_r1_Validate_default(Cerradura* handle)
{
	/* 'default' enter sequence for state Validate */
	cerradura_enact_main_region_Cerrado_r1_Validate(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Cerrado_r1_Validate;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state Abierto */
static void cerradura_enseq_main_region_Abierto_default(Cerradura* handle)
{
	/* 'default' enter sequence for state Abierto */
	cerradura_enseq_main_region_Abierto_r1_default(handle);
}

/* 'default' enter sequence for state wait */
static void cerradura_enseq_main_region_Abierto_r1_wait_default(Cerradura* handle)
{
	/* 'default' enter sequence for state wait */
	cerradura_enact_main_region_Abierto_r1_wait(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Abierto_r1_wait;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state getKey */
static void cerradura_enseq_main_region_Abierto_r1_getKey_default(Cerradura* handle)
{
	/* 'default' enter sequence for state getKey */
	cerradura_enact_main_region_Abierto_r1_getKey(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Abierto_r1_getKey;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state operate */
static void cerradura_enseq_main_region_Abierto_r1_operate_default(Cerradura* handle)
{
	/* 'default' enter sequence for state operate */
	cerradura_enact_main_region_Abierto_r1_operate(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Abierto_r1_operate;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state init */
static void cerradura_enseq_main_region_Abierto_r1_init_default(Cerradura* handle)
{
	/* 'default' enter sequence for state init */
	cerradura_enact_main_region_Abierto_r1_init(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Abierto_r1_init;
	handle->stateConfVectorPosition = 0;
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

/* 'default' enter sequence for state Copy_1_led0 */
static void cerradura_enseq_main_region_Copy_1_led0_default(Cerradura* handle)
{
	/* 'default' enter sequence for state Copy_1_led0 */
	cerradura_enact_main_region_Copy_1_led0(handle);
	cerradura_enseq_main_region_Copy_1_led0_r1_default(handle);
}

/* 'default' enter sequence for state encendido */
static void cerradura_enseq_main_region_Copy_1_led0_r1_encendido_default(Cerradura* handle)
{
	/* 'default' enter sequence for state encendido */
	cerradura_enact_main_region_Copy_1_led0_r1_encendido(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Copy_1_led0_r1_encendido;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state apagado */
static void cerradura_enseq_main_region_Copy_1_led0_r1_apagado_default(Cerradura* handle)
{
	/* 'default' enter sequence for state apagado */
	cerradura_enact_main_region_Copy_1_led0_r1_apagado(handle);
	handle->stateConfVector[0] = Cerradura_main_region_Copy_1_led0_r1_apagado;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void cerradura_enseq_main_region_default(Cerradura* handle)
{
	/* 'default' enter sequence for region main region */
	cerradura_react_main_region__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void cerradura_enseq_main_region_Inicio_r1_default(Cerradura* handle)
{
	/* 'default' enter sequence for region r1 */
	cerradura_react_main_region_Inicio_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void cerradura_enseq_main_region_Cerrado_r1_default(Cerradura* handle)
{
	/* 'default' enter sequence for region r1 */
	cerradura_react_main_region_Cerrado_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void cerradura_enseq_main_region_Abierto_r1_default(Cerradura* handle)
{
	/* 'default' enter sequence for region r1 */
	cerradura_react_main_region_Abierto_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void cerradura_enseq_main_region_led0_r1_default(Cerradura* handle)
{
	/* 'default' enter sequence for region r1 */
	cerradura_react_main_region_led0_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void cerradura_enseq_main_region_Copy_1_led0_r1_default(Cerradura* handle)
{
	/* 'default' enter sequence for region r1 */
	cerradura_react_main_region_Copy_1_led0_r1__entry_Default(handle);
}

/* Default exit sequence for state Inicio */
static void cerradura_exseq_main_region_Inicio(Cerradura* handle)
{
	/* Default exit sequence for state Inicio */
	cerradura_exseq_main_region_Inicio_r1(handle);
}

/* Default exit sequence for state resetSystem */
static void cerradura_exseq_main_region_Inicio_r1_resetSystem(Cerradura* handle)
{
	/* Default exit sequence for state resetSystem */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state Cerrado */
static void cerradura_exseq_main_region_Cerrado(Cerradura* handle)
{
	/* Default exit sequence for state Cerrado */
	cerradura_exseq_main_region_Cerrado_r1(handle);
}

/* Default exit sequence for state wait */
static void cerradura_exseq_main_region_Cerrado_r1_wait(Cerradura* handle)
{
	/* Default exit sequence for state wait */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state getKey */
static void cerradura_exseq_main_region_Cerrado_r1_getKey(Cerradura* handle)
{
	/* Default exit sequence for state getKey */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state operate */
static void cerradura_exseq_main_region_Cerrado_r1_operate(Cerradura* handle)
{
	/* Default exit sequence for state operate */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state Validate */
static void cerradura_exseq_main_region_Cerrado_r1_Validate(Cerradura* handle)
{
	/* Default exit sequence for state Validate */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state Abierto */
static void cerradura_exseq_main_region_Abierto(Cerradura* handle)
{
	/* Default exit sequence for state Abierto */
	cerradura_exseq_main_region_Abierto_r1(handle);
}

/* Default exit sequence for state wait */
static void cerradura_exseq_main_region_Abierto_r1_wait(Cerradura* handle)
{
	/* Default exit sequence for state wait */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state getKey */
static void cerradura_exseq_main_region_Abierto_r1_getKey(Cerradura* handle)
{
	/* Default exit sequence for state getKey */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state operate */
static void cerradura_exseq_main_region_Abierto_r1_operate(Cerradura* handle)
{
	/* Default exit sequence for state operate */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state init */
static void cerradura_exseq_main_region_Abierto_r1_init(Cerradura* handle)
{
	/* Default exit sequence for state init */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
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

/* Default exit sequence for state Copy_1_led0 */
static void cerradura_exseq_main_region_Copy_1_led0(Cerradura* handle)
{
	/* Default exit sequence for state Copy_1_led0 */
	cerradura_exseq_main_region_Copy_1_led0_r1(handle);
}

/* Default exit sequence for state encendido */
static void cerradura_exseq_main_region_Copy_1_led0_r1_encendido(Cerradura* handle)
{
	/* Default exit sequence for state encendido */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
	cerradura_exact_main_region_Copy_1_led0_r1_encendido(handle);
}

/* Default exit sequence for state apagado */
static void cerradura_exseq_main_region_Copy_1_led0_r1_apagado(Cerradura* handle)
{
	/* Default exit sequence for state apagado */
	handle->stateConfVector[0] = Cerradura_last_state;
	handle->stateConfVectorPosition = 0;
	cerradura_exact_main_region_Copy_1_led0_r1_apagado(handle);
}

/* Default exit sequence for region main region */
static void cerradura_exseq_main_region(Cerradura* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of cerradura.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_Inicio_r1_resetSystem :
		{
			cerradura_exseq_main_region_Inicio_r1_resetSystem(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_wait :
		{
			cerradura_exseq_main_region_Cerrado_r1_wait(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_getKey :
		{
			cerradura_exseq_main_region_Cerrado_r1_getKey(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_operate :
		{
			cerradura_exseq_main_region_Cerrado_r1_operate(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_Validate :
		{
			cerradura_exseq_main_region_Cerrado_r1_Validate(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_wait :
		{
			cerradura_exseq_main_region_Abierto_r1_wait(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_getKey :
		{
			cerradura_exseq_main_region_Abierto_r1_getKey(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_operate :
		{
			cerradura_exseq_main_region_Abierto_r1_operate(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_init :
		{
			cerradura_exseq_main_region_Abierto_r1_init(handle);
			break;
		}
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
		case Cerradura_main_region_Copy_1_led0_r1_encendido :
		{
			cerradura_exseq_main_region_Copy_1_led0_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_Copy_1_led0_r1_apagado :
		{
			cerradura_exseq_main_region_Copy_1_led0_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void cerradura_exseq_main_region_Inicio_r1(Cerradura* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of cerradura.main_region.Inicio.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_Inicio_r1_resetSystem :
		{
			cerradura_exseq_main_region_Inicio_r1_resetSystem(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void cerradura_exseq_main_region_Cerrado_r1(Cerradura* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of cerradura.main_region.Cerrado.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_Cerrado_r1_wait :
		{
			cerradura_exseq_main_region_Cerrado_r1_wait(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_getKey :
		{
			cerradura_exseq_main_region_Cerrado_r1_getKey(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_operate :
		{
			cerradura_exseq_main_region_Cerrado_r1_operate(handle);
			break;
		}
		case Cerradura_main_region_Cerrado_r1_Validate :
		{
			cerradura_exseq_main_region_Cerrado_r1_Validate(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void cerradura_exseq_main_region_Abierto_r1(Cerradura* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of cerradura.main_region.Abierto.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_Abierto_r1_wait :
		{
			cerradura_exseq_main_region_Abierto_r1_wait(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_getKey :
		{
			cerradura_exseq_main_region_Abierto_r1_getKey(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_operate :
		{
			cerradura_exseq_main_region_Abierto_r1_operate(handle);
			break;
		}
		case Cerradura_main_region_Abierto_r1_init :
		{
			cerradura_exseq_main_region_Abierto_r1_init(handle);
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
static void cerradura_exseq_main_region_Copy_1_led0_r1(Cerradura* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of cerradura.main_region.Copy_1_led0.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Cerradura_main_region_Copy_1_led0_r1_encendido :
		{
			cerradura_exseq_main_region_Copy_1_led0_r1_encendido(handle);
			break;
		}
		case Cerradura_main_region_Copy_1_led0_r1_apagado :
		{
			cerradura_exseq_main_region_Copy_1_led0_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state resetSystem. */
static void cerradura_react_main_region_Inicio_r1_resetSystem(Cerradura* handle)
{
	/* The reactions of state resetSystem. */
	cerradura_effect_main_region_Inicio_tr0(handle);
}

/* The reactions of state wait. */
static void cerradura_react_main_region_Cerrado_r1_wait(Cerradura* handle)
{
	/* The reactions of state wait. */
	if (cerradura_check_main_region_Cerrado_r1_wait_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Cerrado_r1_wait_tr0(handle);
	} 
}

/* The reactions of state getKey. */
static void cerradura_react_main_region_Cerrado_r1_getKey(Cerradura* handle)
{
	/* The reactions of state getKey. */
	cerradura_effect_main_region_Cerrado_r1_getKey_tr0(handle);
}

/* The reactions of state operate. */
static void cerradura_react_main_region_Cerrado_r1_operate(Cerradura* handle)
{
	/* The reactions of state operate. */
	if (cerradura_check_main_region_Cerrado_r1_operate_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Cerrado_r1_operate_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Cerrado_r1_operate_tr1_tr1(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Cerrado_r1_operate_tr1(handle);
		} 
	}
}

/* The reactions of state Validate. */
static void cerradura_react_main_region_Cerrado_r1_Validate(Cerradura* handle)
{
	/* The reactions of state Validate. */
	if (cerradura_check_main_region_Cerrado_r1_Validate_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Cerrado_r1_Validate_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Cerrado_r1_Validate_tr1_tr1(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Cerrado_r1_Validate_tr1(handle);
		} 
	}
}

/* The reactions of state wait. */
static void cerradura_react_main_region_Abierto_r1_wait(Cerradura* handle)
{
	/* The reactions of state wait. */
	if (cerradura_check_main_region_Abierto_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Abierto_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Abierto_r1_wait_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Abierto_r1_wait_tr0(handle);
		} 
	}
}

/* The reactions of state getKey. */
static void cerradura_react_main_region_Abierto_r1_getKey(Cerradura* handle)
{
	/* The reactions of state getKey. */
	if (cerradura_check_main_region_Abierto_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Abierto_tr0(handle);
	}  else
	{
		cerradura_effect_main_region_Abierto_r1_getKey_tr0(handle);
	}
}

/* The reactions of state operate. */
static void cerradura_react_main_region_Abierto_r1_operate(Cerradura* handle)
{
	/* The reactions of state operate. */
	if (cerradura_check_main_region_Abierto_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Abierto_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Abierto_r1_operate_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Abierto_r1_operate_tr0(handle);
		} 
	}
}

/* The reactions of state init. */
static void cerradura_react_main_region_Abierto_r1_init(Cerradura* handle)
{
	/* The reactions of state init. */
	if (cerradura_check_main_region_Abierto_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Abierto_tr0(handle);
	}  else
	{
		cerradura_effect_main_region_Abierto_r1_init_tr0(handle);
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
static void cerradura_react_main_region_Copy_1_led0_r1_encendido(Cerradura* handle)
{
	/* The reactions of state encendido. */
	if (cerradura_check_main_region_Copy_1_led0_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Copy_1_led0_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Copy_1_led0_r1_encendido_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Copy_1_led0_r1_encendido_tr0(handle);
		} 
	}
}

/* The reactions of state apagado. */
static void cerradura_react_main_region_Copy_1_led0_r1_apagado(Cerradura* handle)
{
	/* The reactions of state apagado. */
	if (cerradura_check_main_region_Copy_1_led0_tr0_tr0(handle) == bool_true)
	{ 
		cerradura_effect_main_region_Copy_1_led0_tr0(handle);
	}  else
	{
		if (cerradura_check_main_region_Copy_1_led0_r1_apagado_tr0_tr0(handle) == bool_true)
		{ 
			cerradura_effect_main_region_Copy_1_led0_r1_apagado_tr0(handle);
		} 
	}
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_Inicio_default(handle);
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region_Inicio_r1__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_Inicio_r1_resetSystem_default(handle);
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region_Cerrado_r1__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_Cerrado_r1_wait_default(handle);
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region_Abierto_r1__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_Abierto_r1_init_default(handle);
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region_led0_r1__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_led0_r1_encendido_default(handle);
}

/* Default react sequence for initial entry  */
static void cerradura_react_main_region_Copy_1_led0_r1__entry_Default(Cerradura* handle)
{
	/* Default react sequence for initial entry  */
	cerradura_enseq_main_region_Copy_1_led0_r1_encendido_default(handle);
}


