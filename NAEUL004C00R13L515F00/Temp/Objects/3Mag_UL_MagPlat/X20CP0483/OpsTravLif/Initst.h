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

#ifndef __AS__TYPE_eConvAction
#define __AS__TYPE_eConvAction
typedef enum eConvAction
{	ConvActIdle = 0,
	ConvActInit = 1,
	ConvActInitRev = 2,
	ConvActInitPshr = 3,
	ConvActInitPuller = 4,
	ConvActInitRej = 5,
	ConvActInitInsp = 6,
	ConvActEnt = 7,
	ConvActEntToInOff = 8,
	ConvActEntRev = 9,
	ConvActRev = 10,
	ConvActRevImmedStart = 11,
	ConvActEntPuller = 12,
	ConvActEntRej = 13,
	ConvActEntInsp = 14,
	ConvActPreExit = 15,
	ConvActRejResume = 16,
	ConvActExit = 17,
	ConvActExit1 = 18,
	ConvActExitPshr = 19,
	ConvActExit1Pshr = 20,
	ConvActPshrSetAll = 21,
	ConvActPshrRstAll = 22,
	ConvActPshrSetExt = 23,
	ConvActPshrSetRet = 24,
	ConvActPshrExt = 25,
	ConvActPshrRet = 26,
	ConvActPullerSetAll = 27,
	ConvActPullerRstAll = 28,
	ConvActPullerSetExt = 29,
	ConvActPullerSetRet = 30,
	ConvActPullerExt = 31,
	ConvActPullerRet = 32,
	ConvActRotSetAll = 33,
	ConvActRotRstAll = 34,
	ConvActRotSetHome = 35,
	ConvActRotSetRmt = 36,
	ConvActRotHome = 37,
	ConvActRotRemote = 38,
	ConvActRejSetAll = 39,
	ConvActRejRstAll = 40,
	ConvActRejSetUp = 41,
	ConvActRejSetDown = 42,
	ConvActRejUp = 43,
	ConvActRejDown = 44,
	ConvActStop = 45,
	ConvActStopPshr = 46,
	ConvActStopPuller = 47,
	ConvActStopRej = 48,
	ConvActSetMtrSigOnOrLToR = 49,
	ConvActSetMtrDirOrRToL = 50,
	ConvActRstMtrSigOnOrLToR = 51,
	ConvActRstMtrDirOrRToL = 52,
	ConvActSetMtrAll = 53,
	ConvActRstMtrAll = 54,
} eConvAction;
#endif

#ifndef __AS__TYPE_eAWAction
#define __AS__TYPE_eAWAction
typedef enum eAWAction
{	AWActIdle = 0,
	AWActGoWidth = 1,
	AWActFullHm = 2,
	AWActPwrOn = 3,
	AWActPwrOff = 4,
	AWActHoming = 5,
	AWActMovAbs = 6,
	AWActMovRel = 7,
	AWActJogOpen = 8,
	AWActJogClose = 9,
	AWActJogStop = 10,
	AWActRstAxisErr = 11,
	AWActStop = 12,
	AWActSDOWrite = 13,
	AWActBGStartModOKChk = 14,
	AWActBGStopModOKChk = 15,
	AWActGoWidthOff = 16,
	AWActRstNode = 17,
} eAWAction;
#endif

#ifndef __AS__TYPE_eTravAction
#define __AS__TYPE_eTravAction
typedef enum eTravAction
{	TravActIdle = 0,
	TravActGoAPos = 1,
	TravActGoBPos = 2,
	TravActGoCPos = 3,
	TravActGoDPos = 4,
	TravActGoEPos = 5,
	TravActGoFPos = 6,
	TravActGoGPos = 7,
	TravActGoHPos = 8,
	TravActFullHm = 9,
	TravActPwrOn = 10,
	TravActPwrOff = 11,
	TravActHoming = 12,
	TravActMovAbs = 13,
	TravActMovRel = 14,
	TravActJogFront = 15,
	TravActJogRear = 16,
	TravActJogStop = 17,
	TravActRstAxisErr = 18,
	TravActStop = 19,
	TravActSDOWrite = 20,
	TravActBGStartModOKChk = 21,
	TravActBGStopModOKChk = 22,
	TravActRstNode = 23,
} eTravAction;
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

#ifndef __AS__TYPE_tyParamTravLifUL
#define __AS__TYPE_tyParamTravLifUL
typedef struct tyParamTravLifUL
{	plcbit a_bUSDis[3];
	plcbit a_bDSDis[3];
	unsigned char a_usiUSPriority[3];
	unsigned char a_usiDSPriority[3];
	plcbit a_bMagRej[3];
} tyParamTravLifUL;
#endif

