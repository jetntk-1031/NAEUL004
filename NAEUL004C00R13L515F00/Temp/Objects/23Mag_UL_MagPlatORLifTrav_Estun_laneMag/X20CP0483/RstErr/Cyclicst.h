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

#ifndef __AS__TYPE_tyRstErrIn1
#define __AS__TYPE_tyRstErrIn1
typedef struct tyRstErrIn1
{	eRstErrAction eAct;
	plcbit bSafetyRlySig;
	plcbit bManual;
} tyRstErrIn1;
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

#ifndef __AS__TYPE_tyRstErr
#define __AS__TYPE_tyRstErr
typedef struct tyRstErr
{	tyRstErrIn1 In;
	tyRstErrOut1 Out;
} tyRstErr;
#endif

#ifndef __AS__TYPE_tyDigitalInput
#define __AS__TYPE_tyDigitalInput
typedef struct tyDigitalInput
{	plcbit bSafetyRlySig;
	plcbit bEStopSig;
	plcbit bCoverSWSig;
	plcbit bUBAA;
	plcbit bUBAB;
	plcbit bUBAAStat;
	plcbit bUBABStat;
	plcbit bPusherExtRS;
	plcbit bPusherRetRS;
	plcbit bConvLftSen;
	plcbit bConvMidSen;
	plcbit bConvRgtSen;
	plcbit bConvClrSen;
	plcbit bOvenInfeedSigA;
	plcbit bOvenInfeedSigB;
	plcbit bLifterTimingBeltSen;
	plcbit bLifterSafetyLmtSW1;
	plcbit bLifterSafetyLmtSW2;
	plcbit bMag1FixedClampRS;
	plcbit bMag1FixedUnclampRS;
	plcbit bMag1RemoteClampRS;
	plcbit bMag1RemoteUnclampRS;
	plcbit bMag2FixedClampRS;
	plcbit bMag2FixedUnclampRS;
	plcbit bMag2RemoteClampRS;
	plcbit bMag2RemoteUnclampRS;
	plcbit bMag3FixedClampRS;
	plcbit bMag3FixedUnclampRS;
	plcbit bMag3RemoteClampRS;
	plcbit bMag3RemoteUnclampRS;
	plcbit bInShutterOpenRS;
	plcbit bInShutterCloseRS;
	plcbit bOutShutterOpenRS;
	plcbit bOutShutterCloseRS;
	plcbit bMagPresentSen1;
	plcbit bMagPresentSen2;
	plcbit bMagPresentSen3;
	plcbit bMagConvEntSen1;
	plcbit bMagConvEntSen2;
	plcbit bMagConvEntSen3;
	plcbit bMag1AIVInPosSen1;
	plcbit bMag1AIVInPosSen2;
	plcbit bMag2AIVInPosSen1;
	plcbit bMag2AIVInPosSen2;
	plcbit bMag3AIVInPosSen1;
	plcbit bMag3AIVInPosSen2;
	plcbit bMag1OrientChkSen1;
	plcbit bMag1OrientChkSen2;
	plcbit bMag2OrientChkSen1;
	plcbit bMag2OrientChkSen2;
	plcbit bMag3OrientChkSen1;
	plcbit bMag3OrientChkSen2;
	plcbit bUSWidthChkSen;
	plcbit bConvLineAInletSen;
	plcbit bConvLineBInletSen;
	plcbit bMagConvHeightSen1;
	plcbit bMagConvHeightSen2;
	plcbit bMagConvHeightSen3;
	plcbit bMagConvSmallMagSen1;
	plcbit bMagConvSmallMagSen2;
	plcbit bMagConvSmallMagSen3;
	plcbit bMagConvLargeMagSen1;
	plcbit bMagConvLargeMagSen2;
	plcbit bMagConvLargeMagSen3;
	plcbit bMagConvCAB717MagSen1;
	plcbit bMagConvCAB717MagSen2;
	plcbit bMagConvCAB717MagSen3;
	plcbit bMag1SelUnClampRS;
	plcbit bMag2SelUnClampRS;
	plcbit bMag3SelUnClampRS;
	plcbit bMag1WallEngageRS;
	plcbit bMag1WallDisengageRS;
	plcbit bMag2WallEngageRS;
	plcbit bMag2WallDisengageRS;
	plcbit bMag3WallEngageRS;
	plcbit bMag3WallDisengageRS;
	plcbit bMag1SafetyBarExtRS;
	plcbit bMag1SafetyBarRetRS;
	plcbit bMag2SafetyBarExtRS;
	plcbit bMag2SafetyBarRetRS;
	plcbit bMag3SafetyBarExtRS;
	plcbit bMag3SafetyBarRetRS;
	plcbit bSOT1Receive;
	plcbit bSOT1AIVError;
	plcbit bSOT1AIVSizeLarge;
	plcbit bSOT1AIVReady;
	plcbit bSOT1AIVAvailable;
	plcbit bSOT2Receive;
	plcbit bSOT2AIVError;
	plcbit bSOT2AIVSizeLarge;
	plcbit bSOT2AIVReady;
	plcbit bSOT2AIVAvailable;
	plcbit bSOT3Receive;
	plcbit bSOT3AIVError;
	plcbit bSOT3AIVSizeLarge;
	plcbit bSOT3AIVReady;
	plcbit bSOT3AIVAvailable;
	plcbit bSOT4Receive;
	plcbit bSOT4AIVError;
	plcbit bSOT4AIVSizeLarge;
	plcbit bSOT4AIVReady;
	plcbit bSOT4AIVAvailable;
	plcbit bFleetManagerReady;
	plcbit bPusherExtSlwSen;
	plcbit bPusherRetSlwSen;
	plcbit bMtrPshrTorqueSig;
	plcbit bMtrPshrAlmSig;
	plcbit bMagWidthChkSen;
	plcbit bPshrAntiJam;
	plcbit bInMagConvEntSen;
	plcbit bInMagConvExtSen;
	plcbit bInMagConvMidSen;
	plcbit bOutMagConvEntSen;
	plcbit bOutMagConvExtSen;
	plcbit bOutMagConvMidSen;
	plcbit bInMagConv2EntSen;
	plcbit bInMagConv2ExtSen;
	plcbit bInMagConv2MidSen;
	plcbit bOutMagConv2EntSen;
	plcbit bOutMagConv2ExtSen;
	plcbit bOutMagConv2MidSen;
	plcbit bLifterLmtSW;
	plcbit bLifter2LmtSW;
	plcbit bMtrOverloadSig;
	plcbit bOutShutterOpenRS2;
	plcbit bOutShutterCloseRS2;
	plcbit bOutShutterOpenRS3;
	plcbit bOutShutterCloseRS3;
	plcbit bMag1FixedClampSen;
	plcbit bMag2FixedClampSen;
	plcbit bMag3FixedClampSen;
	plcbit bCurtainSenPB;
	plcbit bCurtainSen;
	plcbit bCurtainSafetySig;
	plcbit bHighMagDetSen1;
	plcbit bHighMagDetSen2;
	plcbit bHighMagDetSen3;
	plcbit bInletStopperASen;
	plcbit diScanComplSig;
	plcbit diPCBScanSen;
	plcbit bSPARE17;
	plcbit bSPARE18;
	plcbit bSPARE19;
	plcbit bSPARE20;
} tyDigitalInput;
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
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL struct TON fbSafetyRlyRstTm;
_BUR_LOCAL tyRstErr tylocalRstErr;
_GLOBAL tyUIOut1 g_tyUIOut;
_GLOBAL tyStartUpOut1 g_tyStartUp;
_GLOBAL tyRstErrOut1 g_tyRstErrOut;
_GLOBAL tyDigitalInput g_tyDInput;
_GLOBAL signed long c_diLFClntNum;
_LOCAL plcbit Edge0000300000;
_LOCAL plcbit Edge0000300001;
static void __AS__Action__Act_InputConfig(void);
static void __AS__Action__Act_OutputConfig(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Main(void);
