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

#ifndef __AS__TYPE_eConvDir
#define __AS__TYPE_eConvDir
typedef enum eConvDir
{	ConvDirLToR = 0,
	ConvDirRToL = 1,
	ConvDirLToL = 2,
	ConvDirRToR = 3,
} eConvDir;
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
#ifndef __AS__TYPE_tyConvMtrOnOffInternal
#define __AS__TYPE_tyConvMtrOnOffInternal
typedef struct tyConvMtrOnOffInternal
{	struct TON fbDlyTm;
} tyConvMtrOnOffInternal;
#endif

struct fbConvMtrOff
{	plctime tDlyTm;
	unsigned long udiStatus;
	tyConvMtrOnOffInternal tyInternal;
	plcbit bEn;
	plcbit bMtrSigOnOrLToR;
	plcbit bMtrDirOrRToL;
};
_BUR_PUBLIC void fbConvMtrOff(struct fbConvMtrOff* inst);
struct fbConvMtrOn
{	plctime tDlyTm;
	unsigned long udiStatus;
	tyConvMtrOnOffInternal tyInternal;
	plcbit bEn;
	plcbit bOnDirMod;
	plcbit bConvLToR;
	plcbit bMtrSigOnOrLToR;
	plcbit bMtrDirOrRToL;
};
_BUR_PUBLIC void fbConvMtrOn(struct fbConvMtrOn* inst);
struct fbConvBrkOn
{	plctime tDlyTm;
	unsigned long udiStatus;
	tyConvMtrOnOffInternal tyInternal;
	plcbit bEn;
	plcbit bMtrBrk;
};
_BUR_PUBLIC void fbConvBrkOn(struct fbConvBrkOn* inst);
struct fbConvBrkOff
{	plctime tDlyTm;
	unsigned long udiStatus;
	tyConvMtrOnOffInternal tyInternal;
	plcbit bEn;
	plcbit bMtrBrk;
};
_BUR_PUBLIC void fbConvBrkOff(struct fbConvBrkOff* inst);
#ifndef __AS__TYPE_tyConvMtrSenToSenInternal
#define __AS__TYPE_tyConvMtrSenToSenInternal
typedef struct tyConvMtrSenToSenInternal
{	struct fbConvMtrOff fbConvMtrOff;
	struct fbConvMtrOn fbConvMtrOn;
	struct fbConvBrkOn fbConvBrkOn;
	struct fbConvBrkOff fbConvBrkOff;
	struct TON fbMtrDirOffDlyTm;
	struct TON fbTO;
} tyConvMtrSenToSenInternal;
#endif