#ifndef __AS__TYPE_eTravLifULStep
#define __AS__TYPE_eTravLifULStep
typedef enum eTravLifULStep
{	TravLifULStepNA = 0,
	TravLifULStepInitConv = 1,
	TravLifULStepInitInletPneuCls = 2,
	TravLifULStepInitInOutPneuCls = 3,
	TravLifULStepInitTravLif = 4,
	TravLifULStepInitAWTravLif = 5,
	TravLifULStepAWMov = 6,
	TravLifULStepScanDS = 7,
	TravLifULStepHermesBCode = 8,
	TravLifULStepWaitReturnCode = 9,
	TravLifULStepMagChkReturnCode = 10,
	TravLifULStepTravLifMov = 11,
	TravLifULStepUSSigWait = 12,
	TravLifULStepUSSigRechk = 13,
	TravLifULStepInletPneuOpn = 14,
	TravLifULStepUSSigRechkTwice = 15,
	TravLifULStepUSMagWidthChk = 16,
	TravLifULStepStopperRet = 17,
	TravLifULStepUSComm = 18,
	TravLifULStepEntBrd = 19,
	TravLifULStepInletPneuCls = 20,
	TravLifULStepStopperExt = 21,
	TravLifULStepDSSigWait = 22,
	TravLifULStepDSSigRechk = 23,
	TravLifULStepOutletPneuOpn = 24,
	TravLifULStepDSSigRechkTwice = 25,
	TravLifULStepDSMagWidthChk = 26,
	TravLifULStepDSComm = 27,
	TravLifULStepExitBrd = 28,
	TravLifULStepOutletPneuCls = 29,
	TravLifULStepScanStdBy = 30,
	TravLifULStepTranOutErr = 31,
	TravULStepTranOutBrdStuckErr = 32,
	TravULStepTranInBrdStuckErr = 33,
	TravULStepClrSensorErr = 34,
	TravLifULStepMagWidthErr = 35,
	TravULStepBrdLostInMiddle = 36,
	TravULStepClrSensorErrBefTrav = 37,
} eTravLifULStep;
#endif

#ifndef __AS__TYPE_eTravLifULPos
#define __AS__TYPE_eTravLifULPos
typedef enum eTravLifULPos
{	TravLifULPosInvalid = 0,
	TravLifULPosUS1 = 1,
	TravLifULPosUS2 = 2,
	TravLifULPosUS3 = 3,
	TravLifULPosDS1 = 4,
	TravLifULPosDS2 = 5,
	TravLifULPosDS3 = 6,
} eTravLifULPos;
#endif

#ifndef __AS__TYPE_eTCPAction1
#define __AS__TYPE_eTCPAction1
typedef enum eTCPAction1
{	TCPActIdle_0 = 0,
	TCPActFullWriteRead = 1,
	TCPActFullWriteReadUntilValid = 2,
	TCPActDebug = 3,
} eTCPAction1;
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

#ifndef __AS__TYPE_eOpConMsgType
#define __AS__TYPE_eOpConMsgType
typedef enum eOpConMsgType
{	OpConMsgTypeNA = 0,
	OpConMsgTypeEventReceived = 1,
	OpConMsgTypePartReceived = 2,
	OpConMsgTypePlcGrabReceived = 3,
	OpConMsgTypePartProcessed = 4,
	OpConMsgTypePLCError = 5,
	OpConMsgTypePartMissingStarted = 6,
	OpConMsgTypePartMissing = 7,
	OpConMsgTypePLCJamStarted = 8,
	OpConMsgTypePLCJam = 9,
	OpConMsgTypePLCGrab = 10,
} eOpConMsgType;
#endif

#ifndef __AS__TYPE_tyPartProcessedData
#define __AS__TYPE_tyPartProcessedData
typedef struct tyPartProcessedData
{	plcstring sIdentifier[255];
	unsigned char usiResult;
	plcstring sTypeNo[21];
	plcstring sTypeVar[5];
	unsigned char usiWorkingCode;
	unsigned char usiNioBits;
	unsigned char uiBatch;
	plcstring sMachineID[6];
	plcstring sName[5][31];
	plcstring sDataType[5][3];
	plcstring sValue[5][255];
} tyPartProcessedData;
#endif

#ifndef __AS__TYPE_tyPartProcessedAvl
#define __AS__TYPE_tyPartProcessedAvl
typedef struct tyPartProcessedAvl
{	plcbit bIdentifier;
	plcbit bResult;
	plcbit bTypeNo;
	plcbit bTypeVar;
	plcbit bWorkingCode;
	plcbit bNioBits;
	plcbit bBatch;
	plcbit bMachineID;
	plcbit bName[5];
	plcbit bDataType[5];
	plcbit bValue[5];
} tyPartProcessedAvl;
#endif

