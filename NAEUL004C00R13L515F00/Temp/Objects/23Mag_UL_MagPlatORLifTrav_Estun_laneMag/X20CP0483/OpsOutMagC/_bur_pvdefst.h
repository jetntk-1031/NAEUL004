#ifndef __AS__TYPE_eMcMagExchangeMode
#define __AS__TYPE_eMcMagExchangeMode
typedef enum eMcMagExchangeMode
{	McSetMagXcAutoManMode = 0,
	McSetMagXcAutoMode = 1,
	McSetMagXcManMode = 2,
} eMcMagExchangeMode;
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

#ifndef __AS__TYPE_eOutMagConvStep
#define __AS__TYPE_eOutMagConvStep
typedef enum eOutMagConvStep
{	OutMagConvStepNA = 0,
	OutMagConvStepInit = 1,
	OutMagConvStepChk = 2,
	OutMagConvStepEntMag = 3,
	OutMagConvStepEntToMid = 4,
	OutMagConvStepExitMag = 5,
	OutMagConvStepWaitForRmvMag = 6,
} eOutMagConvStep;
#endif

#ifndef __AS__TYPE_eAGVMagAction
#define __AS__TYPE_eAGVMagAction
typedef enum eAGVMagAction
{	AGVMagActIdle = 0,
	AGVMagActEnter = 1,
	AGVMagActExit = 2,
} eAGVMagAction;
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
_BUR_LOCAL plcbit(* p_bLinkOpsLifMagULInitDone1);
_BUR_LOCAL plcbit(* p_bLinkOpsLifMagULInitDone2);
_BUR_LOCAL signed long(* p_diLinkLifterActualPos);
_BUR_LOCAL signed long(* p_diLinkLifterBtmPos);
_BUR_LOCAL signed long(* p_diLinkLifter2ActualPos);
_BUR_LOCAL signed long(* p_diLinkLifterBtmPos2);
_BUR_LOCAL plcbit bLifterBtmPos;
_BUR_LOCAL plcbit bLifterBtmPos2;
_BUR_LOCAL struct tyBffrStat(* p_tyLinkBffrStat);
_BUR_LOCAL struct tyBffrStat(* p_tyLinkBffr2Stat);
_BUR_LOCAL plcbit(* p_bLinkLifterLmtSW);
_BUR_LOCAL plcbit(* p_bLinkLifter2LmtSW);
_BUR_LOCAL plcbit(* p_bLinkLiftExitMag);
_BUR_LOCAL plcbit(* p_bLinkLiftExitMag2);
_BUR_LOCAL struct tyDigitalInputSettings(* p_tyLinkDISetting);
_BUR_LOCAL eMcMagExchangeMode(* p_eLinkMcParamMagExMode);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bRun);
_BUR_LOCAL plcbit(* p_bStop);
_BUR_LOCAL plcbit(* p_bStep);
_BUR_LOCAL eMagConvAction(* p_eOutMagConvStat);
_BUR_LOCAL eFBStatus(* p_eOutMagConvStatus);
_BUR_LOCAL eMagConvAction(* p_eOutMagConv2Stat);
_BUR_LOCAL eFBStatus(* p_eOutMagConv2Status);
_BUR_LOCAL plcbit(* p_bStepEntMag);
_BUR_LOCAL plcbit(* p_bStepEntMag2);
_BUR_LOCAL plcbit(* p_bEntSen);
_BUR_LOCAL plcbit(* p_bMidSen);
_BUR_LOCAL plcbit(* p_bExtSen);
_BUR_LOCAL plcbit(* p_bEntSen2);
_BUR_LOCAL plcbit(* p_bMidSen2);
_BUR_LOCAL plcbit(* p_bExtSen2);
_BUR_LOCAL plcbit(* p_bExitSig);
_BUR_LOCAL plcbit(* p_bExitSig2);
_BUR_LOCAL plcbit(* p_bOpsMnlUnloadMag);
_BUR_LOCAL plcbit(* p_bOpsMnlUnloadMag2);
_BUR_LOCAL eAGVMagAction(* p_eAGVMagStat);
_BUR_LOCAL eFBStatus(* p_eAGVMagStatus);
_BUR_LOCAL plcbit(* p_bAGVMagMcRunRdy);
_BUR_LOCAL eSOTAction(* p_eDSSOTStat);
_BUR_LOCAL eFBStatus(* p_eDSSOTStatus);
_BUR_LOCAL eSOTAction(* p_eDSSOTStat2);
_BUR_LOCAL eFBStatus(* p_eDSSOTStatus2);
_BUR_LOCAL plcbit(* p_bDSSOTTransporting);
_BUR_LOCAL plcbit(* p_bDSSOTTransporting2);
_BUR_LOCAL plcbit(* p_bDSSOTConvStart);
_BUR_LOCAL plcbit(* p_bDSSOTConvStop);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL plcstring sStepTxt[81];
_BUR_LOCAL plcstring sStepTxt1[81];
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcbit bStepInitDone;
_BUR_LOCAL plcbit bStepEnterMag;
_BUR_LOCAL plcbit bStepEnterMidMag;
_BUR_LOCAL plcbit bStepExitMag;
_BUR_LOCAL plcbit bStepWaitMagToRmvMnl;
_BUR_LOCAL plcbit bStepInitDone2;
_BUR_LOCAL plcbit bStepEnterMag2;
_BUR_LOCAL plcbit bStepEnterMidMag2;
_BUR_LOCAL plcbit bStepExitMag2;
_BUR_LOCAL plcbit bStepWaitMagToRmvMnl2;
_BUR_LOCAL eMagConvAction eOutMagConvAct;
_BUR_LOCAL eMagConvAction eOutMagConv2Act;
_BUR_LOCAL eSOTAction eDSSOTAct;
_BUR_LOCAL eSOTAction eDSSOTAct2;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL eMagConvAction eOutMagConvStat;
_BUR_LOCAL eFBStatus eOutMagConvStatus;
_BUR_LOCAL eMagConvAction eOutMagConv2Stat;
_BUR_LOCAL eFBStatus eOutMagConv2Status;
_BUR_LOCAL plcbit bStepEntMag;
_BUR_LOCAL plcbit bStepEntMag2;
_BUR_LOCAL plcbit bEntSen;
_BUR_LOCAL plcbit bMidSen;
_BUR_LOCAL plcbit bExtSen;
_BUR_LOCAL plcbit bEntSen2;
_BUR_LOCAL plcbit bMidSen2;
_BUR_LOCAL plcbit bExtSen2;
_BUR_LOCAL plcbit bExitSig;
_BUR_LOCAL plcbit bExitSig2;
_BUR_LOCAL plcbit bOpsMnlUnloadMag;
_BUR_LOCAL struct TON fbMagToRmv;
_BUR_LOCAL struct TON fbMagToRmv2;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL eOutMagConvStep eOpsStep;
_BUR_LOCAL eOutMagConvStep eGotoStep;
_BUR_LOCAL eOutMagConvStep eOpsStep1;
_BUR_LOCAL eOutMagConvStep eGotoStep1;
_BUR_LOCAL plcbit bMagManEx;
_BUR_LOCAL plcbit bMagAutoEx;
_BUR_LOCAL unsigned long udiModuleNum;
