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

#ifndef __AS__TYPE_eUIAction
#define __AS__TYPE_eUIAction
typedef enum eUIAction
{	UIActIdle = 0,
	UIActInitial = 1,
} eUIAction;
#endif

#ifndef __AS__TYPE_eStartupAction
#define __AS__TYPE_eStartupAction
typedef enum eStartupAction
{	StartupActIdle = 0,
	StartupActRun = 1,
} eStartupAction;
#endif

#ifndef __AS__TYPE_eSimulationsAction
#define __AS__TYPE_eSimulationsAction
typedef enum eSimulationsAction
{	SimulationsActIdle = 0,
	SimulationsActStart = 1,
	SimulationsActStop = 2,
	SimulationsActStep = 3,
	SimulationsActError = 4,
} eSimulationsAction;
#endif

#ifndef __AS__TYPE_eHWInfoAction
#define __AS__TYPE_eHWInfoAction
typedef enum eHWInfoAction
{	HWInfoActIdle = 0,
	HWInfoActGetIPAddr = 1,
	HWInfoActGetSubnetMask = 2,
	HWInfoActGetMacAddr = 3,
	HWInfoActSetIPAddr = 4,
	HWInfoActSetSubnetMask = 5,
	HWInfoActGetEthConfigMode = 6,
	HWInfoActSetEthConfigMode = 7,
	HWInfoActSetDefaultGateway = 8,
} eHWInfoAction;
#endif

#ifndef __AS__TYPE_eTLBuzAction
#define __AS__TYPE_eTLBuzAction
typedef enum eTLBuzAction
{	TLBuzActIdle = 0,
	TLBuzActSetGreen = 1,
	TLBuzActSetWhite = 2,
	TLBuzActSetRed = 3,
	TLBuzActSetAmber = 4,
	TLBuzActSetBlue = 5,
	TLBuzActSetBuz = 6,
	TLBuzActRstGreen = 7,
	TLBuzActRstWhite = 8,
	TLBuzActRstRed = 9,
	TLBuzActRstAmber = 10,
	TLBuzActRstBlue = 11,
	TLBuzActRstBuz = 12,
	TLBuzActSetAll = 13,
	TLBuzActRstAll = 14,
} eTLBuzAction;
#endif

#ifndef __AS__TYPE_eRstErrAction
#define __AS__TYPE_eRstErrAction
typedef enum eRstErrAction
{	RstErrActIdle = 0,
	RstErrActRun = 1,
	RstErrActSetSafetyRlyRst = 2,
	RstErrActRstSafetyRlyRst = 3,
} eRstErrAction;
#endif

#ifndef __AS__TYPE_eProdRcpAction
#define __AS__TYPE_eProdRcpAction
typedef enum eProdRcpAction
{	ProdRcpActIdle = 0,
	ProdRcpActCreateDir = 1,
	ProdRcpActAddEdit = 2,
	ProdRcpActDel = 3,
	ProdRcpActGetInfo = 4,
	ProdRcpActGetList = 5,
	ProdRcpActFilter = 6,
	ProdRcpActLoadRcp = 7,
	ProdRcpActAdd = 8,
	ProdRcpActEdit = 9,
	ProdRcpActReadCurrRcp = 10,
	ProdRcpActWriteCurrRcpParam = 11,
	ProdRcpActSaveList = 12,
	ProdRcpActSort = 13,
	ProdRcpActEndCharFilter = 14,
} eProdRcpAction;
#endif

#ifndef __AS__TYPE_eMpProdRcpAction
#define __AS__TYPE_eMpProdRcpAction
typedef enum eMpProdRcpAction
{	MpProdRcpActIdle = 0,
	MpProdRcpActCreateDir = 1,
	MpProdRcpActLoad = 2,
	MpProdRcpActSave = 3,
} eMpProdRcpAction;
#endif

#ifndef __AS__TYPE_eMagRcpAction
#define __AS__TYPE_eMagRcpAction
typedef enum eMagRcpAction
{	MagRcpActIdle = 0,
	MagRcpActCreateDir = 1,
	MagRcpActAddEdit = 2,
	MagRcpActDel = 3,
	MagRcpActGetInfo = 4,
	MagRcpActGetList = 5,
	MagRcpActFilter = 6,
	MagRcpActReadCurrRcp = 7,
	MagRcpActLoadRcp = 8,
	MagRcpActWriteCurrRcpParam = 9,
	MagRcpActSaveList = 10,
	MagRcpActSort = 11,
} eMagRcpAction;
#endif

#ifndef __AS__TYPE_eMcParamAction
#define __AS__TYPE_eMcParamAction
typedef enum eMcParamAction
{	McParamActIdle = 0,
	McParamActCreateDir = 1,
	McParamActRead = 2,
	McParamActWrite = 3,
} eMcParamAction;
#endif

#ifndef __AS__TYPE_eUsrMgmtAction
#define __AS__TYPE_eUsrMgmtAction
typedef enum eUsrMgmtAction
{	UsrMgmtActIdle = 0,
	UsrMgmtActCreateDir = 1,
	UsrMgmtActLogin = 2,
	UsrMgmtActBypassLogin = 3,
	UsrMgmtActLogout = 4,
	UsrMgmtActAdd = 5,
	UsrMgmtActEdit = 6,
	UsrMgmtActDel = 7,
	UsrMgmtActSaveAccessRight = 8,
	UsrMgmtActReadData = 9,
} eUsrMgmtAction;
#endif

#ifndef __AS__TYPE_eOvenInfoAction
#define __AS__TYPE_eOvenInfoAction
typedef enum eOvenInfoAction
{	OvenInfoActIdle = 0,
	OvenInfoActSetBrdInOven = 1,
	OvenInfoActSetOvenAllow = 2,
	OvenInfoActRstOvenAllow = 3,
} eOvenInfoAction;
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

#ifndef __AS__TYPE_eMtrPshrAction
#define __AS__TYPE_eMtrPshrAction
typedef enum eMtrPshrAction
{	MtrPshrActIdle = 0,
	MtrPshrActExt = 1,
	MtrPshrActRet = 2,
	MtrPshrActStop = 3,
	MtrPshrActSetExt = 4,
	MtrPshrActRstExt = 5,
	MtrPshrActSetRet = 6,
	MtrPshrActRstRet = 7,
	MtrPshrActSetSpdBit0 = 8,
	MtrPshrActRstSpdBit0 = 9,
	MtrPshrActSetSpdBit1 = 10,
	MtrPshrActRstSpdBit1 = 11,
	MtrPshrActSetSpdBit2 = 12,
	MtrPshrActRstSpdBit2 = 13,
	MtrPshrActSetSigOn = 14,
	MtrPshrActRstSigOn = 15,
	MtrPshrActSetBrake = 16,
	MtrPshrActRstBrake = 17,
	MtrPshrActSetAlmRst = 18,
	MtrPshrActRstAlmRst = 19,
	MtrPshrActSetAll = 20,
	MtrPshrActRstAll = 21,
} eMtrPshrAction;
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

#ifndef __AS__TYPE_eDOAction
#define __AS__TYPE_eDOAction
typedef enum eDOAction
{	DOActIdle = 0,
	DOActRstAll = 1,
	DOActSetBypassCoverSwitch = 2,
	DOActRstBypassCoverSwitch = 3,
} eDOAction;
#endif

#ifndef __AS__TYPE_eHermesAction
#define __AS__TYPE_eHermesAction
typedef enum eHermesAction
{	HermesActIdle = 0,
	HermesActBGStartRun = 1,
	HermesActBGStopRun = 2,
	HermesActDeleteOldLog = 3,
	HermesActCreateDir = 4,
	HermesActWriteRetain = 5,
	HermesActWriteRetainLane1 = 6,
	HermesActWriteRetainLane2 = 7,
	HermesActWriteRetainLane3 = 8,
	HermesActWriteRetainLane4 = 9,
	HermesActWriteRetainSendWO1 = 10,
	HermesActWriteRetainSendWO2 = 11,
	HermesActWriteRetainSendWO3 = 12,
	HermesActReadRetain = 13,
	HermesActReadRetainLane1 = 14,
	HermesActReadRetainLane2 = 15,
	HermesActReadRetainLane3 = 16,
	HermesActReadRetainLane4 = 17,
	HermesActReadRetainSendWO1 = 18,
	HermesActReadRetainSendWO2 = 19,
	HermesActReadRetainSendWO3 = 20,
	HermesActWriteConfig = 21,
	HermesActReadConfig = 22,
} eHermesAction;
#endif

#ifndef __AS__TYPE_eLFAction
#define __AS__TYPE_eLFAction
typedef enum eLFAction
{	LFActIdle = 0,
	LFActBGStartRun = 1,
	LFActBGStopRun = 2,
	LFActSyncPLCTm = 3,
	LFActChgAllAuto = 4,
	LFActChgAllMnl = 5,
	LFActChgSeqAuto = 6,
	LFActChgSeqMnl = 7,
} eLFAction;
#endif

#ifndef __AS__TYPE_eOperationsAction
#define __AS__TYPE_eOperationsAction
typedef enum eOperationsAction
{	OperationsActIdle = 0,
	OperationsActStart = 1,
	OperationsActStop = 2,
	OperationsActStep = 3,
	OperationsActError = 4,
} eOperationsAction;
#endif

#ifndef __AS__TYPE_eUIMnlAction
#define __AS__TYPE_eUIMnlAction
typedef struct eUIMnlAction
{	eStartupAction eStartupAct;
	eSimulationsAction eSimuAct;
	eHWInfoAction eHWInfoAct;
	eTLBuzAction eTLBuzAct;
	eRstErrAction eRstErrAct;
	eProdRcpAction eProdRcpAct;
	eMpProdRcpAction eMpProdRcpAct;
	eMagRcpAction eMagRcpAct;
	eMcParamAction eMcParamAct;
	eUsrMgmtAction eUsrMgmtAct;
	eOvenInfoAction eOvenInfoAAct;
	eOvenInfoAction eOvenInfoBAct;
	eBufferAction eBuffer1Act;
	eBufferAction eBuffer2Act;
	eBufferAction eBuffer3Act;
	eSMEMAAction eUSSMEMAAAct;
	eSMEMAAction eUSSMEMABAct;
	ePneuAction eInShutterAct;
	ePneuAction eOutShutterAct;
	ePneuAction eOutShutterAct2;
	ePneuAction eOutShutterAct3;
	ePneuAction eStopperAAct;
	ePneuAction eStopperBAct;
	ePneuAction eInStopperAct;
	ePneuAction eMag1SafetyBarAct;
	ePneuAction eMag2SafetyBarAct;
	ePneuAction eMag3SafetyBarAct;
	ePneuAction eMag1AWEngageAct;
	ePneuAction eMag2AWEngageAct;
	ePneuAction eMag3AWEngageAct;
	eConvAction ePshrConvAct;
	eMtrPshrAction eMtrPshrAct;
	ePneuAction eMagConvSelClp1Act;
	ePneuAction eMagConvSelClp2Act;
	ePneuAction eMagConvSelClp3Act;
	eMagConv2ClpAction eMagConv2Clp1Act;
	eMagConv2ClpAction eMagConv2Clp2Act;
	eMagConv2ClpAction eMagConv2Clp3Act;
	eAWAction eAWPushOrPullerAct;
	eAWAction eAWOpenAct;
	eLifterAction eLifterBtmAct;
	eLifterAction eLifter2Act;
	eTravAction eTravAct;
	eMagAWAction eMagAWOpen1Act;
	eMagAWAction eMagAWOpen2Act;
	eMagAWAction eMagAWOpen3Act;
	eDOAction eDOAct;
	eHermesAction eHermesAct;
	eLFAction eLFLeaderAct;
	eOperationsAction eOpsAct;
	ePneuAction eStopper1Act;
	ePneuAction eStopper2Act;
	ePneuAction eStopper3Act;
	ePneuAction eStopper4Act;
	ePneuAction eStopper5Act;
	ePneuAction eStopper1Act2;
	ePneuAction eStopper2Act2;
	ePneuAction eStopper3Act2;
	ePneuAction eStopper4Act2;
	ePneuAction eStopper5Act2;
} eUIMnlAction;
#endif

