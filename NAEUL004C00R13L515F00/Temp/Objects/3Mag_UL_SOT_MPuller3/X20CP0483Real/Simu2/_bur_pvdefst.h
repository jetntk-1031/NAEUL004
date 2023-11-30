#ifndef __AS__TYPE_eTravLifULStep
#define __AS__TYPE_eTravLifULStep
typedef enum eTravLifULStep
{	TravLifULStepNA = 0,
	TravLifULStepInitConv = 1,
	TravLifULStepInitInletPneuCls = 2,
	TravLifULStepInitInOutPneuCls = 3,
	TravLifULStepInitTravLif = 4,
	TravLifULStepInitAWTravLif = 5,
	TravLifULStepAWMov = 6,
	TravLifULStepScanDS = 7,
	TravLifULStepHermesBCode = 8,
	TravLifULStepWaitReturnCode = 9,
	TravLifULStepMagChkReturnCode = 10,
	TravLifULStepTravLifMov = 11,
	TravLifULStepUSSigWait = 12,
	TravLifULStepUSSigRechk = 13,
	TravLifULStepInletPneuOpn = 14,
	TravLifULStepUSSigRechkTwice = 15,
	TravLifULStepUSMagWidthChk = 16,
	TravLifULStepStopperRet = 17,
	TravLifULStepUSComm = 18,
	TravLifULStepEntBrd = 19,
	TravLifULStepInletPneuCls = 20,
	TravLifULStepStopperExt = 21,
	TravLifULStepDSSigWait = 22,
	TravLifULStepDSSigRechk = 23,
	TravLifULStepOutletPneuOpn = 24,
	TravLifULStepDSSigRechkTwice = 25,
	TravLifULStepDSMagWidthChk = 26,
	TravLifULStepDSComm = 27,
	TravLifULStepExitBrd = 28,
	TravLifULStepOutletPneuCls = 29,
	TravLifULStepScanStdBy = 30,
	TravLifULStepTranOutErr = 31,
	TravULStepTranOutBrdStuckErr = 32,
	TravULStepTranInBrdStuckErr = 33,
	TravULStepClrSensorErr = 34,
	TravLifULStepMagWidthErr = 35,
	TravULStepBrdLostInMiddle = 36,
	TravULStepClrSensorErrBefTrav = 37,
} eTravLifULStep;
#endif

#ifndef __AS__TYPE_tyDispBffrCycTmDat
#define __AS__TYPE_tyDispBffrCycTmDat
typedef struct tyDispBffrCycTmDat
{	plcstring sSlttoSltIdx[81];
	plcstring sCycleTm[81];
	plcdword dwColor;
} tyDispBffrCycTmDat;
#endif

#ifndef __AS__TYPE_tyDispBffrCycTm
#define __AS__TYPE_tyDispBffrCycTm
typedef struct tyDispBffrCycTm
{	signed long diDispIdxSt;
	signed long diDispIdxEnd;
	struct tyDispBffrCycTmDat a_tyDispBffrDat[120];
} tyDispBffrCycTm;
#endif

#ifndef __AS__TYPE_tySubBffrDat
#define __AS__TYPE_tySubBffrDat
typedef struct tySubBffrDat
{	plcbit bSubForBrd;
	plcbit bBrdAvl;
	plcdt dtSltTm;
	plcstring sProdNm[16];
	plcstring sBarcode1[81];
	plcstring sBarcode2[81];
} tySubBffrDat;
#endif

#ifndef __AS__TYPE_tyBffrDat
#define __AS__TYPE_tyBffrDat
typedef struct tyBffrDat
{	plcbit bSltForBrd;
	plcbit bBrdAvl;
	plcbit bSltFull;
	plcbit bGdSigBrd;
	plcbit bSkip;
	signed long diSltCap;
	signed long diBrdQty;
	struct tySubBffrDat a_tySubBffrDat[2];
} tyBffrDat;
#endif

#ifndef __AS__TYPE_tyBffr
#define __AS__TYPE_tyBffr
typedef struct tyBffr
{	plcstring sName[16];
	struct tyBffrDat a_tyBffrDat[60];
} tyBffr;
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

_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bRun);
_BUR_LOCAL plcbit(* p_bStop);
_BUR_LOCAL plcbit(* p_bStep);
_BUR_LOCAL signed long(* p_diSltCap);
_BUR_LOCAL signed long(* p_diBffrTtlSlt);
_BUR_LOCAL plcbit(* p_bTravDPosDiff);
_BUR_LOCAL plcbit(* p_bTravEPosDiff);
_BUR_LOCAL plcbit(* p_bTravFPosDiff);
_BUR_LOCAL plcbit(* p_bLifterBtmSltAPosDiff);
_BUR_LOCAL plcbit(* p_bLifterBtmSltBPosDiff);
_BUR_LOCAL plcbit(* p_bLifterBtmSltCPosDiff);
_BUR_LOCAL signed long(* p_diLifterBtmCurrSltA);
_BUR_LOCAL signed long(* p_diLifterBtmCurrSltB);
_BUR_LOCAL signed long(* p_diLifterBtmCurrSltC);
_BUR_LOCAL eTravLifULStep(* p_eOpsTravLifOpsStep);
_BUR_LOCAL eTravLifULStep(* p_eOpsTravLifGotoOpsStep);
_BUR_LOCAL plcdt(* p_dtTimeCurrDT);
_BUR_LOCAL unsigned short(* p_uiTimeCurrDTStructMS);
_BUR_LOCAL struct tyDispBffrCycTm(* p_tyDispCycTmBffr);
_BUR_LOCAL struct tyBffr(* p_tyBuffer);
_BUR_LOCAL signed long(* p_diSlotCount);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL plcstring sStepTxt[81];
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL signed long diSltCap;
_BUR_LOCAL signed long diBffrTtlSlt;
_BUR_LOCAL tyDispBffrCycTm tyDispCycTmBffr;
_BUR_LOCAL plcstring sCurrSlotTransition[81];
_BUR_LOCAL signed long diCnt;
_BUR_LOCAL signed long diSlotCount;
_BUR_LOCAL signed long diDispIdx;
_BUR_LOCAL signed long dicntr1;
_BUR_LOCAL struct tyDispBffrCycTm a_tyDispCycTmBffr[3];
_BUR_LOCAL tyBffr tyBuffer;
_BUR_LOCAL plctime dtCycleTim;
_BUR_LOCAL plctime dtDumyTim;
_BUR_LOCAL plcdword dwGdColor;
_BUR_LOCAL plcdword dwNAColor;
_BUR_LOCAL plctime tAccumulateTimer;
_BUR_LOCAL plctime tPrevTim;
_BUR_LOCAL plcstring sSltnumber[81];
_BUR_LOCAL plcdt TtestPrevTim;
_BUR_LOCAL plctime tTesttime;
_BUR_LOCAL unsigned char teststep;
_BUR_LOCAL unsigned char testpos;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL signed long c_diBffrSize;
_GLOBAL signed long c_diBffrSubSize;
_GLOBAL signed long c_diDispBffrSize;
