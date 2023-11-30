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

#ifndef __AS__TYPE_eLifMagULUpdateData
#define __AS__TYPE_eLifMagULUpdateData
typedef enum eLifMagULUpdateData
{	BufferActLoadWhenStarted = 0,
	BufferActLoadWhenCompleted = 1,
} eLifMagULUpdateData;
#endif

#ifndef __AS__TYPE_eLifMagULStep
#define __AS__TYPE_eLifMagULStep
typedef enum eLifMagULStep
{	LifMagULStepNA = 0,
	LifMagULStepMag1ConvInit = 1,
	LifMagULStepMag2ConvInit = 2,
	LifMagULStepInitLif = 3,
	LifMagULStepMagCmp = 4,
	LifMagULStepNxtLoadBffr = 5,
	LifMagULStepLifMov = 6,
	LifMagULStepBffrUSComm = 7,
	LifMagULStepBffrEntBrd = 8,
	LifMagULStepLoadBffr = 9,
	LifMagULStepLifMovUnload = 10,
	LifMagULStepUnload = 11,
	LifMagULStepStandby = 12,
	LiftMagConvInit = 13,
	LiftMagConvIdle = 14,
	LiftMagLifterLoad = 15,
	LiftMagLifterUnload = 16,
	LiftMagConvIN = 17,
	LiftMagConvOUT = 18,
} eLifMagULStep;
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

#ifndef __AS__TYPE_eLifterConvStatus
#define __AS__TYPE_eLifterConvStatus
typedef enum eLifterConvStatus
{	LifterNA = 0,
	LifterLoadPos = 1,
	LifterLoadRdyTrans = 2,
	LifterMagInProgress = 3,
	LifterUnloadPos = 4,
	LifterUnloadRdyTrans = 5,
} eLifterConvStatus;
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

