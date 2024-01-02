/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704158824_4_
#define _BUR_1704158824_4_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMtrPshrAction
{	MtrPshrActIdle,
	MtrPshrActExt,
	MtrPshrActRet,
	MtrPshrActStop,
	MtrPshrActSetExt,
	MtrPshrActRstExt,
	MtrPshrActSetRet,
	MtrPshrActRstRet,
	MtrPshrActSetSpdBit0,
	MtrPshrActRstSpdBit0,
	MtrPshrActSetSpdBit1,
	MtrPshrActRstSpdBit1,
	MtrPshrActSetSpdBit2,
	MtrPshrActRstSpdBit2,
	MtrPshrActSetSigOn,
	MtrPshrActRstSigOn,
	MtrPshrActSetBrake,
	MtrPshrActRstBrake,
	MtrPshrActSetAlmRst,
	MtrPshrActRstAlmRst,
	MtrPshrActSetAll,
	MtrPshrActRstAll
} eMtrPshrAction;

typedef struct tyMtrPshrIn1
{	eConvAction eAct;
	unsigned long udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcbit bManual;
	plcbit bDir;
	plctime tAlmRstTm;
	plctime tAlmTrigTm;
	plctime tMtrBrkOffDlyTm;
	plctime tExtTO;
	plctime tRetTO;
	signed long diExtSlowSpd;
	signed long diRetSlowSpd;
	signed long diExtNomSpd;
	signed long diRetNomSpd;
	signed long diExtTorque;
	signed long diRetTorque;
	signed long diStartTorque;
	plcbit bExtSen;
	plcbit bRetSen;
	plcbit bExtSlowSen;
	plcbit bRetSlowSen;
	plcbit bExtSafetySen;
	plcbit bRetSafetySen;
	plcbit bAlarmSig;
	plcbit bTorqueSig;
	plcbit bNtParamAutoRcpPrep;
	plcbit bMcParamAutoRcpDis;
	plcbit bLinkDISafetyRlySig;
	plcbit bLinkPshrExtCtrl;
	plcbit bLinkPshrRetCtrl;
	plcbit bLinkAlarmSig;
	plcstring sProgNm[16];
} tyMtrPshrIn1;

typedef struct tyMtrPshrOut1
{	eMagConv2ClpAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcbit bExtended;
	plcbit bRetracted;
	plcbit bCW;
	plcbit bCCW;
	plcbit bSpdBinBit0;
	plcbit bSpdBinBit1;
	plcbit bSpdBinBit2;
	plcbit bSigOn;
	plcbit bBrake;
	plcbit bAlmRst;
} tyMtrPshrOut1;

typedef struct tyMtrPshr
{	struct tyMtrPshrIn1 In;
	struct tyMtrPshrOut1 Out;
} tyMtrPshr;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MtrPshr/MtrPshr.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704158824_4_ */

