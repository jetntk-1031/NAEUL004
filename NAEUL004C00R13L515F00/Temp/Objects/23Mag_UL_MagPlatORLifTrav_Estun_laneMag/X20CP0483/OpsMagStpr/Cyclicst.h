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

#ifndef __AS__TYPE_eMagConvStprRunStep
#define __AS__TYPE_eMagConvStprRunStep
typedef enum eMagConvStprRunStep
{	MagConvStprStepNA = 0,
	MagConvStprStepInit = 1,
	MagConvStprStepChkCond = 2,
	MagConvStprStepBtmLiftMagEnt = 3,
	MagConvStprStepBtmLiftMagExit = 4,
	MagConvStprStepTopLiftMagEnt = 5,
	MagConvStprStepTopLiftMagExit = 6,
	MagConvStprStepTopMagConvEnter = 7,
	MagConvStprStepTopMagConvEnterD = 8,
	MagConvStprStepBtmMagConvExit = 9,
	MagConvStprStepDone = 10,
	MagConvStprStepInitDone = 11,
	MagConvStprStepBtmMagExitMnl = 12,
} eMagConvStprRunStep;
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
_BUR_LOCAL signed long(* p_diLinkLiftBtmActualPos);
_BUR_LOCAL signed long(* p_diLinkLiftBtmPos);
_BUR_LOCAL signed long(* p_diLinkLiftTopPos);
_BUR_LOCAL plcbit(* p_bLinkOpsMnlUnloadMag);
_BUR_LOCAL plcbit(* p_bLinkOpsOutMagConvStepWaitRmv);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bRun);
_BUR_LOCAL plcbit(* p_bStop);
_BUR_LOCAL plcbit(* p_bStep);
_BUR_LOCAL plcbit(* p_bBtmEntToLift);
_BUR_LOCAL plcbit(* p_bBtmExitFromLift);
_BUR_LOCAL plcbit(* p_bTopEntToLift);
_BUR_LOCAL plcbit(* p_bTopExitFromLift);
_BUR_LOCAL plcbit(* p_bTopEntFromMagConv);
_BUR_LOCAL plcbit(* p_bBtmExitFromMagConv);
_BUR_LOCAL plcbit(* p_bBtmExitMnl);
_BUR_LOCAL ePneuAction(* p_eStprTopEntStat);
_BUR_LOCAL eFBStatus(* p_eStprTopEntStatus);
_BUR_LOCAL ePneuAction(* p_eStprBtmMidStat);
_BUR_LOCAL eFBStatus(* p_eStprBtmMidStatus);
_BUR_LOCAL ePneuAction(* p_eStprTopMidStat);
_BUR_LOCAL eFBStatus(* p_eStprTopMidStatus);
_BUR_LOCAL plcbit(* p_bStprTopMidStprExtended);
_BUR_LOCAL ePneuAction(* p_eStprBtmExitStat);
_BUR_LOCAL eFBStatus(* p_eStprBtmExitStatus);
_BUR_LOCAL ePneuAction(* p_eStprTopExitStat);
_BUR_LOCAL eFBStatus(* p_eStprTopExitStatus);
_BUR_LOCAL plcbit(* p_bStprTopExitStprExtended);
_BUR_LOCAL eMagConvAction(* p_eLiftMagConvAct);
_BUR_LOCAL eMagConvAction(* p_eInMagConvStat);
_BUR_LOCAL eFBStatus(* p_eInMagConvStatus);
_BUR_LOCAL eFBStatus(* p_eOutMagConvStatus);
_BUR_LOCAL eMagConvAction(* p_eLiftMagConvStat);
_BUR_LOCAL eFBStatus(* p_eLiftMagConvStatus);
_BUR_LOCAL plcbit(* p_bBtmMagConvZ1Sen);
_BUR_LOCAL plcbit(* p_bTopMagConvZ1Sen);
_BUR_LOCAL plcbit(* p_bTopMagConvMidSen);
_BUR_LOCAL plcbit(* p_bBtmMagConvMidSen);
_BUR_LOCAL plcbit(* p_bBtmMagConvEndSen);
_BUR_LOCAL plcbit(* p_bTopMagConvEndSen);
_BUR_LOCAL plcbit(* p_bMagPresentSen);
_BUR_LOCAL plcbit(* p_bLiftBtmPos);
_BUR_LOCAL plcbit(* p_bLiftTopPos);
_BUR_LOCAL plcbit(* p_bEnterSig);
_BUR_LOCAL plcbit(* p_bExitSig);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL plcstring sStepTxt[81];
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL ePneuAction eStprBtmMidAct;
_BUR_LOCAL ePneuAction eStprBtmExitAct;
_BUR_LOCAL ePneuAction eStprTopEntAct;
_BUR_LOCAL ePneuAction eStprTopMidAct;
_BUR_LOCAL ePneuAction eStprTopExitAct;
_BUR_LOCAL ePneuAction eLiftMagConvAct;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL ePneuAction eStprBtmMidStat;
_BUR_LOCAL eFBStatus eStprBtmMidStatus;
_BUR_LOCAL eFBStatus eStprBtmExitStatus;
_BUR_LOCAL ePneuAction eStprBtmExitStat;
_BUR_LOCAL ePneuAction eStprTopEntStat;
_BUR_LOCAL eFBStatus eStprTopEntStatus;
_BUR_LOCAL ePneuAction eStprTopMidStat;
_BUR_LOCAL eFBStatus eStprTopMidStatus;
_BUR_LOCAL ePneuAction eStprTopExitStat;
_BUR_LOCAL eFBStatus eStprTopExitStatus;
_BUR_LOCAL plcbit bLiftBtmPos;
_BUR_LOCAL plcbit bLiftTopPos;
_BUR_LOCAL plcbit bBtmMagConvZ1Sen;
_BUR_LOCAL plcbit bTopMagConvZ1Sen;
_BUR_LOCAL plcbit bTopMagConvMidSen;
_BUR_LOCAL plcbit bBtmMagConvMidSen;
_BUR_LOCAL plcbit bBtmMagConvEndSen;
_BUR_LOCAL plcbit bTopMagConvEndSen;
_BUR_LOCAL plcbit bMagPresentSen;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bBtmEntToLift;
_BUR_LOCAL plcbit bBtmExitFromLift;
_BUR_LOCAL plcbit bTopEntToLift;
_BUR_LOCAL plcbit bTopExitFromLift;
_BUR_LOCAL plcbit bTopEntFromMagConv;
_BUR_LOCAL plcbit bBtmExitFromMagConv;
_BUR_LOCAL plcbit bBtmExitMnl;
_BUR_LOCAL plcbit bEnterSig;
_BUR_LOCAL plcbit bExitSig;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL eMagConvStprRunStep eOpsStep;
_BUR_LOCAL eMagConvStprRunStep eGotoOpsStep;
_BUR_LOCAL eMagConvStprRunStep eOpsStep1;
_BUR_LOCAL eMagConvStprRunStep eGotoOpsStep1;
_BUR_LOCAL eMagConvStprRunStep eOpsStep2;
_BUR_LOCAL eMagConvStprRunStep eGotoOpsStep2;
_BUR_LOCAL struct TON fbMidChkDlyTm;
_BUR_LOCAL struct TON fbTopMidChkDlyTm;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL unsigned long p_UIOpsMnlUnloadMag;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL plcstring g_sOpsMagConvStprProgNm[16];
_GLOBAL unsigned long p_RstErrReset;
_GLOBAL unsigned long p_McParamLifterTopPos;
_GLOBAL unsigned long p_McParamLifterBtmPos;
_GLOBAL unsigned long p_NtParamOpsMagConvStprProgNm;
_GLOBAL unsigned long p_PneuNoSenTopEntStprStat;
_GLOBAL unsigned long p_PneuNoSenTopEntStprStatus;
_GLOBAL unsigned long p_PneuNoSenTopEntStprExtended;
_GLOBAL unsigned long p_PneuNoSenTopMidStprStat;
_GLOBAL unsigned long p_PneuNoSenTopMidStprStatus;
_GLOBAL unsigned long p_PneuNoSenTopMidStprExtended;
_GLOBAL unsigned long p_PneuNoSenTopExtStprStat;
_GLOBAL unsigned long p_PneuNoSenTopExtStprStatus;
_GLOBAL unsigned long p_PneuNoSenBtmMidStprStat;
_GLOBAL unsigned long p_PneuNoSenBtmMidStprStatus;
_GLOBAL unsigned long p_PneuNoSenBtmExtStprStat;
_GLOBAL unsigned long p_PneuNoSenBtmExtStprStatus;
_GLOBAL unsigned long p_InMagConvStat;
_GLOBAL unsigned long p_InMagConvStatus;
_GLOBAL unsigned long p_OutMagConvStatus;
_GLOBAL unsigned long p_LifterMagConvStat;
_GLOBAL unsigned long p_LifterMagConvStatus;
_GLOBAL unsigned long p_LifterBtmActualPos;
_GLOBAL unsigned long p_DIInMagConvEntSen;
_GLOBAL unsigned long p_DIInMagConvExtSen;
_GLOBAL unsigned long p_DIInMagConvMidSen;
_GLOBAL unsigned long p_DIOutMagConvEntSen;
_GLOBAL unsigned long p_DIOutMagConvExtSen;
_GLOBAL unsigned long p_DIOutMagConvMidSen;
_GLOBAL unsigned long p_DILifterLmtSW;
_GLOBAL unsigned long p_OpsRun;
_GLOBAL unsigned long p_OpsStop;
_GLOBAL unsigned long p_OpsStep;
_GLOBAL unsigned long p_OpsInMagConvStepEntToMid;
_GLOBAL unsigned long p_OpsOutMagConvStepExtMag;
_GLOBAL unsigned long p_OpsOutMagConvStepWaitToRmvMag;
_LOCAL plcbit Edge0000200000;
_LOCAL plcbit Edge0000200001;
_LOCAL plcbit Edge0000200002;
_LOCAL plcbit Edge0000200003;
_LOCAL plcbit Edge0000100000;
static void __AS__Action__Act_InitGlobal(void);
static void __AS__Action__Act_LinkEn(void);
static void __AS__Action__Act_Link(void);
static void __AS__Action__Act_RstErr(void);
static void __AS__Action__Act_InitLocal(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Background(void);
static void __AS__Action__Act_Alarm(void);
static void __AS__Action__Act_OpsInitial(void);
static void __AS__Action__Act_OpsRun(void);
static void __AS__Action__Act_OpsRst(void);