#ifndef __AS__TYPE_eUsrMgmtAutLvl
#define __AS__TYPE_eUsrMgmtAutLvl
typedef enum eUsrMgmtAutLvl
{	UsrMgmtLvl1 = 0,
	UsrMgmtLvl2 = 1,
	UsrMgmtLvl3 = 2,
	UsrMgmtAdmin = 3,
	UsrMgmtNtEngr = 4,
	UsrMgmtNtAdmin = 5,
} eUsrMgmtAutLvl;
#endif

#ifndef __AS__TYPE_tyUsrMgmtParam
#define __AS__TYPE_tyUsrMgmtParam
typedef struct tyUsrMgmtParam
{	plcstring sUsrNm[31];
	plcstring sPw[31];
	eUsrMgmtAutLvl eUsrLvl;
} tyUsrMgmtParam;
#endif

#ifndef __AS__TYPE_tyUsrMgmtAccessRight
#define __AS__TYPE_tyUsrMgmtAccessRight
typedef struct tyUsrMgmtAccessRight
{	plcbit bOpt;
	plcbit bProdSel;
	plcbit bMagSel;
	plcbit bMcInfo;
	plcbit bAlm;
	plcbit bBffrInfo;
	plcbit bOvenInfo;
	plcbit bMagInfo;
	plcbit bLFCtrl;
	plcbit bManual;
	plcbit bSimulation;
	plcbit bProdSet;
	plcbit bMagSet;
	plcbit bMcSet;
	plcbit bLang;
	plcbit bUsrMgmt;
	plcbit bLFSet;
	plcbit bChgParam;
	plcbit bManualFBOnly;
	plcstring sNm[31];
} tyUsrMgmtAccessRight;
#endif

#ifndef __AS__TYPE_tyAntiGapDly
#define __AS__TYPE_tyAntiGapDly
typedef struct tyAntiGapDly
{	signed long diSigOnTm;
	signed long diSigOffTm;
} tyAntiGapDly;
#endif

#ifndef __AS__TYPE_eMcSetCommMod
#define __AS__TYPE_eMcSetCommMod
typedef enum eMcSetCommMod
{	McSetCommModSMEMA = 0,
	McSetCommModHermes = 1,
} eMcSetCommMod;
#endif

#ifndef __AS__TYPE_eSMEMASelection
#define __AS__TYPE_eSMEMASelection
typedef enum eSMEMASelection
{	SMEMASelStandard = 0,
	SMEMASelIPC9851 = 1,
	SMEMASelIPC9851Ext = 2,
} eSMEMASelection;
#endif

#ifndef __AS__TYPE_tySMEMAParam
#define __AS__TYPE_tySMEMAParam
typedef struct tySMEMAParam
{	eSMEMASelection eSelection;
	plcbit bStatSigSetGd;
} tySMEMAParam;
#endif

#ifndef __AS__TYPE_eNetworkConfigMod
#define __AS__TYPE_eNetworkConfigMod
typedef enum eNetworkConfigMod
{	SetIPManually = 0,
	IPFromDHCPServer = 1,
} eNetworkConfigMod;
#endif

#ifndef __AS__TYPE_eMcAGVCommProtocol
#define __AS__TYPE_eMcAGVCommProtocol
typedef enum eMcAGVCommProtocol
{	McSetAGVCommOPCUA = 0,
	McSetAGVCommHardIO = 1,
	McSetAGVCommDisabled = 2,
	McSetAGVTCPEnableTCP = 3,
	McSetAGVTCPDisableTCP = 4,
} eMcAGVCommProtocol;
#endif

#ifndef __AS__TYPE_eMcMagExchangeMode
#define __AS__TYPE_eMcMagExchangeMode
typedef enum eMcMagExchangeMode
{	McSetMagXcAutoManMode = 0,
	McSetMagXcAutoMode = 1,
	McSetMagXcManMode = 2,
} eMcMagExchangeMode;
#endif

#ifndef __AS__TYPE_tyLocationParamData
#define __AS__TYPE_tyLocationParamData
typedef struct tyLocationParamData
{	unsigned short uiLineNo;
	unsigned short uiStatNo;
	unsigned short uiStatIdx;
	unsigned short uiFuNo;
	unsigned short uiWorkPos;
	unsigned short uiToolPos;
	plcstring sProcessName[31];
	unsigned short uiProcessNo;
	plcstring sApplication[6];
} tyLocationParamData;
#endif

#ifndef __AS__TYPE_eOptBtn
#define __AS__TYPE_eOptBtn
typedef enum eOptBtn
{	eNA = 0,
	eMagUnload = 1,
	eRlsNewMagazine1 = 2,
	eRlsNewMagazine2 = 3,
	eRlsNewMagazine3 = 4,
} eOptBtn;
#endif

#ifndef __AS__TYPE_tyBtnPos
#define __AS__TYPE_tyBtnPos
typedef struct tyBtnPos
{	eOptBtn ePos1;
	eOptBtn ePos2;
	eOptBtn ePos3;
	eOptBtn ePos4;
	eOptBtn ePos5;
	eOptBtn ePos6;
	eOptBtn ePos7;
} tyBtnPos;
#endif

#ifndef __AS__TYPE_tyMcParam
#define __AS__TYPE_tyMcParam
typedef struct tyMcParam
{	plcbit a_bLFOnline[50];
	plcstring a_sLFIPAddr[50][16];
	plcstring sMcNm[31];
	unsigned short uiSSaverTmInSec;
	plcbit bSSaverEn;
	unsigned char usiDefaultMcMod;
	signed long diAWPusherAtHmPosInUM;
	signed long diWidthAtHmPosInUM;
	signed long diConvInitTmInMS;
	signed long diTranInErrDlyTmInMS;
	signed long diMag1ConvRunTmOutInMS;
	signed long diMag2ConvRunTmOutInMS;
	signed long diMag3ConvRunTmOutInMS;
	signed long diOvenMaxBffr;
	signed long diTravPosA;
	signed long diTravPosB;
	signed long diLifterPosA;
	signed long diLifterPosB;
	plcbit bAWPusherDis;
	plcbit bAWDis;
	plcbit bMnlAccDat;
	plcbit bAutoStepEn;
	plcbit bVSMEMAEn;
	plcbit bChgParamEn;
	plcbit bHermesRmtEn;
	plcbit bHermesSvyEn;
	plcbit bHermesScannerEn;
	plcbit bGapBwtnBrdEn;
	plcbit bLongBrdEn;
	plcbit bOvenEn;
	plcbit bExtdOvenEn;
	plcbit bInShutterDis;
	plcbit bStopperADis;
	plcbit bStopperBDis;
	plcbit bLFEn;
	plcbit bLCSLFEn;
	plcbit bLCSReqRcpEn;
	plcbit bLCSManageRcpEn;
	plcbit bLCSLiveDatEn;
	plcbit bLFLeaderMc;
	plcbit bSectionLeader;
	plcbit bUSWidthChkEn;
	signed long diWidthOffsetInUM;
	signed long diLFMcIdxBeforeOven;
	signed long diLFMcIdxAfterOven;
	signed long diLFMcIdxBeforeOven2;
	signed long diLFMcIdxAfterOven2;
	unsigned char usiLang;
	tyAntiGapDly tyLftSenAntiGapDly;
	tyAntiGapDly tyMidSenAntiGapDly;
	tyAntiGapDly tyRgtSenAntiGapDly;
	tyAntiGapDly tyClrSenAntiGapDly;
	eMcSetCommMod eUSCommA;
	tySMEMAParam tyUSCommASMEMA;
	eMcSetCommMod eUSCommB;
	plcbit bAutoLogoutEn;
	signed long diAutoLogoutTmInSec;
	plcstring sIPAddr[16];
	plcstring sSubnetMask[16];
	eNetworkConfigMod eNetworkMod;
	tySMEMAParam tyUSCommBSMEMA;
	signed long diMagAutoDetectSenTmInMS;
	plcbit bAGVComEn;
	tyAntiGapDly tyMagConvEntrySenAntiGapDly;
	tyAntiGapDly tyMagConvPresentSenAntiGapDly;
	plcbit bLFSeqStayActive;
	plcbit bMagAWDis;
	plcbit bMagSafetyBarDis;
	signed long diMag1WidthAtHmPosInUM;
	signed long diMag2WidthAtHmPosInUM;
	signed long diMag3WidthAtHmPosInUM;
	plcbit bLFBuzMute;
	eMcAGVCommProtocol eAGVComProtocol;
	eMcMagExchangeMode eMagExMode;
	plcbit bAIVSizeDisabled;
	signed long diTravInletFixtoFixPos;
	plcbit bDisableFMWarning;
	tyAntiGapDly tyLineAInletSenAntiGapDly;
	tyAntiGapDly tyLineBInletSenAntiGapDly;
	tyAntiGapDly tyUSWidthChkSenAntiGapDly;
	plcbit bDBAOnWOAlign;
	tyAntiGapDly tyInMagConvEntAntiGapDly;
	tyAntiGapDly tyInMagConvMidAntiGapDly;
	tyAntiGapDly tyInMagConvExtAntiGapDly;
	tyAntiGapDly tyOutMagConvEntAntiGapDly;
	tyAntiGapDly tyOutMagConvMidAntiGapDly;
	tyAntiGapDly tyOutMagConvExtAntiGapDly;
	tyAntiGapDly tyInMagConv2EntAntiGapDly;
	tyAntiGapDly tyInMagConv2MidAntiGapDly;
	tyAntiGapDly tyInMagConv2ExtAntiGapDly;
	tyAntiGapDly tyOutMagConv2EntAntiGapDly;
	tyAntiGapDly tyOutMagConv2MidAntiGapDly;
	tyAntiGapDly tyOutMagConv2ExtAntiGapDly;
	signed long diInMagConvRunTmOutInMS;
	signed long diOutMagConvRunTmOutInMS;
	signed long diLifterMagConvRunTmOutInMS;
	signed long diInMagConv2RunTmOutInMS;
	signed long diOutMagConv2RunTmOutInMS;
	signed long diLifterMagConv2RunTmOutInMS;
	signed long diLifterTopPos;
	signed long diLifterBtmPos;
	signed long diLifterTopPos2;
	signed long diLifterBtmPos2;
	signed long diTCPSvrPort;
	plcbit bMagWidthChkDis;
	signed long diMag1WidthChkDetDist;
	signed long diMag2WidthChkDetDist;
	signed long diMag3WidthChkDetDist;
	plcbit bTopScannerEn;
	plcbit bBtmScannerEn;
	plcstring sTopScanIPAddr[16];
	unsigned short uiTopScanSvrPort;
	plcstring sBtmScanIPAddr[16];
	unsigned short uiBtmScanSvrPort;
	plcbit bOpConEn;
	plcstring sOpConIPAddr[16];
	unsigned short uiOpConSvrPort;
	tyLocationParamData tyOpConParam;
	plcbit bSiemensPrep;
	plcbit bInStopperDis;
	signed long diInletStopperExtDelayTmInMS;
	signed long diMESResponseTOTmInMS;
	plcbit bMESEn;
	plcbit bSwitchingProdType;
	plcbit bAutoRcpDisable;
	plcbit bBatchIDChgOverCmp;
	plcbit bIgnoreTopClearance;
	plcbit bIgnoreBtmClearance;
	plcbit bIgnoreThickness;
	plcbit bDMCScannerEn;
	signed long diDMCScanTOErrInMs;
	tyBtnPos tyOptBtnPos;
	plcstring sHMIIPAddr[16];
	plcstring sDefaultGateWay[16];
} tyMcParam;
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

#ifndef __AS__TYPE_tySOTstatus
#define __AS__TYPE_tySOTstatus
typedef struct tySOTstatus
{	plcbit tyBtnInPos;
	plcbit tyBtnError;
	plcbit tyBtnRdy;
	plcbit tyBtnAvail;
} tySOTstatus;
#endif

