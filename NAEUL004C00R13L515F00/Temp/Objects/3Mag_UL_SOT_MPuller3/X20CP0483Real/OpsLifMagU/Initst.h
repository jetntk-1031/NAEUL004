#ifndef __AS__TYPE_
#define __AS__TYPE_
typedef struct {
	unsigned char bit0  : 1;
	unsigned char bit1  : 1;
	unsigned char bit2  : 1;
	unsigned char bit3  : 1;
	unsigned char bit4  : 1;
	unsigned char bit5  : 1;
	unsigned char bit6  : 1;
	unsigned char bit7  : 1;
} _1byte_bit_field_;

typedef struct {
	unsigned short bit0  : 1;
	unsigned short bit1  : 1;
	unsigned short bit2  : 1;
	unsigned short bit3  : 1;
	unsigned short bit4  : 1;
	unsigned short bit5  : 1;
	unsigned short bit6  : 1;
	unsigned short bit7  : 1;
	unsigned short bit8  : 1;
	unsigned short bit9  : 1;
	unsigned short bit10 : 1;
	unsigned short bit11 : 1;
	unsigned short bit12 : 1;
	unsigned short bit13 : 1;
	unsigned short bit14 : 1;
	unsigned short bit15 : 1;
} _2byte_bit_field_;

typedef struct {
	unsigned long bit0  : 1;
	unsigned long bit1  : 1;
	unsigned long bit2  : 1;
	unsigned long bit3  : 1;
	unsigned long bit4  : 1;
	unsigned long bit5  : 1;
	unsigned long bit6  : 1;
	unsigned long bit7  : 1;
	unsigned long bit8  : 1;
	unsigned long bit9  : 1;
	unsigned long bit10 : 1;
	unsigned long bit11 : 1;
	unsigned long bit12 : 1;
	unsigned long bit13 : 1;
	unsigned long bit14 : 1;
	unsigned long bit15 : 1;
	unsigned long bit16 : 1;
	unsigned long bit17 : 1;
	unsigned long bit18 : 1;
	unsigned long bit19 : 1;
	unsigned long bit20 : 1;
	unsigned long bit21 : 1;
	unsigned long bit22 : 1;
	unsigned long bit23 : 1;
	unsigned long bit24 : 1;
	unsigned long bit25 : 1;
	unsigned long bit26 : 1;
	unsigned long bit27 : 1;
	unsigned long bit28 : 1;
	unsigned long bit29 : 1;
	unsigned long bit30 : 1;
	unsigned long bit31 : 1;
} _4byte_bit_field_;
#endif

#ifndef __AS__TYPE_eBufferAction
#define __AS__TYPE_eBufferAction
typedef enum eBufferAction
{	BufferActIdle = 0,
	BufferActCreateDir = 1,
	BufferActGetRetainBffr = 2,
	BufferActSetFull = 3,
	BufferActSetMty = 4,
	BufferActLoad = 5,
	BufferActLoadSltChk = 6,
	BufferActUnload = 7,
	BufferActUnloadSltChk = 8,
	BufferActUnloadCoolChk = 9,
	BufferActUnloadSltChkCoolChk = 10,
	BufferActNxtLoad = 11,
	BufferActNxtLoadGd = 12,
	BufferActNxtLoadBad = 13,
	BufferActNxtUnload = 14,
	BufferActNxtUnloadGd = 15,
	BufferActNxtUnloadBad = 16,
	BufferActChkCoolTm = 17,
	BufferActChkCoolBrdAny = 18,
	BufferActChkCoolBrdGd = 19,
	BufferActChkCoolBrdBad = 20,
	BufferActRstBffr = 21,
	BufferActSetCoolFan = 22,
	BufferActRstCoolFan = 23,
	BufferActBGStartBffrSetFull = 24,
	BufferActBGStartBffrSetMty = 25,
	BufferActBGStopBffrSet = 26,
	BufferActBGStartUpdtSen = 27,
	BufferActBGStopUpdtSen = 28,
	BufferActBGStartUpdtDisplay = 29,
	BufferActBGStopUpdtDisplay = 30,
	BufferActBGStartCoolFan = 31,
	BufferActBGStopCoolFan = 32,
} eBufferAction;
#endif