_BUR_LOCAL plcbit(* p_bLinkFollower2USAllow);
_BUR_LOCAL plcbit(* p_bLinkDIInMagConvExtSen);
_BUR_LOCAL plcbit(* p_bLinkDIOutMagConvEntSen);
_BUR_LOCAL plcbit(* p_bLinkDIOutMagConvMidSen);
_BUR_LOCAL plcbit(* p_bLinkDIInMagConv2ExtSen);
_BUR_LOCAL plcbit(* p_bLinkDIOutMagConv2EntSen);
_BUR_LOCAL plcbit(* p_bLinkDIOutMagConv2MidSen);
_BUR_LOCAL plcbit(* p_bOpsOutMagConvStepInitDone);
_BUR_LOCAL plcbit(* p_bOpsOutMagConv2StepInitDone);
_BUR_LOCAL plcbit(* p_bLinkOpsMnlUnloadMag);
_BUR_LOCAL plcbit(* p_bLinkOpsOutMagConvStepWaitRmv);
_BUR_LOCAL plcbit(* p_bLinkOpsOutMagConv2StepWaitRmv);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bRun);
_BUR_LOCAL plcbit(* p_bStop);
_BUR_LOCAL plcbit(* p_bStep);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL plcbit(* pa_bMagDis)[3];
_BUR_LOCAL plcbit(* pa_bMagRej)[3];
_BUR_LOCAL plcbit(* p_bUnloadMag);
_BUR_LOCAL plcbit(* p_bUSAllow);
_BUR_LOCAL eLifMagULUpdateData(* p_eNtParamProjMagBuffferActLoad);
_BUR_LOCAL plcbit(* p_bConvInitDone);
_BUR_LOCAL plcbit(* p_bConvHvBrd);
_BUR_LOCAL plcbit(* p_bConvGdBrd);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat1);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat2);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat3);
_BUR_LOCAL plcbit(* p_bMagPresentSen1);
_BUR_LOCAL plcbit(* p_bMagPresentSen2);
_BUR_LOCAL plcbit(* p_bMagPresentSen3);
_BUR_LOCAL plcbit(* p_bBufferMagPresent1);
_BUR_LOCAL plcbit(* p_bBufferMagPresent2);
_BUR_LOCAL plcbit(* p_bBufferMagPresent3);
_BUR_LOCAL plcdt(* p_dtBufferMagPresentTm1);
_BUR_LOCAL plcdt(* p_dtBufferMagPresentTm2);
_BUR_LOCAL plcdt(* p_dtBufferMagPresentTm3);
_BUR_LOCAL eLifterAction(* p_eLifterStat);
_BUR_LOCAL eFBStatus(* p_eLifterStatus);
_BUR_LOCAL eLifterAction(* p_eLifter2Stat);
_BUR_LOCAL eFBStatus(* p_eLifter2Status);
_BUR_LOCAL eMagConvAction(* p_eLifterMagConvStat);
_BUR_LOCAL eFBStatus(* p_eLifterMagConvStatus);
_BUR_LOCAL eMagConvAction(* p_eLifterMagConv2Stat);
_BUR_LOCAL eFBStatus(* p_eLifterMagConv2Status);
_BUR_LOCAL eMagConvAction(* p_eInMagConvStat);
_BUR_LOCAL eFBStatus(* p_eInMagConvStatus);
_BUR_LOCAL eMagConvAction(* p_eOutMagConvStat);
_BUR_LOCAL eFBStatus(* p_eOutMagConvStatus);
_BUR_LOCAL eMagConvAction(* p_eInMagConv2Stat);
_BUR_LOCAL eFBStatus(* p_eInMagConv2Status);
_BUR_LOCAL eMagConvAction(* p_eOutMagConv2Stat);
_BUR_LOCAL eFBStatus(* p_eOutMagConv2Status);
_BUR_LOCAL eBufferAction(* p_eBufferStat1);
_BUR_LOCAL eFBStatus(* p_eBufferStatus1);
_BUR_LOCAL eBufferAction(* p_eBufferStat2);
_BUR_LOCAL eFBStatus(* p_eBufferStatus2);
_BUR_LOCAL eBufferAction(* p_eBufferStat3);
_BUR_LOCAL eFBStatus(* p_eBufferStatus3);
_BUR_LOCAL eSMEMAAction(* p_eUSSMEMAStat1);
_BUR_LOCAL eFBStatus(* p_eUSSMEMAStatus1);
_BUR_LOCAL plcbit(* p_bUSSMEMATransporting1);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStart1);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStop1);
_BUR_LOCAL eSMEMAAction(* p_eUSSMEMAStat2);
_BUR_LOCAL eFBStatus(* p_eUSSMEMAStatus2);
_BUR_LOCAL plcbit(* p_bUSSMEMATransporting2);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStart2);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStop2);
_BUR_LOCAL eSMEMAAction(* p_eUSSMEMAStat3);
_BUR_LOCAL eFBStatus(* p_eUSSMEMAStatus3);
_BUR_LOCAL plcbit(* p_bUSSMEMATransporting3);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStart3);
_BUR_LOCAL plcbit(* p_bUSSMEMAConvStop3);
_BUR_LOCAL plcbit(* p_bDIInShutterOpenRS);
_BUR_LOCAL plcbit(* p_bDIInShutterCloseRS);
_BUR_LOCAL plcbit(* p_bDIOutShutterOpenRS);
_BUR_LOCAL plcbit(* p_bDIOutShutterCloseRS);
_BUR_LOCAL plcbit(* p_bDIPusherRetRS);
_BUR_LOCAL plcbit(* p_bMcParamMagFullBuzOff);
_BUR_LOCAL signed long(* p_sProdRcpCurrRcp1Name);
_BUR_LOCAL signed long(* p_sProdRcpCurrRcp2Name);
_BUR_LOCAL eLifterConvStatus(* p_usiMag1Rdy);
_BUR_LOCAL eLifterConvStatus(* p_usiMag2Rdy);
_BUR_LOCAL plcbit(* p_bPresentMag1);
_BUR_LOCAL plcbit(* p_bPresentMag2);
_BUR_LOCAL plcbit(* p_bMagConvLanePrep);
_BUR_LOCAL plcbit(* p_bMagConvLane2Prep);
_BUR_LOCAL plcbit(* p_bNtParamProjLifter2Prep);
_BUR_LOCAL plcbit(* p_bOutShutterExtended);
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL unsigned long udiStatus2;
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL tyAlmDat tyAlmData2;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
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
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL plcbit a_bMagDis[3];
_BUR_LOCAL plcbit a_bMagRej[3];
_BUR_LOCAL plcbit bUnloadMag;
_BUR_LOCAL plcbit bUSAllow;
_BUR_LOCAL eLifMagULUpdateData eMagBuffferActLoad;
_BUR_LOCAL plcbit bConvInitDone;
_BUR_LOCAL plcbit bConvHvBrdAllwGo;
_BUR_LOCAL plcbit bConvHvBrd;
_BUR_LOCAL plcbit bConvGdBrd;
_BUR_LOCAL tyBffrStat tyBufferStat1;
_BUR_LOCAL tyBffrStat tyBufferStat2;
_BUR_LOCAL tyBffrStat tyBufferStat3;
_BUR_LOCAL plcbit bMagPresentSen1;
_BUR_LOCAL plcbit bMagPresentSen2;
_BUR_LOCAL plcbit bMagPresentSen3;
_BUR_LOCAL plcbit bBufferMagPresent1;
_BUR_LOCAL plcbit bBufferMagPresent2;
_BUR_LOCAL plcbit bBufferMagPresent3;
_BUR_LOCAL plcdt dtBufferMagPresentTm1;
_BUR_LOCAL plcdt dtBufferMagPresentTm2;
_BUR_LOCAL plcdt dtBufferMagPresentTm3;
_BUR_LOCAL eMagConvAction eInMagConvStat;
_BUR_LOCAL eFBStatus eInMagConvStatus;
_BUR_LOCAL eMagConvAction eInMagConv2Stat;
_BUR_LOCAL eFBStatus eInMagConv2Status;
_BUR_LOCAL eMagConvAction eOutMagConvStat;
_BUR_LOCAL eFBStatus eOutMagConvStatus;
_BUR_LOCAL eMagConvAction eOutMagConv2Stat;
_BUR_LOCAL eFBStatus eOutMagConv2Status;
_BUR_LOCAL eLifterAction eLifterStat;
_BUR_LOCAL eFBStatus eLifterStatus;
_BUR_LOCAL eLifterAction eLifter2Stat;
_BUR_LOCAL eFBStatus eLifter2Status;
_BUR_LOCAL eMagConvAction eLifterMagConvStat;
_BUR_LOCAL eFBStatus eLifterMagConvStatus;
_BUR_LOCAL eMagConvAction eLifterMagConv2Stat;
_BUR_LOCAL eFBStatus eLifterMagConv2Status;
_BUR_LOCAL eBufferAction eBufferStat1;
_BUR_LOCAL eFBStatus eBufferStatus1;
_BUR_LOCAL eBufferAction eBufferStat2;
_BUR_LOCAL eFBStatus eBufferStatus2;
_BUR_LOCAL eBufferAction eBufferStat3;
_BUR_LOCAL eFBStatus eBufferStatus3;
_BUR_LOCAL eSMEMAAction eUSSMEMAStat1;
_BUR_LOCAL eFBStatus eUSSMEMAStatus1;
_BUR_LOCAL plcbit bUSSMEMATransporting1;
_BUR_LOCAL plcbit bUSSMEMAConvStart1;
_BUR_LOCAL plcbit bUSSMEMAConvStop1;
_BUR_LOCAL eSMEMAAction eUSSMEMAStat2;
_BUR_LOCAL eFBStatus eUSSMEMAStatus2;
_BUR_LOCAL plcbit bUSSMEMATransporting2;
_BUR_LOCAL plcbit bUSSMEMAConvStart2;
_BUR_LOCAL plcbit bUSSMEMAConvStop2;
_BUR_LOCAL eSMEMAAction eUSSMEMAStat3;
_BUR_LOCAL eFBStatus eUSSMEMAStatus3;
_BUR_LOCAL plcbit bUSSMEMATransporting3;
_BUR_LOCAL plcbit bUSSMEMAConvStart3;
_BUR_LOCAL plcbit bUSSMEMAConvStop3;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL eLifMagULStep eOpsStep;
_BUR_LOCAL eLifMagULStep eGotoOpsStep;
_BUR_LOCAL eLifMagULStep eOpsStep1;
_BUR_LOCAL eLifMagULStep eGotoOpsStep1;
_BUR_LOCAL eLifMagULStep eOpsStep2;
_BUR_LOCAL eLifMagULStep eGotoOpsStep2;
_BUR_LOCAL unsigned long udi;
_BUR_LOCAL unsigned long udi1;
_BUR_LOCAL unsigned long udiCount;
_BUR_LOCAL unsigned long udiCmpTm;
_BUR_LOCAL unsigned long udiMagAllwGo;
_BUR_LOCAL plcbit bMagNxtUnloadGd;
_BUR_LOCAL struct tyBffrStat a_tyMagAllwBffrStat[3];
_BUR_LOCAL plcbit a_bMagAllwMagPresent[3];
_BUR_LOCAL unsigned long a_udiMagAllwMagPresentTm[3];
_BUR_LOCAL unsigned long a_udiMagAllwPriority[3];
_BUR_LOCAL unsigned long a_udiMagAllwSum[3];
_BUR_LOCAL struct tyBffrStat(* p_tyLocalBufferStat);
_BUR_LOCAL plcbit(* p_bLocalBufferMagPresent);
_BUR_LOCAL plcdt(* p_dtLocalBufferMagPresentTm);
_BUR_LOCAL eBufferAction(* p_eLocalBufferAct);
_BUR_LOCAL eBufferAction(* p_eLocalBufferStat);
_BUR_LOCAL eFBStatus(* p_eLocalBufferStatus);
_BUR_LOCAL eSMEMAAction(* p_eLocalUSSMEMAAct);
_BUR_LOCAL eSMEMAAction(* p_eLocalUSSMEMAStat);
_BUR_LOCAL eFBStatus(* p_eLocalUSSMEMAStatus);
_BUR_LOCAL plcbit(* p_bLocalUSSMEMATransporting);
_BUR_LOCAL plcbit(* p_bLocalUSSMEMAConvStart);
_BUR_LOCAL plcbit(* p_bLocalUSSMEMAConvStop);
_BUR_LOCAL plcbit bLocalMag1InPos;
_BUR_LOCAL plcbit bLocalMag2InPos;
_BUR_LOCAL plcbit bLift2Move;
_BUR_LOCAL eLifterConvStatus usiMag1Rdy;
_BUR_LOCAL eLifterConvStatus usiMag2Rdy;
_BUR_LOCAL plcbit bStepEntMag1;
_BUR_LOCAL plcbit bStepExtMag1;
_BUR_LOCAL plcbit bStepEntMag2;
_BUR_LOCAL plcbit bStepExtMag2;
_BUR_LOCAL plcbit bStepInitDone1;
_BUR_LOCAL plcbit bStepInitDone2;
_BUR_LOCAL plcbit bPresentMag1;
_BUR_LOCAL plcbit bPresentMag2;
_BUR_LOCAL plcbit bStepLiftMagIdle2;
_BUR_LOCAL plcbit bMagConvLanePrep;
_BUR_LOCAL plcbit bStepEntBoard;
_BUR_LOCAL plcbit bMagSetFullExit;
_BUR_LOCAL plcbit bMagSetFullExit2;
_BUR_LOCAL unsigned long udiModuleNum;
