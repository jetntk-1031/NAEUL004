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
#ifndef __AS__TYPE_tyPneuSenChkInternal
#define __AS__TYPE_tyPneuSenChkInternal
typedef struct tyPneuSenChkInternal
{	struct TON fbChkTm;
} tyPneuSenChkInternal;
#endif

struct fbPneuNoSenDly
{	plctime tDlyTm;
	unsigned long udiStatus;
	tyPneuSenChkInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbPneuNoSenDly(struct fbPneuNoSenDly* inst);
struct fbPneuSenOnChk
{	plctime tTimeOut;
	unsigned long udiStatus;
	tyPneuSenChkInternal tyInternal;
	plcbit bEn;
	plcbit bSenOn;
};
_BUR_PUBLIC void fbPneuSenOnChk(struct fbPneuSenOnChk* inst);
#ifndef __AS__TYPE_tyPneuSafetyChkInternal
#define __AS__TYPE_tyPneuSafetyChkInternal
typedef struct tyPneuSafetyChkInternal
{	struct fbPneuNoSenDly fbPneuNoSenDly;
	struct fbPneuSenOnChk fbPneuSenOnChk;
} tyPneuSafetyChkInternal;
#endif

struct fbPneuSenOnChkWithSafety
{	plctime tTimeOut;
	unsigned long udiStatus;
	tyPneuSafetyChkInternal tyInternal;
	plcbit bEn;
	plcbit bSenOn;
	plcbit bSafetySenOn;
};
_BUR_PUBLIC void fbPneuSenOnChkWithSafety(struct fbPneuSenOnChkWithSafety* inst);
struct fbPneuNoSenDlyWithSafety
{	plctime tDlyTm;
	unsigned long udiStatus;
	tyPneuSafetyChkInternal tyInternal;
	plcbit bEn;
	plcbit bSafetySenOn;
};
_BUR_PUBLIC void fbPneuNoSenDlyWithSafety(struct fbPneuNoSenDlyWithSafety* inst);
struct fbPneuSenOffChk
{	plctime tTimeOut;
	unsigned long udiStatus;
	tyPneuSenChkInternal tyInternal;
	plcbit bEn;
	plcbit bSenOn;
};
_BUR_PUBLIC void fbPneuSenOffChk(struct fbPneuSenOffChk* inst);
#ifndef __AS__TYPE_tyPneuFullSenChkInternal
#define __AS__TYPE_tyPneuFullSenChkInternal
typedef struct tyPneuFullSenChkInternal
{	struct fbPneuSenOnChkWithSafety fbPneuSenOnChkWithSafety;
	struct fbPneuNoSenDlyWithSafety fbPneuNoSenDlyWithSafety;
	struct fbPneuSenOffChk fbPneuSenOffChk;
} tyPneuFullSenChkInternal;
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

struct fbPneuNoSenRetChk
{	plctime tDlyTm;
	unsigned long udiStatus;
	tyPneuFullSenChkInternal tyInternal;
	plcbit bEn;
	plcbit bRetSafety;
};
_BUR_PUBLIC void fbPneuNoSenRetChk(struct fbPneuNoSenRetChk* inst);
struct fbPneuNoSenExtChk
{	plctime tDlyTm;
	unsigned long udiStatus;
	tyPneuFullSenChkInternal tyInternal;
	plcbit bEn;
	plcbit bExtSafety;
};
_BUR_PUBLIC void fbPneuNoSenExtChk(struct fbPneuNoSenExtChk* inst);
_BUR_LOCAL plcbit(* p_bLinkOpsRun);
_BUR_LOCAL plcbit(* p_bLinkDISafetyRlySig);
_BUR_LOCAL ePneuAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL plcbit(* p_bTwoCtrlIn);
_BUR_LOCAL plcbit(* p_bExtSafetySen);
_BUR_LOCAL plcbit(* p_bRetSafetySen);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plctime(* p_tExtDlyTm);
_BUR_LOCAL plctime(* p_tRetDlyTm);
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL ePneuAction eAct;
_BUR_LOCAL ePneuAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL plcbit bExtCtrl;
_BUR_LOCAL plcbit bRetCtrl;
_BUR_LOCAL plcbit bTwoCtrlOut;
_BUR_LOCAL plcbit bExtended;
_BUR_LOCAL plcbit bRetracted;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bTwoCtrlIn;
_BUR_LOCAL plcbit bExtSafetySen;
_BUR_LOCAL plcbit bRetSafetySen;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plctime tExtDlyTm;
_BUR_LOCAL plctime tRetDlyTm;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL struct fbPneuNoSenExtChk fbPneuExtChk;
_BUR_LOCAL struct fbPneuNoSenRetChk fbPneuRetChk;
_BUR_LOCAL ePneuAction eStatOld;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL unsigned long p_UIMnlMod;
_GLOBAL unsigned long p_UIStopper3Act;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL plcstring g_sPneuNoSenProgNm[16];
_GLOBAL unsigned long p_RstErrReset;
_GLOBAL unsigned long p_NtParamProjMagConvLane1Prep;
_GLOBAL unsigned long p_NtParamProjTopExtStprPrep;
_GLOBAL unsigned long p_NtParamTopExtStprProgNm;
_GLOBAL unsigned long p_NtParamTopExtStprTwoCtrlIn;
_GLOBAL unsigned long p_NtParamTopExtStprExtDlyTm;
_GLOBAL unsigned long p_NtParamTopExtStprRetDlyTm;
_GLOBAL unsigned long p_DISafetyRlySig;
_GLOBAL unsigned long p_OpsRun;
_GLOBAL unsigned long p_OpsMagConvStprTopExitAct;
_LOCAL plcbit Edge0000200000;
static void __AS__Action__Act_InitGlobal(void);
static void __AS__Action__Act_LinkAction(void);
static void __AS__Action__Act_LinkEn(void);
static void __AS__Action__Act_Link(void);
static void __AS__Action__Act_RstErr(void);
static void __AS__Action__Act_InitLocal(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Action(void);
static void __AS__Action__Act_Main(void);
static void __AS__Action__Act_Alarm(void);