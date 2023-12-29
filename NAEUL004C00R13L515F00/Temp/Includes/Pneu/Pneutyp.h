/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_48_
#define _BUR_1703817512_48_

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

typedef enum ePneuSel1
{	PneuNoSen = 0,
	PneuExtSen = 1,
	PneuRetSen = 2,
	Pneu2Sen = 3,
	Pneu3Sen = 4
} ePneuSel1;

typedef struct tyPneuIn1
{	enum ePneuAction eAct;
	unsigned long udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcbit bExtSen;
	plcbit bRetSen;
	plcbit bMidSen;
	plcbit bSafetyRelaySig;
	plcbit bExtSafetySen;
	plcbit bRetSafetySen;
	plcbit bOps;
	plcbit bUISimu;
	plcbit bSimu;
	plcbit bManual;
	plcbit bTwoCtrlIn;
	plcstring sProgNm[16];
	plctime tExtTO;
	plctime tRetTO;
	plcbit bNtSettingsLoadDone;
	plctime tExtDlyTm;
	plctime tRetDlyTm;
	enum ePneuSel1 ePneuSel;
	plcbit bLinkDIConvClrSen;
	plcbit bConvPusherReachedRetSlw;
	plcbit bLinkDIPusherRetRS;
	eLifterAction eLinkLifterBtmStat;
	eFBStatus eLinkLifterBtmStatus;
	eLifterAction eLinkLifter2Stat;
	eFBStatus eLinkLifter2Status;
	plcbit bNtParamProjLifter2Prep;
	plcbit* bMagRcpCurrRcpSBarDisabled;
} tyPneuIn1;

typedef struct tyPneuOut1
{	plcbit bExtCtrl;
	plcbit bRetCtrl;
	plcbit bExtended;
	plcbit bRetracted;
	plcbit bTwoCtrlOut;
	enum ePneuAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
} tyPneuOut1;

typedef struct tyPneu
{	struct tyPneuIn1 In;
	struct tyPneuOut1 Out;
} tyPneu;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817512_48_ */