#ifndef __AS__TYPE_tyUIOut1
#define __AS__TYPE_tyUIOut1
typedef struct tyUIOut1
{	eUIMnlAction eMnlAct;
	plcstring sProdRcpSearch[31];
	plcstring sProdRcpScan[31];
	plcstring sMagRcpSearch[31];
	tyUsrMgmtParam tyUsrMgmtInfoIn;
	tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl1Wr;
	tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl2Wr;
	tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl3Wr;
	tyMcParam tyMcParamWr;
	plcstring sSetIPAddr[31];
	plcstring sSetSubnetMask[31];
	plcbit bManualMod;
	plcbit bUIManualMod;
	plcbit bMuteBuz;
	plcbit bSimuMod;
	signed long diConstant1;
	signed long diConstant2;
	signed long diMnlMtrPshrExtSpd;
	signed long diMnlMtrPshrExtTorq;
	signed long diMnlAWPushOrPullerGoWidth;
	signed long diMnlAWPushOrPullerNomSpd;
	signed long diMnlAWPushOrPullerTargetPos;
	signed long diMnlAWPushOrPullerStepSize;
	signed long diMnlAWPushOrPullerJogSpd;
	signed long diMnlAWGoWidth;
	signed long diMnlAWNomSpd;
	signed long diMnlAWTargetPos;
	signed long diMnlAWStepSize;
	signed long diMnlAWJogSpd;
	signed long diMnlLifterGoSlt1Pos;
	signed long diMnlLifterMag1GoSlt;
	signed long diMnlLifterMag2GoSlt;
	signed long diMnlLifterMag3GoSlt;
	signed long diMnlLifterNomSpd;
	signed long diMnlLifterTargetPos;
	signed long diMnlLifterStepSize;
	signed long diMnlLifterJogSpd;
	signed long diMnlLifterGoSlt1Pos2;
	signed long diMnlLifterMag1GoSlt2;
	signed long diMnlLifterMag2GoSlt2;
	signed long diMnlLifterMag3GoSlt2;
	signed long diMnlLifterNomSpd2;
	signed long diMnlLifterTargetPos2;
	signed long diMnlLifterStepSize2;
	signed long diMnlLifterJogSpd2;
	signed long diMnlTravNomSpd;
	signed long diMnlTravTargetPos;
	signed long diMnlTravStepSize;
	signed long diMnlTravJogSpd;
	signed long diMnlMagAW1GoWidth;
	signed long diMnlMagAW1NomSpd;
	signed long diMnlMagAW1TargetPos;
	signed long diMnlMagAW1StepSize;
	signed long diMnlMagAW1JogSpd;
	signed long diMnlMagAW2GoWidth;
	signed long diMnlMagAW2NomSpd;
	signed long diMnlMagAW2TargetPos;
	signed long diMnlMagAW2StepSize;
	signed long diMnlMagAW2JogSpd;
	signed long diMnlMagAW3GoWidth;
	signed long diMnlMagAW3NomSpd;
	signed long diMnlMagAW3TargetPos;
	signed long diMnlMagAW3StepSize;
	signed long diMnlMagAW3JogSpd;
	plcbit bVSMEMAUSAEn;
	plcbit bVSMEMAUSBEn;
	plcbit bVSMEMAUBAA;
	plcbit bVSMEMAUBAAStat;
	plcbit bVSMEMAUBAB;
	plcbit bVSMEMAUBABStat;
	signed long diSetBrdInOvenA;
	signed long diSetBrdInOvenB;
	plcbit bLeaderRun;
	plcbit bProdAccData;
	plcbit bOpsBypsInitConv;
	plcbit bEjectMag1;
	plcbit bEjectMag2;
	plcbit bEjectMag3;
	plcbit bNewMag1;
	plcbit bNewMag2;
	plcbit bNewMag3;
	plcbit bRlsMag1;
	plcbit bRlsMag2;
	plcbit bRlsMag3;
	tyTagAGVToDTMag tyAGVSimulateSig;
	plcbit bAGVSimulateOnline;
	plcbit bAGVSimulationOn;
	tySOTstatus tySOTSimulateSig1;
	tySOTstatus tySOTSimulateSig2;
	tySOTstatus tySOTSimulateSig3;
	signed long diMnlPPGoWidth;
	signed long diMnlPPTargetPos;
	signed long diMnlPPStepSize;
	signed long diMnlPPNomSpd;
	signed long diMnlPPJogSpd;
	signed long diMnlServoMtrMaxPulRatio;
	unsigned char usiHComModChaged;
	plcbit bStartScanSig;
	plcbit bPCBExitMag1;
	plcbit bPCBExitMag2;
	plcbit bPCBExitMag3;
	plcstring sSetHMIIPAddr[16];
	plcbit bUpdtHMIIPAddr;
	plcbit bSafetyCurtainReset;
	plcbit bBypCurtainSen;
	plcbit bBypCurtainPBLED;
	plcbit bSOTMagErr1;
	plcbit bSOTMagErr2;
	plcbit bSOTMagErr3;
	plcbit bSOTMagErr4;
	plcbit bSOTMagRdy1;
	plcbit bSOTMagRdy2;
	plcbit bSOTMagRdy3;
	plcbit bSOTMagRdy4;
	plcbit bSOTMagAvail1;
	plcbit bSOTMagAvail2;
	plcbit bSOTMagAvail3;
	plcbit bSOTMagAvail4;
	plcbit bSOTMagSLarge1;
	plcbit bSOTMagSLarge2;
	plcbit bSOTMagSLarge3;
	plcbit bSOTMagSLarge4;
	plcbit bAIVReqBring1;
	plcbit bAIVReqBring2;
	plcbit bAIVReqBring3;
	plcbit bAIVReqBring4;
	plcbit bAIVReqGet1;
	plcbit bAIVReqGet2;
	plcbit bAIVReqGet3;
	plcbit bAIVReqGet4;
	signed short iSlotId;
	plcbit bSkipWorkOrder;
	plcbit bReadWorkOrder;
	plcbit bDeleteWorkOrder;
	plcbit bMismatchOverWriteConfig;
	unsigned char usiNetworkModeSelected;
	plcbit bTempAddrFillDone;
	plcbit bIPConfigChgDone;
	plcbit bOverwriteIP;
	plcbit bOverwriteSubnet;
	plcbit bOverwriteEthMode;
	plcbit bMagAWOpenLimByp1;
	plcbit bMagAWOpenLimByp2;
	plcbit bMagAWOpenLimByp3;
	plcbit bMagAWOpenLimByp4;
	plcbit bSmallMagLimSen1;
	plcbit bSmallMagLimSen2;
	plcbit bSmallMagLimSen3;
	plcbit bSmallMagLimSen4;
	unsigned char usiSelProdRcpStep;
	plcbit bUnloadMag;
	plcbit bOpsMnlUnloadMag;
	plcbit bOpsMnlUnloadMag2;
	plcbit bQueryBoardInfo;
	plcbit bQueryWorkOrderInfo;
	plcbit bSaveHMISvyConfig;
	plcbit bSaveHMIConfigure;
} tyUIOut1;
#endif

#ifndef __AS__TYPE_eStartupStep
#define __AS__TYPE_eStartupStep
typedef enum eStartupStep
{	StartupStepUsrFolder = 0,
	StartupStepParameter = 1,
	StartupStepGetHWInfo = 2,
	StartupStepLibVer = 3,
	StartupStepRecipe = 4,
	StartupStepAutoRcp = 5,
	StartupStepUsrMgmt = 6,
	StartupStepBffr = 7,
	StartupStepAlarm = 8,
	StartupStepHermes = 9,
	StartupStepSDOWrite = 10,
	StartupStepSetupUI = 11,
	StartupStepDone = 12,
} eStartupStep;
#endif

#ifndef __AS__TYPE_eUsrFolderAction
#define __AS__TYPE_eUsrFolderAction
typedef enum eUsrFolderAction
{	UsrFolderActIdle = 0,
	UsrFolderActCreateUsrDir = 1,
	UsrFolderActCreatePrivateDir = 2,
	UsrFolderActCreateLogDir = 3,
	UsrFolderActCreateLCSDir = 4,
} eUsrFolderAction;
#endif

#ifndef __AS__TYPE_eLibVerAction
#define __AS__TYPE_eLibVerAction
typedef enum eLibVerAction
{	LibVerActIdle = 0,
	LibVerActCreateDir = 1,
	LibVerActWrite = 2,
	LibVerActRead = 3,
	LibVerActReadChk = 4,
} eLibVerAction;
#endif

#ifndef __AS__TYPE_eNtParamAction
#define __AS__TYPE_eNtParamAction
typedef enum eNtParamAction
{	NtParamActIdle = 0,
	NtParamActCreateDir = 1,
	NtParamActRead = 2,
	NtParamActWrite = 3,
	NtParamActLoad = 4,
	NtParamActSave = 5,
} eNtParamAction;
#endif

#ifndef __AS__TYPE_eAlarmAction
#define __AS__TYPE_eAlarmAction
typedef enum eAlarmAction
{	AlarmActIdle = 0,
	AlarmActCreateDir = 1,
	AlarmActDeleteOldLog = 2,
	AlarmActReadHistory = 3,
	AlarmActWriteHistory = 4,
	AlarmActAppendLog = 5,
	AlarmActAppendLogWriteHistory = 6,
	AlarmActResetHistory = 7,
	AlarmActBGStartLog = 8,
	AlarmActBGStopLog = 9,
} eAlarmAction;
#endif

#ifndef __AS__TYPE_eAutoRcpAction
#define __AS__TYPE_eAutoRcpAction
typedef enum eAutoRcpAction
{	AutoRcpActIdle = 0,
	AutoRcpActCreateDir = 1,
	AutoRcpActReadRetain2 = 2,
	AutoRcpActWriteRetain2 = 3,
	AutoRcpActReadRetain = 4,
	AutoRcpActWriteRetain = 5,
} eAutoRcpAction;
#endif

#ifndef __AS__TYPE_ePullerPusherAction
#define __AS__TYPE_ePullerPusherAction
typedef enum ePullerPusherAction
{	PPActIdle = 0,
	PPActGoWidth = 1,
	PPActFullHm = 2,
	PPActPwrOn = 3,
	PPActPwrOff = 4,
	PPActHoming = 5,
	PPActMovAbs = 6,
	PPActMovRel = 7,
	PPActJogOpen = 8,
	PPActJogClose = 9,
	PPActJogStop = 10,
	PPActRstAxisErr = 11,
	PPActStop = 12,
	PPActSDOWrite = 13,
	PPActBGStartModOKChk = 14,
	PPActBGStopModOKChk = 15,
	PPActGoWidthOff = 16,
	PPActRstNode = 17,
} ePullerPusherAction;
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

#ifndef __AS__TYPE_tyStartUpOut1
#define __AS__TYPE_tyStartUpOut1
typedef struct tyStartUpOut1
{	plcbit bRun;
	eUsrFolderAction eUsrFolderAct;
	eHWInfoAction eHWInfoAct;
	eLibVerAction eLibVerAct;
	eNtParamAction eNtParamAct;
	eMcParamAction eMcParamAct;
	eProdRcpAction eProdRcpAct;
	eMpProdRcpAction eMpProdRcpAct;
	eMagRcpAction eMagRcpAct;
	eUsrMgmtAction eUsrMgmtAct;
	eBufferAction eBuffer1Act;
	eBufferAction eBuffer2Act;
	eBufferAction eBuffer3Act;
	eAlarmAction eAlarmAct;
	eUIAction eUIAct;
	eAWAction eAWPushPulAct;
	eAWAction eAWAct;
	eTravAction eTravAct;
	eLifterAction eLifterAct;
	eLifterAction eLifter2Act;
	eMagAWAction eMagAW1Act;
	eMagAWAction eMagAW2Act;
	eMagAWAction eMagAW3Act;
	eHermesAction eHermesAct;
	eHermesAction eRmtHermesAct;
	eHermesAction eSvyHermesAct;
	eAutoRcpAction eAutoRcpAct;
	eHermesAction eUSHermesAAct;
	eHermesAction eUSHermesBAct;
	ePullerPusherAction eServoPPActs;
	eStartupStep eStartupStep1;
	plcbit bNtSettingsLoadDone;
	plcbit bUISettingsLoadDone;
	plcstring sStepTxt[81];
	plcbit bGetConfigDone;
	plcbit bMismatchSetConfigDone;
	eStartupAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
} tyStartUpOut1;
#endif

#ifndef __AS__TYPE_eTLBuzMod
#define __AS__TYPE_eTLBuzMod
typedef enum eTLBuzMod
{	TLBuzModNutek = 0,
	TLBuzModAptiv = 1,
	TLBuzModMEK = 2,
	TLBuzModBHTC = 3,
	TLBuzModSiemens_2Colour = 4,
} eTLBuzMod;
#endif

