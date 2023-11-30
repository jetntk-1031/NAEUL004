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

struct fbPneuExtRetSenRetChk
{	plctime tTimeOut;
	unsigned long udiStatus;
	tyPneuFullSenChkInternal tyInternal;
	plcbit bEn;
	plcbit bExtSen;
	plcbit bRetSen;
	plcbit bRetSafety;
};
_BUR_PUBLIC void fbPneuExtRetSenRetChk(struct fbPneuExtRetSenRetChk* inst);
struct fbPneuExtRetSenExtChk
{	plctime tTimeOut;
	unsigned long udiStatus;
	tyPneuFullSenChkInternal tyInternal;
	plcbit bEn;
	plcbit bExtSen;
	plcbit bRetSen;
	plcbit bExtSafety;
};
_BUR_PUBLIC void fbPneuExtRetSenExtChk(struct fbPneuExtRetSenExtChk* inst);
_BUR_LOCAL plcbit(* p_bLinkOpsRun);
_BUR_LOCAL plcbit(* p_bLinkDISafetyRlySig);
_BUR_LOCAL plcbit(* p_bLinkPshrExtCtrl);
_BUR_LOCAL plcbit(* p_bLinkPshrRetCtrl);
_BUR_LOCAL plcbit(* p_bLinkAlarmSig);
_BUR_LOCAL eMtrPshrAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL plcbit(* p_bDir);
_BUR_LOCAL plctime(* p_tAlmRstTm);
_BUR_LOCAL plctime(* p_tAlmTrigTm);
_BUR_LOCAL plctime(* p_tMtrBrkOffDlyTm);
_BUR_LOCAL plctime(* p_tExtTO);
_BUR_LOCAL plctime(* p_tRetTO);
_BUR_LOCAL signed long(* p_diExtSlowSpd);
_BUR_LOCAL signed long(* p_diRetSlowSpd);
_BUR_LOCAL signed long(* p_diExtNomSpd);
_BUR_LOCAL signed long(* p_diRetNomSpd);
_BUR_LOCAL signed long(* p_diExtTorque);
_BUR_LOCAL signed long(* p_diRetTorque);
_BUR_LOCAL signed long(* p_diStartTorque);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL plcbit(* p_bExtSen);
_BUR_LOCAL plcbit(* p_bRetSen);
_BUR_LOCAL plcbit(* p_bExtSlowSen);
_BUR_LOCAL plcbit(* p_bRetSlowSen);
_BUR_LOCAL plcbit(* p_bExtSafetySen);
_BUR_LOCAL plcbit(* p_bRetSafetySen);
_BUR_LOCAL plcbit(* p_bAlarmSig);
_BUR_LOCAL plcbit(* p_bTorqueSig);
_BUR_LOCAL plcbit(* p_bNtParamAutoRcpPrep);
_BUR_LOCAL plcbit(* p_bMcParamAutoRcpDis);
_BUR_LOCAL eMtrPshrAction eAct;
_BUR_LOCAL eMtrPshrAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[61][201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[200];
_BUR_LOCAL plcbit bExtended;
_BUR_LOCAL plcbit bRetracted;
_BUR_LOCAL plcbit bCW;
_BUR_LOCAL plcbit bCCW;
_BUR_LOCAL plcbit bSpdBinBit0;
_BUR_LOCAL plcbit bSpdBinBit1;
_BUR_LOCAL plcbit bSpdBinBit2;
_BUR_LOCAL plcbit bSigOn;
_BUR_LOCAL plcbit bBrake;
_BUR_LOCAL plcbit bAlmRst;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bDir;
_BUR_LOCAL plctime tAlmRstTm;
_BUR_LOCAL plctime tAlmTrigTm;
_BUR_LOCAL plctime tMtrBrkOffDlyTm;
_BUR_LOCAL plctime tExtTO;
_BUR_LOCAL plctime tRetTO;
_BUR_LOCAL signed long diExtSlowSpd;
_BUR_LOCAL signed long diRetSlowSpd;
_BUR_LOCAL signed long diExtNomSpd;
_BUR_LOCAL signed long diRetNomSpd;
_BUR_LOCAL signed long diExtTorque;
_BUR_LOCAL signed long diRetTorque;
_BUR_LOCAL signed long diStartTorque;
_BUR_LOCAL plcbit bExtSen;
_BUR_LOCAL plcbit bRetSen;
_BUR_LOCAL plcbit bExtSlowSen;
_BUR_LOCAL plcbit bRetSlowSen;
_BUR_LOCAL plcbit bExtSafetySen;
_BUR_LOCAL plcbit bRetSafetySen;
_BUR_LOCAL plcbit bAlarmSig;
_BUR_LOCAL plcbit bTorqueSig;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL eMtrPshrAction eStatOld;
_BUR_LOCAL signed short iAnalogTorque;
_BUR_LOCAL signed long diMtrSpd;
_BUR_LOCAL plcbit bMtrSpdSlw;
_BUR_LOCAL struct TON fbAlmRstTm;
_BUR_LOCAL struct TON fbAlmTrigTm;
_BUR_LOCAL struct TON fbMtrBrkOffDlyTm;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbMtrPshrExtChk;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbMtrPshrRetChk;
_BUR_LOCAL unsigned long udiModuleNum;