#ifndef __AS__TYPE_eSMEMAAction
#define __AS__TYPE_eSMEMAAction
typedef enum eSMEMAAction
{	SMEMAActIdle = 0,
	SMEMAActRun = 1,
	SMEMAActSetSig = 2,
	SMEMAActSetStatSig = 3,
	SMEMAActRstSig = 4,
	SMEMAActRstStatSig = 5,
	SMEMAActSetAllSig = 6,
	SMEMAActRstAllSig = 7,
} eSMEMAAction;
#endif

#ifndef __AS__TYPE_eMagConvAction
#define __AS__TYPE_eMagConvAction
typedef enum eMagConvAction
{	MagConvActIdle = 0,
	MagConvActInit = 1,
	MagConvActInitStopClp = 2,
	MagConvActInitClpStop = 3,
	MagConvActEnt = 4,
	MagConvActEntStopClp = 5,
	MagConvActEntClpStop = 6,
	MagConvActPreExit = 7,
	MagConvActPreExitClpr = 8,
	MagConvActExit = 9,
	MagConvActExit1 = 10,
	MagConvActExitClpr = 11,
	MagConvActExit1Clpr = 12,
	MagConvActClprSetAll = 13,
	MagConvActClprRstAll = 14,
	MagConvActClprSetClamp = 15,
	MagConvActClprSetUnclamp = 16,
	MagConvActClprClamp = 17,
	MagConvActClprUnclamp = 18,
	MagConvActStop = 19,
	MagConvActStopClpr = 20,
	MagConvActSetMtrSigOnOrLToR = 21,
	MagConvActSetMtrDirOrRToL = 22,
	MagConvActRstMtrSigOnOrLToR = 23,
	MagConvActRstMtrDirOrRToL = 24,
	MagConvActSetMtrAll = 25,
	MagConvActRstMtrAll = 26,
} eMagConvAction;
#endif

#ifndef __AS__TYPE_eLifterAction
#define __AS__TYPE_eLifterAction
typedef enum eLifterAction
{	LifterActIdle = 0,
	LifterActGoAPos = 1,
	LifterActGoBPos = 2,
	LifterActGoCPos = 3,
	LifterActGoDPos = 4,
	LifterActGoEPos = 5,
	LifterActGoFPos = 6,
	LifterActGoGPos = 7,
	LifterActGoHPos = 8,
	LifterActGoASltPos = 9,
	LifterActGoNxtASltPos = 10,
	LifterActGoPrevASltPos = 11,
	LifterActGoBSltPos = 12,
	LifterActGoNxtBSltPos = 13,
	LifterActGoPrevBSltPos = 14,
	LifterActGoCSltPos = 15,
	LifterActGoNxtCSltPos = 16,
	LifterActGoPrevCSltPos = 17,
	LifterActGoDSltPos = 18,
	LifterActGoNxtDSltPos = 19,
	LifterActGoPrevDSltPos = 20,
	LifterActFullHm = 21,
	LifterActPwrOn = 22,
	LifterActPwrOff = 23,
	LifterActHoming = 24,
	LifterActMovAbs = 25,
	LifterActMovRel = 26,
	LifterActJogUp = 27,
	LifterActJogDown = 28,
	LifterActJogStop = 29,
	LifterActRstAxisErr = 30,
	LifterActStop = 31,
	LifterActSDOWrite = 32,
	LifterActBGStartModOKChk = 33,
	LifterActBGStopModOKChk = 34,
	LifterActFullMovRel = 35,
	LifterActRstNode = 36,
} eLifterAction;
#endif

#ifndef __AS__TYPE_eLifMagULMagNxtLoad
#define __AS__TYPE_eLifMagULMagNxtLoad
typedef enum eLifMagULMagNxtLoad
{	MagNxtLoadInvalid = 0,
	MagNxtLoadMag1 = 1,
	MagNxtLoadMag2 = 2,
	MagNxtLoadMag3 = 3,
} eLifMagULMagNxtLoad;
#endif