#ifndef __AS__TYPE_tyTLBuzIn1
#define __AS__TYPE_tyTLBuzIn1
typedef struct tyTLBuzIn1
{	eTLBuzAction eAct;
	plcbit bCoverSwitchSig;
	plcbit bAOIErrSig;
	plcbit bAOIOriginSig;
	plcbit bBuzAlertEn;
	plcbit bTLBlueFlashEn;
	plcbit bTLAmberFlashEn;
	plcbit bTLWhiteFlashEn;
	plcbit bTLRedFlashEn;
	plcbit bTLGreenFlashEn;
	plcbit bUIManualMod;
	plcbit bStartup;
	plcbit bErr;
	plcbit bErrNoBuz;
	plcbit bWarning[6];
	plcbit bWarningNoBuz[6];
	plcbit bChgRcp;
	plcbit bSeqStop;
	plcbit bStep;
	plcbit bOps;
	plcbit bStandby;
	plcbit bSimulation;
	plcbit bMuteBuz;
	plctime tTLChgRcpBlinkTm;
	plctime tTLErrBlinkTm;
	plctime tBuzErrOnTm;
	plctime tBuzErrRestTm;
	unsigned char usiBuzErrOnCntr;
	plcbit bBuzErrStopSeqEn;
	unsigned char usiBuzErrStopSeqCntr;
	plctime tTLWarnBlinkTm[6];
	plctime tBuzWarnOnTm[6];
	plctime tBuzWarnRestTm[6];
	unsigned char usiBuzWarnOnCntr[6];
	plcbit bBuzWarnStopSeqEn[6];
	unsigned char usiBuzWarnStopSeqCntr[6];
	plctime tTLWarn1BlinkTm;
	plctime tBuzWarn1OnTm;
	plctime tBuzWarn1RestTm;
	unsigned char usiBuzWarn1OnCntr;
	plcbit bBuzWarn1StopSeqEn;
	unsigned char usiBuzWarn1StopSeqCntr;
	plctime tTLWarn2BlinkTm;
	plctime tBuzWarn2OnTm;
	plctime tBuzWarn2RestTm;
	unsigned char usiBuzWarn2OnCntr;
	plcbit bBuzWarn2StopSeqEn;
	unsigned char usiBuzWarn2StopSeqCntr;
	plctime tTLWarn3BlinkTm;
	plctime tBuzWarn3OnTm;
	plctime tBuzWarn3RestTm;
	unsigned char usiBuzWarn3OnCntr;
	plcbit bBuzWarn3StopSeqEn;
	unsigned char usiBuzWarn3StopSeqCntr;
	plctime tTLWarn4BlinkTm;
	plctime tBuzWarn4OnTm;
	plctime tBuzWarn4RestTm;
	unsigned char usiBuzWarn4OnCntr;
	plcbit bBuzWarn4StopSeqEn;
	unsigned char usiBuzWarn4StopSeqCntr;
	plctime tTLWarn5BlinkTm;
	plctime tBuzWarn5OnTm;
	plctime tBuzWarn5RestTm;
	unsigned char usiBuzWarn5OnCntr;
	plcbit bBuzWarn5StopSeqEn;
	unsigned char usiBuzWarn5StopSeqCntr;
	plctime tBuzAlertOnTm;
	plctime tBuzAlertRestTm;
	unsigned char usiBuzAlertOnCntr;
	plcbit bBuzAlertStopSeqEn;
	unsigned char usiBuzAlertStopSeqCntr;
	plctime tTLBlueBlinkTm;
	plctime tTLAmberBlinkTm;
	plctime tTLWhiteBlinkTm;
	plctime tTLRedBlinkTm;
	plctime tTLGreenBlinkTm;
	eTLBuzMod eTLBuzMode;
	plcbit bMcParamAGVComEn;
	eMcMagExchangeMode eMcParamMagExMode;
} tyTLBuzIn1;
#endif

#ifndef __AS__TYPE_tyAlmProgNm
#define __AS__TYPE_tyAlmProgNm
typedef struct tyAlmProgNm
{	plcstring sAWOpenProgNm[16];
	plcstring sAWCloseProgNm[16];
	plcstring sMagAWOpenProgNm[16];
	plcstring sTravProgNm[16];
	plcstring sLifterBtmProgNm[16];
	plcstring sConvProgNm[16];
	plcstring sDCConvProgNm[16];
	plcstring sMagConvProgNm[16];
	plcstring sMagConv2ClpProgNm[16];
	plcstring sBufferProgNm[16];
	plcstring sMotorBrkProgNm[16];
	plcstring sMtrPshrProgNm[16];
	plcstring sStepperProgNm[16];
	plcstring sPneuNoSenProgNm[16];
	plcstring sPneuExtSenProgNm[16];
	plcstring sPneuRetSenProgNm[16];
	plcstring sPneu2SenProgNm[16];
	plcstring sPneu3SenProgNm[16];
	plcstring sUSSMEMAProgNm[16];
	plcstring sDSSMEMAProgNm[16];
	plcstring sHermesProgNm[16];
	plcstring sUSHermesAProgNm[16];
	plcstring sUSHermesBProgNm[16];
	plcstring sDSHermesProgNm[16];
	plcstring sRmtHermesProgNm[16];
	plcstring sLFLeaderProgNm[16];
	plcstring sLFFollowerProgNm[16];
	plcstring sLCSProgNm[16];
	plcstring sLCSLFProgNm[16];
	plcstring sLCSMngRcpProgNm[16];
	plcstring sTCPProgNm[16];
	plcstring sUSSOTProgNm[16];
	plcstring sDSSOTProgNm[16];
	plcstring sBarcodeRdrProgNm[16];
	plcstring sRS232MirtecProgNm[16];
	plcstring sProdRcpProgNm[16];
	plcstring sMagRcpProgNm[16];
	plcstring sMpProdRcpProgNm[16];
	plcstring sAlarmProgNm[16];
	plcstring sNtParamProgNm[16];
	plcstring sMcParamProgNm[16];
	plcstring sUsrMgmtProgNm[16];
	plcstring sLibVerProgNm[16];
	plcstring sUsrFolderProgNm[16];
	plcstring sHWInfoProgNm[16];
	plcstring sDInputProgNm[16];
	plcstring sTimeProgNm[16];
	plcstring sMachineProgNm[16];
	plcstring sOps1ProgNm[16];
	plcstring sOpsTravLifULProgNm[16];
	plcstring sOpsMagConvULProgNm[16];
	plcstring sOpsMagConvUL2ProgNm[16];
	plcstring sOpsMagConvUL3ProgNm[16];
	plcstring sOpsLifMagULProgNm[16];
	plcstring sOpsInMagConvProgNm[16];
	plcstring sOpsOutMagConvProgNm[16];
	plcstring sOpsMagConvStprProgNm[16];
	plcstring sOpsMagConvStpr2ProgNm[16];
	plcstring sWarningLibVersion[16];
	plcstring sAGVComProgNm[16];
	plcstring sAGVProgNm[16];
	plcstring sFrameProgNm[16];
	plcstring sLiberWarnName[16];
	plcstring sSimu1ProgNm[16];
	plcstring sSvyHermesProgNm[16];
	plcstring sAutoRcpProgNm[16];
} tyAlmProgNm;
#endif

#ifndef __AS__TYPE_tyRstErrOut1
#define __AS__TYPE_tyRstErrOut1
typedef struct tyRstErrOut1
{	eRstErrAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	unsigned long udiRstErr;
	plcbit bSafetyRlyRst;
} tyRstErrOut1;
#endif

#ifndef __AS__TYPE_tyProdRcpParam
#define __AS__TYPE_tyProdRcpParam
typedef struct tyProdRcpParam
{	plcstring sRcpNm[255];
	signed long diWidthInUM;
	signed long diWidthInUM2;
	signed long diIntvlCntr;
	signed long diMinSltValue;
	signed long diMaxSltValue;
	signed long diPitch;
	signed long diBrdPerSlt;
	unsigned char usiMcMod;
	plcbit bTopToBtm;
	plcbit bGapBwtnBrd;
	plcbit bLongBrd;
	signed long diMinReqFreeBffr;
	plcstring sDisplayInfo[31];
	plcdt dtLastModified;
	signed long diMtrPshrExtSpd;
	signed long diMtrPshrExtTorq;
	signed long diPshrOffset;
} tyProdRcpParam;
#endif

#ifndef __AS__TYPE_MpComIdentType
#define __AS__TYPE_MpComIdentType
typedef struct MpComIdentType
{	unsigned long Internal[2];
} MpComIdentType;
#endif

#ifndef __AS__TYPE_tyMpProdRcpIn1
#define __AS__TYPE_tyMpProdRcpIn1
typedef struct tyMpProdRcpIn1
{	eMpProdRcpAction eAct;
	MpComIdentType tyMpProdRcpMpLink;
	plcstring sPVName[101];
	plcstring sFileName[256];
	plcstring sProgNm[16];
	plcbit bNtSettingsLoadDone;
	unsigned long udiRstErr;
} tyMpProdRcpIn1;
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

#ifndef __AS__TYPE_tyMpProdRcpOut1
#define __AS__TYPE_tyMpProdRcpOut1
typedef struct tyMpProdRcpOut1
{	eMpProdRcpAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	tyAlmDat tyAlmData;
} tyMpProdRcpOut1;
#endif

#ifndef __AS__TYPE_tyMpProdRcp
#define __AS__TYPE_tyMpProdRcp
typedef struct tyMpProdRcp
{	tyMpProdRcpIn1 In;
	tyMpProdRcpOut1 Out;
} tyMpProdRcp;
#endif

