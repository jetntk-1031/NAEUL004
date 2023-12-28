#ifndef __AS__TYPE_eConvDir
#define __AS__TYPE_eConvDir
typedef enum eConvDir
{	ConvDirLToR = 0,
	ConvDirRToL = 1,
	ConvDirLToL = 2,
	ConvDirRToR = 3,
} eConvDir;
#endif

#ifndef __AS__TYPE_eAGVMagAction
#define __AS__TYPE_eAGVMagAction
typedef enum eAGVMagAction
{	AGVMagActIdle = 0,
	AGVMagActEnter = 1,
	AGVMagActExit = 2,
} eAGVMagAction;
#endif

#ifndef __AS__TYPE_tyTagDTMagToAGV
#define __AS__TYPE_tyTagDTMagToAGV
typedef struct tyTagDTMagToAGV
{	plcbit bEStopErr;
	plcbit bCI1MagazineFull;
	plcbit bCI1Rdy;
	plcbit bCI1Auto;
	plcbit bCI1Occupied;
	plcbit bCI1Running;
	plcbit bCI1IncorrectMagazineModel;
	plcbit bCI2MagazineFull;
	plcbit bCI2Rdy;
	plcbit bCI2Auto;
	plcbit bCI2Occupied;
	plcbit bCI2Running;
	plcbit bCI2IncorrectMagazineModel;
	plcbit bCI3MagazineFull;
	plcbit bCI3Rdy;
	plcbit bCI3Auto;
	plcbit bCI3Occupied;
	plcbit bCI3Running;
	plcbit bCI3IncorrectMagazineModel;
	plcbit bCI4MagazineFull;
	plcbit bCI4Rdy;
	plcbit bCI4Auto;
	plcbit bCI4Occupied;
	plcbit bCI4Running;
	plcbit bCI4IncorrectMagazineModel;
} tyTagDTMagToAGV;
#endif

#ifndef __AS__TYPE_tyTagAGVToDTMag
#define __AS__TYPE_tyTagAGVToDTMag
typedef struct tyTagAGVToDTMag
{	plcbit bVEHInPos1;
	plcbit bVEHInPos2;
	plcbit bVEHInPos3;
	plcbit bVEHAuto;
	plcbit bVEH1Occupied;
	plcbit bVEH2Occupied;
	plcbit bVEH3Occupied;
	plcbit bVEHRunning;
} tyTagAGVToDTMag;
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

struct F_TRIG
{	plcbit CLK;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void F_TRIG(struct F_TRIG* inst);
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
_BUR_LOCAL plcbit(* p_bLinkAGVOnline);
_BUR_LOCAL plcbit(* p_bLinkOpsRun);
_BUR_LOCAL struct tyBffrStat(* p_tyLinkBufferStat);
_BUR_LOCAL struct tyTagAGVToDTMag(* p_tyLinkAGVtoDTMag);
_BUR_LOCAL plcbit(* p_bLinkProjMag3ConvPrep);
_BUR_LOCAL eAGVMagAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL signed long(* p_diTxInTimeOut);
_BUR_LOCAL signed long(* p_diTxOutTimeOut);
_BUR_LOCAL eConvDir(* p_eDirection);
_BUR_LOCAL struct tyTagAGVToDTMag(* p_tyAGVToDTMag);
_BUR_LOCAL plcbit(* p_bBufferMagPresent);
_BUR_LOCAL plcbit(* p_bMagConvLftSen);
_BUR_LOCAL plcbit(* p_bMagConvRgtSen);
_BUR_LOCAL plcbit(* p_bMagConvMtrIn);
_BUR_LOCAL plcbit(* p_bMagConvMtrOut);
_BUR_LOCAL plcbit(* p_bNtParamAGVInPosSenPrep);
_BUR_LOCAL plcbit(* p_bAGVInPosSen1);
_BUR_LOCAL plcbit(* p_bAGVInPosSen2);
_BUR_LOCAL plcbit(* p_bSOTRcvOk);
_BUR_LOCAL plcbit(* p_bSOTErr);
_BUR_LOCAL plcbit(* p_bSOTRdy);
_BUR_LOCAL plcbit(* p_bSOTAvailable);
_BUR_LOCAL eAGVMagAction eAct;
_BUR_LOCAL eAGVMagAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL plcstring sStatTxt[101];
_BUR_LOCAL plcstring a_sStatText[51][101];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL plcbit bMcRunRdy;
_BUR_LOCAL plcbit bRdyEnt;
_BUR_LOCAL plcbit bRdyExit;
_BUR_LOCAL plcbit bMagEnt;
_BUR_LOCAL plcbit bMagExit;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL signed long diTxInTimeOut;
_BUR_LOCAL signed long diTxOutTimeOut;
_BUR_LOCAL eConvDir eDirection;
_BUR_LOCAL plcbit bBufferMagPresent;
_BUR_LOCAL plcbit bMagConvLftSen;
_BUR_LOCAL plcbit bMagConvRgtSen;
_BUR_LOCAL plcbit bMagConvMtrIn;
_BUR_LOCAL plcbit bMagConvMtrOut;
_BUR_LOCAL plcbit bAGVInPosSen1;
_BUR_LOCAL plcbit bAGVInPosSen2;
_BUR_LOCAL plcbit bNtParamAGVInPosSenPrep;
_BUR_LOCAL tyTagAGVToDTMag tyAGVToDTMag;
_BUR_LOCAL tyTagDTMagToAGV tyDTMagToAGV;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bEndSen;
_BUR_LOCAL plcbit bAGVInPosSen;
_BUR_LOCAL struct TON fbMagFullTm;
_BUR_LOCAL struct TON fbInPosErrTimer;
_BUR_LOCAL struct TON fbTxInTimer;
_BUR_LOCAL struct TON fbTxOutTimer;
_BUR_LOCAL struct F_TRIG fbMagOutTrig;
_BUR_LOCAL eAGVMagAction eStatOld;
_BUR_LOCAL struct TON fbCheckErrorTim;
_BUR_LOCAL plcbit bMagConvRun;
_BUR_LOCAL plcbit bMagConvRdy;
_BUR_LOCAL plcbit bMagConvAuto;
_BUR_LOCAL plcbit bMagConvOccupied;
_BUR_LOCAL plcbit bAIVOccupied;
_BUR_LOCAL plcbit bAIVAuto;
_BUR_LOCAL plcbit bAIVInPos;
_BUR_LOCAL unsigned long udiModuleNum;
