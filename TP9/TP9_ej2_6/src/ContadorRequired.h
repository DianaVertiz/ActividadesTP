
#ifndef CONTADORREQUIRED_H_
#define CONTADORREQUIRED_H_

#include "sc_types.h"
#include "Contador.h"

#ifdef __cplusplus
extern "C"
{
#endif 

/*! \file This header defines prototypes for all functions that are required by the state machine implementation.

This state machine makes use of operations declared in the state machines interface or internal scopes. Thus the function prototypes:
	- contadorIface_updateOutput
are defined.

These functions will be called during a 'run to completion step' (runCycle) of the statechart. 
There are some constraints that have to be considered for the implementation of these functions:
	- never call the statechart API functions from within these functions.
	- make sure that the execution time is as short as possible.
 
*/
extern void contadorIface_updateOutput(const Contador* handle, const sc_integer cuenta);





#ifdef __cplusplus
}
#endif 

#endif /* CONTADORREQUIRED_H_ */