#ifndef __AS__TYPE_tyDigitalInputSettings
#define __AS__TYPE_tyDigitalInputSettings
typedef struct tyDigitalInputSettings
{	signed long diSafetyRlySig;
	signed long diEStopSig;
	signed long diCoverSWSig;
	signed long diUBAA;
	signed long diUBAB;
	signed long diUBAAStat;
	signed long diUBABStat;
	signed long diPusherExtRS;
	signed long diPusherRetRS;
	signed long diConvLftSen;
	signed long diConvMidSen;
	signed long diConvRgtSen;
	signed long diConvClrSen;
	signed long diOvenInfeedSigA;
	signed long diOvenInfeedSigB;
	signed long diLifterTimingBeltSen;
	signed long diLifterSafetyLmtSW1;
	signed long diLifterSafetyLmtSW2;
	signed long diMag1FixedClampRS;
	signed long diMag1FixedUnclampRS;
	signed long diMag1RemoteClampRS;
	signed long diMag1RemoteUnclampRS;
	signed long diMag2FixedClampRS;
	signed long diMag2FixedUnclampRS;
	signed long diMag2RemoteClampRS;
	signed long diMag2RemoteUnclampRS;
	signed long diMag3FixedClampRS;
	signed long diMag3FixedUnclampRS;
	signed long diMag3RemoteClampRS;
	signed long diMag3RemoteUnclampRS;
	signed long diInShutterOpenRS;
	signed long diInShutterCloseRS;
	signed long diOutShutterOpenRS;
	signed long diOutShutterCloseRS;
	signed long diMagPresentSen1;
	signed long diMagPresentSen2;
	signed long diMagPresentSen3;
	signed long diMagConvEntSen1;
	signed long diMagConvEntSen2;
	signed long diMagConvEntSen3;
	signed long diMag1AIVInPosSen1;
	signed long diMag1AIVInPosSen2;
	signed long diMag2AIVInPosSen1;
	signed long diMag2AIVInPosSen2;
	signed long diMag3AIVInPosSen1;
	signed long diMag3AIVInPosSen2;
	signed long diMag1OrientChkSen1;
	signed long diMag1OrientChkSen2;
	signed long diMag2OrientChkSen1;
	signed long diMag2OrientChkSen2;
	signed long diMag3OrientChkSen1;
	signed long diMag3OrientChkSen2;
	signed long diUSWidthChkSen;
	signed long diConvLineAInletSen;
	signed long diConvLineBInletSen;
	signed long diMagConvHeightSen1;
	signed long diMagConvHeightSen2;
	signed long diMagConvHeightSen3;
	signed long diMagConvSmallMagSen1;
	signed long diMagConvSmallMagSen2;
	signed long diMagConvSmallMagSen3;
	signed long diMagConvLargeMagSen1;
	signed long diMagConvLargeMagSen2;
	signed long diMagConvLargeMagSen3;
	signed long diMagConvCAB717MagSen1;
	signed long diMagConvCAB717MagSen2;
	signed long diMagConvCAB717MagSen3;
	signed long diMag1SelUnClampRS;
	signed long diMag2SelUnClampRS;
	signed long diMag3SelUnClampRS;
	signed long diMag1WallEngageRS;
	signed long diMag1WallDisengageRS;
	signed long diMag2WallEngageRS;
	signed long diMag2WallDisengageRS;
	signed long diMag3WallEngageRS;
	signed long diMag3WallDisengageRS;
	signed long diMag1SafetyBarExtRS;
	signed long diMag1SafetyBarRetRS;
	signed long diMag2SafetyBarExtRS;
	signed long diMag2SafetyBarRetRS;
	signed long diMag3SafetyBarExtRS;
	signed long diMag3SafetyBarRetRS;
	signed long diSOT1Receive;
	signed long diSOT1AIVError;
	signed long diSOT1AIVSizeLarge;
	signed long diSOT1AIVReady;
	signed long diSOT1AIVAvailable;
	signed long diSOT2Receive;
	signed long diSOT2AIVError;
	signed long diSOT2AIVSizeLarge;
	signed long diSOT2AIVReady;
	signed long diSOT2AIVAvailable;
	signed long diSOT3Receive;
	signed long diSOT3AIVError;
	signed long diSOT3AIVSizeLarge;
	signed long diSOT3AIVReady;
	signed long diSOT3AIVAvailable;
	signed long diSOT4Receive;
	signed long diSOT4AIVError;
	signed long diSOT4AIVSizeLarge;
	signed long diSOT4AIVReady;
	signed long diSOT4AIVAvailable;
	signed long diFleetManagerReady;
	signed long diPusherExtSlwSen;
	signed long diPusherRetSlwSen;
	signed long diMtrPshrTorqueSig;
	signed long diMtrPshrAlmSig;
	signed long diMagWidthChkSen;
	signed long diPshrAntiJam;
	signed long diInMagConvEntSen;
	signed long diInMagConvExtSen;
	signed long diInMagConvMidSen;
	signed long diOutMagConvEntSen;
	signed long diOutMagConvExtSen;
	signed long diOutMagConvMidSen;
	signed long diInMagConv2EntSen;
	signed long diInMagConv2ExtSen;
	signed long diInMagConv2MidSen;
	signed long diOutMagConv2EntSen;
	signed long diOutMagConv2ExtSen;
	signed long diOutMagConv2MidSen;
	signed long diLifterLmtSW;
	signed long diLifter2LmtSW;
	signed long diMtrOverloadSig;
	signed long diOutShutterOpenRS2;
	signed long diOutShutterCloseRS2;
	signed long diOutShutterOpenRS3;
	signed long diOutShutterCloseRS3;
	signed long diMag1FixedClampSen;
	signed long diMag2FixedClampSen;
	signed long diMag3FixedClampSen;
	signed long diCurtainSenPB;
	signed long diCurtainSen;
	signed long diCurtainSafetySig;
	signed long diHighMagDetSen1;
	signed long diHighMagDetSen2;
	signed long diHighMagDetSen3;
	signed long diInletStopperASen;
	signed long diScanComplSig;
	signed long diPCBScanSen;
	signed long diSPARE17;
	signed long diSPARE18;
	signed long diSPARE19;
	signed long diSPARE20;
} tyDigitalInputSettings;
#endif

#ifndef __AS__TYPE_tyDigitalOutputSettings
#define __AS__TYPE_tyDigitalOutputSettings
typedef struct tyDigitalOutputSettings
{	signed long diSafetyRlyRst;
	signed long diTLRed;
	signed long diTLAmber;
	signed long diTLGreen;
	signed long diBuzzer;
	signed long diUSBA;
	signed long diUSBB;
	signed long diOvenInfoSigA;
	signed long diOvenInfoSigB;
	signed long diPusherExtCtrl;
	signed long diStopperUnblkCtrlA;
	signed long diStopperUnblkCtrlB;
	signed long diMag1FixedClampCtrl;
	signed long diMag1RemoteClampCtrl;
	signed long diMag2FixedClampCtrl;
	signed long diMag2RemoteClampCtrl;
	signed long diMag3FixedClampCtrl;
	signed long diMag3RemoteClampCtrl;
	signed long diInShutterOpenCtrl;
	signed long diInShutterCloseCtrl;
	signed long diOutShutterOpenCtrl;
	signed long diOutShutterCloseCtrl;
	signed long diMag1ConvMtrIn;
	signed long diMag1ConvMtrOut;
	signed long diMag2ConvMtrIn;
	signed long diMag2ConvMtrOut;
	signed long diMag3ConvMtrIn;
	signed long diMag3ConvMtrOut;
	signed long diMag1SelClampCtrl;
	signed long diMag2SelClampCtrl;
	signed long diMag3SelClampCtrl;
	signed long diPushConvMtrOn;
	signed long diMag1WallEngageCtrl;
	signed long diMag2WallEngageCtrl;
	signed long diMag3WallEngageCtrl;
	signed long diMag1SafetyBarRetCtrl;
	signed long diMag2SafetyBarRetCtrl;
	signed long diMag3SafetyBarRetCtrl;
	signed long diSOT1MagError;
	signed long diSOT1MagSizeLarge;
	signed long diSOT1MagReady;
	signed long diSOT1MagAvailable;
	signed long diSOT2MagError;
	signed long diSOT2MagSizeLarge;
	signed long diSOT2MagReady;
	signed long diSOT2MagAvailable;
	signed long diSOT3MagError;
	signed long diSOT3MagSizeLarge;
	signed long diSOT3MagReady;
	signed long diSOT3MagAvailable;
	signed long diSOT4MagError;
	signed long diSOT4MagSizeLarge;
	signed long diSOT4MagReady;
	signed long diSOT4MagAvailable;
	signed long diMagAWOpenLimByp1;
	signed long diMagAWOpenLimByp2;
	signed long diMagAWOpenLimByp3;
	signed long diMagAWOpenLimByp4;
	signed long diMagAWSmallLimSen1;
	signed long diMagAWSmallLimSen2;
	signed long diMagAWSmallLimSen3;
	signed long diMagAWSmallLimSen4;
	signed long diMag1ReqToBring;
	signed long diMag1ReqToGet;
	signed long diMag2ReqToBring;
	signed long diMag2ReqToGet;
	signed long diMag3ReqToBring;
	signed long diMag3ReqToGet;
	signed long diMag4ReqToBring;
	signed long diMag4ReqToGet;
	signed long diMtrPshrExt;
	signed long diMtrPshrRet;
	signed long diMtrPshrOn;
	signed long diMtrPshrBrakeRls;
	signed long diMtrPshrSpdBinBit0;
	signed long diMtrPshrSpdBinBit1;
	signed long diMtrPshrSpdBinBit2;
	signed long diMtrPshrAlmRst;
	signed long diInMagConvMtrOn;
	signed long diOutMagConvMtrOn;
	signed long diInMagConv2MtrOn;
	signed long diOutMagConv2MtrOn;
	signed long diEntTopStprUnblkCtrl;
	signed long diMidTopStprUnblkCtrl;
	signed long diExtTopStprUnblkCtrl;
	signed long diMidBtmStprUnblkCtrl;
	signed long diExtBtmStprUnblkCtrl;
	signed long diEntTopStprUnblkCtrl2;
	signed long diMidTopStprUnblkCtrl2;
	signed long diExtTopStprUnblkCtrl2;
	signed long diMidBtmStprUnblkCtrl2;
	signed long diExtBtmStprUnblkCtrl2;
	signed long diMtrPwrRly;
	signed long diMag1FixedClampOpenCtrl;
	signed long diMag1RemoteClampOpenCtrl;
	signed long diMag2FixedClampOpenCtrl;
	signed long diMag2RemoteClampOpenCtrl;
	signed long diMag3FixedClampOpenCtrl;
	signed long diMag3RemoteClampOpenCtrl;
	signed long diOutShutterOpenCtrl2;
	signed long diOutShutterCloseCtrl2;
	signed long diOutShutterOpenCtrl3;
	signed long diOutShutterCloseCtrl3;
	signed long diBypCurtainSen;
	signed long diRstCurtainSen;
	signed long diBypCurtainPBLED;
	signed long diInletStopperRetCtrl;
	signed long diInletStopperExtCtrl;
	signed long diScanTrigSig;
	signed long diMag1ExitPCB;
	signed long diMag2ExitPCB;
	signed long diMag3ExitPCB;
	signed long diMag1SelUnClampCtrl;
} tyDigitalOutputSettings;
#endif

#ifndef __AS__TYPE_eULMag
#define __AS__TYPE_eULMag
typedef enum eULMag
{	ULMagDual = 0,
	ULMagTriple = 1,
	ULMagQuadruple = 2,
} eULMag;
#endif

#ifndef __AS__TYPE_eConvDir
#define __AS__TYPE_eConvDir
typedef enum eConvDir
{	ConvDirLToR = 0,
	ConvDirRToL = 1,
	ConvDirLToL = 2,
	ConvDirRToR = 3,
} eConvDir;
#endif

#ifndef __AS__TYPE_eLifMagULUpdateData
#define __AS__TYPE_eLifMagULUpdateData
typedef enum eLifMagULUpdateData
{	BufferActLoadWhenStarted = 0,
	BufferActLoadWhenCompleted = 1,
} eLifMagULUpdateData;
#endif

#ifndef __AS__TYPE_tyMotionCANParamInHm
#define __AS__TYPE_tyMotionCANParamInHm
typedef struct tyMotionCANParamInHm
{	signed char siMode;
	signed long diStartVelInUMPS;
	signed long diOffsetVelInUMPS;
	signed long diAcc;
} tyMotionCANParamInHm;
#endif

#ifndef __AS__TYPE_tyMotionCANParamInConvert
#define __AS__TYPE_tyMotionCANParamInConvert
typedef struct tyMotionCANParamInConvert
{	signed long diPitchInUM;
	signed long diPulsePerRev;
	signed long diPrimaryGearRatio;
	signed long diSecondaryGearRatio;
} tyMotionCANParamInConvert;
#endif

#ifndef __AS__TYPE_tyMotionParam
#define __AS__TYPE_tyMotionParam
typedef struct tyMotionParam
{	signed long diAccInMS;
	signed long diDecInMS;
	signed long diAutoSpdInUMPS;
} tyMotionParam;
#endif

#ifndef __AS__TYPE_tyMotionCANTuning
#define __AS__TYPE_tyMotionCANTuning
typedef struct tyMotionCANTuning
{	signed long diAsdaA2Inertia;
	signed long diAsdaA2PosLoopGain;
	signed long diAsdaA2PosFFGain;
	signed long diAsdaA2SpdLoopGain;
	signed long diAsdaA2SpdIntegral;
	signed long diAsdaA2LowPassFltr;
	signed long diAsdaA2AntiInterGain;
	signed long diAsdaA2FirstTorqueCmd;
	signed long diLex28LTNDderivativeGain_P800;
	signed long diLex28LTNIintegralGain_P801;
	signed long diLex28LTNIVdeIntlGain_P802;
	signed long diLex28LTNPpropotionalGain_P803;
	signed long diLex28LTNUSERGAIN_P804;
	signed long diLex28NLAFFLPFHZspringFil_P805;
	signed long diLex28NLFILTDAMPING_P814;
	signed long diLex28NLFILTT1_P815;
	signed long diPronetInertia;
	signed long diPronetRealTimeAutoAdjSet;
	signed long diPronetPosLoopGain;
	signed long diPronetSpdLoopGain;
	signed long diPronetSpdIntegral;
	signed long diPronetTorqueFilter;
	signed long diPronetPosFeedForward;
	signed long diPronetLowSpeedTestFiltering;
	signed long diPronetStopMode;
} tyMotionCANTuning;
#endif

#ifndef __AS__TYPE_eServoMotorType
#define __AS__TYPE_eServoMotorType
typedef enum eServoMotorType
{	DeltaAsdaA2 = 0,
	SchneiderLexium28 = 1,
	EstunPronet = 2,
} eServoMotorType;
#endif

