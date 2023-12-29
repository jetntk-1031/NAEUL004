/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703837632_38_
#define _BUR_1703837632_38_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eBufferAction
{	BufferActIdle,
	BufferActCreateDir,
	BufferActGetRetainBffr,
	BufferActSetFull,
	BufferActSetMty,
	BufferActLoad,
	BufferActLoadSltChk,
	BufferActUnload,
	BufferActUnloadSltChk,
	BufferActUnloadCoolChk,
	BufferActUnloadSltChkCoolChk,
	BufferActNxtLoad,
	BufferActNxtLoadGd,
	BufferActNxtLoadBad,
	BufferActNxtUnload,
	BufferActNxtUnloadGd,
	BufferActNxtUnloadBad,
	BufferActChkCoolTm,
	BufferActChkCoolBrdAny,
	BufferActChkCoolBrdGd,
	BufferActChkCoolBrdBad,
	BufferActRstBffr,
	BufferActSetCoolFan,
	BufferActRstCoolFan,
	BufferActBGStartBffrSetFull,
	BufferActBGStartBffrSetMty,
	BufferActBGStopBffrSet,
	BufferActBGStartUpdtSen,
	BufferActBGStopUpdtSen,
	BufferActBGStartUpdtDisplay,
	BufferActBGStopUpdtDisplay,
	BufferActBGStartCoolFan,
	BufferActBGStopCoolFan
} eBufferAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703837632_38_ */

