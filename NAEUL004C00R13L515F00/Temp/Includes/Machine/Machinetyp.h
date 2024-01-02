/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704158824_7_
#define _BUR_1704158824_7_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct tyMachineIn1
{	unsigned long udiRstErr;
	plcstring sProgNm[16];
	signed long* diProdRcpCurrRcpWidth;
	signed long* diMagRcpCurrRcpMaxWidth;
} tyMachineIn1;

typedef struct tyMachineOut1
{	struct tyAlmDat tyAlmData;
	struct tyAlmDat tyAlmData1;
} tyMachineOut1;

typedef struct tyMachine
{	struct tyMachineIn1 In;
	struct tyMachineOut1 Out;
} tyMachine;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Machine/Machine.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704158824_7_ */

