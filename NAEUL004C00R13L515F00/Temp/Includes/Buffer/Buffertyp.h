/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704163086_1_
#define _BUR_1704163086_1_

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

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct tyBufferIn1
{	enum eBufferAction eAct;
	unsigned long udiRstErr;
	plcstring sFileName[81];
	plcbit bManual;
	plcdt dtCurrDT;
	signed long diMinSlt;
	signed long diMaxSlt;
	signed long diPitch;
	signed long diSltCap;
	signed long diBffrTtlSlt;
	signed long diCoolTm;
	signed long diSltToSltInUM;
	signed long diLifterBtmPosInUM;
	signed long diLifterCurrPosInUM;
	plcbit bAscending;
	plcbit bFIFO;
	plcbit bGdBrdIn;
	plcbit bGdBrdReq;
	plcbit bNxtLoadSeq;
	plcbit a_bSkip[60];
	signed long diCoolFanOffDlyTm;
	plcbit bMagPresentSensor;
	plcbit bPrepCoolFan;
	plcbit bCoolFanTm;
	struct tyBffrStat tyBufferStat;
	plcstring sBffrNm[16];
	plcstring sProdNm[16];
	plcstring sBarcode1[81];
	plcstring sBarcode2[81];
	plcstring sCurrRcpNm[16];
	plcstring sProgNm[16];
	plcbit bNtSettingsLoadDone;
	plcbit bNtParamAutoRcpPrep;
	plcbit bMcParamAutoRcpDis;
	plcbit bOpsMagConvULRlsMagAllw;
	eCustomer eNtParamCustomerReq;
	struct tyStatPlatformFromMES tyResponseFromMES;
	signed long* diLinkSltToSltDist;
	plcbit* bLinkMcParamProdSelTopToBtm;
	plcbit bLinkPresentSen1;
	plcbit bLinkPresentSen2;
	plcbit* bLinkOpsTravLifULExitBrd;
} tyBufferIn1;
#else
/* Data type tyBufferIn1 not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct tyBufferOut1
{	enum eBufferAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	signed long diNxtLoadSlt;
	signed long diNxtUnloadSlt;
	signed long diCoolBrdAny;
	signed long diCoolBrdGd;
	signed long diCoolBrdBad;
	plcbit bCoolNotRdy;
	struct tyBffr tyBuffer;
	struct tyDispBffr tyDispBuffer;
	struct tyBffrStat tyBufferStat;
	struct tyBrdUnloadStat tyBoardUnloadStat;
	plcbit bCoolFanCtrl;
	plcbit bParamDiff;
	plcbit bMagRemoved;
	plcbit bFIFOOld;
	plcbit bMagPresent;
	plcdt dtMagPresentTm;
	signed long diCurrSlt;
} tyBufferOut1;

typedef struct tyBuffer1
{	struct tyBufferIn1 In;
	struct tyBufferOut1 Out;
} tyBuffer1;

typedef struct tyBufferMagIn1
{	enum eBufferAction eAct;
	unsigned long udiRstErr;
	plcbit bOpsStatusRun;
	plcbit bBufferMagPresent1;
	plcbit bBufferMagPresent2;
	plcbit bBufferMagPresent3;
	plcbit bDIMagPresentSen1;
	plcbit bDIMagPresentSen2;
	plcbit bDIMagPresentSen3;
	struct tyBffrStat tyBufferStat1;
	struct tyBffrStat tyBufferStat2;
	struct tyBffrStat tyBufferStat3;
	plcbit bNtParamAutoRcpPrep;
	plcbit bMcParamAutoRcpDis;
	eULMag eNtParamMag;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	unsigned char* usiProRcpProdSelMcMod;
} tyBufferMagIn1;

typedef struct tyBufferMagOut1
{	enum eBufferAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	signed long diBffrMtySlt;
} tyBufferMagOut1;

typedef struct tyBufferMag
{	struct tyBufferMagIn1 In;
	struct tyBufferMagOut1 Out;
} tyBufferMag;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer.typ\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/NtLibraries/NtBuffer/Constants.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704163086_1_ */

