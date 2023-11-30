/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225409_53_
#define _BUR_1701225409_53_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum ePneuAction
{	PneuActIdle,
	PneuActSetAll,
	PneuActRstAll,
	PneuActSetExt,
	PneuActSetRet,
	PneuActExt,
	PneuActRet,
	PneuActExtSenToMidSen,
	PneuActMidSenToRetSen,
	PneuActRetSenToMidSen,
	PneuActMidSenToExtSen
} ePneuAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225409_53_ */

