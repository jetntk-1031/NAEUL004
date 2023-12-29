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

#ifndef __AS__TYPE_ePneuAction
#define __AS__TYPE_ePneuAction
typedef enum ePneuAction
{	PneuActIdle = 0,
	PneuActSetAll = 1,
	PneuActRstAll = 2,
	PneuActSetExt = 3,
	PneuActSetRet = 4,
	PneuActExt = 5,
	PneuActRet = 6,
	PneuActExtSenToMidSen = 7,
	PneuActMidSenToRetSen = 8,
	PneuActRetSenToMidSen = 9,
	PneuActMidSenToExtSen = 10,
} ePneuAction;
#endif

#ifndef __AS__TYPE_eMagConv2ClpAction
#define __AS__TYPE_eMagConv2ClpAction
typedef enum eMagConv2ClpAction
{	MagConv2ClpActIdle = 0,
	MagConv2ClpActInit = 1,
	MagConv2ClpActInitStopClp = 2,
	MagConv2ClpActInitClpStop = 3,
	MagConv2ClpActEnt = 4,
	MagConv2ClpActEntStopClp = 5,
	MagConv2ClpActEntClpStop = 6,
	MagConv2ClpActPreExit = 7,
	MagConv2ClpActPreExitClpr = 8,
	MagConv2ClpActPreExitClpr1 = 9,
	MagConv2ClpActExit = 10,
	MagConv2ClpActExit1 = 11,
	MagConv2ClpActExitClpr = 12,
	MagConv2ClpActExit1Clpr = 13,
	MagConv2ClpActFixClprSetAll = 14,
	MagConv2ClpActFixClprRstAll = 15,
	MagConv2ClpActFixClprSetClamp = 16,
	MagConv2ClpActFixClprSetUnclamp = 17,
	MagConv2ClpActFixClprClamp = 18,
	MagConv2ClpActFixClprUnclamp = 19,
	MagConv2ClpActRmtClprSetAll = 20,
	MagConv2ClpActRmtClprRstAll = 21,
	MagConv2ClpActRmtClprSetClamp = 22,
	MagConv2ClpActRmtClprSetUnclamp = 23,
	MagConv2ClpActRmtClprClamp = 24,
	MagConv2ClpActRmtClprUnclamp = 25,
	MagConv2ClpActStop = 26,
	MagConv2ClpActStopClpr = 27,
	MagConv2ClpActSetMtrSigOnOrLToR = 28,
	MagConv2ClpActSetMtrDirOrRToL = 29,
	MagConv2ClpActRstMtrSigOnOrLToR = 30,
	MagConv2ClpActRstMtrDirOrRToL = 31,
	MagConv2ClpActSetMtrAll = 32,
	MagConv2ClpActRstMtrAll = 33,
} eMagConv2ClpAction;
#endif

#ifndef __AS__TYPE_eSOTAction
#define __AS__TYPE_eSOTAction
typedef enum eSOTAction
{	SOTActIdle = 0,
	SOTActRun = 1,
	SOTActSetSig = 2,
	SOTActRstSig = 3,
} eSOTAction;
#endif

#ifndef __AS__TYPE_eMagAWAction
#define __AS__TYPE_eMagAWAction
typedef enum eMagAWAction
{	MagAWActIdle = 0,
	MagAWActGoWidth = 1,
	MagAWActFullHm = 2,
	MagAWActPwrOn = 3,
	MagAWActPwrOff = 4,
	MagAWActHoming = 5,
	MagAWActMovAbs = 6,
	MagAWActMovRel = 7,
	MagAWActJogOpen = 8,
	MagAWActJogClose = 9,
	MagAWActJogStop = 10,
	MagAWActRstAxisErr = 11,
	MagAWActStop = 12,
	MagAWActSDOWrite = 13,
	MagAWActBGStartModOKChk = 14,
	MagAWActBGStopModOKChk = 15,
	MagAWActGoWidthOff = 16,
	MagAWActEngage = 17,
	MagAWActEngageStop = 18,
	MagAWActRstNode = 19,
} eMagAWAction;
#endif

#ifndef __AS__TYPE_eAGVMagAction
#define __AS__TYPE_eAGVMagAction
typedef enum eAGVMagAction
{	AGVMagActIdle = 0,
	AGVMagActEnter = 1,
	AGVMagActExit = 2,
} eAGVMagAction;
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
	unsigned long udiRunTime;
	unsigned long udiModuleNum;
	plcbit bAlm;
	plcbit bWarning;
} tyAlmDat;
#endif

