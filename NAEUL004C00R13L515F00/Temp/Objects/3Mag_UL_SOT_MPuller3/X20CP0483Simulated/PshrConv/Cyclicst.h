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

#ifndef __AS__TYPE_eMcSetCommMod
#define __AS__TYPE_eMcSetCommMod
typedef enum eMcSetCommMod
{	McSetCommModSMEMA = 0,
	McSetCommModHermes = 1,
} eMcSetCommMod;
#endif

#ifndef __AS__TYPE_eAutoRcpPreceded
#define __AS__TYPE_eAutoRcpPreceded
typedef enum eAutoRcpPreceded
{	PrecededBySelf = 0,
	PrecededByF1 = 1,
	PrecededByF2 = 2,
} eAutoRcpPreceded;
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
#ifndef __AS__TYPE_tyConvLongBrdInternal
#define __AS__TYPE_tyConvLongBrdInternal
typedef struct tyConvLongBrdInternal
{	struct TON fbDlyTm;
} tyConvLongBrdInternal;
#endif

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

struct fbConvSenToSenTm1
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
_BUR_PUBLIC void fbConvSenToSenTm1(struct fbConvSenToSenTm1* inst);
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
struct fbConvLongBrd
{	plctime tDlyTm;
	unsigned long udiStatus;
	tyConvLongBrdInternal tyInternal;
	plcbit bSen1;
	plcbit bSen2;
	plcbit bSen3;
	plcbit bSen4;
};
_BUR_PUBLIC void fbConvLongBrd(struct fbConvLongBrd* inst);
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
_BUR_LOCAL plcbit(* p_bLinkUIBypsInitConv);
_BUR_LOCAL plcbit(* p_bLinkDISafetyRlySig);
_BUR_LOCAL plcbit(* p_bLinkDIRgtSen);
_BUR_LOCAL plcbit(* p_bLinkDIClrSen);
_BUR_LOCAL unsigned char(* p_usiLinkMcParamProdSelMcMod);
_BUR_LOCAL eTravLifULPos(* p_eLinkOpsTravLifPosGo);
_BUR_LOCAL eMcSetCommMod(* p_eLinkMcParamUSCommAMod);
_BUR_LOCAL eMcSetCommMod(* p_eLinkMcParamUSCommBMod);
_BUR_LOCAL plcbit(* p_bLinkPshrRetSen);
_BUR_LOCAL plcbit(* p_bLinkPshrRetSlwSen);
_BUR_LOCAL eConvAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL plcbit(* p_bLongBrdPrep);
_BUR_LOCAL plcbit(* p_bLongBrdEn);
_BUR_LOCAL plcbit(* p_bOnDirMod);
_BUR_LOCAL signed long(* p_diInitTm);
_BUR_LOCAL signed long(* p_diRevDlyTm);
_BUR_LOCAL plctime(* p_tMtrOffDlyTm);
_BUR_LOCAL signed long(* p_diTxInTimeOut);
_BUR_LOCAL signed long(* p_diTxOutTimeOut);
_BUR_LOCAL eConvDir(* p_eDirection);
_BUR_LOCAL plcbit(* p_bGdBrdInit);
_BUR_LOCAL plcbit(* p_bGdBrdEnt);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plctime(* p_tPshrExtTO);
_BUR_LOCAL plctime(* p_tPshrRetTO);
_BUR_LOCAL plctime(* p_tPullerExtTO);
_BUR_LOCAL plctime(* p_tPullerRetTO);
_BUR_LOCAL plctime(* p_tRotHomeTO);
_BUR_LOCAL plctime(* p_tRotRemoteTO);
_BUR_LOCAL plctime(* p_tRejectUpTO);
_BUR_LOCAL plctime(* p_tRejectDownTO);
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL plcbit(* p_bLeftSen);
_BUR_LOCAL plcbit(* p_bRightSen);
_BUR_LOCAL plcbit(* p_bMiddleSen);
_BUR_LOCAL plcbit(* p_bPullerChkSen);
_BUR_LOCAL plcbit(* p_bPshrExtSen);
_BUR_LOCAL plcbit(* p_bPshrRetSen);
_BUR_LOCAL plcbit(* p_bPshrExtSafetySen);
_BUR_LOCAL plcbit(* p_bPshrRetSafetySen);
_BUR_LOCAL plcbit(* p_bPullerExtSen);
_BUR_LOCAL plcbit(* p_bPullerRetSen);
_BUR_LOCAL plcbit(* p_bPullerExtSafetySen);
_BUR_LOCAL plcbit(* p_bPullerRetSafetySen);
_BUR_LOCAL plcbit(* p_bRotHomeSen);
_BUR_LOCAL plcbit(* p_bRotRemoteSen);
_BUR_LOCAL plcbit(* p_bRotHomeSafetySen);
_BUR_LOCAL plcbit(* p_bRotRemoteSafetySen);
_BUR_LOCAL plcbit(* p_bRejectUpSen);
_BUR_LOCAL plcbit(* p_bRejectDownSen);
_BUR_LOCAL plcbit(* p_bRejectUpSafetySen);
_BUR_LOCAL plcbit(* p_bRejectDownSafetySen);
_BUR_LOCAL plcbit(* p_bSelfTest);
_BUR_LOCAL plcbit(* p_bNtParamAutoRcpPrep);
_BUR_LOCAL plcbit(* p_bMcParamAutoRcpDis);
_BUR_LOCAL eAutoRcpPreceded(* p_eNtParamAutoRcpPrecededBy);
_BUR_LOCAL eConvAction eAct;
_BUR_LOCAL eConvAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[61][201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[200];
_BUR_LOCAL plcbit bHvBrd;
_BUR_LOCAL plcbit bRejHvBrd;
_BUR_LOCAL plcbit bInspHvBrd;
_BUR_LOCAL plcbit bGdBrd;
_BUR_LOCAL plcbit bLmtSenActivated;
_BUR_LOCAL plcbit bMtrSigOnOrLToR;
_BUR_LOCAL plcbit bMtrDirOrRToL;
_BUR_LOCAL plcbit bPshrExtCtrl;
_BUR_LOCAL plcbit bPshrRetCtrl;
_BUR_LOCAL plcbit bPshrExtended;
_BUR_LOCAL plcbit bPshrRetracted;
_BUR_LOCAL plcbit bPullerExtCtrl;
_BUR_LOCAL plcbit bPullerRetCtrl;
_BUR_LOCAL plcbit bPullerExtended;
_BUR_LOCAL plcbit bPullerRetracted;
_BUR_LOCAL plcbit bRotRemoteCtrl;
_BUR_LOCAL plcbit bRotAtRemote;
_BUR_LOCAL plcbit bRotAtHome;
_BUR_LOCAL plcbit bRejectUpCtrl;
_BUR_LOCAL plcbit bRejectDownCtrl;
_BUR_LOCAL plcbit bRejectAtUp;
_BUR_LOCAL plcbit bRejectAtDown;
_BUR_LOCAL plcbit bPshrRetAllwTraverse;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bLongBrdPrep;
_BUR_LOCAL plcbit bLongBrdEn;
_BUR_LOCAL plcbit bOnDirMod;
_BUR_LOCAL signed long diInitTm;
_BUR_LOCAL signed long diRevDlyTm;
_BUR_LOCAL plctime tMtrOffDlyTm;
_BUR_LOCAL signed long diTxInTimeOut;
_BUR_LOCAL signed long diTxOutTimeOut;
_BUR_LOCAL eConvDir eDirection;
_BUR_LOCAL plcbit bGdBrdInit;
_BUR_LOCAL plcbit bGdBrdEnt;
_BUR_LOCAL plcbit bLeftSen;
_BUR_LOCAL plcbit bRightSen;
_BUR_LOCAL plcbit bMiddleSen;
_BUR_LOCAL plcbit bPullerChkSen;
_BUR_LOCAL plcbit bPshrExtSen;
_BUR_LOCAL plcbit bPshrRetSen;
_BUR_LOCAL plcbit bPshrExtSafetySen;
_BUR_LOCAL plcbit bPshrRetSafetySen;
_BUR_LOCAL plcbit bPullerExtSen;
_BUR_LOCAL plcbit bPullerRetSen;
_BUR_LOCAL plcbit bPullerExtSafetySen;
_BUR_LOCAL plcbit bPullerRetSafetySen;
_BUR_LOCAL plcbit bRotHomeSen;
_BUR_LOCAL plcbit bRotRemoteSen;
_BUR_LOCAL plcbit bRotHomeSafetySen;
_BUR_LOCAL plcbit bRotRemoteSafetySen;
_BUR_LOCAL plcbit bRejectUpSen;
_BUR_LOCAL plcbit bRejectDownSen;
_BUR_LOCAL plcbit bRejectUpSafetySen;
_BUR_LOCAL plcbit bRejectDownSafetySen;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plctime tPshrExtTO;
_BUR_LOCAL plctime tPshrRetTO;
_BUR_LOCAL plctime tPullerExtTO;
_BUR_LOCAL plctime tPullerRetTO;
_BUR_LOCAL plctime tRotHomeTO;
_BUR_LOCAL plctime tRotRemoteTO;
_BUR_LOCAL plctime tRejectUpTO;
_BUR_LOCAL plctime tRejectDownTO;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bInletOff;
_BUR_LOCAL struct TON fbWaitTm;
_BUR_LOCAL struct TON fbBoardOffTm;
_BUR_LOCAL eConvAction eStatOld;
_BUR_LOCAL struct fbConvSenToSenTm fbInit;
_BUR_LOCAL struct fbConvSenToSen fbEnt;
_BUR_LOCAL struct fbConvSenToSenTm1 fbRev;
_BUR_LOCAL struct fbConvSenToSenTm fbPreExit;
_BUR_LOCAL struct fbConvSenToSenOff fbExit;
_BUR_LOCAL struct fbConvSenToSenOff1 fbExit1;
_BUR_LOCAL struct fbConvLongBrd fbLongBrd;
_BUR_LOCAL struct fbConvMtrOff fbStop;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbPshrExtChk;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbPshrRetChk;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbPullerExtChk;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbPullerRetChk;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbRotHomeChk;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbRotRemoteChk;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbRejectUpChk;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbRejectDownChk;
_BUR_LOCAL struct TON fbRightSenTm;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL unsigned long p_UIPshrConvAct;
_GLOBAL unsigned long p_UIMnlMod;
_GLOBAL unsigned long p_UIOpsBypsInitConv;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL plcstring g_sConvProgNm[16];
_GLOBAL unsigned long p_RstErrReset;
_GLOBAL unsigned long p_ProdRcpCurrRcp0McMod;
_GLOBAL unsigned long p_ProdRcpCurrRcp1McMod;
_GLOBAL unsigned long p_McParamConvInitTm;
_GLOBAL unsigned long p_McParamTranInErrDlyTm;
_GLOBAL unsigned long p_McParamUSCommAMod;
_GLOBAL unsigned long p_McParamUSCommBMod;
_GLOBAL unsigned long p_McParamAutoRcpDisable;
_GLOBAL unsigned long p_NtParamProjConvDir;
_GLOBAL unsigned long p_NtParamPshrConvProgNm;
_GLOBAL unsigned long p_NtParamPshrConvOnDirMod;
_GLOBAL unsigned long p_NtParamPshrConvMtrOffDlyTm;
_GLOBAL unsigned long p_NtParamPshrConvPshrExtTO;
_GLOBAL unsigned long p_NtParamPshrConvPshrRetTO;
_GLOBAL unsigned long p_NtParamAutoRcpPrep;
_GLOBAL unsigned long p_NtParamAutoRcpPrecededBy;
_GLOBAL unsigned long p_USSMEMAAUSGdBrdRdy;
_GLOBAL unsigned long p_USSMEMABUSGdBrdRdy;
_GLOBAL unsigned long p_DISafetyRlySig;
_GLOBAL unsigned long p_DIPusherExtRS;
_GLOBAL unsigned long p_DIPusherRetRS;
_GLOBAL unsigned long p_DIConvLftSen;
_GLOBAL unsigned long p_DIConvMidSen;
_GLOBAL unsigned long p_DIConvRgtSen;
_GLOBAL unsigned long p_DIConvClrSen;
_GLOBAL unsigned long p_DIPusherRetSlwSen;
_GLOBAL unsigned long p_USHermesAUSGdRdy;
_GLOBAL unsigned long p_USHermesBUSGdRdy;
_GLOBAL unsigned long p_OpsRun;
_GLOBAL unsigned long p_OpsTravLifULConvAct;
_GLOBAL unsigned long p_OpsTravLifULPosGo;
_GLOBAL unsigned long p_OpsTravLifULSelfTest;
_LOCAL plcbit Edge0000700000;
_LOCAL plcbit Edge0001000000;
_LOCAL plcbit Edge0001000001;
_LOCAL plcbit Edge0001000002;
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
static void __AS__Action__Act_Background(void);
static void __AS__Action__Act_Alarm(void);
