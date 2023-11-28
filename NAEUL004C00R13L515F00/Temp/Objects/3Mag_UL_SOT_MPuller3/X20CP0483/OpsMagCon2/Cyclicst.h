#ifndef __AS__TYPE_
#define __AS__TYPE_
static signed long __AS__STRING_CMP(char* pstr1, char* pstr2);
static unsigned long __AS__MEMSET(unsigned long pDest, unsigned char value, unsigned long length);
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

#ifndef __AS__TYPE_eMcMagExchangeMode
#define __AS__TYPE_eMcMagExchangeMode
typedef enum eMcMagExchangeMode
{	McSetMagXcAutoManMode = 0,
	McSetMagXcAutoMode = 1,
	McSetMagXcManMode = 2,
} eMcMagExchangeMode;
#endif

#ifndef __AS__TYPE_eCustomer
#define __AS__TYPE_eCustomer
typedef enum eCustomer
{	NA = 0,
	Bosch_China = 1,
	Bosch_Portugal = 2,
	Bosch_America = 3,
	Bosch_Malaysia = 4,
	Siemens = 5,
	We_Fabricate = 6,
	New_Member5 = 7,
	New_Member6 = 8,
	New_Member7 = 9,
	New_Member8 = 10,
	New_Member9 = 11,
	New_Member10 = 12,
} eCustomer;
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

#ifndef __AS__TYPE_eMagConvULStep
#define __AS__TYPE_eMagConvULStep
typedef enum eMagConvULStep
{	MagConvULStepNA = 0,
	MagConvULStepInitMag = 1,
	MagConvULStepSafetyBarExtCtrl = 2,
	MagConvULStepMagUSComm = 3,
	MagConvULStepInitAWPneu = 4,
	MagConvULStepInitMagEnt = 5,
	MagConvULStepInitMagFixClp = 6,
	MagConvULStepInitMagConv = 7,
	MagConvULStepMagEnt = 8,
	MagConvULStepMagEntMnl = 9,
	MagConvULStepSelClampCtrl = 10,
	MagConvULStepVerifyMag = 11,
	MagConvULStepChkMag = 12,
	MagConvULStepSafetyBarExt = 13,
	MagConvULStepSafetyBarRet = 14,
	MagConvULStepMagAWEngage = 15,
	MagConvULStepMagAWDisengage = 16,
	MagConvULStepMagAWHm = 17,
	MagConvULStepMagAWMov = 18,
	MagConvULStepMagEntMESStdByChk = 19,
	MagConvULStepBffrStatChk = 20,
	MagConvULStepMagCmp = 21,
	MagConvULStepMtyBffr = 22,
	MagConvULStepNxtLoadBffr = 23,
	MagConvULStepBffrUSComm = 24,
	MagConvULStepBffrEntBrd = 25,
	MagConvULStepUpdateBffr = 26,
	MagConvULStepLoadBffr = 27,
	MagConvULStepMagExtMESStdByChk = 28,
	MagConvULStepMagExitClampCtrl = 29,
	MagConvULStepMagExitSafeBarCtrl = 30,
	MagConvULStepMagFullDSComm = 31,
	MagConvULStepMagFullExit = 32,
	MagConvULStepMagExitMnl = 33,
	MagConvULStepMagHalfExitMnl = 34,
	MagConvULStepMagExitedWait = 35,
	MagConvULStepMagExitedAGVWait = 36,
} eMagConvULStep;
#endif

#ifndef __AS__TYPE_eLifMagULUpdateData
#define __AS__TYPE_eLifMagULUpdateData
typedef enum eLifMagULUpdateData
{	BufferActLoadWhenStarted = 0,
	BufferActLoadWhenCompleted = 1,
} eLifMagULUpdateData;
#endif

#ifndef __AS__TYPE_eAGVMagAction
#define __AS__TYPE_eAGVMagAction
typedef enum eAGVMagAction
{	AGVMagActIdle = 0,
	AGVMagActEnter = 1,
	AGVMagActExit = 2,
} eAGVMagAction;
#endif

#ifndef __AS__TYPE_tyTagAGVToDTMag
#define __AS__TYPE_tyTagAGVToDTMag
typedef struct tyTagAGVToDTMag
{	plcbit bVEHInPos1;
	plcbit bVEHInPos2;
	plcbit bVEHInPos3;
	plcbit bVEHAuto;
	plcbit bVEH1Occupied;
	plcbit bVEH2Occupied;
	plcbit bVEH3Occupied;
	plcbit bVEHRunning;
} tyTagAGVToDTMag;
#endif

