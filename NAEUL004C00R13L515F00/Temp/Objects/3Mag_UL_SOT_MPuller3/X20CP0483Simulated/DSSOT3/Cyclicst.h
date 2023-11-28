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
#ifndef __AS__TYPE_tySOTTransportingInternal
#define __AS__TYPE_tySOTTransportingInternal
typedef struct tySOTTransportingInternal
{	eSOTStat eStat;
	struct TON fbTO;
	struct TON fbRstDlyTm;
} tySOTTransportingInternal;
#endif

struct fbSOTDSTransporting
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
};
_BUR_PUBLIC void fbSOTDSTransporting(struct fbSOTDSTransporting* inst);
#ifndef __AS__TYPE_tySOTDSInternal
#define __AS__TYPE_tySOTDSInternal
typedef struct tySOTDSInternal
{	unsigned char usiStep;
	struct fbSOTMagSeq fbSOTMagSeq;
	struct fbSOTDSTransporting fbSOTTransporting1;
} tySOTDSInternal;
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

struct fbSOTDS
{	plctime tTimeOut;
	plctime tRstDlyTm;
	unsigned long udiStatus;
	tySOTDSInternal tyInternal;
	plcbit bEn;
	plcbit bDSRdy;
	plcbit bRdySend;
	plcbit bComplSigOn;
	plcbit bTransporting;
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bSigToDS;
};
_BUR_PUBLIC void fbSOTDS(struct fbSOTDS* inst);
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
_BUR_LOCAL eSOTAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL signed long(* p_diTransferOutTO);
_BUR_LOCAL plcbit(* p_bDirLToR);
_BUR_LOCAL plcbit(* p_bRdySend);
_BUR_LOCAL plcbit(* p_bLeftSen);
_BUR_LOCAL plcbit(* p_bRightSen);
_BUR_LOCAL plcbit(* p_bComplSigOn);
_BUR_LOCAL plcbit(* p_bMagSizeLarge);
_BUR_LOCAL plcbit(* p_bDSB);
_BUR_LOCAL plcbit(* p_bVirtualEn);
_BUR_LOCAL plcbit(* p_bDSBVirtual);
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
_BUR_LOCAL plcbit bDSRdy;
_BUR_LOCAL plcbit bTransporting;
_BUR_LOCAL plcbit bConvStart;
_BUR_LOCAL plcbit bConvStop;
_BUR_LOCAL plcbit bDBA;
_BUR_LOCAL plcbit bDSMagSizeLarge;
_BUR_LOCAL plcbit bVirtual;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL signed long diTransferOutTO;
_BUR_LOCAL plcbit bDirLToR;
_BUR_LOCAL plcbit bRdySend;
_BUR_LOCAL plcbit bLeftSen;
_BUR_LOCAL plcbit bRightSen;
_BUR_LOCAL plcbit bComplSigOn;
_BUR_LOCAL plcbit bMagSizeLarge;
_BUR_LOCAL plcbit bDSB;
_BUR_LOCAL plcbit bVirtualEn;
_BUR_LOCAL plcbit bDSBVirtual;
_BUR_LOCAL plctime tRstDlyTm;
_BUR_LOCAL plctime tSigInChkTm;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL struct fbSOTDS fbSOT;
_BUR_LOCAL struct fbSOTSigInChk fbSigInChk;
_BUR_LOCAL eSOTAction eStatOld;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL unsigned long p_UIMnlMod;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL plcstring g_sDSSOTProgNm[16];
_GLOBAL unsigned long p_RstErrReset;
_GLOBAL unsigned long p_McParamTranInErrDlyTm;
_GLOBAL unsigned long p_McParamAGVComEn;
_GLOBAL unsigned long p_NtParamDSSOT3ProgNm;
_GLOBAL unsigned long p_NtParamDSSOT3RstDlyTm;
_GLOBAL unsigned long p_NtParamDSSOT3SigInChkTm;
_GLOBAL unsigned long p_DIMagPresentSen3;
_GLOBAL unsigned long p_DIMagConvEntSen3;
_GLOBAL unsigned long p_DISOT3Ready;
_GLOBAL unsigned long p_OpsRun;
_GLOBAL unsigned long p_OpsMagConvUL3MagSizeL;
_GLOBAL unsigned long p_OpsMagConvUL3DSSOTAct;
_LOCAL plcbit Edge0000700000;
_LOCAL plcbit Edge0001000000;
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
