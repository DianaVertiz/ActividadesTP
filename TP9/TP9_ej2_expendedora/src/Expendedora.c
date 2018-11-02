
#include <stdlib.h>
#include <string.h>
#include "sc_types.h"
#include "Expendedora.h"
#include "ExpendedoraRequired.h"
/*! \file Implementation of the state machine 'expendedora'
*/

/* prototypes of all internal functions */
static sc_boolean expendedora_check_main_region_init_tr0_tr0(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_wait_tr0_tr0(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_ingresoMonedas_tr0_tr0(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_priceCheck_tr0_tr0(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_priceCheck_tr1_tr1(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_stockCheck_tr0_tr0(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_stockCheck_tr1_tr1(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_entregaGaseosa_tr0_tr0(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_entregaGaseosa_tr1_tr1(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_entregaGaseosa_r1_ledOn_tr0_tr0(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_Decode_tr0_tr0(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_Decode_tr1_tr1(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_Decode_tr2_tr2(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_return_tr0_tr0(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_return_r1_encendido_tr0_tr0(const Expendedora* handle);
static sc_boolean expendedora_check_main_region_return_r1_apagado_tr0_tr0(const Expendedora* handle);
static void expendedora_effect_main_region_init_tr0(Expendedora* handle);
static void expendedora_effect_main_region_wait_tr0(Expendedora* handle);
static void expendedora_effect_main_region_ingresoMonedas_tr0(Expendedora* handle);
static void expendedora_effect_main_region_priceCheck_tr0(Expendedora* handle);
static void expendedora_effect_main_region_priceCheck_tr1(Expendedora* handle);
static void expendedora_effect_main_region_stockCheck_tr0(Expendedora* handle);
static void expendedora_effect_main_region_stockCheck_tr1(Expendedora* handle);
static void expendedora_effect_main_region_entregaGaseosa_tr0(Expendedora* handle);
static void expendedora_effect_main_region_entregaGaseosa_tr1(Expendedora* handle);
static void expendedora_effect_main_region_entregaGaseosa_r1_ledOn_tr0(Expendedora* handle);
static void expendedora_effect_main_region_Decode_tr0(Expendedora* handle);
static void expendedora_effect_main_region_Decode_tr1(Expendedora* handle);
static void expendedora_effect_main_region_Decode_tr2(Expendedora* handle);
static void expendedora_effect_main_region_return_tr0(Expendedora* handle);
static void expendedora_effect_main_region_return_r1_encendido_tr0(Expendedora* handle);
static void expendedora_effect_main_region_return_r1_apagado_tr0(Expendedora* handle);
static void expendedora_enact_main_region_init(Expendedora* handle);
static void expendedora_enact_main_region_wait(Expendedora* handle);
static void expendedora_enact_main_region_ingresoMonedas(Expendedora* handle);
static void expendedora_enact_main_region_stockCheck(Expendedora* handle);
static void expendedora_enact_main_region_entregaGaseosa(Expendedora* handle);
static void expendedora_enact_main_region_entregaGaseosa_r1_ledOn(Expendedora* handle);
static void expendedora_enact_main_region_entregaGaseosa_r1_ledOff(Expendedora* handle);
static void expendedora_enact_main_region_Decode(Expendedora* handle);
static void expendedora_enact_main_region_return(Expendedora* handle);
static void expendedora_enact_main_region_return_r1_encendido(Expendedora* handle);
static void expendedora_enact_main_region_return_r1_apagado(Expendedora* handle);
static void expendedora_exact_main_region_entregaGaseosa_r1_ledOn(Expendedora* handle);
static void expendedora_exact_main_region_return_r1_encendido(Expendedora* handle);
static void expendedora_exact_main_region_return_r1_apagado(Expendedora* handle);
static void expendedora_enseq_main_region_init_default(Expendedora* handle);
static void expendedora_enseq_main_region_wait_default(Expendedora* handle);
static void expendedora_enseq_main_region_ingresoMonedas_default(Expendedora* handle);
static void expendedora_enseq_main_region_priceCheck_default(Expendedora* handle);
static void expendedora_enseq_main_region_stockCheck_default(Expendedora* handle);
static void expendedora_enseq_main_region_entregaGaseosa_default(Expendedora* handle);
static void expendedora_enseq_main_region_entregaGaseosa_r1_ledOn_default(Expendedora* handle);
static void expendedora_enseq_main_region_entregaGaseosa_r1_ledOff_default(Expendedora* handle);
static void expendedora_enseq_main_region_Decode_default(Expendedora* handle);
static void expendedora_enseq_main_region_return_default(Expendedora* handle);
static void expendedora_enseq_main_region_return_r1_encendido_default(Expendedora* handle);
static void expendedora_enseq_main_region_return_r1_apagado_default(Expendedora* handle);
static void expendedora_enseq_main_region_default(Expendedora* handle);
static void expendedora_enseq_main_region_entregaGaseosa_r1_default(Expendedora* handle);
static void expendedora_enseq_main_region_return_r1_default(Expendedora* handle);
static void expendedora_exseq_main_region_init(Expendedora* handle);
static void expendedora_exseq_main_region_wait(Expendedora* handle);
static void expendedora_exseq_main_region_ingresoMonedas(Expendedora* handle);
static void expendedora_exseq_main_region_priceCheck(Expendedora* handle);
static void expendedora_exseq_main_region_stockCheck(Expendedora* handle);
static void expendedora_exseq_main_region_entregaGaseosa(Expendedora* handle);
static void expendedora_exseq_main_region_entregaGaseosa_r1_ledOn(Expendedora* handle);
static void expendedora_exseq_main_region_entregaGaseosa_r1_ledOff(Expendedora* handle);
static void expendedora_exseq_main_region_Decode(Expendedora* handle);
static void expendedora_exseq_main_region_return(Expendedora* handle);
static void expendedora_exseq_main_region_return_r1_encendido(Expendedora* handle);
static void expendedora_exseq_main_region_return_r1_apagado(Expendedora* handle);
static void expendedora_exseq_main_region(Expendedora* handle);
static void expendedora_exseq_main_region_entregaGaseosa_r1(Expendedora* handle);
static void expendedora_exseq_main_region_return_r1(Expendedora* handle);
static void expendedora_react_main_region_init(Expendedora* handle);
static void expendedora_react_main_region_wait(Expendedora* handle);
static void expendedora_react_main_region_ingresoMonedas(Expendedora* handle);
static void expendedora_react_main_region_priceCheck(Expendedora* handle);
static void expendedora_react_main_region_stockCheck(Expendedora* handle);
static void expendedora_react_main_region_entregaGaseosa_r1_ledOn(Expendedora* handle);
static void expendedora_react_main_region_entregaGaseosa_r1_ledOff(Expendedora* handle);
static void expendedora_react_main_region_Decode(Expendedora* handle);
static void expendedora_react_main_region_return_r1_encendido(Expendedora* handle);
static void expendedora_react_main_region_return_r1_apagado(Expendedora* handle);
static void expendedora_react_main_region__entry_Default(Expendedora* handle);
static void expendedora_react_main_region_entregaGaseosa_r1__entry_Default(Expendedora* handle);
static void expendedora_react_main_region_return_r1__entry_Default(Expendedora* handle);
static void expendedora_clearInEvents(Expendedora* handle);
static void expendedora_clearOutEvents(Expendedora* handle);


void expendedora_init(Expendedora* handle)
{
	sc_integer i;

	for (i = 0; i < EXPENDEDORA_MAX_ORTHOGONAL_STATES; ++i)
	{
		handle->stateConfVector[i] = Expendedora_last_state;
	}
	
	
	handle->stateConfVectorPosition = 0;

	expendedora_clearInEvents(handle);
	expendedora_clearOutEvents(handle);

	/* Default init sequence for statechart expendedora */
	handle->internal.credito = 0;
	handle->internal.cantA = 10;
	handle->internal.cantB = 3;
	handle->internal.precio = 6;
	handle->internal.selected = 0;
	handle->internal.aprobado = 0;
	handle->internal.stockOk = 0;
	handle->internal.led = 0;
	handle->internal.aux = 0;

}

void expendedora_enter(Expendedora* handle)
{
	/* Default enter sequence for statechart expendedora */
	expendedora_enseq_main_region_default(handle);
}

void expendedora_exit(Expendedora* handle)
{
	/* Default exit sequence for statechart expendedora */
	expendedora_exseq_main_region(handle);
}

sc_boolean expendedora_isActive(const Expendedora* handle)
{
	sc_boolean result;
	if (handle->stateConfVector[0] != Expendedora_last_state)
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
sc_boolean expendedora_isFinal(const Expendedora* handle)
{
   return bool_false;
}

static void expendedora_clearInEvents(Expendedora* handle)
{
	handle->iface.keyPress_raised = bool_false;
	handle->timeEvents.expendedora_main_region_entregaGaseosa_r1_ledOn_tev0_raised = bool_false;
	handle->timeEvents.expendedora_main_region_return_r1_encendido_tev0_raised = bool_false;
	handle->timeEvents.expendedora_main_region_return_r1_apagado_tev0_raised = bool_false;
}

static void expendedora_clearOutEvents(Expendedora* handle)
{
}

void expendedora_runCycle(Expendedora* handle)
{
	
	expendedora_clearOutEvents(handle);
	
	for (handle->stateConfVectorPosition = 0;
		handle->stateConfVectorPosition < EXPENDEDORA_MAX_ORTHOGONAL_STATES;
		handle->stateConfVectorPosition++)
		{
			
		switch (handle->stateConfVector[handle->stateConfVectorPosition])
		{
		case Expendedora_main_region_init :
		{
			expendedora_react_main_region_init(handle);
			break;
		}
		case Expendedora_main_region_wait :
		{
			expendedora_react_main_region_wait(handle);
			break;
		}
		case Expendedora_main_region_ingresoMonedas :
		{
			expendedora_react_main_region_ingresoMonedas(handle);
			break;
		}
		case Expendedora_main_region_priceCheck :
		{
			expendedora_react_main_region_priceCheck(handle);
			break;
		}
		case Expendedora_main_region_stockCheck :
		{
			expendedora_react_main_region_stockCheck(handle);
			break;
		}
		case Expendedora_main_region_entregaGaseosa_r1_ledOn :
		{
			expendedora_react_main_region_entregaGaseosa_r1_ledOn(handle);
			break;
		}
		case Expendedora_main_region_entregaGaseosa_r1_ledOff :
		{
			expendedora_react_main_region_entregaGaseosa_r1_ledOff(handle);
			break;
		}
		case Expendedora_main_region_Decode :
		{
			expendedora_react_main_region_Decode(handle);
			break;
		}
		case Expendedora_main_region_return_r1_encendido :
		{
			expendedora_react_main_region_return_r1_encendido(handle);
			break;
		}
		case Expendedora_main_region_return_r1_apagado :
		{
			expendedora_react_main_region_return_r1_apagado(handle);
			break;
		}
		default:
			break;
		}
	}
	
	expendedora_clearInEvents(handle);
}

void expendedora_raiseTimeEvent(const Expendedora* handle, sc_eventid evid)
{
	if ( ((sc_intptr_t)evid) >= ((sc_intptr_t)&(handle->timeEvents))
		&&  ((sc_intptr_t)evid) < ((sc_intptr_t)&(handle->timeEvents)) + sizeof(ExpendedoraTimeEvents))
		{
		*(sc_boolean*)evid = bool_true;
	}		
}

sc_boolean expendedora_isStateActive(const Expendedora* handle, ExpendedoraStates state)
{
	sc_boolean result = bool_false;
	switch (state)
	{
		case Expendedora_main_region_init :
			result = (sc_boolean) (handle->stateConfVector[0] == Expendedora_main_region_init
			);
			break;
		case Expendedora_main_region_wait :
			result = (sc_boolean) (handle->stateConfVector[0] == Expendedora_main_region_wait
			);
			break;
		case Expendedora_main_region_ingresoMonedas :
			result = (sc_boolean) (handle->stateConfVector[0] == Expendedora_main_region_ingresoMonedas
			);
			break;
		case Expendedora_main_region_priceCheck :
			result = (sc_boolean) (handle->stateConfVector[0] == Expendedora_main_region_priceCheck
			);
			break;
		case Expendedora_main_region_stockCheck :
			result = (sc_boolean) (handle->stateConfVector[0] == Expendedora_main_region_stockCheck
			);
			break;
		case Expendedora_main_region_entregaGaseosa :
			result = (sc_boolean) (handle->stateConfVector[0] >= Expendedora_main_region_entregaGaseosa
				&& handle->stateConfVector[0] <= Expendedora_main_region_entregaGaseosa_r1_ledOff);
			break;
		case Expendedora_main_region_entregaGaseosa_r1_ledOn :
			result = (sc_boolean) (handle->stateConfVector[0] == Expendedora_main_region_entregaGaseosa_r1_ledOn
			);
			break;
		case Expendedora_main_region_entregaGaseosa_r1_ledOff :
			result = (sc_boolean) (handle->stateConfVector[0] == Expendedora_main_region_entregaGaseosa_r1_ledOff
			);
			break;
		case Expendedora_main_region_Decode :
			result = (sc_boolean) (handle->stateConfVector[0] == Expendedora_main_region_Decode
			);
			break;
		case Expendedora_main_region_return :
			result = (sc_boolean) (handle->stateConfVector[0] >= Expendedora_main_region_return
				&& handle->stateConfVector[0] <= Expendedora_main_region_return_r1_apagado);
			break;
		case Expendedora_main_region_return_r1_encendido :
			result = (sc_boolean) (handle->stateConfVector[0] == Expendedora_main_region_return_r1_encendido
			);
			break;
		case Expendedora_main_region_return_r1_apagado :
			result = (sc_boolean) (handle->stateConfVector[0] == Expendedora_main_region_return_r1_apagado
			);
			break;
		default:
			result = bool_false;
			break;
	}
	return result;
}

void expendedoraIface_raise_keyPress(Expendedora* handle)
{
	handle->iface.keyPress_raised = bool_true;
}



/* implementations of all internal functions */

static sc_boolean expendedora_check_main_region_init_tr0_tr0(const Expendedora* handle)
{
	return bool_true;
}

static sc_boolean expendedora_check_main_region_wait_tr0_tr0(const Expendedora* handle)
{
	return handle->iface.keyPress_raised;
}

static sc_boolean expendedora_check_main_region_ingresoMonedas_tr0_tr0(const Expendedora* handle)
{
	return (handle->internal.selected == 1) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_priceCheck_tr0_tr0(const Expendedora* handle)
{
	return (handle->internal.precio <= handle->internal.credito) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_priceCheck_tr1_tr1(const Expendedora* handle)
{
	return (handle->internal.precio > handle->internal.credito) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_stockCheck_tr0_tr0(const Expendedora* handle)
{
	return (handle->internal.stockOk == 1) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_stockCheck_tr1_tr1(const Expendedora* handle)
{
	return (handle->internal.stockOk == 0) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_entregaGaseosa_tr0_tr0(const Expendedora* handle)
{
	return (handle->internal.credito == 0) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_entregaGaseosa_tr1_tr1(const Expendedora* handle)
{
	return (handle->internal.credito > 0) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_entregaGaseosa_r1_ledOn_tr0_tr0(const Expendedora* handle)
{
	return handle->timeEvents.expendedora_main_region_entregaGaseosa_r1_ledOn_tev0_raised;
}

static sc_boolean expendedora_check_main_region_Decode_tr0_tr0(const Expendedora* handle)
{
	return ((handle->internal.selected == 3) || (handle->internal.selected == 2)) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_Decode_tr1_tr1(const Expendedora* handle)
{
	return (handle->internal.selected == 1) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_Decode_tr2_tr2(const Expendedora* handle)
{
	return (handle->internal.selected == 4) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_return_tr0_tr0(const Expendedora* handle)
{
	return (handle->internal.credito == 0) ? bool_true : bool_false;
}

static sc_boolean expendedora_check_main_region_return_r1_encendido_tr0_tr0(const Expendedora* handle)
{
	return handle->timeEvents.expendedora_main_region_return_r1_encendido_tev0_raised;
}

static sc_boolean expendedora_check_main_region_return_r1_apagado_tr0_tr0(const Expendedora* handle)
{
	return ((handle->timeEvents.expendedora_main_region_return_r1_apagado_tev0_raised) && (handle->internal.credito >= 0)) ? bool_true : bool_false;
}

static void expendedora_effect_main_region_init_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_init(handle);
	expendedora_enseq_main_region_wait_default(handle);
}

static void expendedora_effect_main_region_wait_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_wait(handle);
	expendedora_enseq_main_region_Decode_default(handle);
}

static void expendedora_effect_main_region_ingresoMonedas_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_ingresoMonedas(handle);
	expendedora_enseq_main_region_wait_default(handle);
}

static void expendedora_effect_main_region_priceCheck_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_priceCheck(handle);
	expendedora_enseq_main_region_stockCheck_default(handle);
}

static void expendedora_effect_main_region_priceCheck_tr1(Expendedora* handle)
{
	expendedora_exseq_main_region_priceCheck(handle);
	expendedora_enseq_main_region_return_default(handle);
}

static void expendedora_effect_main_region_stockCheck_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_stockCheck(handle);
	expendedora_enseq_main_region_entregaGaseosa_default(handle);
}

static void expendedora_effect_main_region_stockCheck_tr1(Expendedora* handle)
{
	expendedora_exseq_main_region_stockCheck(handle);
	expendedora_enseq_main_region_return_default(handle);
}

static void expendedora_effect_main_region_entregaGaseosa_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_entregaGaseosa(handle);
	expendedora_enseq_main_region_wait_default(handle);
}

static void expendedora_effect_main_region_entregaGaseosa_tr1(Expendedora* handle)
{
	expendedora_exseq_main_region_entregaGaseosa(handle);
	expendedora_enseq_main_region_return_default(handle);
}

static void expendedora_effect_main_region_entregaGaseosa_r1_ledOn_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_entregaGaseosa_r1_ledOn(handle);
	expendedora_enseq_main_region_entregaGaseosa_r1_ledOff_default(handle);
}

static void expendedora_effect_main_region_Decode_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_Decode(handle);
	expendedora_enseq_main_region_priceCheck_default(handle);
}

static void expendedora_effect_main_region_Decode_tr1(Expendedora* handle)
{
	expendedora_exseq_main_region_Decode(handle);
	expendedora_enseq_main_region_ingresoMonedas_default(handle);
}

static void expendedora_effect_main_region_Decode_tr2(Expendedora* handle)
{
	expendedora_exseq_main_region_Decode(handle);
	expendedora_enseq_main_region_return_default(handle);
}

static void expendedora_effect_main_region_return_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_return(handle);
	expendedora_enseq_main_region_wait_default(handle);
}

static void expendedora_effect_main_region_return_r1_encendido_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_return_r1_encendido(handle);
	expendedora_enseq_main_region_return_r1_apagado_default(handle);
}

static void expendedora_effect_main_region_return_r1_apagado_tr0(Expendedora* handle)
{
	expendedora_exseq_main_region_return_r1_apagado(handle);
	expendedora_enseq_main_region_return_r1_encendido_default(handle);
}

/* Entry action for state 'init'. */
static void expendedora_enact_main_region_init(Expendedora* handle)
{
	/* Entry action for state 'init'. */
	handle->internal.credito = 0;
	handle->internal.selected = 0;
	handle->internal.aprobado = 0;
	handle->internal.stockOk = 0;
	handle->internal.led = 0;
}

/* Entry action for state 'wait'. */
static void expendedora_enact_main_region_wait(Expendedora* handle)
{
	/* Entry action for state 'wait'. */
	handle->internal.selected = 0;
}

/* Entry action for state 'ingresoMonedas'. */
static void expendedora_enact_main_region_ingresoMonedas(Expendedora* handle)
{
	/* Entry action for state 'ingresoMonedas'. */
	handle->internal.credito += 2;
}

/* Entry action for state 'stockCheck'. */
static void expendedora_enact_main_region_stockCheck(Expendedora* handle)
{
	/* Entry action for state 'stockCheck'. */
	handle->internal.stockOk = 2;
	handle->internal.stockOk = expendedoraIface_stockCheck(handle, handle->internal.selected, handle->internal.cantA, handle->internal.cantB);
	handle->internal.led = expendedoraIface_setLed(handle, handle->internal.selected);
}

/* Entry action for state 'entregaGaseosa'. */
static void expendedora_enact_main_region_entregaGaseosa(Expendedora* handle)
{
	/* Entry action for state 'entregaGaseosa'. */
	handle->internal.cantA = handle->internal.cantA - (3 - handle->internal.selected);
	handle->internal.cantB = handle->internal.cantB - (handle->internal.selected - 2);
}

/* Entry action for state 'ledOn'. */
static void expendedora_enact_main_region_entregaGaseosa_r1_ledOn(Expendedora* handle)
{
	/* Entry action for state 'ledOn'. */
	expendedora_setTimer(handle, (sc_eventid) &(handle->timeEvents.expendedora_main_region_entregaGaseosa_r1_ledOn_tev0_raised) , 1 * 1000, bool_false);
	expendedoraIface_ledOn(handle, handle->internal.led);
}

/* Entry action for state 'ledOff'. */
static void expendedora_enact_main_region_entregaGaseosa_r1_ledOff(Expendedora* handle)
{
	/* Entry action for state 'ledOff'. */
	expendedoraIface_ledOff(handle, handle->internal.led);
	handle->internal.credito = handle->internal.credito - 6;
}

/* Entry action for state 'Decode'. */
static void expendedora_enact_main_region_Decode(Expendedora* handle)
{
	/* Entry action for state 'Decode'. */
	handle->internal.selected = expendedoraIface_getKeyPressed(handle);
}

/* Entry action for state 'return'. */
static void expendedora_enact_main_region_return(Expendedora* handle)
{
	/* Entry action for state 'return'. */
	handle->internal.stockOk = 0;
	handle->internal.aprobado = 0;
	handle->internal.selected = 0;
}

/* Entry action for state 'encendido'. */
static void expendedora_enact_main_region_return_r1_encendido(Expendedora* handle)
{
	/* Entry action for state 'encendido'. */
	expendedora_setTimer(handle, (sc_eventid) &(handle->timeEvents.expendedora_main_region_return_r1_encendido_tev0_raised) , 500, bool_false);
	expendedoraIface_ledOn(handle, 0);
}

/* Entry action for state 'apagado'. */
static void expendedora_enact_main_region_return_r1_apagado(Expendedora* handle)
{
	/* Entry action for state 'apagado'. */
	expendedora_setTimer(handle, (sc_eventid) &(handle->timeEvents.expendedora_main_region_return_r1_apagado_tev0_raised) , 500, bool_false);
	expendedoraIface_ledOff(handle, 0);
	handle->internal.credito = handle->internal.credito - 2;
}

/* Exit action for state 'ledOn'. */
static void expendedora_exact_main_region_entregaGaseosa_r1_ledOn(Expendedora* handle)
{
	/* Exit action for state 'ledOn'. */
	expendedora_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.expendedora_main_region_entregaGaseosa_r1_ledOn_tev0_raised) );		
}

/* Exit action for state 'encendido'. */
static void expendedora_exact_main_region_return_r1_encendido(Expendedora* handle)
{
	/* Exit action for state 'encendido'. */
	expendedora_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.expendedora_main_region_return_r1_encendido_tev0_raised) );		
}

/* Exit action for state 'apagado'. */
static void expendedora_exact_main_region_return_r1_apagado(Expendedora* handle)
{
	/* Exit action for state 'apagado'. */
	expendedora_unsetTimer(handle, (sc_eventid) &(handle->timeEvents.expendedora_main_region_return_r1_apagado_tev0_raised) );		
}

/* 'default' enter sequence for state init */
static void expendedora_enseq_main_region_init_default(Expendedora* handle)
{
	/* 'default' enter sequence for state init */
	expendedora_enact_main_region_init(handle);
	handle->stateConfVector[0] = Expendedora_main_region_init;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state wait */
static void expendedora_enseq_main_region_wait_default(Expendedora* handle)
{
	/* 'default' enter sequence for state wait */
	expendedora_enact_main_region_wait(handle);
	handle->stateConfVector[0] = Expendedora_main_region_wait;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state ingresoMonedas */
static void expendedora_enseq_main_region_ingresoMonedas_default(Expendedora* handle)
{
	/* 'default' enter sequence for state ingresoMonedas */
	expendedora_enact_main_region_ingresoMonedas(handle);
	handle->stateConfVector[0] = Expendedora_main_region_ingresoMonedas;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state priceCheck */
static void expendedora_enseq_main_region_priceCheck_default(Expendedora* handle)
{
	/* 'default' enter sequence for state priceCheck */
	handle->stateConfVector[0] = Expendedora_main_region_priceCheck;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state stockCheck */
static void expendedora_enseq_main_region_stockCheck_default(Expendedora* handle)
{
	/* 'default' enter sequence for state stockCheck */
	expendedora_enact_main_region_stockCheck(handle);
	handle->stateConfVector[0] = Expendedora_main_region_stockCheck;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state entregaGaseosa */
static void expendedora_enseq_main_region_entregaGaseosa_default(Expendedora* handle)
{
	/* 'default' enter sequence for state entregaGaseosa */
	expendedora_enact_main_region_entregaGaseosa(handle);
	expendedora_enseq_main_region_entregaGaseosa_r1_default(handle);
}

/* 'default' enter sequence for state ledOn */
static void expendedora_enseq_main_region_entregaGaseosa_r1_ledOn_default(Expendedora* handle)
{
	/* 'default' enter sequence for state ledOn */
	expendedora_enact_main_region_entregaGaseosa_r1_ledOn(handle);
	handle->stateConfVector[0] = Expendedora_main_region_entregaGaseosa_r1_ledOn;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state ledOff */
static void expendedora_enseq_main_region_entregaGaseosa_r1_ledOff_default(Expendedora* handle)
{
	/* 'default' enter sequence for state ledOff */
	expendedora_enact_main_region_entregaGaseosa_r1_ledOff(handle);
	handle->stateConfVector[0] = Expendedora_main_region_entregaGaseosa_r1_ledOff;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state Decode */
static void expendedora_enseq_main_region_Decode_default(Expendedora* handle)
{
	/* 'default' enter sequence for state Decode */
	expendedora_enact_main_region_Decode(handle);
	handle->stateConfVector[0] = Expendedora_main_region_Decode;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state return */
static void expendedora_enseq_main_region_return_default(Expendedora* handle)
{
	/* 'default' enter sequence for state return */
	expendedora_enact_main_region_return(handle);
	expendedora_enseq_main_region_return_r1_default(handle);
}

/* 'default' enter sequence for state encendido */
static void expendedora_enseq_main_region_return_r1_encendido_default(Expendedora* handle)
{
	/* 'default' enter sequence for state encendido */
	expendedora_enact_main_region_return_r1_encendido(handle);
	handle->stateConfVector[0] = Expendedora_main_region_return_r1_encendido;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state apagado */
static void expendedora_enseq_main_region_return_r1_apagado_default(Expendedora* handle)
{
	/* 'default' enter sequence for state apagado */
	expendedora_enact_main_region_return_r1_apagado(handle);
	handle->stateConfVector[0] = Expendedora_main_region_return_r1_apagado;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void expendedora_enseq_main_region_default(Expendedora* handle)
{
	/* 'default' enter sequence for region main region */
	expendedora_react_main_region__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void expendedora_enseq_main_region_entregaGaseosa_r1_default(Expendedora* handle)
{
	/* 'default' enter sequence for region r1 */
	expendedora_react_main_region_entregaGaseosa_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void expendedora_enseq_main_region_return_r1_default(Expendedora* handle)
{
	/* 'default' enter sequence for region r1 */
	expendedora_react_main_region_return_r1__entry_Default(handle);
}

/* Default exit sequence for state init */
static void expendedora_exseq_main_region_init(Expendedora* handle)
{
	/* Default exit sequence for state init */
	handle->stateConfVector[0] = Expendedora_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state wait */
static void expendedora_exseq_main_region_wait(Expendedora* handle)
{
	/* Default exit sequence for state wait */
	handle->stateConfVector[0] = Expendedora_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state ingresoMonedas */
static void expendedora_exseq_main_region_ingresoMonedas(Expendedora* handle)
{
	/* Default exit sequence for state ingresoMonedas */
	handle->stateConfVector[0] = Expendedora_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state priceCheck */
static void expendedora_exseq_main_region_priceCheck(Expendedora* handle)
{
	/* Default exit sequence for state priceCheck */
	handle->stateConfVector[0] = Expendedora_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state stockCheck */
static void expendedora_exseq_main_region_stockCheck(Expendedora* handle)
{
	/* Default exit sequence for state stockCheck */
	handle->stateConfVector[0] = Expendedora_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state entregaGaseosa */
static void expendedora_exseq_main_region_entregaGaseosa(Expendedora* handle)
{
	/* Default exit sequence for state entregaGaseosa */
	expendedora_exseq_main_region_entregaGaseosa_r1(handle);
}

/* Default exit sequence for state ledOn */
static void expendedora_exseq_main_region_entregaGaseosa_r1_ledOn(Expendedora* handle)
{
	/* Default exit sequence for state ledOn */
	handle->stateConfVector[0] = Expendedora_last_state;
	handle->stateConfVectorPosition = 0;
	expendedora_exact_main_region_entregaGaseosa_r1_ledOn(handle);
}

/* Default exit sequence for state ledOff */
static void expendedora_exseq_main_region_entregaGaseosa_r1_ledOff(Expendedora* handle)
{
	/* Default exit sequence for state ledOff */
	handle->stateConfVector[0] = Expendedora_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state Decode */
static void expendedora_exseq_main_region_Decode(Expendedora* handle)
{
	/* Default exit sequence for state Decode */
	handle->stateConfVector[0] = Expendedora_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state return */
static void expendedora_exseq_main_region_return(Expendedora* handle)
{
	/* Default exit sequence for state return */
	expendedora_exseq_main_region_return_r1(handle);
}

/* Default exit sequence for state encendido */
static void expendedora_exseq_main_region_return_r1_encendido(Expendedora* handle)
{
	/* Default exit sequence for state encendido */
	handle->stateConfVector[0] = Expendedora_last_state;
	handle->stateConfVectorPosition = 0;
	expendedora_exact_main_region_return_r1_encendido(handle);
}

/* Default exit sequence for state apagado */
static void expendedora_exseq_main_region_return_r1_apagado(Expendedora* handle)
{
	/* Default exit sequence for state apagado */
	handle->stateConfVector[0] = Expendedora_last_state;
	handle->stateConfVectorPosition = 0;
	expendedora_exact_main_region_return_r1_apagado(handle);
}

/* Default exit sequence for region main region */
static void expendedora_exseq_main_region(Expendedora* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of expendedora.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Expendedora_main_region_init :
		{
			expendedora_exseq_main_region_init(handle);
			break;
		}
		case Expendedora_main_region_wait :
		{
			expendedora_exseq_main_region_wait(handle);
			break;
		}
		case Expendedora_main_region_ingresoMonedas :
		{
			expendedora_exseq_main_region_ingresoMonedas(handle);
			break;
		}
		case Expendedora_main_region_priceCheck :
		{
			expendedora_exseq_main_region_priceCheck(handle);
			break;
		}
		case Expendedora_main_region_stockCheck :
		{
			expendedora_exseq_main_region_stockCheck(handle);
			break;
		}
		case Expendedora_main_region_entregaGaseosa_r1_ledOn :
		{
			expendedora_exseq_main_region_entregaGaseosa_r1_ledOn(handle);
			break;
		}
		case Expendedora_main_region_entregaGaseosa_r1_ledOff :
		{
			expendedora_exseq_main_region_entregaGaseosa_r1_ledOff(handle);
			break;
		}
		case Expendedora_main_region_Decode :
		{
			expendedora_exseq_main_region_Decode(handle);
			break;
		}
		case Expendedora_main_region_return_r1_encendido :
		{
			expendedora_exseq_main_region_return_r1_encendido(handle);
			break;
		}
		case Expendedora_main_region_return_r1_apagado :
		{
			expendedora_exseq_main_region_return_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void expendedora_exseq_main_region_entregaGaseosa_r1(Expendedora* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of expendedora.main_region.entregaGaseosa.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Expendedora_main_region_entregaGaseosa_r1_ledOn :
		{
			expendedora_exseq_main_region_entregaGaseosa_r1_ledOn(handle);
			break;
		}
		case Expendedora_main_region_entregaGaseosa_r1_ledOff :
		{
			expendedora_exseq_main_region_entregaGaseosa_r1_ledOff(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void expendedora_exseq_main_region_return_r1(Expendedora* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of expendedora.main_region.return.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Expendedora_main_region_return_r1_encendido :
		{
			expendedora_exseq_main_region_return_r1_encendido(handle);
			break;
		}
		case Expendedora_main_region_return_r1_apagado :
		{
			expendedora_exseq_main_region_return_r1_apagado(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state init. */
static void expendedora_react_main_region_init(Expendedora* handle)
{
	/* The reactions of state init. */
	expendedora_effect_main_region_init_tr0(handle);
}

/* The reactions of state wait. */
static void expendedora_react_main_region_wait(Expendedora* handle)
{
	/* The reactions of state wait. */
	if (expendedora_check_main_region_wait_tr0_tr0(handle) == bool_true)
	{ 
		expendedora_effect_main_region_wait_tr0(handle);
	} 
}

/* The reactions of state ingresoMonedas. */
static void expendedora_react_main_region_ingresoMonedas(Expendedora* handle)
{
	/* The reactions of state ingresoMonedas. */
	if (expendedora_check_main_region_ingresoMonedas_tr0_tr0(handle) == bool_true)
	{ 
		expendedora_effect_main_region_ingresoMonedas_tr0(handle);
	} 
}

/* The reactions of state priceCheck. */
static void expendedora_react_main_region_priceCheck(Expendedora* handle)
{
	/* The reactions of state priceCheck. */
	if (expendedora_check_main_region_priceCheck_tr0_tr0(handle) == bool_true)
	{ 
		expendedora_effect_main_region_priceCheck_tr0(handle);
	}  else
	{
		if (expendedora_check_main_region_priceCheck_tr1_tr1(handle) == bool_true)
		{ 
			expendedora_effect_main_region_priceCheck_tr1(handle);
		} 
	}
}

/* The reactions of state stockCheck. */
static void expendedora_react_main_region_stockCheck(Expendedora* handle)
{
	/* The reactions of state stockCheck. */
	if (expendedora_check_main_region_stockCheck_tr0_tr0(handle) == bool_true)
	{ 
		expendedora_effect_main_region_stockCheck_tr0(handle);
	}  else
	{
		if (expendedora_check_main_region_stockCheck_tr1_tr1(handle) == bool_true)
		{ 
			expendedora_effect_main_region_stockCheck_tr1(handle);
		} 
	}
}

/* The reactions of state ledOn. */
static void expendedora_react_main_region_entregaGaseosa_r1_ledOn(Expendedora* handle)
{
	/* The reactions of state ledOn. */
	if (expendedora_check_main_region_entregaGaseosa_tr0_tr0(handle) == bool_true)
	{ 
		expendedora_effect_main_region_entregaGaseosa_tr0(handle);
	}  else
	{
		if (expendedora_check_main_region_entregaGaseosa_tr1_tr1(handle) == bool_true)
		{ 
			expendedora_effect_main_region_entregaGaseosa_tr1(handle);
		}  else
		{
			if (expendedora_check_main_region_entregaGaseosa_r1_ledOn_tr0_tr0(handle) == bool_true)
			{ 
				expendedora_effect_main_region_entregaGaseosa_r1_ledOn_tr0(handle);
			} 
		}
	}
}

/* The reactions of state ledOff. */
static void expendedora_react_main_region_entregaGaseosa_r1_ledOff(Expendedora* handle)
{
	/* The reactions of state ledOff. */
	if (expendedora_check_main_region_entregaGaseosa_tr0_tr0(handle) == bool_true)
	{ 
		expendedora_effect_main_region_entregaGaseosa_tr0(handle);
	}  else
	{
		if (expendedora_check_main_region_entregaGaseosa_tr1_tr1(handle) == bool_true)
		{ 
			expendedora_effect_main_region_entregaGaseosa_tr1(handle);
		}  else
		{
		}
	}
}

/* The reactions of state Decode. */
static void expendedora_react_main_region_Decode(Expendedora* handle)
{
	/* The reactions of state Decode. */
	if (expendedora_check_main_region_Decode_tr0_tr0(handle) == bool_true)
	{ 
		expendedora_effect_main_region_Decode_tr0(handle);
	}  else
	{
		if (expendedora_check_main_region_Decode_tr1_tr1(handle) == bool_true)
		{ 
			expendedora_effect_main_region_Decode_tr1(handle);
		}  else
		{
			if (expendedora_check_main_region_Decode_tr2_tr2(handle) == bool_true)
			{ 
				expendedora_effect_main_region_Decode_tr2(handle);
			} 
		}
	}
}

/* The reactions of state encendido. */
static void expendedora_react_main_region_return_r1_encendido(Expendedora* handle)
{
	/* The reactions of state encendido. */
	if (expendedora_check_main_region_return_tr0_tr0(handle) == bool_true)
	{ 
		expendedora_effect_main_region_return_tr0(handle);
	}  else
	{
		if (expendedora_check_main_region_return_r1_encendido_tr0_tr0(handle) == bool_true)
		{ 
			expendedora_effect_main_region_return_r1_encendido_tr0(handle);
		} 
	}
}

/* The reactions of state apagado. */
static void expendedora_react_main_region_return_r1_apagado(Expendedora* handle)
{
	/* The reactions of state apagado. */
	if (expendedora_check_main_region_return_tr0_tr0(handle) == bool_true)
	{ 
		expendedora_effect_main_region_return_tr0(handle);
	}  else
	{
		if (expendedora_check_main_region_return_r1_apagado_tr0_tr0(handle) == bool_true)
		{ 
			expendedora_effect_main_region_return_r1_apagado_tr0(handle);
		} 
	}
}

/* Default react sequence for initial entry  */
static void expendedora_react_main_region__entry_Default(Expendedora* handle)
{
	/* Default react sequence for initial entry  */
	expendedora_enseq_main_region_init_default(handle);
}

/* Default react sequence for initial entry  */
static void expendedora_react_main_region_entregaGaseosa_r1__entry_Default(Expendedora* handle)
{
	/* Default react sequence for initial entry  */
	expendedora_enseq_main_region_entregaGaseosa_r1_ledOn_default(handle);
}

/* Default react sequence for initial entry  */
static void expendedora_react_main_region_return_r1__entry_Default(Expendedora* handle)
{
	/* Default react sequence for initial entry  */
	expendedora_enseq_main_region_return_r1_encendido_default(handle);
}


