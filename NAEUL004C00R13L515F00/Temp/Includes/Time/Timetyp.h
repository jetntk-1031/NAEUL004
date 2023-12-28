/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_13_
#define _BUR_1703660020_13_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eTimeAction
{	TimeActIdle,
	TimeActGetTime,
	TimeActGetTimeZone,
	TimeActSetTime,
	TimeActSetTimeZone
} eTimeAction;

typedef struct tyTimeIn1
{	enum eTimeAction eAct;
	unsigned long udiRstErr;
	plcdt dtSetDT;
	unsigned short uiSetTimeZone;
	plcstring sProgNm[16];
	plcbit bNtSettingsLoadDone;
} tyTimeIn1;

typedef struct tyTimeOut1
{	enum eTimeAction eStat;
	eFBStatus eMainStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	struct tyAlmDat tyAlmData1;
	plcdt dtCurrDT;
	unsigned short uiCurrTimeZone;
	struct DTStructure tyCurrDTStruct;
} tyTimeOut1;

typedef struct tyTime
{	struct tyTimeIn1 In;
	struct tyTimeOut1 Out;
} tyTime;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Time/Time.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_13_ */