struct fbConvSenToSen
{	plctime tMtrOnDlyTm;
	plctime tMtrOffDlyTm;
	plctime tTimeOut;
	unsigned long udiStatus;
	tyConvMtrSenToSenInternal tyInternal;
	plcbit bEn;
	plcbit bStartSen;
	plcbit bEndSen;
	plcbit bOnDirMod;
	plcbit bConvLToR;
	plcbit bMtrSigOnOrLToR;
	plcbit bMtrDirOrRToL;
};
_BUR_PUBLIC void fbConvSenToSen(struct fbConvSenToSen* inst);
struct fbConvSenToSenBrk2
{	plctime tMtrOnDlyTm;
	plctime tMtrOffDlyTm;
	plctime tBrkOnDlyTm;
	plctime tBrkOffDlyTm;
	plctime tTimeOut;
	plctime tMtrDirOffDlyTm;
	plctime tMtrBrkOnDlyTm;
	unsigned long udiStatus;
	tyConvMtrSenToSenInternal tyInternal;
	plcbit bEn;
	plcbit bStartSen;
	plcbit bEndSen;
	plcbit bOnDirMod;
	plcbit bConvLToR;
	plcbit bMtrSigOnOrLToR;
	plcbit bMtrDirOrRToL;
	plcbit bMtrBrk;
};
_BUR_PUBLIC void fbConvSenToSenBrk2(struct fbConvSenToSenBrk2* inst);
struct F_TRIG
{	plcbit CLK;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void F_TRIG(struct F_TRIG* inst);
#ifndef __AS__TYPE_tyConvMtrSenToSenInternal1
#define __AS__TYPE_tyConvMtrSenToSenInternal1
typedef struct tyConvMtrSenToSenInternal1
{	struct fbConvSenToSen fbConvSenToSen;
	struct fbConvSenToSenBrk2 fbConvSenToSenBrk;
	struct F_TRIG fbFTrig;
	struct TON fbMtrBrkOnDlyTm;
	struct TON fbMtrDirOffDlyTm;
	struct TON fbMtrSigOnDlyTm;
	struct TON fbDlyTm;
} tyConvMtrSenToSenInternal1;
#endif

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

struct fbConvSenToSenTm
{	plctime tTxDlyTm;
	plctime tMtrOnDlyTm;
	plctime tMtrOffDlyTm;
	plctime tTimeOut;
	unsigned long udiStatus;
	tyConvMtrSenToSenInternal1 tyInternal;
	plcbit bEn;
	plcbit bStartSen;
	plcbit bEndSen;
	plcbit bOnDirMod;
	plcbit bConvLToR;
	plcbit bMtrSigOnOrLToR;
	plcbit bMtrDirOrRToL;
};
_BUR_PUBLIC void fbConvSenToSenTm(struct fbConvSenToSenTm* inst);
struct fbConvSenToSenOff1
{	plctime tMtrOnDlyTm;
	plctime tMtrOffDlyTm;
	plctime tTimeOut;
	unsigned long udiStatus;
	tyConvMtrSenToSenInternal1 tyInternal;
	plcbit bEn;
	plcbit bStartSen;
	plcbit bEndSen;
	plcbit bOnDirMod;
	plcbit bConvLToR;
	plcbit bMtrSigOnOrLToR;
	plcbit bMtrDirOrRToL;
};
_BUR_PUBLIC void fbConvSenToSenOff1(struct fbConvSenToSenOff1* inst);
struct fbConvSenToSenOff
{	plctime tMtrOnDlyTm;
	plctime tMtrOffDlyTm;
	plctime tTimeOut;
	unsigned long udiStatus;
	tyConvMtrSenToSenInternal1 tyInternal;
	plcbit bEn;
	plcbit bStartSen;
	plcbit bEndSen;
	plcbit bOnDirMod;
	plcbit bConvLToR;
	plcbit bMtrSigOnOrLToR;
	plcbit bMtrDirOrRToL;
};
_BUR_PUBLIC void fbConvSenToSenOff(struct fbConvSenToSenOff* inst);
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
_BUR_LOCAL plcbit(* p_bLinkOpsInitULDStepInitDone);
_BUR_LOCAL plcbit(* p_bLinkInMagConvMidSen);
_BUR_LOCAL plcbit(* p_bLinkInMagConvExtSen);
_BUR_LOCAL plcbit(* p_bLinkLifterLmtSW);
_BUR_LOCAL struct TON fbLeftSenOnChk;
_BUR_LOCAL plcbit(* p_bLinkOpsInMagConvStepEntToMid);
_BUR_LOCAL eMagConvAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL plcbit(* p_bOnDirMod);
_BUR_LOCAL signed long(* p_diInitTm);
_BUR_LOCAL plctime(* p_tMtrOffDlyTm);
_BUR_LOCAL signed long(* p_diTxInTimeOut);
_BUR_LOCAL signed long(* p_diTxOutTimeOut);
_BUR_LOCAL eConvDir(* p_eDirection);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plctime(* p_tClprClampTO);
_BUR_LOCAL plctime(* p_tClprUnclampTO);
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL plcbit(* p_bLeftSen);
_BUR_LOCAL plcbit(* p_bRightSen);
_BUR_LOCAL plcbit(* p_bClprClampSen);
_BUR_LOCAL plcbit(* p_bClprUnclampSen);
_BUR_LOCAL plcbit(* p_bClprClampSafetySen);
_BUR_LOCAL plcbit(* p_bClprUnclampSafetySen);
_BUR_LOCAL eMagConvAction eAct;
_BUR_LOCAL eMagConvAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL plcbit bHvMag;
_BUR_LOCAL plcbit bMtrSigOnOrLToR;
_BUR_LOCAL plcbit bMtrDirOrRToL;
_BUR_LOCAL plcbit bClprClampCtrl;
_BUR_LOCAL plcbit bClprTwoOutputControl;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bOnDirMod;
_BUR_LOCAL signed long diInitTm;
_BUR_LOCAL plctime tMtrOffDlyTm;
_BUR_LOCAL signed long diTxInTimeOut;
_BUR_LOCAL signed long diTxOutTimeOut;
_BUR_LOCAL eConvDir eDirection;
_BUR_LOCAL plcbit bLeftSen;
_BUR_LOCAL plcbit bRightSen;
_BUR_LOCAL plcbit bClprClampSen;
_BUR_LOCAL plcbit bClprUnclampSen;
_BUR_LOCAL plcbit bClprClampSafetySen;
_BUR_LOCAL plcbit bClprUnclampSafetySen;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plctime tClprClampTO;
_BUR_LOCAL plctime tClprUnclampTO;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bReachEnd;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL eMagConvAction eStatOld;
_BUR_LOCAL struct fbConvSenToSenTm fbInit;
_BUR_LOCAL struct fbConvSenToSen fbEnt;
_BUR_LOCAL struct fbConvSenToSenTm fbPreExit;
_BUR_LOCAL struct fbConvSenToSenOff fbExit;
_BUR_LOCAL struct fbConvSenToSenOff1 fbExit1;
_BUR_LOCAL struct fbConvMtrOff fbStop;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbClprClampChk;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbClprUnclampChk;
_BUR_LOCAL struct TON fbClprDlyTm;
_BUR_LOCAL unsigned long udiModuleNum;