#ifndef __AS__TYPE_eAlmSeverity
#define __AS__TYPE_eAlmSeverity
typedef enum eAlmSeverity
{	AlmSeverityNA = 0,
	AlmSeverityError = 1,
	AlmSeverityWarning = 2,
	AlmSeverityInfo = 3,
} eAlmSeverity;
#endif

#ifndef __AS__TYPE_tyAlmDat
#define __AS__TYPE_tyAlmDat
typedef struct tyAlmDat
{	unsigned long udiCode;
	eAlmSeverity eSeverity;
	plcstring sProgNm[16];
	plcstring sAlmMsg[201];
	plcstring sRcyMsg[201];
	unsigned long udiRunTime;
	unsigned long udiModuleNum;
	plcbit bAlm;
	plcbit bWarning;
} tyAlmDat;
#endif

_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL tyAlmDat tyAlmData2;
_BUR_LOCAL plcstring sStepTxt[81];
_BUR_LOCAL plcstring sStepTxt1[81];
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL eLifterAction eLifterAct;
_BUR_LOCAL eLifterAction eLifter2Act;
_BUR_LOCAL eMagConvAction eLifterConvAct;
_BUR_LOCAL eMagConvAction eLifterConv2Act;
_BUR_LOCAL eBufferAction eBufferAct1;
_BUR_LOCAL eBufferAction eBufferAct2;
_BUR_LOCAL eBufferAction eBufferAct3;
_BUR_LOCAL eSMEMAAction eUSSMEMAAct1;
_BUR_LOCAL eSMEMAAction eUSSMEMAAct2;
_BUR_LOCAL eSMEMAAction eUSSMEMAAct3;
_BUR_LOCAL eLifMagULMagNxtLoad eMagNxtLoad;
_BUR_LOCAL plcbit bUnloading;
_BUR_LOCAL plcbit bLifterMoving;
_BUR_LOCAL plcbit bStepEntMag1;
_BUR_LOCAL plcbit bStepExtMag1;
_BUR_LOCAL plcbit bStepEntMag2;
_BUR_LOCAL plcbit bStepExtMag2;
_BUR_LOCAL plcbit bStepInitDone1;
_BUR_LOCAL plcbit bStepInitDone2;
_BUR_LOCAL plcbit bStepLiftMagIdle2;
_GLOBAL unsigned long p_OpsLifMagULAlmData;
_GLOBAL unsigned long p_OpsLifMagULAlmData1;
_GLOBAL unsigned long p_OpsLifMagULAlmData2;
_GLOBAL unsigned long p_OpsLifMagULStepTxt;
_GLOBAL unsigned long p_OpsLifMagULStepTxt1;
_GLOBAL unsigned long p_OpsLifMagULPaused;
_GLOBAL unsigned long p_OpsLifMagULLifterAct;
_GLOBAL unsigned long p_OpsLifMagULBufferAct1;
_GLOBAL unsigned long p_OpsLifMagULBufferAct2;
_GLOBAL unsigned long p_OpsLifMagULBufferAct3;
_GLOBAL unsigned long p_OpsLifMagULUSSMEMAAct1;
_GLOBAL unsigned long p_OpsLifMagULUSSMEMAAct2;
_GLOBAL unsigned long p_OpsLifMagULUSSMEMAAct3;
_GLOBAL unsigned long p_OpsLifMagULMagNxtLoad;
_GLOBAL unsigned long p_OpsLifMagULUnloading;
_GLOBAL unsigned long p_OpsLifMagULLiftMoving;
_GLOBAL unsigned long p_OpsLifMagULLifter2Act;
_GLOBAL unsigned long p_OpsLifMagULLifterConvAct;
_GLOBAL unsigned long p_OpsLifMagULLifterConv2Act;
_GLOBAL unsigned long p_OpsLifMagULStepInitDone1;
_GLOBAL unsigned long p_OpsLifMagULStepInitDone2;
_GLOBAL unsigned long p_OpsLifMagULStepEntMag1;
_GLOBAL unsigned long p_OpsLifMagULStepExtMag1;
_GLOBAL unsigned long p_OpsLifMagULStepEntMag2;
_GLOBAL unsigned long p_OpsLifMagULStepExtMag2;
_GLOBAL unsigned long p_OpsLifMagULStepIdle2;