#ifndef __AS__TYPE_tyOpConPartProcessed
#define __AS__TYPE_tyOpConPartProcessed
typedef struct tyOpConPartProcessed
{	tyPartProcessedData tyData;
	tyPartProcessedAvl tyAvl;
} tyOpConPartProcessed;
#endif

_BUR_LOCAL plcbit bMagWidthChk;
_BUR_LOCAL signed short usiMagWidthChkStep;
_BUR_LOCAL plcbit bTravGoToChkPt;
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL plcstring sStepTxt[81];
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL eSMEMAAction eUSSMEMAAct1;
_BUR_LOCAL eSMEMAAction eUSSMEMAAct2;
_BUR_LOCAL eSMEMAAction eUSSMEMAAct3;
_BUR_LOCAL eSMEMAAction eDSSMEMAAct1;
_BUR_LOCAL eSMEMAAction eDSSMEMAAct2;
_BUR_LOCAL eSMEMAAction eDSSMEMAAct3;
_BUR_LOCAL eConvAction eConvAct;
_BUR_LOCAL eAWAction eAWAct;
_BUR_LOCAL eAWAction eAWPushOrPullerAct;
_BUR_LOCAL eTravAction eTravAct;
_BUR_LOCAL eLifterAction eLifAct;
_BUR_LOCAL ePneuAction eInletPneuAct;
_BUR_LOCAL ePneuAction eOutletPneuAct;
_BUR_LOCAL ePneuAction eOutletPneuAct2;
_BUR_LOCAL ePneuAction eOutletPneuAct3;
_BUR_LOCAL ePneuAction eStopperAct1;
_BUR_LOCAL ePneuAction eStopperAct2;
_BUR_LOCAL ePneuAction eStopperAct3;
_BUR_LOCAL unsigned long udiJogSpeed;
_BUR_LOCAL eTravLifULPos eTravLifPosGo;
_BUR_LOCAL plcbit a_bMagDis[3];
_BUR_LOCAL plcbit a_bMagRej[3];
_BUR_LOCAL plcbit bInitConv;
_BUR_LOCAL plcbit bOpsInitDone;
_BUR_LOCAL plcbit bUSComm;
_BUR_LOCAL plcbit bEntBrd;
_BUR_LOCAL plcbit bDSComm;
_BUR_LOCAL plcbit bExitBrd;
_BUR_LOCAL plcbit bTravLifMove;
_BUR_LOCAL plcbit bUSWidthChkBrdExist;
_BUR_LOCAL plcbit bStopperExtStep;
_BUR_LOCAL plcbit bWidthChkErrCmdUnclmp1;
_BUR_LOCAL plcbit bWidthChkErrCmdUnclmp2;
_BUR_LOCAL plcbit bWidthChkErrCmdUnclmp3;
_BUR_LOCAL eTravLifULStep eOpsStep;
_BUR_LOCAL eTravLifULStep eGotoOpsStep;
_BUR_LOCAL tyParamTravLifUL tyParamTravLif;
_BUR_LOCAL plcbit bOpsModGonethrough;
_BUR_LOCAL plcbit bGdChk;
_BUR_LOCAL plcbit bTravLifInDSPos;
_BUR_LOCAL plcbit bSelfTest;
_BUR_LOCAL plcbit bBypCurtainSenCtrl;
_BUR_LOCAL plcbit bBypCurtainSensorPBLED;
_BUR_LOCAL ePneuAction eInletStopperAct;
_BUR_LOCAL eTCPAction1 eTCPTopAct;
_BUR_LOCAL eTCPAction1 eTCPBtmAct;
_BUR_LOCAL plcstring sBarcode[81];
_BUR_LOCAL eOpConMsgType tyOpConMsgReq;
_BUR_LOCAL tyOpConPartProcessed tyPartProcessedItems;
_BUR_LOCAL plcstring asMagEntered[5][11];
_BUR_LOCAL plcbit bAllwExitMag1;
_BUR_LOCAL plcbit bAllwExitMag2;
_BUR_LOCAL plcbit bAllwExitMag3;
_BUR_LOCAL plcbit bStartScanSig;
_BUR_LOCAL plcbit bPCBExitMag1;
_BUR_LOCAL plcbit bPCBExitMag2;
_BUR_LOCAL plcbit bPCBExitMag3;
_GLOBAL unsigned long p_OpsTravLifULAlmData;
_GLOBAL unsigned long p_OpsTravLifULStepTxt;
_GLOBAL unsigned long p_OpsTravLifULPaused;
_GLOBAL unsigned long p_OpsTravLifULUSSMEMAAct1;
_GLOBAL unsigned long p_OpsTravLifULUSSMEMAAct2;
_GLOBAL unsigned long p_OpsTravLifULUSSMEMAAct3;
_GLOBAL unsigned long p_OpsTravLifULDSSMEMAAct1;
_GLOBAL unsigned long p_OpsTravLifULDSSMEMAAct2;
_GLOBAL unsigned long p_OpsTravLifULDSSMEMAAct3;
_GLOBAL unsigned long p_OpsTravLifULConvAct;
_GLOBAL unsigned long p_OpsTravLifULAWPushPullAct;
_GLOBAL unsigned long p_OpsTravLifULAWAct;
_GLOBAL unsigned long p_OpsTravLifULTravAct;
_GLOBAL unsigned long p_OpsTravLifULLifAct;
_GLOBAL unsigned long p_OpsTravLifULInletPneuAct;
_GLOBAL unsigned long p_OpsTravLifULOutletPneuAct;
_GLOBAL unsigned long p_OpsTravLifULOutletPneuAct2;
_GLOBAL unsigned long p_OpsTravLifULOutletPneuAct3;
_GLOBAL unsigned long p_OpsTravLifULStopperAct1;
_GLOBAL unsigned long p_OpsTravLifULStopperAct2;
_GLOBAL unsigned long p_OpsTravLifULStopperAct3;
_GLOBAL unsigned long p_OpsTravLifULPosGo;
_GLOBAL unsigned long p_OpsTravLifULMagDis;
_GLOBAL unsigned long p_OpsTravLifULMagRej;
_GLOBAL unsigned long p_OpsTravLifULInitConv;
_GLOBAL unsigned long p_OpsTravLifULInitDone;
_GLOBAL unsigned long p_OpsTravLifULUSComm;
_GLOBAL unsigned long p_OpsTravLifULEntBrd;
_GLOBAL unsigned long p_OpsTravLifULDSComm;
_GLOBAL unsigned long p_OpsTravLifULExitBrd;
_GLOBAL unsigned long p_OpsTravLifULTravLifMov;
_GLOBAL unsigned long p_OpsTravLifULSelfTest;
_GLOBAL unsigned long p_OpsTravLifULTravGotoChkPt;
_GLOBAL unsigned long p_OpsTravLifULInDSPos;
_GLOBAL unsigned long p_OpsTravLifULUSWidthChkBrdExist;
_GLOBAL unsigned long p_OpsTravLifULJogSpeed;
_GLOBAL unsigned long p_OpsTravLifULStpExt;
_GLOBAL unsigned long p_OpsTravLifULBypCurtainSenCtrl;
_GLOBAL unsigned long p_OpsTravLifULBypCurtainLED;
_GLOBAL unsigned long p_OpsTravLifULMagWidthChk;
_GLOBAL unsigned long p_OpsTravLifULMagWidthChkStep;
_GLOBAL unsigned long p_OpsTravLifULTopScan;
_GLOBAL unsigned long p_OpsTravLifULBtmScan;
_GLOBAL unsigned long p_OpsTravLifULBarcode;
_GLOBAL unsigned long p_OpsTravLifULMsgReq;
_GLOBAL unsigned long p_OpsTravLifWChkErrCmdUnclmp1;
_GLOBAL unsigned long p_OpsTravLifWChkErrCmdUnclmp2;
_GLOBAL unsigned long p_OpsTravLifWChkErrCmdUnclmp3;
_GLOBAL unsigned long p_OpsTravLifParamTravLif;
_GLOBAL unsigned long p_OpsTravLifOpsModGonethrough;
_GLOBAL unsigned long p_OpsTravLifWGdBrdChk;
_GLOBAL unsigned long p_OpsTravLifAllwExitMag1;
_GLOBAL unsigned long p_OpsTravLifAllwExitMag2;
_GLOBAL unsigned long p_OpsTravLifAllwExitMag3;
_GLOBAL unsigned long p_OpsTravLifULPartProcessItms;
_GLOBAL unsigned long p_OpsTravLifULMagEntered;
_GLOBAL unsigned long p_OpsTravLifInletStprAct;
_GLOBAL unsigned long p_OpsTravLifStartScanSig;
_GLOBAL unsigned long p_OpsTravLifMag1TransOut;
_GLOBAL unsigned long p_OpsTravLifMag2TransOut;
_GLOBAL unsigned long p_OpsTravLifMag3TransOut;
_GLOBAL unsigned long p_OpsTravLifOpsStep;
_GLOBAL unsigned long p_OpsTravLifGotoOpsStep;
