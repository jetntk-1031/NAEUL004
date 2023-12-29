/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817866_1_
#define _BUR_1703817866_1_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eSOTAction
{	SOTActIdle,
	SOTActRun,
	SOTActSetSig,
	SOTActRstSig
} eSOTAction;

typedef struct tySOTstatus
{	plcbit tyBtnInPos;
	plcbit tyBtnError;
	plcbit tyBtnRdy;
	plcbit tyBtnAvail;
} tySOTstatus;

typedef struct tyUSSOTIn1
{	eConvAction eAct;
	unsigned long udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcbit bManual;
	signed long diTransferInTO;
	plcbit bDirLToR;
	plcbit bRdyRcv;
	plcbit bLeftSen;
	plcbit bRightSen;
	plcbit bComplSigOn;
	plcbit bUMA;
	plcbit bUMASize;
	plcbit bVirtualEn;
	plcbit bUBAVirtual;
	plctime tRstDlyTm;
	plctime tSigInChkTm;
	plcstring sProgNm[16];
	plcbit bLinkSOTReadyOnFirst;
	plcbit bLinkProjMag1ConvPrep;
	plcbit bLinkProjMagConvLane1Prep;
	plcbit bLinkProjTCPAGVSigPrep;
} tyUSSOTIn1;

typedef struct tyUSSOTOut1
{	eConvAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcbit bUSRdy;
	plcbit bUSLargeMagRdy;
	plcbit bDSRdy;
	plcbit bTransporting;
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bUSB;
	plcbit bVirtual;
} tyUSSOTOut1;

typedef struct tyUSSOT
{	struct tyUSSOTIn1 In;
	struct tyUSSOTOut1 Out;
} tyUSSOT;

typedef struct tyDSSOT
{	struct tyUSSOTIn1 In;
	struct tyUSSOTOut1 Out;
} tyDSSOT;

typedef struct tyDSSOTIn1
{	eConvAction eAct;
	unsigned long udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcbit bManual;
	signed long diTransferOutTO;
	plcbit bDirLToR;
	plcbit bRdySend;
	plcbit bLeftSen;
	plcbit bRightSen;
	plcbit bComplSigOn;
	plcbit bMagSizeLarge;
	plcbit bDSB;
	plcbit bVirtualEn;
	plcbit bDSBVirtual;
	plctime tRstDlyTm;
	plctime tSigInChkTm;
	plcstring sProgNm[16];
	plcbit bLinkProjMag2ConvPrep;
	plcbit bLinkProjMagConvLane2Prep;
	plcbit bLinkProjTCPAGVSigPrep;
} tyDSSOTIn1;

typedef struct tyDSSOTOut1
{	eConvAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcbit bUSRdy;
	plcbit bDSMagSizeLarge;
	plcbit bDSRdy;
	plcbit bTransporting;
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bDBA;
	plcbit bVirtual;
} tyDSSOTOut1;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/SOT/SOT.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817866_1_ */

