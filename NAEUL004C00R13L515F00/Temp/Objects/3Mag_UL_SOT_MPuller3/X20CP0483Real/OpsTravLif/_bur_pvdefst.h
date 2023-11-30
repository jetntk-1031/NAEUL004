#ifndef __AS__TYPE_eMcSetCommMod
#define __AS__TYPE_eMcSetCommMod
typedef enum eMcSetCommMod
{	McSetCommModSMEMA = 0,
	McSetCommModHermes = 1,
} eMcSetCommMod;
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

#ifndef __AS__TYPE_eAutoRcpPreceded
#define __AS__TYPE_eAutoRcpPreceded
typedef enum eAutoRcpPreceded
{	PrecededBySelf = 0,
	PrecededByF1 = 1,
	PrecededByF2 = 2,
} eAutoRcpPreceded;
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

#ifndef __AS__TYPE_eConvDir
#define __AS__TYPE_eConvDir
typedef enum eConvDir
{	ConvDirLToR = 0,
	ConvDirRToL = 1,
	ConvDirLToL = 2,
	ConvDirRToR = 3,
} eConvDir;
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

#ifndef __AS__TYPE_eULMod
#define __AS__TYPE_eULMod
typedef enum eULMod
{	ULModUnloadFrontLnA = 0,
	ULModRejFrontLnA = 1,
	ULModRejFrontLnARev = 2,
	ULModUnloadRearLnB = 3,
	ULModRejRearLnB = 4,
	ULModRejRearLnBRev = 5,
	ULModUnloadDualLnAB = 6,
	ULModRejDualLnA = 7,
	ULModRejDualLnB = 8,
} eULMod;
#endif

#ifndef __AS__TYPE_eULMag
#define __AS__TYPE_eULMag
typedef enum eULMag
{	ULMagDual = 0,
	ULMagTriple = 1,
	ULMagQuadruple = 2,
} eULMag;
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

#ifndef __AS__TYPE_tyMagCoord
#define __AS__TYPE_tyMagCoord
typedef struct tyMagCoord
{	unsigned char usiMagPos;
	unsigned char usiMagSlot;
} tyMagCoord;
#endif

#ifndef __AS__TYPE_eLifMagULUpdateData
#define __AS__TYPE_eLifMagULUpdateData
typedef enum eLifMagULUpdateData
{	BufferActLoadWhenStarted = 0,
	BufferActLoadWhenCompleted = 1,
} eLifMagULUpdateData;
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

#ifndef __AS__TYPE_tyLocationParamAvl
#define __AS__TYPE_tyLocationParamAvl
typedef struct tyLocationParamAvl
{	plcbit bLineNo;
	plcbit bStatNo;
	plcbit bStatIdx;
	plcbit bFuNo;
	plcbit bWorkPos;
	plcbit bToolPos;
	plcbit bProcessName;
	plcbit bProcessNo;
	plcbit bApplication;
} tyLocationParamAvl;
#endif

#ifndef __AS__TYPE_tyLocationParam
#define __AS__TYPE_tyLocationParam
typedef struct tyLocationParam
{	tyLocationParamData tyData;
	tyLocationParamAvl tyAvl;
} tyLocationParam;
#endif

#ifndef __AS__TYPE_tyPartReceiveData
#define __AS__TYPE_tyPartReceiveData
typedef struct tyPartReceiveData
{	plcstring sIdentifier[255];
	plcstring sTypeNo[21];
	plcstring sTypeVar[5];
	plcstring asName[31];
	plcstring asDataType[3];
	plcstring asValue[255];
	signed short iReturnCode;
	plcstring sTraceTxt[255];
	unsigned char reserve2;
} tyPartReceiveData;
#endif

#ifndef __AS__TYPE_tyPartReceiveAvl
#define __AS__TYPE_tyPartReceiveAvl
typedef struct tyPartReceiveAvl
{	plcbit bIdentifier;
	plcbit bTypeNo;
	plcbit bTypeVar;
	plcbit bName;
	plcbit bDataType;
	plcbit bValue;
	plcbit bReturnCode;
	plcbit bTraceTxt;
	plcbit reserve2;
} tyPartReceiveAvl;
#endif

#ifndef __AS__TYPE_tyOpConPartReceive
#define __AS__TYPE_tyOpConPartReceive
typedef struct tyOpConPartReceive
{	tyPartReceiveData tyData;
	tyPartReceiveAvl tyAvl;
} tyOpConPartReceive;
#endif

#ifndef __AS__TYPE_tyPlcGrabReceiveData
#define __AS__TYPE_tyPlcGrabReceiveData
typedef struct tyPlcGrabReceiveData
{	signed short iReturnCode;
	plcstring sTraceTxt[255];
	plcstring sLevel[21];
	unsigned char reserve1;
	unsigned char reserve2;
	unsigned char reserve3;
} tyPlcGrabReceiveData;
#endif

