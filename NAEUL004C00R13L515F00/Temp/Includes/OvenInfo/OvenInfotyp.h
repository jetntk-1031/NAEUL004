/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_35_
#define _BUR_1703817512_35_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eOvenInfoAction
{	OvenInfoActIdle,
	OvenInfoActSetBrdInOven,
	OvenInfoActSetOvenAllow,
	OvenInfoActRstOvenAllow
} eOvenInfoAction;

typedef struct tyOvenInfoIn1
{	enum eOvenInfoAction eAct;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcbit bPrepExtdd;
	plcbit bEnExtdd;
	plcbit bDisExtdd;
	plcbit bManual;
	signed long diBffrMtySlt;
	signed long diAddBffr;
	signed long diSetBrdInOven;
	plcbit bCntUp;
	plcbit bCntDown;
	plcbit bLinkOpsStatusRun;
	eTravLifULPos* eLinkOpsTravLifPosGo;
	unsigned char* usiLinkProdRcpCurrRcpMcMod;
	signed long* diMinBffr;
	plcbit bBGRun;
	signed long BrdPerSlt;
} tyOvenInfoIn1;

typedef struct tyOvenInfoOut1
{	enum eOvenInfoAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcbit bOvenAllow;
	signed long diBrdInOven;
} tyOvenInfoOut1;

typedef struct tyOvenInfo
{	struct tyOvenInfoIn1 In;
	struct tyOvenInfoOut1 Out;
} tyOvenInfo;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/OvenInfo/OvenInfo.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817512_35_ */

