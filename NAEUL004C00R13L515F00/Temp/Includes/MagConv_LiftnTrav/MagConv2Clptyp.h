/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704160893_1_
#define _BUR_1704160893_1_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMagConv2ClpAction
{	MagConv2ClpActIdle,
	MagConv2ClpActInit,
	MagConv2ClpActInitStopClp,
	MagConv2ClpActInitClpStop,
	MagConv2ClpActEnt,
	MagConv2ClpActEntStopClp,
	MagConv2ClpActEntClpStop,
	MagConv2ClpActPreExit,
	MagConv2ClpActPreExitClpr,
	MagConv2ClpActPreExitClpr1,
	MagConv2ClpActExit,
	MagConv2ClpActExit1,
	MagConv2ClpActExitClpr,
	MagConv2ClpActExit1Clpr,
	MagConv2ClpActFixClprSetAll,
	MagConv2ClpActFixClprRstAll,
	MagConv2ClpActFixClprSetClamp,
	MagConv2ClpActFixClprSetUnclamp,
	MagConv2ClpActFixClprClamp,
	MagConv2ClpActFixClprUnclamp,
	MagConv2ClpActRmtClprSetAll,
	MagConv2ClpActRmtClprRstAll,
	MagConv2ClpActRmtClprSetClamp,
	MagConv2ClpActRmtClprSetUnclamp,
	MagConv2ClpActRmtClprClamp,
	MagConv2ClpActRmtClprUnclamp,
	MagConv2ClpActStop,
	MagConv2ClpActStopClpr,
	MagConv2ClpActSetMtrSigOnOrLToR,
	MagConv2ClpActSetMtrDirOrRToL,
	MagConv2ClpActRstMtrSigOnOrLToR,
	MagConv2ClpActRstMtrDirOrRToL,
	MagConv2ClpActSetMtrAll,
	MagConv2ClpActRstMtrAll
} eMagConv2ClpAction;

typedef struct tyMagConv2ClpIn1
{	plcbit bLinkDISafetyRlySig;
	plcbit bLinkMagSmallSen;
	plcbit bLinkMagLargeSen;
	plcbit bLinkFixClprUnClampSen;
	plcbit bLinkFixClprClampSen;
	plcbit bLinkRmtClprUnclampSen;
	plcbit bLinkFixClprMagDetectSen;
	plcbit bLinkFixClprMagDetectSenPrep;
	plcbit bLinkMagOpsStepMagFullExit;
	plcbit bLinkDIMagEntSen;
	plcbit bWidthChkSen;
	plcbit bWidthChkInterrupt;
	plcbit bLinkNtParamMagModelAutoVerify;
	unsigned long udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcbit bManual;
	plcbit bOnDirMod;
	signed long diInitTm;
	plctime tMtrOffDlyTm;
	signed long diTxInTimeOut;
	signed long diTxOutTimeOut;
	eConvDir eDirection;
	plcstring sProgNm[16];
	plctime tClprClampTO;
	plctime tClprUnclampTO;
	plcbit bLeftSen;
	plcbit bRightSen;
	plcbit bFixClprUnclampSen;
	plcbit bRmtClprUnclampSen;
	plcbit bFixClprClampSen;
	plcbit bRmtClprClampSen;
	plcbit bFixClprClampSafetySen;
	plcbit bFixClprUnclampSafetySen;
	plcbit bRmtClprClampSafetySen;
	plcbit bRmtClprUnclampSafetySen;
	plcbit bWidthChkPrep;
} tyMagConv2ClpIn1;

typedef struct tyMagConv2ClpOut1
{	enum eMagConv2ClpAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcbit bHvMag;
	plcbit bMtrSigOnOrLToR;
	plcbit bMtrDirOrRToL;
	plcbit bFixClprClampCtrl;
	plcbit bRmtClprClampCtrl;
	plcbit bClprTwoOutputControl;
	plcbit bRmtClprUnClampCtrl;
	plcbit bFixClprUnClampCtrl;
} tyMagConv2ClpOut1;

typedef struct tyMagConv2Clp
{	struct tyMagConv2ClpIn1 In;
	struct tyMagConv2ClpOut1 Out;
} tyMagConv2Clp;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704160893_1_ */

