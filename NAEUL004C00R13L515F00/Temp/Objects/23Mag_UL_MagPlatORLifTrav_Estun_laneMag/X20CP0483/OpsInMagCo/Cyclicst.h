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

#ifndef __AS__TYPE_eInMagConvStep
#define __AS__TYPE_eInMagConvStep
typedef enum eInMagConvStep
{	InMagConvStepNA = 0,
	InMagConvStepInit = 1,
	InMagConvStepChk = 2,
	InMagConvStepOpsEntMag = 3,
	InMagConvStepOpsExtChkMagSize = 4,
	InMagConvStepOpsExtMag = 5,
	InMagConvStepOpsEntToMid = 6,
} eInMagConvStep;
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

_BUR_LOCAL plcbit(* p_bLinkOpsLifMagULInitDone1);
_BUR_LOCAL plcbit(* p_bLinkOpsLifMagULInitDone2);
_BUR_LOCAL signed long(* p_diLinkLifterActualPos);
_BUR_LOCAL signed long(* p_diLinkLifter2ActualPos);
_BUR_LOCAL signed long(* p_diLinkLifterTopPos);
_BUR_LOCAL signed long(* p_diLinkLifterTopPos2);
_BUR_LOCAL plcbit bLifterTopPos;
_BUR_LOCAL plcbit bLifterTopPos2;
_BUR_LOCAL plcbit(* p_bLinkExtStprExtended);
_BUR_LOCAL plcbit(* p_bLinkExtStprRetracted);
_BUR_LOCAL plcbit(* p_bLinkExtStpr2Retracted);
_BUR_LOCAL plcbit(* p_bLinkInMagConvEntSen);
_BUR_LOCAL plcbit(* p_bLinkInMagConvExtSen);
_BUR_LOCAL plcbit(* p_bLinkInMagConvMidSen);
_BUR_LOCAL plcbit(* p_bLinkInMagConv2EntSen);
_BUR_LOCAL plcbit(* p_bLinkInMagConv2ExtSen);
_BUR_LOCAL plcbit(* p_bLinkInMagConv2MidSen);
_BUR_LOCAL plcbit(* p_bLinkOpsLifterMagStepEntMag);
_BUR_LOCAL plcbit(* p_bLinkOpsLifterMagStepExtMag);
_BUR_LOCAL plcbit(* p_bLinkOpsLifterMagStepEntMag2);
_BUR_LOCAL plcbit(* p_bLinkOpsLifterMagStepExtMag2);
_BUR_LOCAL eMcMagExchangeMode(* p_eLinkMcParamMagExMode);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bRun);
_BUR_LOCAL plcbit(* p_bStop);
_BUR_LOCAL plcbit(* p_bStep);
_BUR_LOCAL eMagConvAction(* p_eInMagConvStat);
_BUR_LOCAL eFBStatus(* p_eInMagConvStatus);
_BUR_LOCAL eMagConvAction(* p_eInMagConv2Stat);
_BUR_LOCAL eFBStatus(* p_eInMagConv2Status);
_BUR_LOCAL plcbit(* p_bStepOpsEntMag);
_BUR_LOCAL plcbit(* p_bStepOpsEntMidMag);
_BUR_LOCAL plcbit(* p_bStepOpsExtMag);
_BUR_LOCAL plcbit(* p_bStepOpsEntMag2);
_BUR_LOCAL plcbit(* p_bStepOpsEntMidMag2);
_BUR_LOCAL plcbit(* p_bStepOpsExtMag2);
_BUR_LOCAL plcbit(* p_bMagSelMiniMag);
_BUR_LOCAL plcbit(* p_bInMagConvExtSen);
_BUR_LOCAL plcbit(* p_bMagHeightChkSen);
_BUR_LOCAL eFBStatus(* p_eLiftMagConvStatus);
_BUR_LOCAL eFBStatus(* p_eLiftMagConv2Status);
_BUR_LOCAL eAGVMagAction(* p_eAGVMagStat);
_BUR_LOCAL eFBStatus(* p_eAGVMagStatus);
_BUR_LOCAL plcbit(* p_bAGVMagMcRunRdy);
_BUR_LOCAL eSOTAction(* p_eUSSOTStat);
_BUR_LOCAL eFBStatus(* p_eUSSOTStatus);
_BUR_LOCAL eSOTAction(* p_eUSSOTStat2);
_BUR_LOCAL eFBStatus(* p_eUSSOTStatus2);
_BUR_LOCAL plcbit(* p_bUSSOTTransporting);
_BUR_LOCAL plcbit(* p_bUSSOTTransporting2);
_BUR_LOCAL plcbit(* p_bUSSOTConvStart);
_BUR_LOCAL plcbit(* p_bUSSOTConvStop);
_BUR_LOCAL plcbit(* p_bUSSOTUSRdy);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL plcbit(* p_bCurtainSensorStat);
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL plcstring sStepTxt[81];
_BUR_LOCAL plcstring sStepTxt1[81];
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcbit bStepEnterMag;
_BUR_LOCAL plcbit bStepEntToMid;
_BUR_LOCAL plcbit bStepExitMag;
_BUR_LOCAL plcbit bStepEnterMag2;
_BUR_LOCAL plcbit bStepEntToMid2;
_BUR_LOCAL plcbit bStepExitMag2;
_BUR_LOCAL eMagConvAction eInMagConvAct;
_BUR_LOCAL eMagConvAction eInMagConv2Act;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL eMagConvAction eInMagConvStat;
_BUR_LOCAL eFBStatus eInMagConvStatus;
_BUR_LOCAL eMagConvAction eInMagConv2Stat;
_BUR_LOCAL eFBStatus eInMagConv2Status;
_BUR_LOCAL eSOTAction eUSSOTAct;
_BUR_LOCAL eSOTAction eUSSOTAct2;
_BUR_LOCAL plcbit bStepOpsEntMag;
_BUR_LOCAL plcbit bStepOpsEntMidMag;
_BUR_LOCAL plcbit bStepOpsExtMag;
_BUR_LOCAL plcbit bStepOpsEntMag2;
_BUR_LOCAL plcbit bStepOpsEntMidMag2;
_BUR_LOCAL plcbit bStepOpsExtMag2;
_BUR_LOCAL plcbit bMagSelMiniMag;
_BUR_LOCAL plcbit bInMagConvExtSen;
_BUR_LOCAL plcbit bMagHeightChkSen;
_BUR_LOCAL plcbit bCurtainSensorStat;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL eInMagConvStep eOpsStep;
_BUR_LOCAL eInMagConvStep eGotoStep;
_BUR_LOCAL eInMagConvStep eOpsStep1;
_BUR_LOCAL eInMagConvStep eGotoStep1;
_BUR_LOCAL plcbit bMnlLoad;
_BUR_LOCAL plcbit bMnlLoad2;
_BUR_LOCAL plcbit bLiftConvMagExist;
_BUR_LOCAL plcbit bLiftConvMagExist2;
_BUR_LOCAL plcbit bMagManEx;
_BUR_LOCAL plcbit bMagAutoEx;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL plcstring g_sOpsInMagConvProgNm[16];
_GLOBAL unsigned long p_RstErrReset;
_GLOBAL unsigned long p_McParamMagExMode;
_GLOBAL unsigned long p_McParamLifterTopPos;
_GLOBAL unsigned long p_McParamLifterTopPos2;
_GLOBAL unsigned long p_PneuNoSenTopExtStprExtended;
_GLOBAL unsigned long p_PneuNoSenTopExtStprRetracted;
_GLOBAL unsigned long p_PneuNoSenTopExtStpr2Retracted;
_GLOBAL unsigned long p_InMagConvStat;
_GLOBAL unsigned long p_InMagConvStatus;
_GLOBAL unsigned long p_LifterMagConvStatus;
_GLOBAL unsigned long p_InMagConv2Stat;
_GLOBAL unsigned long p_InMagConv2Status;
_GLOBAL unsigned long p_LifterMagConv2Status;
_GLOBAL unsigned long p_LifterBtmActualPos;
_GLOBAL unsigned long p_Lifter2ActualPos;
_GLOBAL unsigned long p_DIInMagConvEntSen;
_GLOBAL unsigned long p_DIInMagConvExtSen;
_GLOBAL unsigned long p_DIInMagConvMidSen;
_GLOBAL unsigned long p_DIInMagConv2EntSen;
_GLOBAL unsigned long p_DIInMagConv2ExtSen;
_GLOBAL unsigned long p_DIInMagConv2MidSen;
_GLOBAL unsigned long p_OpsRun;
_GLOBAL unsigned long p_OpsStop;
_GLOBAL unsigned long p_OpsStep;
_GLOBAL unsigned long p_OpsLifMagULStepInitDone1;
_GLOBAL unsigned long p_OpsLifMagULStepInitDone2;
_GLOBAL unsigned long p_OpsLifMagULStepEntMag1;
_GLOBAL unsigned long p_OpsLifMagULStepExtMag1;
_GLOBAL unsigned long p_OpsLifMagULStepEntMag2;
_GLOBAL unsigned long p_OpsLifMagULStepExtMag2;
_GLOBAL unsigned long p_AGVMag1Stat;
_GLOBAL unsigned long p_AGVMag1Status;
_GLOBAL unsigned long p_AGVMag1McRunRdy;
_GLOBAL unsigned long p_USSOT1Stat;
_GLOBAL unsigned long p_USSOT1Status;
_GLOBAL unsigned long p_USSOT1USRdy;
_GLOBAL unsigned long p_USSOT1Transporting;
_GLOBAL unsigned long p_USSOT1ConvStart;
_GLOBAL unsigned long p_USSOT1ConvStop;
_GLOBAL unsigned long p_USSOT2Stat;
_GLOBAL unsigned long p_USSOT2Status;
_GLOBAL unsigned long p_USSOT2Transporting;
_LOCAL plcbit Edge0000300000;
_LOCAL plcbit Edge0000300001;
_LOCAL plcbit Edge0000300002;
_LOCAL plcbit Edge0000300003;
_LOCAL plcbit Edge0000100000;
static void __AS__Action__Act_InitGlobal(void);
static void __AS__Action__Act_LinkEn(void);
static void __AS__Action__Act_Link(void);
static void __AS__Action__Act_RstErr(void);
static void __AS__Action__Act_InitLocal(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Background(void);
static void __AS__Action__Act_Alarm(void);
static void __AS__Action__Act_AlarmInfo(void);
static void __AS__Action__Act_OpsInitial(void);
static void __AS__Action__Act_OpsInMagInfo(void);
static void __AS__Action__Act_OpsRun(void);
static void __AS__Action__Act_OpsRun2(void);
static void __AS__Action__Act_OpsRst(void);