#ifndef __AS__TYPE_tyUILmt
#define __AS__TYPE_tyUILmt
typedef struct tyUILmt
{	signed long diMax;
	signed long diMin;
} tyUILmt;
#endif

#ifndef __AS__TYPE_PPTorqParam
#define __AS__TYPE_PPTorqParam
typedef struct PPTorqParam
{	unsigned char usiStartTorque;
	unsigned short uiRatio;
} PPTorqParam;
#endif

#ifndef __AS__TYPE_eMidSenParam
#define __AS__TYPE_eMidSenParam
typedef enum eMidSenParam
{	No = 0,
	NcBoschChina = 1,
} eMidSenParam;
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

#ifndef __AS__TYPE_eAutoRcpLmt
#define __AS__TYPE_eAutoRcpLmt
typedef struct eAutoRcpLmt
{	signed long diMaxBottomCleranceInUM;
	signed long diMaxTopClearamceInUM;
	signed long diThicknessInUM;
} eAutoRcpLmt;
#endif

#ifndef __AS__TYPE_eAutoRcpPreceded
#define __AS__TYPE_eAutoRcpPreceded
typedef enum eAutoRcpPreceded
{	PrecededBySelf = 0,
	PrecededByF1 = 1,
	PrecededByF2 = 2,
} eAutoRcpPreceded;
#endif