_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL plcstring sStepTxt[81];
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL eBufferAction eBufferAct;
_BUR_LOCAL ePneuAction eSelClampCtrl;
_BUR_LOCAL eMagConv2ClpAction eMagConv2ClpAct;
_BUR_LOCAL eSMEMAAction eUSSMEMAAct;
_BUR_LOCAL eAGVMagAction eAGVMagAct;
_BUR_LOCAL ePneuAction eSafetyBarAct;
_BUR_LOCAL ePneuAction eMagAWEngageAct;
_BUR_LOCAL eMagAWAction eMagAWAct;
_BUR_LOCAL eSOTAction eUSSOTAct;
_BUR_LOCAL eSOTAction eDSSOTAct;
_BUR_LOCAL plcbit bOpsInitDone;
_BUR_LOCAL plcbit bMagBffrAvl;
_BUR_LOCAL plcbit bNewMagAllw;
_BUR_LOCAL plcbit bRlsMagAllw;
_BUR_LOCAL plcbit bEjectMESStep;
_BUR_LOCAL plcbit bEjectMagNotAllw;
_BUR_LOCAL plcbit bStepMagExitedWait;
_BUR_LOCAL plcbit bStepMagFullExit;
_BUR_LOCAL plcbit bStepMagUSCom;
_BUR_LOCAL plcbit bStepPLCGrab;
_BUR_LOCAL unsigned char usiMagConv;
_BUR_LOCAL_RETAIN signed short iMagMESAcptCond;
_BUR_LOCAL_RETAIN plcbit bMagExitedWait;
_BUR_LOCAL unsigned long udiMagAllwGo;
_BUR_LOCAL plcbit bPneuUnclmpDone;
_BUR_LOCAL plcbit bNewMagVerified;
_BUR_LOCAL plcbit bIncorrectMagazineModel;
_BUR_LOCAL plcbit bMagSizeLarge;
_BUR_LOCAL plcbit bAGVComm3Rdy;
_BUR_LOCAL plcbit bStepOpsMagAWDone;
_BUR_LOCAL plcbit bStepOpsPitchUpdated;
_BUR_LOCAL plcbit bWriteRFID;
_BUR_LOCAL plcbit bReadRFID;
_BUR_LOCAL_RETAIN plcdt dtMagConvAcptTm;
_GLOBAL unsigned long p_OpsMagConvUL3AlmData;
_GLOBAL unsigned long p_OpsMagConvUL3AlmData1;
_GLOBAL unsigned long p_OpsMagConvUL3StepTxt;
_GLOBAL unsigned long p_OpsMagConvUL3Paused;
_GLOBAL unsigned long p_OpsMagConvUL3BufferAct;
_GLOBAL unsigned long p_OpsMagConvUL3MagConv2ClpAct;
_GLOBAL unsigned long p_OpsMagConvUL3USSMEMAAct;
_GLOBAL unsigned long p_OpsMagConvUL3AGVMagAct;
_GLOBAL unsigned long p_OpsMagConvUL3MagFullExit;
_GLOBAL unsigned long p_OpsMagConvUL3IncorrectMagModel;
_GLOBAL unsigned long p_OpsMagConvUL3MagSizeL;
_GLOBAL unsigned long p_OpsMagConvUL3InitDone;
_GLOBAL unsigned long p_OpsMagConvUL3MagBffrAvl;
_GLOBAL unsigned long p_OpsMagConvUL3NewMagAllw;
_GLOBAL unsigned long p_OpsMagConvUL3RlsMagAllw;
_GLOBAL unsigned long p_OpsMagConvUL3EjectMESStep;
_GLOBAL unsigned long p_OpsMagConvUL3EjectMagNotAllw;
_GLOBAL unsigned long p_OpsMagConvUL3StepSelClampCtrl;
_GLOBAL unsigned long p_OpsMagConvUL3StepMagExitedWait;
_GLOBAL unsigned long p_OpsMagConvUL3NewMagVerified;
_GLOBAL unsigned long p_OpsMagConvUL3StepUSCom;
_GLOBAL unsigned long p_OpsMagConvUL3StepPLCGrab;
_GLOBAL unsigned long p_OpsMagConvUL3SafetyBarAct;
_GLOBAL unsigned long p_OpsMagConvUL3MagAWEngageAct;
_GLOBAL unsigned long p_OpsMagConvUL3MagAWAct;
_GLOBAL unsigned long p_OpsAGVCommRdy3;
_GLOBAL unsigned long p_OpsMagConvUL3USSOTAct;
_GLOBAL unsigned long p_OpsMagConvUL3DSSOTAct;
_GLOBAL unsigned long p_OpsMagConvUL3UnclmpDone;
_GLOBAL unsigned long p_OpsMagConvUL3MagAllwGo;
_GLOBAL unsigned long p_OpsMagConvUL3ReadRFID;
_GLOBAL unsigned long p_OpsMagConvUL3WriteRFID;
_GLOBAL unsigned long p_OpsMagConvUL3AWDone;
_GLOBAL unsigned long p_OpsMagConvUL3SlotUpdtDone;
_GLOBAL unsigned long p_OpsMagConvUL3AcptTm;
_GLOBAL unsigned long p_OpsMagConvUL3MESAcptCond;
_GLOBAL unsigned long p_OpsMagConvUL3MagExitedWait;
