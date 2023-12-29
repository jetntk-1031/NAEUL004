/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_52_
#define _BUR_1703817512_52_

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
{	enum eConvAction eAct;
	unsigned long udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcbit bManual;
	plcbit bLongBrdPrep;
	plcbit bLongBrdEn;
	plcbit bOnDirMod;
	signed long diInitTm;
	signed long diRevDlyTm;
	plctime tMtrOffDlyTm;
	signed long diTxInTimeOut;
	signed long diTxOutTimeOut;
	enum eConvDir eDirection;
	plcbit bGdBrdInit;
	plcbit bGdBrdEnt;
	plcstring sProgNm[16];
	plctime tPshrExtTO;
	plctime tPshrRetTO;
	plctime tPullerExtTO;
	plctime tPullerRetTO;
	plctime tRotHomeTO;
	plctime tRotRemoteTO;
	plctime tRejectUpTO;
	plctime tRejectDownTO;
	plcbit bNtSettingsLoadDone;
	plcbit bLeftSen;
	plcbit bRightSen;
	plcbit bMiddleSen;
	plcbit bPullerChkSen;
	plcbit bPshrExtSen;
	plcbit bPshrRetSen;
	plcbit bPshrExtSafetySen;
	plcbit bPshrRetSafetySen;
	plcbit bPullerExtSen;
	plcbit bPullerRetSen;
	plcbit bPullerExtSafetySen;
	plcbit bPullerRetSafetySen;
	plcbit bRotHomeSen;
	plcbit bRotRemoteSen;
	plcbit bRotHomeSafetySen;
	plcbit bRotRemoteSafetySen;
	plcbit bRejectUpSen;
	plcbit bRejectDownSen;
	plcbit bRejectUpSafetySen;
	plcbit bRejectDownSafetySen;
	plcbit bSelfTest;
	plcbit bNtParamAutoRcpPrep;
	plcbit bMcParamAutoRcpDis;
	plcbit bLinkUIBypsInitConv;
	plcbit bLinkDISafetyRlySig;
	plcbit bLinkDIRgtSen;
	plcbit bLinkDIClrSen;
	unsigned char usiLinkMcParamProdSelMcMod;
	eTravLifULPos eLinkOpsTravLifPosGo;
	eMcSetCommMod eLinkMcParamUSCommAMod;
	eMcSetCommMod eLinkMcParamUSCommBMod;
	plcbit bLinkPshrRetSen;
	plcbit bLinkPshrRetSlwSen;
} tyPshrConvIn1;

typedef struct tyPshrConvOut1
{	enum eConvAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcbit bHvBrd;
	plcbit bRejHvBrd;
	plcbit bInspHvBrd;
	plcbit bGdBrd;
	plcbit bLmtSenActivated;
	plcbit bMtrSigOnOrLToR;
	plcbit bMtrDirOrRToL;
	plcbit bPshrExtCtrl;
	plcbit bPshrRetCtrl;
	plcbit bPshrTwoOutputControl;
	plcbit bPshrExtended;
	plcbit bPshrRetracted;
	plcbit bPullerExtCtrl;
	plcbit bPullerRetCtrl;
	plcbit bPullerTwoOutputControl;
	plcbit bPullerExtended;
	plcbit bPullerRetracted;
	plcbit bRotRemoteCtrl;
	plcbit bRotTwoOutputControl;
	plcbit bRotAtRemote;
	plcbit bRotAtHome;
	plcbit bRejectUpCtrl;
	plcbit bRejectDownCtrl;
	plcbit bRejectTwoOutputControl;
	plcbit bRejectAtUp;
	plcbit bRejectAtDown;
	plcbit bPshrRetAllwTraverse;
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


#endif /* _BUR_1703817512_52_ */