#ifndef __AS__TYPE_tyNtParam
#define __AS__TYPE_tyNtParam
typedef struct tyNtParam
{	tyDigitalInputSettings tyDISettings;
	tyDigitalOutputSettings tyDOSettings;
	plcbit bAWPusherPrep;
	plcbit bAWPrep;
	plcbit bLFPrep;
	plcbit bLeaderMc;
	plcbit bLFUsrSetPrep;
	signed long diLFWidthLimit;
	plcbit bLFProdWidthChk;
	plcbit bUSWidthChkPrep;
	plcbit bLCSLFPrep;
	plcbit bLCSReqRcpPrep;
	plcbit bLCSManageRcpPrep;
	plcbit bLCSLiveDatPrep;
	plcbit bIPCSMEMA9851ExtdPrep;
	plcbit bVSMEMAPrep;
	plcbit bHermesPrep;
	plcbit bHermesRmtPrep;
	plcbit bOvenInfoPrep;
	plcbit bOvenInfoExtdPrep;
	plcbit bSSaverPrep;
	signed long diAWPushPulOffsetInUM;
	signed long diWidthOffsetInUM;
	plcstring sJobNo[31];
	unsigned char usiNtAddr;
	plcbit bProjLifterMagPlatform;
	plcbit bProjLaneBPrep;
	plcbit bProjBrdPerSltPrep;
	plcbit bProjLongBrdPrep;
	plcbit bProjInletShutPrep;
	plcbit bProjOutletShutPrep;
	plcbit bProjStopperAPrep;
	plcbit bProjStopperBPrep;
	plcbit bProjMag1ConvPrep;
	plcbit bProjMag2ConvPrep;
	plcbit bProjMag3ConvPrep;
	plcbit bProjLifter2Prep;
	plcbit bProjMagConvLane1Prep;
	plcbit bProjMagConvLane2Prep;
	plcbit bProjTopEntStprPrep;
	plcbit bProjTopMidStprPrep;
	plcbit bProjTopExtStprPrep;
	plcbit bProjBtmMidStprPrep;
	plcbit bProjBtmExtStprPrep;
	plcbit bProjTopEntStprPrep2;
	plcbit bProjTopMidStprPrep2;
	plcbit bProjTopExtStprPrep2;
	plcbit bProjBtmMidStprPrep2;
	plcbit bProjBtmExtStprPrep2;
	plcbit bProjMagOrientChkSenPrep;
	plcbit bProjAGVPrep;
	plcbit bProjTCPAGVSigPrep;
	plcbit bProjBypsInitConvPrep;
	plcbit bProjRlsNewProdPrep;
	plcbit bProjBtnInsertRmvMag;
	plcbit bProjSOTSensorPrep;
	plcbit bProjMotorizedPusherPrep;
	plcbit bProjMagAWPrep;
	plcbit bProjMagSafetyBarPrep;
	signed long diProjMagMinSlt;
	signed long diProjMagMaxSlt;
	eULMag eProjMag;
	eConvDir eProjConvDir;
	eConvDir eProjMagConvDir;
	eLifMagULUpdateData eProjMagBuffferActLoad;
	eConvDir eProjInMagConvDir;
	eConvDir eProjOutMagConvDir;
	eConvDir eProjLifterMagConvDir;
	eConvDir eProjInMagConv2Dir;
	eConvDir eProjOutMagConv2Dir;
	eConvDir eProjLifterMagConv2Dir;
	plcstring sUsrFolderProgNm[16];
	plcstring sLibVersionProgNm[16];
	plcstring sTimeProgNm[16];
	plcstring sHWInfoProgNm[16];
	plcstring sHWInfoDevice[4];
	tyTLBuzIn1 tyTLBuz;
	plcstring sAlmProgNm[16];
	unsigned long udiAlmFileKeepDay;
	plcstring sProdRcpProgNm[16];
	plcstring sProdRcpListFileNm[81];
	plcstring sProdRcpSingleFileNm[81];
	plcstring sMpProdRcpProgNm[16];
	plcstring sMpProdRcpFileNm[256];
	plcstring sMpProdRcpPVNm[101];
	plcstring sMagRcpProgNm[16];
	plcstring sMagRcpListFileNm[81];
	plcstring sMagRcpSingleFileNm[81];
	plcstring sMcParamProgNm[16];
	plcstring sMcParamFileNm[81];
	plcstring sUsrMgmtProgNm[16];
	plcstring sBffr1ProgNm[16];
	plcstring sBffr1FileNm[81];
	plcbit bBffr1NxtLoadSeq;
	plcstring sBffr2ProgNm[16];
	plcstring sBffr2FileNm[81];
	plcbit bBffr2NxtLoadSeq;
	plcstring sBffr3ProgNm[16];
	plcstring sBffr3FileNm[81];
	plcbit bBffr3NxtLoadSeq;
	plcstring sUSSMEMAAProgNm[16];
	plctime tUSSMEMAARstDlyTm;
	plctime tUSSMEMAASigInChkTm;
	plcstring sUSSMEMABProgNm[16];
	plctime tUSSMEMABRstDlyTm;
	plctime tUSSMEMABSigInChkTm;
	plcstring sUSSMEMA1ProgNm[16];
	plctime tUSSMEMA1RstDlyTm;
	plctime tUSSMEMA1SigInChkTm;
	plcstring sUSSMEMA2ProgNm[16];
	plctime tUSSMEMA2RstDlyTm;
	plctime tUSSMEMA2SigInChkTm;
	plcstring sUSSMEMA3ProgNm[16];
	plctime tUSSMEMA3RstDlyTm;
	plctime tUSSMEMA3SigInChkTm;
	plcstring sDSSMEMA1ProgNm[16];
	plctime tDSSMEMA1RstDlyTm;
	plctime tDSSMEMA1SigInChkTm;
	plcstring sDSSMEMA2ProgNm[16];
	plctime tDSSMEMA2RstDlyTm;
	plctime tDSSMEMA2SigInChkTm;
	plcstring sDSSMEMA3ProgNm[16];
	plctime tDSSMEMA3RstDlyTm;
	plctime tDSSMEMA3SigInChkTm;
	plcstring sInShutterProgNm[16];
	plcbit bInShutterTwoCtrlIn;
	plctime tInShutterExtTO;
	plctime tInShutterRetTO;
	plcstring sOutShutterProgNm[16];
	plcbit bOutShutterTwoCtrlIn;
	plctime tOutShutterExtTO;
	plctime tOutShutterRetTO;
	plcstring sSelClamp1ProgNm[16];
	plcbit bSelClamp1TwoCtrlIn;
	plctime tSelClamp1ExtDlyTm;
	plctime tSelClamp1RetDlyTm;
	plcstring sSelClamp2ProgNm[16];
	plcbit bSelClamp2TwoCtrlIn;
	plctime tSelClamp2ExtDlyTm;
	plctime tSelClamp2RetDlyTm;
	plcstring sSelClamp3ProgNm[16];
	plcbit bSelClamp3TwoCtrlIn;
	plctime tSelClamp3ExtDlyTm;
	plctime tSelClamp3RetDlyTm;
	plcstring sTopEntStprProgNm[16];
	plcbit bTopEntStprTwoCtrlIn;
	plctime tTopEntStprExtDlyTm;
	plctime tTopEntStprRetDlyTm;
	plcstring sTopMidStprProgNm[16];
	plcbit bTopMidStprTwoCtrlIn;
	plctime tTopMidStprExtDlyTm;
	plctime tTopMidStprRetDlyTm;
	plcstring sTopExtStprProgNm[16];
	plcbit bTopExtStprTwoCtrlIn;
	plctime tTopExtStprExtDlyTm;
	plctime tTopExtStprRetDlyTm;
	plcstring sBtmMidStprProgNm[16];
	plcbit bBtmMidStprTwoCtrlIn;
	plctime tBtmMidStprExtDlyTm;
	plctime tBtmMidStprRetDlyTm;
	plcstring sBtmExtStprProgNm[16];
	plcbit bBtmExtStprTwoCtrlIn;
	plctime tBtmExtStprExtDlyTm;
	plctime tBtmExtStprRetDlyTm;
	plcstring sTopEntStprProgNm2[16];
	plcbit bTopEntStprTwoCtrlIn2;
	plctime tTopEntStprExtDlyTm2;
	plctime tTopEntStprRetDlyTm2;
	plcstring sTopMidStprProgNm2[16];
	plcbit bTopMidStprTwoCtrlIn2;
	plctime tTopMidStprExtDlyTm2;
	plctime tTopMidStprRetDlyTm2;
	plcstring sTopExtStprProgNm2[16];
	plcbit bTopExtStprTwoCtrlIn2;
	plctime tTopExtStprExtDlyTm2;
	plctime tTopExtStprRetDlyTm2;
	plcstring sBtmMidStprProgNm2[16];
	plcbit bBtmMidStprTwoCtrlIn2;
	plctime tBtmMidStprExtDlyTm2;
	plctime tBtmMidStprRetDlyTm2;
	plcstring sBtmExtStprProgNm2[16];
	plcbit bBtmExtStprTwoCtrlIn2;
	plctime tBtmExtStprExtDlyTm2;
	plctime tBtmExtStprRetDlyTm2;
	plcstring sStopperAProgNm[16];
	plcbit bStopperATwoCtrlIn;
	plctime tStopperAExtDlyTm;
	plctime tStopperARetDlyTm;
	plcstring sStopperBProgNm[16];
	plcbit bStopperBTwoCtrlIn;
	plctime tStopperBExtDlyTm;
	plctime tStopperBRetDlyTm;
	plcstring sPshrConvProgNm[16];
	plcbit bPshrConvOnDirMod;
	plctime tPshrConvMtrOffDlyTm;
	plctime tPshrConvPshrExtTO;
	plctime tPshrConvPshrRetTO;
	plcstring sMag1SafetyBarProgNm[16];
	plcbit bMag1SafetyBarTwoCtrlIn;
	plctime tMag1SafetyBarExtTO;
	plctime tMag1SafetyBarRetTO;
	plcstring sMag2SafetyBarProgNm[16];
	plcbit bMag2SafetyBarTwoCtrlIn;
	plctime tMag2SafetyBarExtTO;
	plctime tMag2SafetyBarRetTO;
	plcstring sMag3SafetyBarProgNm[16];
	plcbit bMag3SafetyBarTwoCtrlIn;
	plctime tMag3SafetyBarExtTO;
	plctime tMag3SafetyBarRetTO;
	plcstring sMag1AWEngageProgNm[16];
	plcbit bMag1AWEngageTwoCtrlIn;
	plctime tMag1AWEngageExtTO;
	plctime tMag1AWEngageRetTO;
	plcstring sMag2AWEngageProgNm[16];
	plcbit bMag2AWEngageTwoCtrlIn;
	plctime tMag2AWEngageExtTO;
	plctime tMag2AWEngageRetTO;
	plcstring sMag3AWEngageProgNm[16];
	plcbit bMag3AWEngageTwoCtrlIn;
	plctime tMag3AWEngageExtTO;
	plctime tMag3AWEngageRetTO;
	plcstring sMagConv1ProgNm[16];
	plcbit bMagConv1OnDirMod;
	plctime tMagConv1MtrOffDlyTm;
	plctime tMagConv1ClprClampTO;
	plctime tMagConv1ClprUnclampTO;
	plcstring sMagConv2ProgNm[16];
	plcbit bMagConv2OnDirMod;
	plctime tMagConv2MtrOffDlyTm;
	plctime tMagConv2ClprClampTO;
	plctime tMagConv2ClprUnclampTO;
	plcstring sMagConv3ProgNm[16];
	plcbit bMagConv3OnDirMod;
	plctime tMagConv3MtrOffDlyTm;
	plctime tMagConv3ClprClampTO;
	plctime tMagConv3ClprUnclampTO;
	plcstring sMtrPshrProgNm[16];
	plcbit bMtrPshrDir;
	plctime tMtrPshrAlmRstTm;
	plctime tMtrPshrAlmTrigTm;
	plctime tMtrPshrExtTO;
	plctime tMtrPshrRetTO;
	signed long diMtrPshrExtSlowSpd;
	signed long diMtrPshrRetSlowSpd;
	signed long diMtrPshrExtNomSpd;
	signed long diMtrPshrRetNomSpd;
	signed long diMtrPshrExtTorq;
	signed long diMtrPshrRetTorq;
	signed long diMtrPshrStartTorq;
	plcstring sInMagConvProgNm[16];
	plcbit bInMagConvOnDirMod;
	plctime tInMagConvMtrOffDlyTm;
	plcstring sOutMagConvProgNm[16];
	plcbit bOutMagConvOnDirMod;
	plctime tOutMagConvMtrOffDlyTm;
	plcstring sLifterMagProgNm[16];
	plcbit bLifterMagOnDirMod;
	plctime tLifterMagMtrOffDlyTm;
	plctime tLifterMagClprClampTO;
	plctime tLifterMagClprUnclampTO;
	plcstring sInMagConv2ProgNm[16];
	plcbit bInMagConv2OnDirMod;
	plctime tInMagConv2MtrOffDlyTm;
	plcstring sOutMagConv2ProgNm[16];
	plcbit bOutMagConv2OnDirMod;
	plctime tOutMagConv2MtrOffDlyTm;
	plcstring sLifterMag2ProgNm[16];
	plcbit bLifterMag2OnDirMod;
	plctime tLifterMag2MtrOffDlyTm;
	plctime tLifterMagClprClampTO2;
	plctime tLifterMagClprUnclampTO2;
	plcstring sAWPushPullProgNm[16];
	plcstring sAWPushPullDevice[4];
	unsigned char usiAWPushPullNode;
	plcbit bAWPushPullDir;
	plcbit bAWPushPullDirBl;
	signed long diAWPushPullPitchInUM;
	signed long diAWPushPullMovBlDistInUM;
	tyMotionCANParamInHm tyAWPushPullParamInHm;
	tyMotionCANParamInConvert tyAWPushPullParamInConvert;
	tyMotionParam tyAWPushPullParam;
	tyMotionCANTuning tyAWPushPullTuning;
	eServoMotorType eAWPushPullServoMotorType;
	plcstring sAWProgNm[16];
	plcstring sAWDevice[4];
	unsigned char usiAWNode;
	plcbit bAWDir;
	plcbit bAWDirBl;
	signed long diAWPitchInUM;
	signed long diAWMovBlDistInUM;
	tyMotionCANParamInHm tyAWParamInHm;
	tyMotionCANParamInConvert tyAWParamInConvert;
	tyMotionParam tyAWParam;
	tyMotionCANTuning tyAWTuning;
	eServoMotorType eAWServoMotorType;
	plcstring sTravProgNm[16];
	plcstring sTravDevice[4];
	unsigned char usiTravNode;
	plcbit bTravDir;
	tyMotionCANParamInHm tyTravParamInHm;
	tyMotionCANParamInConvert tyTravParamInConvert;
	tyMotionParam tyTravParam;
	tyMotionCANTuning tyTravTuning;
	eServoMotorType eTravServoMotorType;
	signed long diTravAutoSpdLongBrdInUMPS;
	plcstring sLifterProgNm[16];
	plcstring sLifterDevice[4];
	unsigned char usiLifterNode;
	plcbit bLifterDir;
	tyMotionCANParamInHm tyLifterParamInHm;
	tyMotionCANParamInConvert tyLifterParamInConvert;
	tyMotionParam tyLifterParam;
	tyMotionCANTuning tyLifterTuning;
	eServoMotorType eLifterServoMotorType;
	plcstring sLifterProgNm2[16];
	plcstring sLifterDevice2[4];
	unsigned char usiLifterNode2;
	plcbit bLifterDir2;
	tyMotionCANParamInHm tyLifterParamInHm2;
	tyMotionCANParamInConvert tyLifterParamInConvert2;
	tyMotionParam tyLifterParam2;
	tyMotionCANTuning tyLifterTuning2;
	eServoMotorType eLifterServoMotorType2;
	plcstring sDIProgNm[16];
	plcstring sAGVProgNm[16];
	plcstring sAGVMag1ProgNm[16];
	plcstring sAGVMag2ProgNm[16];
	plcstring sAGVMag3ProgNm[16];
	plcstring sHermesProgNm[16];
	plcstring sHermesRetainFileNm[81];
	plcstring sHermesConfigFileNm[81];
	plcstring sUSHermesAProgNm[16];
	unsigned long udiUSHermesAFileKeepDay;
	unsigned long udiUSHermesAAliveTmInSec;
	plctime tUSHermesAConnTO;
	plcstring sUSHermesBProgNm[16];
	unsigned long udiUSHermesBFileKeepDay;
	unsigned long udiUSHermesBAliveTmInSec;
	plctime tUSHermesBConnTO;
	plcstring sRmtHermesProgNm[16];
	plcstring sRmtHermesConfigFileNm[81];
	unsigned long udiRmtHermesFileKeepDay;
	unsigned long udiRmtHermesAliveTmInSec;
	unsigned long udiRmtHermesSndBffrSize;
	unsigned long udiRmtHermesRcvBffrSize;
	plcstring sLFLeaderProgNm[16];
	plctime tLFLeaderOnlineChkDlyTm;
	plctime tLFLeaderSetTmOffDlyTm;
	plcstring sLFFollowerProgNm[16];
	plcstring sFollower1ProgNm[16];
	plcstring sFollower2ProgNm[16];
	plcstring sLCSProgNm[16];
	plcstring sLCSMngRcpProgNm[16];
	plcstring sLCSLFProgNm[16];
	plcstring sOpsTravLifULProgNm[16];
	plcstring sOpsMagUL1ProgNm[16];
	plcstring sOpsMagUL2ProgNm[16];
	plcstring sOpsMagUL3ProgNm[16];
	plcstring sOpsMagConvUL1ProgNm[16];
	plcstring sOpsMagConvUL2ProgNm[16];
	plcstring sOpsMagConvUL3ProgNm[16];
	plcstring sOpsInMagConv[16];
	plcstring sOpsOutMagConv[16];
	plcstring sOpsMagConvStprProgNm[16];
	plcstring sOpsMagConvStprProgNm1[16];
	tyUILmt tyProdRcpWidth;
	tyUILmt tyProdRcpMinSlt;
	tyUILmt tyProdRcpMaxSlt;
	tyUILmt tyProdRcpPitch;
	tyUILmt tyProdRcpBrdPerSlt;
	tyUILmt tyProdRcpMcModA;
	tyUILmt tyProdRcpMcModAB;
	tyUILmt tyProdRcpOvenMinReqFreeBffr;
	tyUILmt tyUISSaverTm;
	tyUILmt tyUIConvInitTm;
	tyUILmt tyUIMagConvRunTm;
	tyUILmt tyUILifterTopPos;
	tyUILmt tyUILifterBtmPos;
	tyUILmt tyUITranInErrDlyTm;
	tyUILmt tyUIOvenMaxBffrBtwnMc;
	tyUILmt tyUIHermesSndAliveTm;
	tyUILmt tyUIHermesLnID;
	tyUILmt tyUIAntiGapSenOnTm;
	tyUILmt tyUIAntiGapSenOffTm;
	tyUILmt tyUISltToSltDist;
	tyUILmt tyUIAWTargetPos;
	tyUILmt tyUIAWStepSize;
	tyUILmt tyUIAWNomSpd;
	tyUILmt tyUIAWSlwSpd;
	tyUILmt tyUITravTargetPos;
	tyUILmt tyUITravStepSize;
	tyUILmt tyUITravNomSpd;
	tyUILmt tyUITravSlwSpd;
	tyUILmt tyUILifterTargetPos;
	tyUILmt tyUILifterStepSize;
	tyUILmt tyUILifterNomSpd;
	tyUILmt tyUILifterSlwSpd;
	tyUILmt tyUIMagAWTargetPos;
	tyUILmt tyUIMagAWStepSize;
	tyUILmt tyUIMagAWNomSpd;
	tyUILmt tyUIMagAWSlwSpd;
	tyUILmt tyUILFIndexBeforeOven;
	tyUILmt tyUILFIndexAfterOven;
	plcstring sUIDefaultLoginNm[31];
	plcstring sUIDefaultLoginPw[31];
	plctime tShutterWaitTmr;
	tyUILmt tyUIAWOffset;
	plcbit bAutoLogoutPrep;
	tyUILmt tyUIAutoLogoutTm;
	plcbit bMagAutoVerifyPrep;
	tyUILmt tyUIMcParamMagAutoEntSenTm;
	plcbit bProjAIVInPosSenPrep;
	plcstring sMpNtParamFileNm[256];
	plcstring sMpNtParamPVNm[101];
	tyUILmt tyNetworkMode;
	plcbit bHermesSvyPrep;
	plcbit bHermesSvyFirstMcInTheLine1;
	plcbit bHermesSvyMagTypeMc;
	plcstring sSvyHermesProgNm[16];
	plcstring sSvyHermesConfigFileNm[81];
	unsigned long udiSvyHermesFileKeepDay;
	unsigned long udiSvyHermesAliveTmInSec;
	plctime tSvyHermesConnTO;
	plcstring sSvyHermesRetainFileNm[81];
	plcstring sDSHermesRetainFileNm[81];
	float rMachineCycleTime;
	float rAutoWidthCycleTime;
	plcbit bHermesScannerPrep1;
	signed short iInput;
	signed short iOutput;
	plcbit bLFProdWidth2Prep;
	plctime tLFFollowerOnlineChkDlyTm;
	plcstring sMagAW1ProgNm[16];
	plcstring sMagAW1Device[4];
	unsigned char usiMagAW1Node;
	plcbit bMagAW1Dir;
	plcbit bMagAW1DirBl;
	signed long diMagAW1PitchInUM;
	signed long diMagAW1MovBlDistInUM;
	tyMotionCANParamInHm tyMagAW1ParamInHm;
	tyMotionCANParamInConvert tyMagAW1ParamInConvert;
	tyMotionParam tyMagAW1Param;
	tyMotionCANTuning tyMagAW1Tuning;
	signed long diMagAW1EngageSpdInUMPS;
	eServoMotorType eMagAW1ServoMotorType;
	signed long diMag1WidthOffsetInUM;
	plcstring sMagAW2ProgNm[16];
	plcstring sMagAW2Device[4];
	unsigned char usiMagAW2Node;
	plcbit bMagAW2Dir;
	plcbit bMagAW2DirBl;
	signed long diMagAW2PitchInUM;
	signed long diMagAW2MovBlDistInUM;
	tyMotionCANParamInHm tyMagAW2ParamInHm;
	tyMotionCANParamInConvert tyMagAW2ParamInConvert;
	tyMotionParam tyMagAW2Param;
	tyMotionCANTuning tyMagAW2Tuning;
	signed long diMagAW2EngageSpdInUMPS;
	eServoMotorType eMagAW2ServoMotorType;
	signed long diMag2WidthOffsetInUM;
	plcstring sMagAW3ProgNm[16];
	plcstring sMagAW3Device[4];
	unsigned char usiMagAW3Node;
	plcbit bMagAW3Dir;
	plcbit bMagAW3DirBl;
	signed long diMagAW3PitchInUM;
	signed long diMagAW3MovBlDistInUM;
	tyMotionCANParamInHm tyMagAW3ParamInHm;
	tyMotionCANParamInConvert tyMagAW3ParamInConvert;
	tyMotionParam tyMagAW3Param;
	tyMotionCANTuning tyMagAW3Tuning;
	signed long diMagAW3EngageSpdInUMPS;
	eServoMotorType eMagAW3ServoMotorType;
	signed long diMag3WidthOffsetInUM;
	plcstring sMachineProgNm[16];
	plcstring sUSSOT1ProgNm[16];
	plctime tUSSOT1RstDlyTm;
	plctime tUSSOT1SigInChkTm;
	plcstring sUSSOT2ProgNm[16];
	plctime tUSSOT2RstDlyTm;
	plctime tUSSOT2SigInChkTm;
	plcstring sUSSOT3ProgNm[16];
	plctime tUSSOT3RstDlyTm;
	plctime tUSSOT3SigInChkTm;
	plcstring sDSSOT1ProgNm[16];
	plctime tDSSOT1RstDlyTm;
	plctime tDSSOT1SigInChkTm;
	plcstring sDSSOT2ProgNm[16];
	plctime tDSSOT2RstDlyTm;
	plctime tDSSOT2SigInChkTm;
	plcstring sDSSOT3ProgNm[16];
	plctime tDSSOT3RstDlyTm;
	plctime tDSSOT3SigInChkTm;
	plcbit bSOTReadyOnFirst;
	plcbit bShowMESName;
	plcbit bShowFMorMESActive;
	tyUILmt tyProdRcpMtrPshrExtSpd;
	tyUILmt tyProdRcpMtrPshrExtTorq;
	plcbit bProjUSFixToFixRail;
	plcbit bUIConvDirRL;
	plcbit bDSWidthChkPrep;
	plcbit bProjServoPullerPusherPrep;
	plcstring sPPProgNm[16];
	plcstring sPPDevice[4];
	unsigned char usiPPNode;
	plcbit bPPDir;
	plcbit bPPDirBl;
	signed long diPPPitchInUM;
	signed long diPPMovBlDistInUM;
	tyMotionCANParamInHm tyPPParamInHm;
	tyMotionCANParamInConvert tyPPParamInConvert;
	tyMotionParam tyPPParam;
	tyMotionCANTuning tyPPTuning;
	eServoMotorType ePPServoMotorType;
	plcbit bProjFixClprMagDetectSenPrep;
	plcbit bCurtainSenPrep;
	plcbit bProjMagHeightChkPrep;
	signed long diTravGoToMagWidthChkPt1;
	signed long diTravGoToMagWidthChkPt2;
	signed long diTravGoToMagWidthChkPt3;
	plcbit bProjOutletShut2Prep;
	plcbit bProjOutletShut3Prep;
	plcbit bProjScanPrep;
	plcbit bProjOpConPrep;
	PPTorqParam tyPPTorqParam;
	plcbit bProjLifTravMnlLoad;
	eMidSenParam eMidSenNcNoType;
	plcbit bHermesScannerPrep;
	plcbit bHermesSvyFirstMcInTheLine;
	plcbit bAutoRcpPrep;
	eCustomer eCustomerReq;
	plcbit bProjInletStopperPrep;
	plcstring sInletStopperProgNm[16];
	plcbit bInletStopperTwoCtrlIn;
	plctime tInletStopperExtDlyTm;
	plctime tInletStopperRetDlyTm;
	eAutoRcpLmt eAutoRcpParamLmt;
	plcstring sAutoRcpProgNm[16];
	eAutoRcpPreceded eAutoRcpPrecededBy;
	plcbit bChinesePrep;
	plcbit bGermanPrep;
	plcstring sHWInfoHMIMacAddress[28];
	tyUILmt tyUIBtnPosLmt;
} tyNtParam;
#endif