#ifndef __AS__TYPE_tyStatPlatformFromMES
#define __AS__TYPE_tyStatPlatformFromMES
typedef struct tyStatPlatformFromMES
{	signed short iAcceptCondition;
	plcbit bError;
	plcbit bSizeLarge;
	plcbit bReady;
	plcbit bAvailable;
	plcbit bRFIDWriteComplete;
	plcbit bTrigMagFull;
} tyStatPlatformFromMES;
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

#ifndef __AS__TYPE_tyBffrStat
#define __AS__TYPE_tyBffrStat
typedef struct tyBffrStat
{	plcbit bBffrFull;
	plcbit bBffrMty;
	signed long diTtlBrdCap;
	signed long diTtlGdBrd;
	signed long diTtlBadBrd;
} tyBffrStat;
#endif

#ifndef __AS__TYPE_eFBStatus
#define __AS__TYPE_eFBStatus
typedef enum eFBStatus
{	Idle = 0,
	Done = 1,
	Busy = 2,
	Error = 3,
} eFBStatus;
#endif

#ifndef __AS__TYPE_tyAlmTxt
#define __AS__TYPE_tyAlmTxt
typedef struct tyAlmTxt
{	plcstring sAlmText[201];
	plcstring sRcyText[201];
} tyAlmTxt;
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

