#ifndef __AS__TYPE_eSOTAction
#define __AS__TYPE_eSOTAction
typedef enum eSOTAction
{	SOTActIdle = 0,
	SOTActRun = 1,
	SOTActSetSig = 2,
	SOTActRstSig = 3,
} eSOTAction;
#endif

#ifndef __AS__TYPE_eSOTStat
#define __AS__TYPE_eSOTStat
typedef enum eSOTStat
{	SOTStatOppNotRdyNCurrNotRdy = 0,
	SOTStatOppRdyNCurrNotRdy = 1,
	SOTStatOppNotRdyNCurrRdy = 2,
	SOTStatOppRdyNCurrRdy = 3,
	SOTStatTransportStart = 4,
	SOTStatTransportIdle = 5,
	SOTStatTransporting = 6,
	SOTStatOppTransportFinished = 7,
	SOTStatCurrTransportFinished = 8,
	SOTStatTransportDone = 9,
} eSOTStat;
#endif

#ifndef __AS__TYPE_tySOTMagSeqInternal
#define __AS__TYPE_tySOTMagSeqInternal
typedef struct tySOTMagSeqInternal
{	eSOTStat eStat;
} tySOTMagSeqInternal;
#endif

struct fbSOTMagSeq
{	unsigned long udiStatus;
	tySOTMagSeqInternal tyInternal;
	plcbit bEn;
	plcbit bOppRdy;
	plcbit bCurrRdy;
	plcbit bSigToOppOn;
};
_BUR_PUBLIC void fbSOTMagSeq(struct fbSOTMagSeq* inst);
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
#ifndef __AS__TYPE_tySOTTransportIdleInternal
#define __AS__TYPE_tySOTTransportIdleInternal
typedef struct tySOTTransportIdleInternal
{	eSOTStat eStat;
	struct TON fbTO;
} tySOTTransportIdleInternal;
#endif

struct fbSOTTransportIdle
{	plctime tTimeOut;
	plctime tElapseTimeOut;
	unsigned long udiStatus;
	tySOTTransportIdleInternal tyInternal;
	plcbit bEn;
	plcbit bOppRdy;
	plcbit bInletSen;
	plcbit bOutletSen;
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bContinue;
	plcbit zzEdge00000;
};
_BUR_PUBLIC void fbSOTTransportIdle(struct fbSOTTransportIdle* inst);
#ifndef __AS__TYPE_tySOTTransportingInternal
#define __AS__TYPE_tySOTTransportingInternal
typedef struct tySOTTransportingInternal
{	eSOTStat eStat;
	struct TON fbTO;
	struct TON fbRstDlyTm;
} tySOTTransportingInternal;
#endif

struct fbSOTUSTransporting
{	plctime tTimeOut;
	plctime tRstDlyTm;
	unsigned long udiStatus;
	tySOTTransportingInternal tyInternal;
	plcbit bEn;
	plcbit bOppRdy;
	plcbit bComplSigOn;
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bSigToOppOff;
	plcbit bCompl;
};
_BUR_PUBLIC void fbSOTUSTransporting(struct fbSOTUSTransporting* inst);
#ifndef __AS__TYPE_tySOTUSInternal
#define __AS__TYPE_tySOTUSInternal
typedef struct tySOTUSInternal
{	unsigned char usiStep;
	struct fbSOTMagSeq fbSOTMagSeq;
	struct fbSOTTransportIdle fbSOTTransportIdle;
	struct fbSOTUSTransporting fbSOTTransporting;
	struct TON fbDlyTM;
} tySOTUSInternal;
#endif

#ifndef __AS__TYPE_tySOTSigInChkInternal
#define __AS__TYPE_tySOTSigInChkInternal
typedef struct tySOTSigInChkInternal
{	plcbit bSigInValid;
	plcbit bNomSigOld;
	struct TON fbSigInChkTm;
} tySOTSigInChkInternal;
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

struct fbSOTUS
{	plctime tDlyTm;
	plctime tTimeOut;
	plctime tRstDlyTm;
	unsigned long udiStatus;
	tySOTUSInternal tyInternal;
	plcbit bEn;
	plcbit bUSRdy;
	plcbit bRdyRcv;
	plcbit bComplSigOn;
	plcbit bInletSen;
	plcbit bOutletSen;
	plcbit bTransporting;
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bSigToUS;
};
_BUR_PUBLIC void fbSOTUS(struct fbSOTUS* inst);
struct fbSOTSigInChk
{	plctime tSigInChkTm;
	tySOTSigInChkInternal tyInternal;
	plcbit bNomSig;
	plcbit bMagSizeSig;
	plcbit bSigInValid;
	plcbit bMagSizeLarge;
};
_BUR_PUBLIC void fbSOTSigInChk(struct fbSOTSigInChk* inst);
_BUR_LOCAL plcbit(* p_bLinkOpsRun);
_BUR_LOCAL plcbit(* p_bLinkSOTReadyOnFirst);
_BUR_LOCAL plcbit(* p_bLinkProjMag2ConvPrep);
_BUR_LOCAL plcbit(* p_bLinkProjMagConvLane2Prep);
_BUR_LOCAL plcbit(* p_bLinkProjTCPAGVSigPrep);
_BUR_LOCAL eSOTAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL signed long(* p_diTransferInTO);
_BUR_LOCAL plcbit(* p_bDirLToR);
_BUR_LOCAL plcbit(* p_bRdyRcv);
_BUR_LOCAL plcbit(* p_bLeftSen);
_BUR_LOCAL plcbit(* p_bRightSen);
_BUR_LOCAL plcbit(* p_bComplSigOn);
_BUR_LOCAL plcbit(* p_bUMA);
_BUR_LOCAL plcbit(* p_bUMASize);
_BUR_LOCAL plcbit(* p_bVirtualEn);
_BUR_LOCAL plcbit(* p_bUBAVirtual);
_BUR_LOCAL plctime(* p_tRstDlyTm);
_BUR_LOCAL plctime(* p_tSigInChkTm);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL eSOTAction eAct;
_BUR_LOCAL eSOTAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL plcbit bUSRdy;
_BUR_LOCAL plcbit bUSLargeMagRdy;
_BUR_LOCAL plcbit bDSRdy;
_BUR_LOCAL plcbit bTransporting;
_BUR_LOCAL plcbit bConvStart;
_BUR_LOCAL plcbit bConvStop;
_BUR_LOCAL plcbit bUSB;
_BUR_LOCAL plcbit bVirtual;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL signed long diTransferInTO;
_BUR_LOCAL plcbit bDirLToR;
_BUR_LOCAL plcbit bRdyRcv;
_BUR_LOCAL plcbit bLeftSen;
_BUR_LOCAL plcbit bRightSen;
_BUR_LOCAL plcbit bComplSigOn;
_BUR_LOCAL plcbit bUMA;
_BUR_LOCAL plcbit bUMASize;
_BUR_LOCAL plcbit bVirtualEn;
_BUR_LOCAL plcbit bUBAVirtual;
_BUR_LOCAL plctime tRstDlyTm;
_BUR_LOCAL plctime tSigInChkTm;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL struct fbSOTUS fbSOT;
_BUR_LOCAL struct fbSOTSigInChk fbSigInChk;
_BUR_LOCAL eSOTAction eStatOld;
_BUR_LOCAL unsigned long udiModuleNum;
