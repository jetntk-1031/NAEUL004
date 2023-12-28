/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_52_
#define _BUR_1703660020_52_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eConvAction
{	ConvActIdle,
	ConvActInit,
	ConvActInitRev,
	ConvActInitPshr,
	ConvActInitPuller,
	ConvActInitRej,
	ConvActInitInsp,
	ConvActEnt,
	ConvActEntToInOff,
	ConvActEntRev,
	ConvActRev,
	ConvActRevImmedStart,
	ConvActEntPuller,
	ConvActEntRej,
	ConvActEntInsp,
	ConvActPreExit,
	ConvActRejResume,
	ConvActExit,
	ConvActExit1,
	ConvActExitPshr,
	ConvActExit1Pshr,
	ConvActPshrSetAll,
	ConvActPshrRstAll,
	ConvActPshrSetExt,
	ConvActPshrSetRet,
	ConvActPshrExt,
	ConvActPshrRet,
	ConvActPullerSetAll,
	ConvActPullerRstAll,
	ConvActPullerSetExt,
	ConvActPullerSetRet,
	ConvActPullerExt,
	ConvActPullerRet,
	ConvActRotSetAll,
	ConvActRotRstAll,
	ConvActRotSetHome,
	ConvActRotSetRmt,
	ConvActRotHome,
	ConvActRotRemote,
	ConvActRejSetAll,
	ConvActRejRstAll,
	ConvActRejSetUp,
	ConvActRejSetDown,
	ConvActRejUp,
	ConvActRejDown,
	ConvActStop,
	ConvActStopPshr,
	ConvActStopPuller,
	ConvActStopRej,
	ConvActSetMtrSigOnOrLToR,
	ConvActSetMtrDirOrRToL,
	ConvActRstMtrSigOnOrLToR,
	ConvActRstMtrDirOrRToL,
	ConvActSetMtrAll,
	ConvActRstMtrAll
} eConvAction;

typedef enum eConvDir
{	ConvDirLToR,
	ConvDirRToL,
	ConvDirLToL,
	ConvDirRToR
} eConvDir;

typedef struct tyPshrConvIn1
{	plcbit bLinkDISafetyRlySig;
	plcbit bLinkMagSmallSen;
	plcbit bLinkMagLargeSen;
	plcbit bLinkFixClprUnClampSen;
	plcbit bLinkFixClprClampSen;
	plcbit bLinkFixClprMagDetectSen;
	plcbit bLinkFixClprMagDetectSenPrep;
	plcbit bLinkMagOpsStepMagFullExit;
	plcbit bLinkDIMagEntSen;
	plcbit bWidthChkSen;
	plcbit bWidthChkInterrupt;
	plcbit bLinkNtParamMagModelAutoVerify;
	plcbit udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcbit bManual;
	plcbit bOnDirMod;
	plcbit diInitTm;
	plcbit tMtrOffDlyTm;
	plcbit diTxInTimeOut;
	plcbit diTxOutTimeOut;
	plcbit eDirection;
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
} tyPshrConvIn1;

typedef struct tyPshrConvOut1
{	eMagConv2ClpAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
} tyPshrConvOut1;

typedef struct tyPshrConv
{	struct tyPshrConvIn1 In;
	struct tyPshrConvOut1 Out;
} tyPshrConv;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Conv/Conv.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_52_ */