struct TON
{	plctime PT;
	plctime ET;
	plctime StartTime;
	unsigned long Restart;
	plcbit IN;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void TON(struct TON* inst);
_BUR_PUBLIC unsigned long memset(unsigned long pDest, unsigned char value, unsigned long length);
_BUR_LOCAL plcbit(* p_bLinkDIMagPresentSen1);
_BUR_LOCAL plcbit(* p_bLinkMagConv2Clp1MtrIn);
_BUR_LOCAL plcbit(* p_bLinkMagConv2Clp1MtrOut);
_BUR_LOCAL plcbit(* p_bLinkDIMagPresentSen2);
_BUR_LOCAL plcbit(* p_bLinkMagConv2Clp2MtrIn);
_BUR_LOCAL plcbit(* p_bLinkMagConv2Clp2MtrOut);
_BUR_LOCAL plcbit(* p_bLinkDIMagPresentSen3);
_BUR_LOCAL plcbit(* p_bLinkMagConv2Clp3MtrIn);
_BUR_LOCAL plcbit(* p_bLinkMagConv2Clp3MtrOut);
_BUR_LOCAL plcbit(* p_bLinkFixedMagClampRS1);
_BUR_LOCAL plcbit(* p_bLinkRmtMagClampRS1);
_BUR_LOCAL plcbit(* p_bLinkFixedMagClampRS2);
_BUR_LOCAL plcbit(* p_bLinkRmtMagClampRS2);
_BUR_LOCAL plcbit(* p_bLinkFixedMagClampRS3);
_BUR_LOCAL plcbit(* p_bLinkRmtMagClampRS3);
_BUR_LOCAL signed long(* p_bLinkMcParamMagAutoDetTm);
_BUR_LOCAL plcbit(* p_bLinkDIMagEntrySen);
_BUR_LOCAL plcbit(* p_bLinkNtParamMagModelAutoVerify);
_BUR_LOCAL unsigned char(* p_bLinkMagRcpCurrRcpMagModel);
_BUR_LOCAL plcbit(* p_bLinkNewMagVerified3);
_BUR_LOCAL plcbit(* p_bLinkNewMagVerified2);
_BUR_LOCAL plcbit(* p_bLinkNewMagVerified1);
_BUR_LOCAL eLifMagULUpdateData(* p_eNtParamProjMagBuffferActLoad);
_BUR_LOCAL eMcMagExchangeMode(* p_eLinkMcParamMagExMode);
_BUR_LOCAL plcbit(* p_bMag3OrientationChkSen1);
_BUR_LOCAL plcbit(* p_bMagHeightDetSen3);
_BUR_LOCAL plcbit(* p_bMagHeightDetEn);
_BUR_LOCAL plcbit(* p_bMagHeightDetPrep);
_BUR_LOCAL plcbit(* p_bProjLifTravMnlLoad);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bRun);
_BUR_LOCAL plcbit(* p_bStop);
_BUR_LOCAL plcbit(* p_bStep);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL unsigned char(* p_usiMagConv);
_BUR_LOCAL plcbit(* p_bInfoEn);
_BUR_LOCAL plcbit(* pa_bMagDis)[3];
_BUR_LOCAL plcbit(* pa_bMagRej)[3];
_BUR_LOCAL plcbit(* pa_bMagChangeOverBlk)[4];
_BUR_LOCAL plcbit(* p_bMagPropDiffBlk);
_BUR_LOCAL plcbit(* p_bUSAllow);
_BUR_LOCAL plcbit(* p_bAllwChgWidth);
_BUR_LOCAL plcbit(* p_bAllwChgSlot);
_BUR_LOCAL plcbit(* p_bChgMagWidth);
_BUR_LOCAL plcbit(* p_bChgMagSlot);
_BUR_LOCAL plcbit(* p_bMagOrientChkSenPrep);
_BUR_LOCAL plcbit(* p_bDIMagFixedClampSen);
_BUR_LOCAL eCustomer(* p_eCustomerReq);
_BUR_LOCAL struct tyStatPlatformFromMES(* p_tyResponseFromMES);
_BUR_LOCAL plcbit(* p_bOpsTravLifAllwExitMag);
_BUR_LOCAL signed long(* p_diMcParamMESResponseTO);
_BUR_LOCAL plcbit(* p_bMcParamMESEn);
_BUR_LOCAL plcbit(* p_bAutoRcpForceExitMag);
_BUR_LOCAL plcdt(* p_dtCurrDT);
_BUR_LOCAL plcdt(* p_dtOpsMagConvUL1AcptTm);
_BUR_LOCAL plcdt(* p_dtOpsMagConvUL2AcptTm);
_BUR_LOCAL plcdt(* p_dtOpsMagConvUL3AcptTm);
_BUR_LOCAL signed short(* p_iOpsMagConvUL1MESAcptCond);
_BUR_LOCAL signed short(* p_iOpsMagConvUL2MESAcptCond);
_BUR_LOCAL signed short(* p_iOpsMagConvUL3MESAcptCond);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL1MagExitedWait);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL2MagExitedWait);
_BUR_LOCAL unsigned char(* p_usiUIHcomModchanged);
_BUR_LOCAL plcbit(* p_bNtParamAutoRcpF1ArbitraryType);
_BUR_LOCAL plcbit(* p_bNewMag);
_BUR_LOCAL plcbit(* p_bRlsMag);
_BUR_LOCAL plcbit(* p_bConvInitDone);
_BUR_LOCAL plcbit(* p_bConvHvBrd);
_BUR_LOCAL plcbit(* p_bConvGdBrd);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat1);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat2);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat3);
_BUR_LOCAL plcbit(* p_bMagClampRS1);
_BUR_LOCAL plcbit(* p_bMagClampRS2);
_BUR_LOCAL plcbit(* p_bMagClampRS3);
_BUR_LOCAL plcbit(* p_bMagEntrySen);
_BUR_LOCAL plcbit(* p_bMagEntrySen1);
_BUR_LOCAL plcbit(* p_bMagEntrySen2);
_BUR_LOCAL plcbit(* p_bMagEntrySen3);
_BUR_LOCAL plcbit(* p_bMagPresentSen);
_BUR_LOCAL plcbit(* p_bMagPresentSen1);
_BUR_LOCAL plcbit(* p_bMagPresentSen2);
_BUR_LOCAL plcbit(* p_bMagPresentSen3);
_BUR_LOCAL plcbit(* p_bBufferMagPresent1);
_BUR_LOCAL plcbit(* p_bBufferMagPresent2);
_BUR_LOCAL plcbit(* p_bBufferMagPresent3);
_BUR_LOCAL plcdt(* p_dtBufferMagPresentTm1);
_BUR_LOCAL plcdt(* p_dtBufferMagPresentTm2);
_BUR_LOCAL plcdt(* p_dtBufferMagPresentTm3);
_BUR_LOCAL eBufferAction(* p_eBufferStat);
_BUR_LOCAL eFBStatus(* p_eBufferStatus);
_BUR_LOCAL plcbit(* p_bBufferMagRemoved);
_BUR_LOCAL eMagConv2ClpAction(* p_eMagConv2ClpStat);
_BUR_LOCAL eFBStatus(* p_eMagConv2ClpStatus);
_BUR_LOCAL plcbit(* p_bMagConv2ClpHvMag);
_BUR_LOCAL eSMEMAAction(* p_eUSSMEMAStat);
_BUR_LOCAL eFBStatus(* p_eUSSMEMAStatus);
_BUR_LOCAL plcbit(* p_bUSSMEMATransporting);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStart);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStop);
_BUR_LOCAL eAGVMagAction(* p_eAGVMagStat);
_BUR_LOCAL eFBStatus(* p_eAGVMagStatus);
_BUR_LOCAL plcbit(* p_bAGVMagMcRunRdy);
_BUR_LOCAL struct tyTagAGVToDTMag(* p_tyAGVToDTMag);
_BUR_LOCAL ePneuAction(* p_eSelClampCtrlStat);
_BUR_LOCAL eFBStatus(* p_eSelClampCtrlStatus);
_BUR_LOCAL plcbit(* p_bOutShutterExtended);
_BUR_LOCAL plcbit(* p_bDIMagConvHeightSen);
_BUR_LOCAL plcbit(* p_bDIMagConvSelUnclampRS);
_BUR_LOCAL plcbit(* p_bDIMagConvCAB717Sen);
_BUR_LOCAL plcbit(* p_bDIMagConvSmallSen);
_BUR_LOCAL plcbit(* p_bDIMagConvLargeSen);
_BUR_LOCAL plcbit(* p_bDIOutShutterClosedRS);
_BUR_LOCAL plcbit(* p_bDIOutShutterClosedRS3);
_BUR_LOCAL plcbit(* p_bNtParamProjOutletShut3Prep);
_BUR_LOCAL ePneuAction(* p_eSafetyBarStat);
_BUR_LOCAL eFBStatus(* p_eSafetyBarStatus);
_BUR_LOCAL plcbit(* p_bSafetyBarExtended);
_BUR_LOCAL plcbit(* p_bSafetyBarRetracted);
_BUR_LOCAL ePneuAction(* p_eMagAWEngageStat);
_BUR_LOCAL eFBStatus(* p_eMagAWEngageStatus);
_BUR_LOCAL eConvAction(* p_eConvStat);
_BUR_LOCAL eFBStatus(* p_eConvStatus);
_BUR_LOCAL eMagAWAction(* p_eMagAWStat);
_BUR_LOCAL eFBStatus(* p_eMagAWStatus);
_BUR_LOCAL plcbit(* p_bMagAWEngaging);
_BUR_LOCAL plcbit(* p_bMagAWErr);
_BUR_LOCAL plcbit(* p_bMagAWOpenLimit);
_BUR_LOCAL plcbit(* p_bMagAWCloseLimit);
_BUR_LOCAL eSOTAction(* p_eUSSOTStat);
_BUR_LOCAL eFBStatus(* p_eUSSOTStatus);
_BUR_LOCAL plcbit(* p_bUSSOTTransporting);
_BUR_LOCAL plcbit(* p_bUSSOTConvStart);
_BUR_LOCAL plcbit(* p_bUSSOTConvStop);
_BUR_LOCAL plcbit(* p_bUSSOTUSRdy);
_BUR_LOCAL plcbit(* p_bUSSOTUSLargeMagRdy);
_BUR_LOCAL eSOTAction(* p_eDSSOTStat);
_BUR_LOCAL eFBStatus(* p_eDSSOTStatus);
_BUR_LOCAL plcbit(* p_bDSSOTConvStart);
_BUR_LOCAL plcbit(* p_bDSSOTConvStop);
_BUR_LOCAL plcbit(* p_bOpsTravLifExitBrd);
_BUR_LOCAL plcbit(* p_bOpsTravLifMov);
_BUR_LOCAL plcbit(* p_bSelfTest);
_BUR_LOCAL plcbit(* p_bMcParamMagAWDis);
_BUR_LOCAL plcbit(* p_bDISOTRcv);
_BUR_LOCAL plcbit(* p_bDISOTAGVReady);
_BUR_LOCAL plcstring(* p_sProdRcpCurrRcp1Name)[81];
_BUR_LOCAL plcstring(* p_sProdRcpCurrRcp2Name)[81];
_BUR_LOCAL plcbit(* p_bOpsTravLifErrCmdUnclmp);
_BUR_LOCAL plcbit(* p_bNtParamAutoRcpPrep);
_BUR_LOCAL plcbit(* p_bMcParamAutoRcpDis);
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
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
_BUR_LOCAL plcbit bStepMagExitedWait;
_BUR_LOCAL plcbit bStepMagVerification;
_BUR_LOCAL plcbit bStepMagFullExit;
_BUR_LOCAL plcbit bStepMagUSCom;
_BUR_LOCAL plcbit bStepPLCGrab;
_BUR_LOCAL plcbit bClsLog;
_BUR_LOCAL plcbit blog;
_BUR_LOCAL eMagConvULStep logStep[1000];
_BUR_LOCAL signed short logIndexStep;
_BUR_LOCAL eMagConvULStep eGotoOpsStepDummy;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL unsigned char usiMagConv;
_BUR_LOCAL plcbit bInfoEn;
_BUR_LOCAL plcbit a_bMagDis[3];
_BUR_LOCAL plcbit a_bMagRej[3];
_BUR_LOCAL plcbit bUSAllow;
_BUR_LOCAL plcbit bAllwChgWidth;
_BUR_LOCAL plcbit bAllwChgSlot;
_BUR_LOCAL plcbit bNewMag;
_BUR_LOCAL plcbit bRlsMag;
_BUR_LOCAL plcbit bConvInitDone;
_BUR_LOCAL plcbit bConvHvBrd;
_BUR_LOCAL plcbit bConvGdBrd;
_BUR_LOCAL tyBffrStat tyBufferStat1;
_BUR_LOCAL tyBffrStat tyBufferStat2;
_BUR_LOCAL tyBffrStat tyBufferStat3;
_BUR_LOCAL plcbit bMagClampRS1;
_BUR_LOCAL plcbit bMagClampRS2;
_BUR_LOCAL plcbit bMagClampRS3;
_BUR_LOCAL plcbit bMagEntrySen1;
_BUR_LOCAL plcbit bMagEntrySen2;
_BUR_LOCAL plcbit bMagEntrySen3;
_BUR_LOCAL plcbit bMagPresentSen1;
_BUR_LOCAL plcbit bMagPresentSen2;
_BUR_LOCAL plcbit bMagPresentSen3;
_BUR_LOCAL plcbit bBufferMagPresent1;
_BUR_LOCAL plcbit bBufferMagPresent2;
_BUR_LOCAL plcbit bBufferMagPresent3;
_BUR_LOCAL plcdt dtBufferMagPresentTm1;
_BUR_LOCAL plcdt dtBufferMagPresentTm2;
_BUR_LOCAL plcdt dtBufferMagPresentTm3;
_BUR_LOCAL eBufferAction eBufferStat;
_BUR_LOCAL eFBStatus eBufferStatus;
_BUR_LOCAL eMagConv2ClpAction eMagConv2ClpStat;
_BUR_LOCAL eFBStatus eMagConv2ClpStatus;
_BUR_LOCAL plcbit bMagConv2ClpHvMag;
_BUR_LOCAL eSMEMAAction eUSSMEMAStat;
_BUR_LOCAL eFBStatus eUSSMEMAStatus;
_BUR_LOCAL plcbit bUSSMEMATransporting;
_BUR_LOCAL plcbit bUSSMEMAConvStart;
_BUR_LOCAL plcbit bUSSMEMAConvStop;
_BUR_LOCAL eAGVMagAction eAGVMagStat;
_BUR_LOCAL eFBStatus eAGVMagStatus;
_BUR_LOCAL plcbit bAGVMagMcRunRdy;
_BUR_LOCAL tyTagAGVToDTMag tyAGVToDualMag;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL_RETAIN signed short iMagMESAcptCond;
_BUR_LOCAL_RETAIN plcbit bMagExitedWait;
_BUR_LOCAL_RETAIN eMagConvULStep ePrevExitStep;
_BUR_LOCAL eMagConvULStep eOpsStep;
_BUR_LOCAL eMagConvULStep eGotoOpsStep;
_BUR_LOCAL unsigned long udi;
_BUR_LOCAL unsigned long udi1;
_BUR_LOCAL unsigned long udiCount;
_BUR_LOCAL unsigned long udiCmpTm;
_BUR_LOCAL unsigned long udiMagAllwGo;
_BUR_LOCAL struct tyBffrStat a_tyMagAllwBffrStat[3];
_BUR_LOCAL plcbit a_bMagAllwMagClamped[3];
_BUR_LOCAL plcbit a_bMagAllwMagPresent[3];
_BUR_LOCAL unsigned long a_udiMagAllwMagPresentTm[3];
_BUR_LOCAL unsigned long a_udiMagAllwPriority[3];
_BUR_LOCAL unsigned long a_udiMagAllwSum[3];
_BUR_LOCAL struct tyBffrStat(* p_tyLocalBufferStat);
_BUR_LOCAL plcbit(* p_bLocalMagEntrySen);
_BUR_LOCAL plcbit(* p_bLocalBufferMagPresent);
_BUR_LOCAL plcdt(* p_dtLocalBufferMagPresentTm);
_BUR_LOCAL plcbit bPneuUnclmpDone;
_BUR_LOCAL unsigned char usiPrevHcomModchanged;
_BUR_LOCAL struct TON fbWrongMagTm;
_BUR_LOCAL struct TON fbMagAutoDetTm;
_BUR_LOCAL struct TON fbMagRemovedTm;
_BUR_LOCAL struct TON fbVerifyWarningDelay;
_BUR_LOCAL struct TON fbEntSenOff;
_BUR_LOCAL plcbit bNewMagAutoDetected;
_BUR_LOCAL plcbit bNewMagVerified;
_BUR_LOCAL plcbit bNewMagVerifyStarted;
_BUR_LOCAL plcbit bIncorrectMagazineModel;
_BUR_LOCAL plcbit bMagAWDone;
_BUR_LOCAL plcbit bWrongWidth;
_BUR_LOCAL plcbit bWrongHeight;
_BUR_LOCAL plcbit bMagSizeLarge;
_BUR_LOCAL plcbit bLimitSenActivated;
_BUR_LOCAL_RETAIN plcbit bManualUnloadMag;
_BUR_LOCAL plcbit bAIVInPos;
_BUR_LOCAL plcbit bMagManEx;
_BUR_LOCAL plcbit bMagAutoEx;
_BUR_LOCAL plcbit bAGVComm3Rdy;
_BUR_LOCAL plcbit bStepOpsMagAWDone;
_BUR_LOCAL plcbit bStepOpsPitchUpdated;
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bAutoRcpEn;
_BUR_LOCAL eMagConvULStep ePrevStepBeforeMESStdBy;
_BUR_LOCAL plcbit bWriteRFID;
_BUR_LOCAL plcbit bReadRFID;
_BUR_LOCAL struct TON fbWriteRFIDTO;
_BUR_LOCAL struct TON fbReadRFIDTO;
_BUR_LOCAL_RETAIN plcdt dtMagConvAcptTm;
_BUR_LOCAL signed short a_iMagMESAcptCond[3];
_GLOBAL unsigned long p_UINewMag3;
_GLOBAL unsigned long p_UIRlsMag3;
_GLOBAL unsigned long p_UIHcomModchanged;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL unsigned long p_TimeCurrDT;
_GLOBAL plcstring g_sOpsMagConvUL3ProgNm[16];
_GLOBAL unsigned long p_RstErrReset;
_GLOBAL unsigned long p_ProdRcpCurrRcp1Nm;
_GLOBAL unsigned long p_ProdRcpCurrRcp2Nm;
_GLOBAL unsigned long p_MagRcpCurrRcpMagModel;
_GLOBAL unsigned long p_MagRcpCurrRcpMagHeightChkEn;
_GLOBAL unsigned long p_McParamMagAutoDetTm;
_GLOBAL unsigned long p_McParamMagAWDis;
_GLOBAL unsigned long p_McParamMagExMode;
_GLOBAL unsigned long p_McParamMESResponseTO;
_GLOBAL unsigned long p_McParamMESEn;
_GLOBAL unsigned long p_McParamAutoRcpDisable;
_GLOBAL unsigned long p_NtParamProjOutletShut3Prep;
_GLOBAL unsigned long p_NtParamProjMag3ConvPrep;
_GLOBAL unsigned long p_NtParamProjMagOrientChkSenPrep;
_GLOBAL unsigned long p_NtParamProjMagBuffferActLoad;
_GLOBAL unsigned long p_NtParamProjMagAutoVerifyPrep;
_GLOBAL unsigned long p_NtParamProjMagHeightChkPrep;
_GLOBAL unsigned long p_NtParamOpsMagConvUL3ProgNm;
_GLOBAL unsigned long p_NtParamProjLifTravMnlLoad;
_GLOBAL unsigned long p_NtParamCustomerReq;
_GLOBAL unsigned long p_NtParamAutoRcpPrep;
_GLOBAL unsigned long p_NtParamAutoRcpF1ArbitraryType;
_GLOBAL unsigned long p_Buffer1BffrStat;
_GLOBAL unsigned long p_Buffer1MagPresent;
_GLOBAL unsigned long p_Buffer1MagPresentTm;
_GLOBAL unsigned long p_Buffer2BffrStat;
_GLOBAL unsigned long p_Buffer2MagPresent;
_GLOBAL unsigned long p_Buffer2MagPresentTm;
_GLOBAL unsigned long p_Buffer3Stat;
_GLOBAL unsigned long p_Buffer3Status;
_GLOBAL unsigned long p_Buffer3BffrStat;
_GLOBAL unsigned long p_Buffer3MagPresent;
_GLOBAL unsigned long p_Buffer3MagPresentTm;
_GLOBAL unsigned long p_Buffer3MagRemoved;
_GLOBAL unsigned long p_USSMEMA3Stat;
_GLOBAL unsigned long p_USSMEMA3Status;
_GLOBAL unsigned long p_USSMEMA3Transporting;
_GLOBAL unsigned long p_USSMEMA3ConvStart;
_GLOBAL unsigned long p_USSMEMA3ConvStop;
_GLOBAL unsigned long p_Pneu2SenOutShutterExtended;
_GLOBAL unsigned long p_PneuNoSenSelClamp3Stat;
_GLOBAL unsigned long p_PneuNoSenSelClamp3Status;
_GLOBAL unsigned long p_Pneu2SMag3SafetyBarStat;
_GLOBAL unsigned long p_Pneu2SMag3SafetyBarStatus;
_GLOBAL unsigned long p_Pneu2SMag3SafetyBarExtended;
_GLOBAL unsigned long p_Pneu2SMag3SafetyBarRetracted;
_GLOBAL unsigned long p_Pneu2SMag3AWEngageStat;
_GLOBAL unsigned long p_Pneu2SMag3AWEngageStatus;
_GLOBAL unsigned long p_Pneu2SenOutShutterExtended3;
_GLOBAL unsigned long p_MagConv2Clp1MtrSigOnOrLToR;
_GLOBAL unsigned long p_MagConv2Clp1MtrDirOrRToL;
_GLOBAL unsigned long p_MagConv2Clp2MtrSigOnOrLToR;
_GLOBAL unsigned long p_MagConv2Clp2MtrDirOrRToL;
_GLOBAL unsigned long p_MagConv2Clp3Stat;
_GLOBAL unsigned long p_MagConv2Clp3Status;
_GLOBAL unsigned long p_MagConv2Clp3HvMag;
_GLOBAL unsigned long p_MagConv2Clp3MtrSigOnOrLToR;
_GLOBAL unsigned long p_MagConv2Clp3MtrDirOrRToL;
_GLOBAL unsigned long p_PshrConvStat;
_GLOBAL unsigned long p_PshrConvStatus;
_GLOBAL unsigned long p_PshrConvHvBrd;
_GLOBAL unsigned long p_PshrConvGdBrd;
_GLOBAL unsigned long p_MagAWOpen3Stat;
_GLOBAL unsigned long p_MagAWOpen3Status;
_GLOBAL unsigned long p_MagAWOpen3AxisErr;
_GLOBAL unsigned long p_MagAWOpen3Engaging;
_GLOBAL unsigned long p_MagAWOpen3OpenSen;
_GLOBAL unsigned long p_MagAWOpen3CloseSen;
_GLOBAL unsigned long p_DIMag1FixedClampRS;
_GLOBAL unsigned long p_DIMag1RemoteClampRS;
_GLOBAL unsigned long p_DIMag2FixedClampRS;
_GLOBAL unsigned long p_DIMag2RemoteClampRS;
_GLOBAL unsigned long p_DIMag3FixedClampRS;
_GLOBAL unsigned long p_DIMag3RemoteClampRS;
_GLOBAL unsigned long p_DIOutShutterCloseRS;
_GLOBAL unsigned long p_DIOutShutterCloseRS3;
_GLOBAL unsigned long p_DIMagPresentSen1;
_GLOBAL unsigned long p_DIMagPresentSen2;
_GLOBAL unsigned long p_DIMagPresentSen3;
_GLOBAL unsigned long p_DIMagConvEntSen1;
_GLOBAL unsigned long p_DIMagConvEntSen2;
_GLOBAL unsigned long p_DIMagConvEntSen3;
_GLOBAL unsigned long p_DIMag3OrientChkSen1;
_GLOBAL unsigned long p_DIMagConvHeightSen3;
_GLOBAL unsigned long p_DIMagConvSmallMagSen3;
_GLOBAL unsigned long p_DIMagConvLargeMagSen3;
_GLOBAL unsigned long p_DIMagConvCAB717MagSen3;
_GLOBAL unsigned long p_DIMag3SelUnclampRS;
_GLOBAL unsigned long p_DISOT3Receive;
_GLOBAL unsigned long p_DISOT3Ready;
_GLOBAL unsigned long p_DIMag3FixedClampSen;
_GLOBAL unsigned long p_DIHighMagDetSen3;
_GLOBAL unsigned long p_OpsRun;
_GLOBAL unsigned long p_OpsStop;
_GLOBAL unsigned long p_OpsStep;
_GLOBAL unsigned long p_OpsTravLifULMagDis;
_GLOBAL unsigned long p_OpsTravLifULMagRej;
_GLOBAL unsigned long p_OpsTravLifULInitDone;
_GLOBAL unsigned long p_OpsTravLifULExitBrd;
_GLOBAL unsigned long p_OpsTravLifULTravLifMov;
_GLOBAL unsigned long p_OpsTravLifULSelfTest;
_GLOBAL unsigned long p_OpsTravLifWChkErrCmdUnclmp3;
_GLOBAL unsigned long p_OpsTravLifAllwExitMag3;
_GLOBAL unsigned long p_OpsMagConvUL1NewMagVerified;
_GLOBAL unsigned long p_OpsMagConvUL1AcptTm;
_GLOBAL unsigned long p_OpsMagConvUL1MESAcptCond;
_GLOBAL unsigned long p_OpsMagConvUL1MagExitedWait;
_GLOBAL unsigned long p_OpsMagConvUL2NewMagVerified;
_GLOBAL unsigned long p_OpsMagConvUL2AcptTm;
_GLOBAL unsigned long p_OpsMagConvUL2MESAcptCond;
_GLOBAL unsigned long p_OpsMagConvUL2MagExitedWait;
_GLOBAL unsigned long p_OpsMagConvUL3NewMagVerified;
_GLOBAL unsigned long p_AGVTagAGVToDTMag;
_GLOBAL unsigned long p_TagFromMesMagConv3;
_GLOBAL unsigned long p_AGVMag3Stat;
_GLOBAL unsigned long p_AGVMag3Status;
_GLOBAL unsigned long p_AGVMag3McRunRdy;
_GLOBAL unsigned long p_USSOT3Stat;
_GLOBAL unsigned long p_USSOT3Status;
_GLOBAL unsigned long p_USSOT3USRdy;
_GLOBAL unsigned long p_USSOT3USLargeMagRdy;
_GLOBAL unsigned long p_USSOT3Transporting;
_GLOBAL unsigned long p_USSOT3ConvStart;
_GLOBAL unsigned long p_USSOT3ConvStop;
_GLOBAL unsigned long p_DSSOT3Stat;
_GLOBAL unsigned long p_DSSOT3Status;
_GLOBAL unsigned long p_DSSOT3ConvStart;
_GLOBAL unsigned long p_DSSOT3ConvStop;
_GLOBAL unsigned long p_AutoRcpbMagChangeOverBlk;
_GLOBAL unsigned long p_AutoRcpbMag3PropDiffBlk;
_GLOBAL unsigned long p_AutoRcpbMag3WidthChg;
_GLOBAL unsigned long p_AutoRcpbMag3SlotChg;
_GLOBAL unsigned long p_AutoRcpForceExitMag;
_LOCAL plcbit Edge0000300000;
_LOCAL plcbit Edge0000300001;
_LOCAL plcbit Edge0000300002;
_LOCAL plcbit Edge0000300003;
_LOCAL plcbit Edge0000300004;
_LOCAL plcbit Edge0000300005;
_LOCAL plcbit Edge0000100000;
_LOCAL plcbit Edge0001300000;
_LOCAL plcbit Edge0001300001;
_LOCAL plcbit Edge0001300002;
_LOCAL plcbit Edge0001300003;
_LOCAL plcbit Edge0001300004;
_LOCAL plcbit Edge0000900000;
static void __AS__Action__Act_InitGlobal(void);
static void __AS__Action__Act_LinkEn(void);
static void __AS__Action__Act_Link(void);
static void __AS__Action__Act_RstErr(void);
static void __AS__Action__Act_InitLocal(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Background(void);
static void __AS__Action__Act_Alarm(void);
static void __AS__Action__Act_AlarmInfo1(void);
static void __AS__Action__Act_OpsInitial(void);
static void __AS__Action__Act_OpsRun(void);
static void __AS__Action__Act_OpsInfo(void);
static void __AS__Action__Act_OpsRst(void);
static void __AS__Action__Act_LogStep(void);
