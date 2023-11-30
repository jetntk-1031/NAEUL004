#ifndef __AS__TYPE_
#define __AS__TYPE_
static unsigned long __AS__MEMSET(unsigned long pDest, unsigned char value, unsigned long length);
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

_BUR_PUBLIC plcstring* LEFT(plcstring IN[32768], signed short L);
_BUR_PUBLIC plcstring* CONCAT(plcstring IN1[32768], plcstring IN2[32768]);
_BUR_PUBLIC signed short FIND(plcstring IN1[32768], plcstring IN2[32768]);
_BUR_PUBLIC unsigned long ascTIME(plctime TIME1, unsigned long pStr, unsigned long len);
_BUR_PUBLIC unsigned short itoa(signed long value, unsigned long pString);
_BUR_PUBLIC unsigned long memset(unsigned long pDest, unsigned char value, unsigned long length);
_BUR_PUBLIC signed long memcmp(unsigned long pMem1, unsigned long pMem2, unsigned long length);
_BUR_PUBLIC plcstring* dint2str(signed long IN, plcstring pStr[81], unsigned long len);
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
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL unsigned long p_TimeCurrDT;
_GLOBAL unsigned long p_TimeCurrDTStructMS;
_GLOBAL plcstring g_sSimu1ProgNm[16];
_GLOBAL unsigned long p_RstErrReset;
_GLOBAL unsigned long p_MagRcpCurrRcpTtlSlt;
_GLOBAL unsigned long p_Buffer1Bffr;
_GLOBAL unsigned long p_Buffer2Bffr;
_GLOBAL unsigned long p_Buffer3Bffr;
_GLOBAL unsigned long p_TravDPosDiff;
_GLOBAL unsigned long p_TravEPosDiff;
_GLOBAL unsigned long p_TravFPosDiff;
_GLOBAL unsigned long p_LifterBtmSltAPosDiff;
_GLOBAL unsigned long p_LifterBtmSltBPosDiff;
_GLOBAL unsigned long p_LifterBtmSltCPosDiff;
_GLOBAL unsigned long p_LifterBtmCurrSltA;
_GLOBAL unsigned long p_LifterBtmCurrSltB;
_GLOBAL unsigned long p_LifterBtmCurrSltC;
_GLOBAL unsigned long p_OpsTravLifOpsStep;
_GLOBAL unsigned long p_OpsTravLifGotoOpsStep;
_GLOBAL unsigned long p_SimuRun;
_GLOBAL unsigned long p_SimuStop;
_GLOBAL unsigned long p_SimuStep;
_GLOBAL signed long c_diBffrSize;
_GLOBAL signed long c_diBffrSubSize;
_GLOBAL signed long c_diDispBffrSize;
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
static void __AS__Action__Act_DispBffr(void);