#ifndef __AS__TYPE_MpComSeveritiesEnum
#define __AS__TYPE_MpComSeveritiesEnum
typedef enum MpComSeveritiesEnum
{	mpCOM_SEV_SUCCESS = 0,
	mpCOM_SEV_INFORMATIONAL = 1,
	mpCOM_SEV_WARNING = 2,
	mpCOM_SEV_ERROR = 3,
} MpComSeveritiesEnum;
#endif

#ifndef __AS__TYPE_MpComInternalDataType
#define __AS__TYPE_MpComInternalDataType
typedef struct MpComInternalDataType
{	unsigned long pObject;
	unsigned long State;
} MpComInternalDataType;
#endif

#ifndef __AS__TYPE_MpRecipeErrorEnum
#define __AS__TYPE_MpRecipeErrorEnum
typedef enum MpRecipeErrorEnum
{	mpRECIPE_NO_ERROR = 0,
	mpRECIPE_ERR_ACTIVATION = -1064239103,
	mpRECIPE_ERR_MPLINK_NULL = -1064239102,
	mpRECIPE_ERR_MPLINK_INVALID = -1064239101,
	mpRECIPE_ERR_MPLINK_CHANGED = -1064239100,
	mpRECIPE_ERR_MPLINK_CORRUPT = -1064239099,
	mpRECIPE_ERR_MPLINK_IN_USE = -1064239098,
	mpRECIPE_ERR_CONFIG_INVALID = -1064239091,
	mpRECIPE_ERR_SAVE_DATA = -1064140799,
	mpRECIPE_ERR_LOAD_DATA = -1064140798,
	mpRECIPE_ERR_INVALID_FILE_DEV = -1064140797,
	mpRECIPE_ERR_INVALID_FILE_NAME = -1064140796,
	mpRECIPE_ERR_CMD_IN_PROGRESS = -1064140795,
	mpRECIPE_WRN_SAVE_WITH_WARN = -2137882618,
	mpRECIPE_WRN_LOAD_WITH_WARN = -2137882617,
	mpRECIPE_ERR_SAVE_WITH_ERRORS = -1064140792,
	mpRECIPE_ERR_LOAD_WITH_ERRORS = -1064140791,
	mpRECIPE_ERR_MISSING_RECIPE = -1064140790,
	mpRECIPE_ERR_MISSING_MPFILE = -1064140789,
	mpRECIPE_ERR_INVALID_SORT_ORDER = -1064140788,
	mpRECIPE_WRN_MISSING_UICONNECT = -2137882611,
	mpRECIPE_ERR_INVALID_PV_NAME = -1064140786,
	mpRECIPE_ERR_INVALID_LOAD_TYPE = -1064140785,
	mpRECIPE_ERR_LISTING_FILES = -1064140784,
	mpRECIPE_ERR_PV_NAME_NULL = -1064140783,
	mpRECIPE_WRN_NO_PV_REGISTERED = -2137882606,
	mpRECIPE_ERR_SYNC_SAVE_ACTIVE = -1064140781,
	mpRECIPE_ERR_DELETING_FILE = -1064140780,
	mpRECIPE_WRN_EMPTY_RECIPE = -2137882603,
	mpRECIPE_INF_WAIT_RECIPE_FB = 1083342870,
	mpRECIPE_ERR_RENAMING_FILE = -1064140777,
	mpRECIPE_WRN_NO_PV_FOUND = -2137882600,
	mpRECIPE_WRN_LIST_SIZE = -2137882599,
} MpRecipeErrorEnum;
#endif

#ifndef __AS__TYPE_MpRecipeStatusIDType
#define __AS__TYPE_MpRecipeStatusIDType
typedef struct MpRecipeStatusIDType
{	MpRecipeErrorEnum ID;
	MpComSeveritiesEnum Severity;
	unsigned short Code;
} MpRecipeStatusIDType;
#endif

#ifndef __AS__TYPE_MpRecipeDiagType
#define __AS__TYPE_MpRecipeDiagType
typedef struct MpRecipeDiagType
{	MpRecipeStatusIDType StatusID;
} MpRecipeDiagType;
#endif

#ifndef __AS__TYPE_MpRecipeInfoType
#define __AS__TYPE_MpRecipeInfoType
typedef struct MpRecipeInfoType
{	MpRecipeDiagType Diag;
} MpRecipeInfoType;
#endif

#ifndef __AS__TYPE_MpRecipeXmlInfoType
#define __AS__TYPE_MpRecipeXmlInfoType
typedef struct MpRecipeXmlInfoType
{	unsigned long FileSize;
	unsigned long PendingSync;
	MpRecipeDiagType Diag;
	plcstring LastLoadedRecipe[256];
} MpRecipeXmlInfoType;
#endif

#ifndef __AS__TYPE_MpRecipeXmlHeaderType
#define __AS__TYPE_MpRecipeXmlHeaderType
typedef struct MpRecipeXmlHeaderType
{	plcstring Name[101];
	plcstring Description[256];
	plcstring Version[21];
	plcdt DateTime;
} MpRecipeXmlHeaderType;
#endif

#ifndef __AS__TYPE_MpRecipeXmlLoadEnum
#define __AS__TYPE_MpRecipeXmlLoadEnum
typedef enum MpRecipeXmlLoadEnum
{	mpRECIPE_XML_LOAD_ALL = 0,
	mpRECIPE_XML_LOAD_HEADER = 1,
} MpRecipeXmlLoadEnum;
#endif

struct DirCreate
{	unsigned long pDevice;
	unsigned long pName;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void DirCreate(struct DirCreate* inst);
#ifndef __AS__TYPE_tyDirCreateInternal
#define __AS__TYPE_tyDirCreateInternal
typedef struct tyDirCreateInternal
{	struct DirCreate fbDirCreate;
} tyDirCreateInternal;
#endif

struct MpRecipeRegPar
{	struct MpComIdentType(* MpLink);
	plcstring(* PVName)[101];
	plcstring(* Category)[51];
	signed long StatusID;
	MpRecipeInfoType Info;
	MpComInternalDataType Internal;
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Active;
	plcbit Error;
	plcbit UpdateNotification;
};
_BUR_PUBLIC void MpRecipeRegPar(struct MpRecipeRegPar* inst);
struct MpRecipeXml
{	struct MpComIdentType(* MpLink);
	plcstring(* DeviceName)[51];
	plcstring(* FileName)[256];
	struct MpRecipeXmlHeaderType(* Header);
	plcstring(* Category)[51];
	MpRecipeXmlLoadEnum LoadType;
	signed long StatusID;
	MpRecipeXmlInfoType Info;
	MpComInternalDataType Internal;
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Load;
	plcbit Save;
	plcbit UpdateNotification;
	plcbit Active;
	plcbit Error;
	plcbit CommandBusy;
	plcbit CommandDone;
};
_BUR_PUBLIC void MpRecipeXml(struct MpRecipeXml* inst);
struct fbDirCreate
{	plcstring sDevice[81];
	plcstring sDirName[81];
	unsigned long udiStatus;
	tyDirCreateInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbDirCreate(struct fbDirCreate* inst);
_BUR_LOCAL tyMpProdRcp tylocalMpProdRcp;
_BUR_LOCAL struct tyProdRcpParam(* pa_tyMpProdRcp)[2000];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL struct tyProdRcpParam a_tyMpProdRcp1[2000];
_BUR_LOCAL struct fbDirCreate fbDirCreate1;
_BUR_LOCAL struct fbDirCreate fbDirCreate2;
_BUR_LOCAL struct MpRecipeRegPar fbMpRecipeRegPar;
_BUR_LOCAL struct MpRecipeXml fbMpRecipeXml;
_BUR_LOCAL unsigned long c_udiMpProdRcpMax;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL tyUIOut1 g_tyUIOut;
_GLOBAL tyStartUpOut1 g_tyStartUp;
_GLOBAL tyAlmProgNm g_tyAlmProgNm;
_GLOBAL tyRstErrOut1 g_tyRstErrOut;
_GLOBAL unsigned long p_ProdRcpCurrList;
_GLOBAL tyMpProdRcpOut1 g_tyMpProdRcp;
_GLOBAL tyNtParam g_tyNtParamCurr;
_GLOBAL MpComIdentType gRecipeXml;
_GLOBAL signed long c_diLFClntNum;
_LOCAL plcbit Edge0000100000;
static void __AS__Action__Act_InputConfig(void);
static void __AS__Action__Act_OutputConfig(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Main(void);
static void __AS__Action__Act_Alarm(void);