#ifndef __AS__TYPE_tyPlcGrabReceiveAvl
#define __AS__TYPE_tyPlcGrabReceiveAvl
typedef struct tyPlcGrabReceiveAvl
{	plcbit bIdentifier;
	plcbit bTypeNo;
	plcbit bTypeVar;
	plcbit bName;
	plcbit bDataType;
	plcbit bValue;
	plcbit bReturnCode;
	plcbit bTraceTxt;
	plcbit reserve2;
} tyPlcGrabReceiveAvl;
#endif

#ifndef __AS__TYPE_tyOpConPlcGrabReceive
#define __AS__TYPE_tyOpConPlcGrabReceive
typedef struct tyOpConPlcGrabReceive
{	tyPlcGrabReceiveData tyData;
	tyPlcGrabReceiveAvl tyAvl;
} tyOpConPlcGrabReceive;
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
_BUR_LOCAL unsigned char(* p_usiLinkProdRcpCurrRcpMcMod);
_BUR_LOCAL unsigned char(* p_bLinkNtParamMagConv1Prep);
_BUR_LOCAL unsigned char(* p_bLinkNtParamMagConv2Prep);
_BUR_LOCAL unsigned char(* p_bLinkNtParamMagConv3Prep);
_BUR_LOCAL plcbit(* p_bLinkUSHermesABlkUS);
_BUR_LOCAL plcbit(* p_bLinkUSHermesBBlkUS);
_BUR_LOCAL plcbit(* p_bLinkFollower1USAllow);
_BUR_LOCAL plcbit(* p_bLinkFollower2DSAllow);
_BUR_LOCAL plcbit(* p_bLinkProjLifterMagPlatform);
_BUR_LOCAL plcbit(* p_bLinkDIPshrAntiJamSen);
_BUR_LOCAL plcbit(* p_bLinkCurtainSen);
_BUR_LOCAL plcbit(* p_bLinkPshrRetSen);
_BUR_LOCAL signed long(* p_diBuffer1NxtLoadSlt);
_BUR_LOCAL signed long(* p_diBuffer2NxtLoadSlt);
_BUR_LOCAL signed long(* p_diBuffer3NxtLoadSlt);
_BUR_LOCAL signed long(* p_diMinSlt);
_BUR_LOCAL signed long(* p_diMaxSlt);
_BUR_LOCAL plcbit(* p_bTopToBtm);
_BUR_LOCAL plcbit(* p_bLinkMcParamMagWidthChkDis);
_BUR_LOCAL plcbit(* p_bMagWidthChkDis);
_BUR_LOCAL plcbit bMagWidthChkTravMov;
_BUR_LOCAL plcbit bMagWidthChk;
_BUR_LOCAL signed short usiMagWidthChkStep;
_BUR_LOCAL plcbit bTravGoToChkPt;
_BUR_LOCAL plcbit bShut1Closed;
_BUR_LOCAL plcbit bShut2Closed;
_BUR_LOCAL plcbit bShut3Closed;
_BUR_LOCAL plcbit(* p_bOpsMagConvUL1UnclmpDone);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL2UnclmpDone);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL3UnclmpDone);
_BUR_LOCAL plcbit(* p_bNtParamProjOutletShutPrep);
_BUR_LOCAL plcbit(* p_bNtParamProjOutletShut2Prep);
_BUR_LOCAL plcbit(* p_bNtParamProjOutletShut3Prep);
_BUR_LOCAL plcbit(* p_bAutoRcpTravWidthDiffBlk);
_BUR_LOCAL plcbit(* p_bNtParamAutoRcpPrep);
_BUR_LOCAL plcbit(* p_bMcParamAutoRcpDis);
_BUR_LOCAL eAutoRcpPreceded(* p_eNtParamAutoRcpPrecededBy);
_BUR_LOCAL eCustomer(* p_eCustomerReq);
_BUR_LOCAL plcbit(* p_bInletStopperPrep);
_BUR_LOCAL plcbit(* p_bStopperUnBlkCtrl);
_BUR_LOCAL ePneuAction(* p_eInletStopperStat);
_BUR_LOCAL eFBStatus(* p_eInletStopperStatus);
_BUR_LOCAL plcbit(* p_bDIInletStopperASen);
_BUR_LOCAL signed long(* p_diMcParamInStprExtDelayTm);
_BUR_LOCAL unsigned long(* p_udiOpsUSPosAllwGo);
_BUR_LOCAL unsigned long(* p_udiOpsDSPosAllwGo);
_BUR_LOCAL plcbit(* p_bRlsMag1);
_BUR_LOCAL plcbit(* p_bRlsMag2);
_BUR_LOCAL plcbit(* p_bRlsMag3);
_BUR_LOCAL plcbit(* p_bPshrConvPshrRetSlwSen);
_BUR_LOCAL plcbit(* p_bMcParamDMCScannerEn);
_BUR_LOCAL signed short(* p_iLifterSltMoved);
_BUR_LOCAL signed long(* p_diMcParamDMCScanResponseTO);
_BUR_LOCAL plcbit(* p_bLinkOpConEn);
_BUR_LOCAL plcstring(* p_sTopBtmBarcode)[2][255];
_BUR_LOCAL plcbit(* p_MCUL1StepPLCGrab);
_BUR_LOCAL plcbit(* p_MCUL2StepPLCGrab);
_BUR_LOCAL plcbit(* p_MCUL3StepPLCGrab);
_BUR_LOCAL plcbit(* p_bMagPresentSen1);
_BUR_LOCAL plcbit(* p_bMagPresentSen2);
_BUR_LOCAL plcbit(* p_bMagPresentSen3);
_BUR_LOCAL plcbit(* p_bPLCGrabPic);
_BUR_LOCAL plcbit(* p_bDIPCBScanComplSig);
_BUR_LOCAL struct tyDigitalOutputSettings(* p_tyNtParamDOSettings);
_BUR_LOCAL struct tyDigitalInputSettings(* p_tyNtParamDISettings);
_BUR_LOCAL plcstring(* p_sLinkProdRcpCurrRcp1Nm)[255];
_BUR_LOCAL signed long(* p_diLinkProdRcpCurrRcp1Pitch);
_BUR_LOCAL plcstring(* p_sLinkMagRcpCurrRcpNm)[31];
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bRun);
_BUR_LOCAL plcbit(* p_bStop);
_BUR_LOCAL plcbit(* p_bStep);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL eULMod(* p_eULMod);
_BUR_LOCAL eULMag(* p_eULMag);
_BUR_LOCAL plcbit(* p_bNonBffrMod);
_BUR_LOCAL plcbit(* p_bBypsGdBadBrd);
_BUR_LOCAL plcbit(* p_bUSAllow);
_BUR_LOCAL plcbit(* p_bDSAllow);
_BUR_LOCAL eMcSetCommMod(* p_eUSCommMod1);
_BUR_LOCAL eMcSetCommMod(* p_eUSCommMod2);
_BUR_LOCAL eMcSetCommMod(* p_eUSCommMod3);
_BUR_LOCAL eMcSetCommMod(* p_eDSCommMod1);
_BUR_LOCAL eMcSetCommMod(* p_eDSCommMod2);
_BUR_LOCAL eMcSetCommMod(* p_eDSCommMod3);
_BUR_LOCAL eSMEMAAction(* p_eUSSMEMAStat1);
_BUR_LOCAL eFBStatus(* p_eUSSMEMAStatus1);
_BUR_LOCAL plcbit(* p_bUSSMEMAUSRdy1);
_BUR_LOCAL plcbit(* p_bUSSMEMAGdBrdRdy1);
_BUR_LOCAL plcbit(* p_bUSSMEMATransporting1);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStart1);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStop1);
_BUR_LOCAL eSMEMAAction(* p_eUSSMEMAStat2);
_BUR_LOCAL eFBStatus(* p_eUSSMEMAStatus2);
_BUR_LOCAL plcbit(* p_bUSSMEMAUSRdy2);
_BUR_LOCAL plcbit(* p_bUSSMEMAGdBrdRdy2);
_BUR_LOCAL plcbit(* p_bUSSMEMATransporting2);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStart2);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStop2);
_BUR_LOCAL eSMEMAAction(* p_eUSSMEMAStat3);
_BUR_LOCAL eFBStatus(* p_eUSSMEMAStatus3);
_BUR_LOCAL plcbit(* p_bUSSMEMAUSRdy3);
_BUR_LOCAL plcbit(* p_bUSSMEMAGdBrdRdy3);
_BUR_LOCAL plcbit(* p_bUSSMEMATransporting3);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStart3);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStop3);
_BUR_LOCAL eSMEMAAction(* p_eDSSMEMAStat1);
_BUR_LOCAL eFBStatus(* p_eDSSMEMAStatus1);
_BUR_LOCAL plcbit(* p_bDSSMEMADSRdy1);
_BUR_LOCAL plcbit(* p_bDSSMEMAConvStart1);
_BUR_LOCAL eSMEMAAction(* p_eDSSMEMAStat2);
_BUR_LOCAL eFBStatus(* p_eDSSMEMAStatus2);
_BUR_LOCAL plcbit(* p_bDSSMEMADSRdy2);
_BUR_LOCAL plcbit(* p_bDSSMEMAConvStart2);
_BUR_LOCAL eSMEMAAction(* p_eDSSMEMAStat3);
_BUR_LOCAL eFBStatus(* p_eDSSMEMAStatus3);
_BUR_LOCAL plcbit(* p_bDSSMEMADSRdy3);
_BUR_LOCAL plcbit(* p_bDSSMEMAConvStart3);
_BUR_LOCAL plcbit(* p_bUSHermesUSRdy1);
_BUR_LOCAL plcbit(* p_bUSHermesUSGdRdy1);
_BUR_LOCAL plcbit(* p_bUSHermesTransporting1);
_BUR_LOCAL plcbit(* p_bUSHermesStopTransport1);
_BUR_LOCAL plcbit(* p_bUSHermesUSRdy2);
_BUR_LOCAL plcbit(* p_bUSHermesUSGdRdy2);
_BUR_LOCAL plcbit(* p_bUSHermesTransporting2);
_BUR_LOCAL plcbit(* p_bUSHermesStopTransport2);
_BUR_LOCAL plcbit(* p_bUSHermesUSRdy3);
_BUR_LOCAL plcbit(* p_bUSHermesUSGdRdy3);
_BUR_LOCAL plcbit(* p_bUSHermesTransporting3);
_BUR_LOCAL plcbit(* p_bUSHermesStopTransport3);
_BUR_LOCAL plcbit(* p_bDSHermesDSRdy1);
_BUR_LOCAL plcbit(* p_bDSHermesTransporting1);
_BUR_LOCAL plcbit(* p_bDSHermesStopTransport1);
_BUR_LOCAL plcbit(* p_bDSHermesDSRdy2);
_BUR_LOCAL plcbit(* p_bDSHermesTransporting2);
_BUR_LOCAL plcbit(* p_bDSHermesStopTransport2);
_BUR_LOCAL plcbit(* p_bDSHermesDSRdy3);
_BUR_LOCAL plcbit(* p_bDSHermesTransporting3);
_BUR_LOCAL plcbit(* p_bDSHermesStopTransport3);
_BUR_LOCAL eConvAction(* p_eConvStat);
_BUR_LOCAL eFBStatus(* p_eConvStatus);
_BUR_LOCAL eConvDir(* p_eConvDir);
_BUR_LOCAL plcbit(* p_bConvHvBrd);
_BUR_LOCAL plcbit(* p_bConvGdBrd);
_BUR_LOCAL eAWAction(* p_eAWStat);
_BUR_LOCAL eFBStatus(* p_eAWStatus);
_BUR_LOCAL plcbit(* p_bAWWidthPosDiff);
_BUR_LOCAL eAWAction(* p_eAWPushOrPullerStat);
_BUR_LOCAL eFBStatus(* p_eAWPushOrPullerStatus);
_BUR_LOCAL plcbit(* p_bAWPushOrPullerWidthPosDiff);
_BUR_LOCAL eTravAction(* p_eTravStat);
_BUR_LOCAL eFBStatus(* p_eTravStatus);
_BUR_LOCAL eLifterAction(* p_eLifStat);
_BUR_LOCAL eFBStatus(* p_eLifStatus);
_BUR_LOCAL plctime(* p_tShutterWaitTmr);
_BUR_LOCAL ePneuAction(* p_eInletPneuStat);
_BUR_LOCAL eFBStatus(* p_eInletPneuStatus);
_BUR_LOCAL plcbit(* p_bInletPneuCls);
_BUR_LOCAL ePneuAction(* p_eOutletPneuStat);
_BUR_LOCAL eFBStatus(* p_eOutletPneuStatus);
_BUR_LOCAL ePneuAction(* p_eOutletPneuStat2);
_BUR_LOCAL eFBStatus(* p_eOutletPneuStatus2);
_BUR_LOCAL ePneuAction(* p_eOutletPneuStat3);
_BUR_LOCAL eFBStatus(* p_eOutletPneuStatus3);
_BUR_LOCAL ePneuAction(* p_eStopperStat1);
_BUR_LOCAL eFBStatus(* p_eStopperStatus1);
_BUR_LOCAL plcbit(* p_bStopperBlk1);
_BUR_LOCAL ePneuAction(* p_eStopperStat2);
_BUR_LOCAL eFBStatus(* p_eStopperStatus2);
_BUR_LOCAL plcbit(* p_bStopperBlk2);
_BUR_LOCAL ePneuAction(* p_eStopperStat3);
_BUR_LOCAL eFBStatus(* p_eStopperStatus3);
_BUR_LOCAL plcbit(* p_bStopperBlk3);
_BUR_LOCAL plcbit(* p_bConvLftSen);
_BUR_LOCAL plcbit(* p_bConvMidSen);
_BUR_LOCAL plcbit(* p_bConvRgtSen);
_BUR_LOCAL plcbit(* p_bConvClrSen);
_BUR_LOCAL plcbit(* p_bConvLineAInletSen);
_BUR_LOCAL plcbit(* p_bConvLineBInletSen);
_BUR_LOCAL plcbit(* p_bMagTransferBrd1);
_BUR_LOCAL plcbit(* p_bMagTransferBrd2);
_BUR_LOCAL plcbit(* p_bMagTransferBrd3);
_BUR_LOCAL plcbit(* p_bBufferMagPresent1);
_BUR_LOCAL plcbit(* p_bBufferMagPresent2);
_BUR_LOCAL plcbit(* p_bBufferMagPresent3);
_BUR_LOCAL plcbit(* p_bBufferMagDet1);
_BUR_LOCAL plcbit(* p_bBufferMagDet2);
_BUR_LOCAL plcbit(* p_bBufferMagDet3);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat1);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat2);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat3);
_BUR_LOCAL plcbit(* p_bDIInShutterOpenRS);
_BUR_LOCAL plcbit(* p_bDIInShutterCloseRS);
_BUR_LOCAL plcbit(* p_bDIOutShutterOpenRS);
_BUR_LOCAL plcbit(* p_bDIOutShutterCloseRS);
_BUR_LOCAL plcbit(* p_bDIOutShutterOpenRS3);
_BUR_LOCAL plcbit(* p_bDIOutShutterCloseRS3);
_BUR_LOCAL plcbit(* p_bDIOutShutterOpenRS2);
_BUR_LOCAL plcbit(* p_bDIOutShutterCloseRS2);
_BUR_LOCAL plcbit(* p_bDIPusherRetRS);
_BUR_LOCAL plcbit(* p_bDIPusherExtRS);
_BUR_LOCAL plcbit(* p_bDIUSWidthSen);
_BUR_LOCAL plcbit(* p_bPshrConvPshrRetracted);
_BUR_LOCAL eLifMagULUpdateData(* p_eNtParamProjMagBuffferActLoad);
_BUR_LOCAL plcbit(* p_bTravAPosDiff);
_BUR_LOCAL plcbit(* p_bTravBPosDiff);
_BUR_LOCAL plcbit(* p_bTravPosDiff);
_BUR_LOCAL plcbit(* p_bLifterBtmPosDiff);
_BUR_LOCAL plcbit(* p_bLifterAPosDiff);
_BUR_LOCAL plcbit(* p_bLifterBPosDiff);
_BUR_LOCAL plcbit(* p_bMagWidthChkSenOn);
_BUR_LOCAL plcdt(* p_dtBufferMagPresentTm1);
_BUR_LOCAL plcdt(* p_dtBufferMagPresentTm2);
_BUR_LOCAL plcdt(* p_dtBufferMagPresentTm3);
_BUR_LOCAL signed long(* p_diProdRcpCurrRcp1Width);
_BUR_LOCAL signed long(* p_diProdRcpCurrRcp2Width);
_BUR_LOCAL plcbit(* p_bCurtainSenPB);
_BUR_LOCAL plcbit(* p_bPneuUnclmpFBDone);
_BUR_LOCAL plcbit(* p_bInShutDis);
_BUR_LOCAL plcbit(* p_bCurtainSenPrep);
_BUR_LOCAL plcbit(* p_bScanEn);
_BUR_LOCAL plcbit(* p_bTopScannerEn);
_BUR_LOCAL plcbit(* p_bBtmScannerEn);
_BUR_LOCAL eTCPAction1(* p_eTCPTopStat);
_BUR_LOCAL eFBStatus(* p_eTCPTopStatus);
_BUR_LOCAL plcstring(* p_sTopMsgRd)[81];
_BUR_LOCAL eTCPAction1(* p_eTCPBtmStat);
_BUR_LOCAL eFBStatus(* p_eTCPBtmStatus);
_BUR_LOCAL plcstring(* p_sBtmMsgRd)[81];
_BUR_LOCAL plcbit(* p_bOpConPrep);
_BUR_LOCAL plcbit(* p_bPass);
_BUR_LOCAL struct tyOpConPartReceive(* p_tyPartReceiveRetCode);
_BUR_LOCAL struct tyOpConPlcGrabReceive(* p_tyOpConPlcGrabRcvCode);
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
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
_BUR_LOCAL struct TON fbWaitTimer;
_BUR_LOCAL struct TON fbWidthChkSenOnTim;
_BUR_LOCAL struct TON fbWidthChkSenOffTim;
_BUR_LOCAL plcbit bClsLog;
_BUR_LOCAL plcbit blog;
_BUR_LOCAL eTravLifULStep logStep[1000];
_BUR_LOCAL signed short logIndexStep;
_BUR_LOCAL eTravLifULStep eGotoOpsStepDummy;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL eULMod eULMode;
_BUR_LOCAL eULMag eULMagazine;
_BUR_LOCAL plcbit bNonBffrMod;
_BUR_LOCAL plcbit bBypsGdBadBrd;
_BUR_LOCAL plcbit bUSAllow;
_BUR_LOCAL plcbit bDSAllow;
_BUR_LOCAL eMcSetCommMod eUSCommMod1;
_BUR_LOCAL eMcSetCommMod eUSCommMod2;
_BUR_LOCAL eMcSetCommMod eUSCommMod3;
_BUR_LOCAL eMcSetCommMod eDSCommMod1;
_BUR_LOCAL eMcSetCommMod eDSCommMod2;
_BUR_LOCAL eMcSetCommMod eDSCommMod3;
_BUR_LOCAL eSMEMAAction eUSSMEMAStat1;
_BUR_LOCAL eFBStatus eUSSMEMAStatus1;
_BUR_LOCAL plcbit bUSSMEMAUSRdy1;
_BUR_LOCAL plcbit bUSSMEMAGdBrdRdy1;
_BUR_LOCAL plcbit bUSSMEMATransporting1;
_BUR_LOCAL plcbit bUSSMEMAConvStart1;
_BUR_LOCAL plcbit bUSSMEMAConvStop1;
_BUR_LOCAL eSMEMAAction eUSSMEMAStat2;
_BUR_LOCAL eFBStatus eUSSMEMAStatus2;
_BUR_LOCAL plcbit bUSSMEMAUSRdy2;
_BUR_LOCAL plcbit bUSSMEMAGdBrdRdy2;
_BUR_LOCAL plcbit bUSSMEMATransporting2;
_BUR_LOCAL plcbit bUSSMEMAConvStart2;
_BUR_LOCAL plcbit bUSSMEMAConvStop2;
_BUR_LOCAL eSMEMAAction eUSSMEMAStat3;
_BUR_LOCAL eFBStatus eUSSMEMAStatus3;
_BUR_LOCAL plcbit bUSSMEMAUSRdy3;
_BUR_LOCAL plcbit bUSSMEMAGdBrdRdy3;
_BUR_LOCAL plcbit bUSSMEMATransporting3;
_BUR_LOCAL plcbit bUSSMEMAConvStart3;
_BUR_LOCAL plcbit bUSSMEMAConvStop3;
_BUR_LOCAL eSMEMAAction eDSSMEMAStat1;
_BUR_LOCAL eFBStatus eDSSMEMAStatus1;
_BUR_LOCAL plcbit bDSSMEMADSRdy1;
_BUR_LOCAL plcbit bDSSMEMAConvStart1;
_BUR_LOCAL eSMEMAAction eDSSMEMAStat2;
_BUR_LOCAL eFBStatus eDSSMEMAStatus2;
_BUR_LOCAL plcbit bDSSMEMADSRdy2;
_BUR_LOCAL plcbit bDSSMEMAConvStart2;
_BUR_LOCAL eSMEMAAction eDSSMEMAStat3;
_BUR_LOCAL eFBStatus eDSSMEMAStatus3;
_BUR_LOCAL plcbit bDSSMEMADSRdy3;
_BUR_LOCAL plcbit bDSSMEMAConvStart3;
_BUR_LOCAL plcbit bUSHermesUSRdy1;
_BUR_LOCAL plcbit bUSHermesUSGdRdy1;
_BUR_LOCAL plcbit bUSHermesTransporting1;
_BUR_LOCAL plcbit bUSHermesStopTransport1;
_BUR_LOCAL plcbit bUSHermesUSRdy2;
_BUR_LOCAL plcbit bUSHermesUSGdRdy2;
_BUR_LOCAL plcbit bUSHermesTransporting2;
_BUR_LOCAL plcbit bUSHermesStopTransport2;
_BUR_LOCAL plcbit bUSHermesUSRdy3;
_BUR_LOCAL plcbit bUSHermesUSGdRdy3;
_BUR_LOCAL plcbit bUSHermesTransporting3;
_BUR_LOCAL plcbit bUSHermesStopTransport3;
_BUR_LOCAL plcbit bDSHermesDSRdy1;
_BUR_LOCAL plcbit bDSHermesTransporting1;
_BUR_LOCAL plcbit bDSHermesStopTransport1;
_BUR_LOCAL plcbit bDSHermesDSRdy2;
_BUR_LOCAL plcbit bDSHermesTransporting2;
_BUR_LOCAL plcbit bDSHermesStopTransport2;
_BUR_LOCAL plcbit bDSHermesDSRdy3;
_BUR_LOCAL plcbit bDSHermesTransporting3;
_BUR_LOCAL plcbit bDSHermesStopTransport3;
_BUR_LOCAL eConvAction eConvStat;
_BUR_LOCAL eFBStatus eConvStatus;
_BUR_LOCAL eConvDir eConvDirection;
_BUR_LOCAL plcbit bConvHvBrd;
_BUR_LOCAL plcbit bConvGdBrd;
_BUR_LOCAL eAWAction eAWStat;
_BUR_LOCAL eFBStatus eAWStatus;
_BUR_LOCAL plcbit bAWWidthPosDiff;
_BUR_LOCAL eTravAction eTravStat;
_BUR_LOCAL eFBStatus eTravStatus;
_BUR_LOCAL eLifterAction eLifStat;
_BUR_LOCAL eFBStatus eLifStatus;
_BUR_LOCAL ePneuAction eInletPneuStat;
_BUR_LOCAL eFBStatus eInletPneuStatus;
_BUR_LOCAL plcbit bInletPneuCls;
_BUR_LOCAL ePneuAction eOutletPneuStat;
_BUR_LOCAL eFBStatus eOutletPneuStatus;
_BUR_LOCAL plcbit bConvLftSen;
_BUR_LOCAL plcbit bConvRgtSen;
_BUR_LOCAL plcbit bMagTransferBrd1;
_BUR_LOCAL plcbit bMagTransferBrd2;
_BUR_LOCAL plcbit bMagTransferBrd3;
_BUR_LOCAL plcbit bBufferMagPresent1;
_BUR_LOCAL plcbit bBufferMagPresent2;
_BUR_LOCAL plcbit bBufferMagPresent3;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plctime tShutterWaitTmr;
_BUR_LOCAL eLifMagULUpdateData eMagBuffferActLoad;
_BUR_LOCAL plcbit bScanEn;
_BUR_LOCAL eTCPAction1 eTCPTopStat;
_BUR_LOCAL eFBStatus eTCPTopStatus;
_BUR_LOCAL plcstring sTopMsgRd[81];
_BUR_LOCAL eTCPAction1 eTCPBtmStat;
_BUR_LOCAL eFBStatus eTCPBtmStatus;
_BUR_LOCAL plcstring sBtmMsgRd[81];
_BUR_LOCAL plcbit bInitInletPneu;
_BUR_LOCAL plcbit bWidthChkErrCmdUnclmp1;
_BUR_LOCAL plcbit bWidthChkErrCmdUnclmp2;
_BUR_LOCAL plcbit bWidthChkErrCmdUnclmp3;
_BUR_LOCAL plcbit bCmdUnclmpFlag;
_BUR_LOCAL plcbit bPneuUnclmpFBDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL eTravLifULStep eOpsStep;
_BUR_LOCAL eTravLifULStep eGotoOpsStep;
_BUR_LOCAL tyParamTravLifUL tyParamTravLif;
_BUR_LOCAL plcbit bOpsModGonethrough;
_BUR_LOCAL unsigned long udiMagPresentTm1;
_BUR_LOCAL unsigned long udiMagPresentTm;
_BUR_LOCAL unsigned long udiCmpTm;
_BUR_LOCAL unsigned long udiCount;
_BUR_LOCAL unsigned long udi;
_BUR_LOCAL plcbit bGdChk;
_BUR_LOCAL unsigned long udiPosAllwGo;
_BUR_LOCAL plcbit a_bPosAllwSigOn[3];
_BUR_LOCAL unsigned long a_udiPosAllwSum[3];
_BUR_LOCAL struct tyBffrStat a_tyMagAllwBffrStat[3];
_BUR_LOCAL unsigned long a_udiMagAllwMagPresentTm[3];
_BUR_LOCAL unsigned long a_udiMagAllwPriority[3];
_BUR_LOCAL plcbit bBrdOnSen;
_BUR_LOCAL plcbit bBrdOnStopperSen;
_BUR_LOCAL plcbit bStopperBrdOnSen;
_BUR_LOCAL plcbit bConvInSenOn;
_BUR_LOCAL plcbit bConvOutSenOn;
_BUR_LOCAL plcbit bLocalUSRdy1;
_BUR_LOCAL plcbit bLocalUSGdRdy1;
_BUR_LOCAL plcbit bLocalUSRdy2;
_BUR_LOCAL plcbit bLocalUSGdRdy2;
_BUR_LOCAL plcbit bLocalUSRdy3;
_BUR_LOCAL plcbit bLocalUSGdRdy3;
_BUR_LOCAL plcbit bLocalDSRdy1;
_BUR_LOCAL plcbit bLocalDSRdy2;
_BUR_LOCAL plcbit bLocalDSRdy3;
_BUR_LOCAL plcbit bSkipCloseInletShutter;
_BUR_LOCAL struct TON tConvRgtSenOff;
_BUR_LOCAL struct TON tConvLftSenOff;
_BUR_LOCAL struct TON tEntBoardTimoutErr;
_BUR_LOCAL struct TON tExitBoardTimoutErr;
_BUR_LOCAL struct TON tTravLiftInPos;
_BUR_LOCAL plcbit bTravLifInDSPos;
_BUR_LOCAL plcbit bSelfTest;
_BUR_LOCAL plcbit bLifterBtmPosDiff;
_BUR_LOCAL plcbit bLifterAPosDiff;
_BUR_LOCAL plcbit bLifterBPosDiff;
_BUR_LOCAL plcbit bBypCurtainSenPB;
_BUR_LOCAL plcbit bBypCurtainSenCtrl;
_BUR_LOCAL plcbit bBypCurtainSensorPBLED;
_BUR_LOCAL plcbit bMagWidthChkDis;
_BUR_LOCAL struct TON fbRstCurtain;
_BUR_LOCAL struct TON fb2SenTm;
_BUR_LOCAL ePneuAction(* p_eStopperAct);
_BUR_LOCAL ePneuAction(* p_eStopperStat);
_BUR_LOCAL eFBStatus(* p_eStopperStatus);
_BUR_LOCAL plcbit(* p_bStopperBlk);
_BUR_LOCAL eMcSetCommMod(* p_eLocalUSCommMod);
_BUR_LOCAL eMcSetCommMod(* p_eLocalDSCommMod);
_BUR_LOCAL plcbit(* p_bLocalUSRdy);
_BUR_LOCAL plcbit(* p_bLocalUSGdRdy);
_BUR_LOCAL plcbit(* p_bLocalDSRdy);
_BUR_LOCAL eSMEMAAction(* p_eLocalUSSMEMAAct);
_BUR_LOCAL eSMEMAAction(* p_eLocalUSSMEMAStat);
_BUR_LOCAL eFBStatus(* p_eLocalUSSMEMAStatus);
_BUR_LOCAL plcbit(* p_bLocalUSSMEMAUSRdy);
_BUR_LOCAL plcbit(* p_bLocalUSSMEMAGdBrdRdy);
_BUR_LOCAL plcbit(* p_bLocalUSSMEMATransporting);
_BUR_LOCAL plcbit(* p_bLocalUSSMEMAConvStart);
_BUR_LOCAL plcbit(* p_bLocalUSSMEMAConvStop);
_BUR_LOCAL eSMEMAAction(* p_eLocalDSSMEMAAct);
_BUR_LOCAL eSMEMAAction(* p_eLocalDSSMEMAStat);
_BUR_LOCAL eFBStatus(* p_eLocalDSSMEMAStatus);
_BUR_LOCAL plcbit(* p_bLocalDSSMEMADSRdy);
_BUR_LOCAL plcbit(* p_bLocalDSSMEMAConvStart);
_BUR_LOCAL plcbit(* p_bLocalUSHermesUSRdy);
_BUR_LOCAL plcbit(* p_bLocalUSHermesUSGdRdy);
_BUR_LOCAL plcbit(* p_bLocalUSHermesTransporting);
_BUR_LOCAL plcbit(* p_bLocalUSHermesStopTransport);
_BUR_LOCAL plcbit(* p_bLocalDSHermesDSRdy);
_BUR_LOCAL plcbit(* p_bLocalDSHermesTransporting);
_BUR_LOCAL plcbit(* p_bLocalDSHermesStopTransport);
_BUR_LOCAL struct TON fbBypCurtainPBLEDBlinkTm;
_BUR_LOCAL eMcSetCommMod eLocalUSCommMod;
_BUR_LOCAL plcbit bWait;
_BUR_LOCAL ePneuAction eInletStopperAct;
_BUR_LOCAL eTCPAction1 eTCPTopAct;
_BUR_LOCAL eTCPAction1 eTCPBtmAct;
_BUR_LOCAL plcstring sBarcode[81];
_BUR_LOCAL plcbit bPass;
_BUR_LOCAL tyLocationParam tyOpConParam;
_BUR_LOCAL eOpConMsgType tyOpConMsgReq;
_BUR_LOCAL plcbit bJamStarted;
_BUR_LOCAL plcbit bWaitMagChkRetCode;
_BUR_LOCAL struct TON fbIdleTm;
_BUR_LOCAL struct TON fbReturnCodeTO;
_BUR_LOCAL tyOpConPartReceive tyPartReceive;
_BUR_LOCAL tyOpConPartProcessed tyPartProcessedItems;
_BUR_LOCAL tyMagCoord tyMagCoordinate;
_BUR_LOCAL signed long diTemp;
_BUR_LOCAL plcbit bHermesBC;
_BUR_LOCAL signed long diMagBrdQty[3];
_BUR_LOCAL plcbit bPLCGrabPic;
_BUR_LOCAL plcstring asMagEntered[5][11];
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bAllwExitMag1;
_BUR_LOCAL plcbit bAllwExitMag2;
_BUR_LOCAL plcbit bAllwExitMag3;
_BUR_LOCAL struct TON fbInletStopperOffTim;
_BUR_LOCAL plcbit bScannerEn;
_BUR_LOCAL plcbit bTCPScanner;
_BUR_LOCAL plcbit bSignalTrigMagOutEn;
_BUR_LOCAL plcbit bTCPScannerEn;
_BUR_LOCAL struct TON fbScanTimOut;
_BUR_LOCAL plcbit bStartScanSig;
_BUR_LOCAL plcbit bPCBExitMag1;
_BUR_LOCAL plcbit bPCBExitMag2;
_BUR_LOCAL plcbit bPCBExitMag3;
_BUR_LOCAL unsigned char usiScanCntr;
