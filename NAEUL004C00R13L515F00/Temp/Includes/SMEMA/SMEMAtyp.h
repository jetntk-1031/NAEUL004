/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_39_
#define _BUR_1703660020_39_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eSMEMAAction
{	SMEMAActIdle,
	SMEMAActRun,
	SMEMAActSetSig,
	SMEMAActSetStatSig,
	SMEMAActRstSig,
	SMEMAActRstStatSig,
	SMEMAActSetAllSig,
	SMEMAActRstAllSig
} eSMEMAAction;

typedef enum eSMEMASelection
{	SMEMASelStandard,
	SMEMASelIPC9851,
	SMEMASelIPC9851Ext
} eSMEMASelection;

typedef struct tySMEMAParam
{	enum eSMEMASelection eSelection;
	plcbit bStatSigSetGd;
} tySMEMAParam;

typedef struct tyUSSMEMAIn1
{	enum eSMEMAAction eAct;
	unsigned long udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcbit bRdyRcv;
	plcbit bLeftSen;
	plcbit bRightSen;
	plcbit bComplSigOn;
	plcbit bUBA;
	plcbit bUBAStat;
	plcbit bTimerEnSen;
	plcbit bTimerEnSenEdge;
	plcbit bVirtualEn;
	plcbit bUBAVirtual;
	plcbit bUBAStatVirtual;
	struct tySMEMAParam tyParam;
	signed long diTransferInTO;
	plcbit bDirLToR;
	plctime tRstDlyTm;
	plctime tSigInChkTm;
	plcstring sProgNm[16];
	plcbit bNtSettingsLoadDone;
} tyUSSMEMAIn1;

typedef struct tyUSSMEMAAOut1
{	eBufferAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcbit bUSRdy;
	plcbit bUSGdBrdRdy;
	plcbit bDSRdy;
	plcbit bTransporting;
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bUSB;
	plcbit bTimer;
	plcbit bVirtual;
} tyUSSMEMAAOut1;

typedef struct tyUSSMEMA
{	struct tyUSSMEMAIn1 In;
	struct tyUSSMEMAAOut1 Out;
} tyUSSMEMA;

typedef struct tyDSSMEMAIn1
{	enum eSMEMAAction eAct;
	unsigned long udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcbit bGdBrd;
	plcbit bRdySend;
	plcbit bLeftSen;
	plcbit bRightSen;
	plcbit bComplSigOn;
	plcbit bDSB;
	plcbit bTimerEnSen;
	plcbit bTimerEnSenEdge;
	plcbit bVirtualEn;
	plcbit bDSBVirtual;
	struct tySMEMAParam tyParam;
	signed long diTransferOutTO;
	plcbit bDirLToR;
	plctime tRstDlyTm;
	plctime tSigInChkTm;
	plcstring sProgNm[16];
	plcbit bNtSettingsLoadDone;
} tyDSSMEMAIn1;

typedef struct tyDSSMEMAOut1
{	enum eSMEMAAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcbit bUSRdy;
	plcbit bUSGdBrdRdy;
	plcbit bDSRdy;
	plcbit bTransporting;
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bDBA;
	plcbit bDBAStat;
	plcbit bTimer;
	plcbit bVirtual;
} tyDSSMEMAOut1;

typedef struct tyDSSMEMA
{	struct tyDSSMEMAIn1 In;
	struct tyDSSMEMAOut1 Out;
} tyDSSMEMA;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/SMEMA.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_39_ */

