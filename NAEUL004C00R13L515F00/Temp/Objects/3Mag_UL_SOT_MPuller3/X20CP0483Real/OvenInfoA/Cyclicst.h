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

#ifndef __AS__TYPE_eAutoRcpPreceded
#define __AS__TYPE_eAutoRcpPreceded
typedef enum eAutoRcpPreceded
{	PrecededBySelf = 0,
	PrecededByF1 = 1,
	PrecededByF2 = 2,
} eAutoRcpPreceded;
#endif

#ifndef __AS__TYPE_eOvenInfoAction
#define __AS__TYPE_eOvenInfoAction
typedef enum eOvenInfoAction
{	OvenInfoActIdle = 0,
	OvenInfoActSetBrdInOven = 1,
	OvenInfoActSetOvenAllow = 2,
	OvenInfoActRstOvenAllow = 3,
} eOvenInfoAction;
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

#ifndef __AS__TYPE_eFBStatus
#define __AS__TYPE_eFBStatus
typedef enum eFBStatus
{	Idle = 0,
	Done = 1,
	Busy = 2,
	Error = 3,
} eFBStatus;
#endif

struct fbOvenInfoStd
{	signed long diBffrMtySlt;
	signed long diMinBffrMtySlt;
	plcbit bEn;
	plcbit bOvenAllow;
};
_BUR_PUBLIC void fbOvenInfoStd(struct fbOvenInfoStd* inst);
struct fbOvenInfoExtdd
{	signed long diAddBffr;
	signed long diBffrMtySlt;
	signed long diBrdInOven;
	signed long diBrdPerSlt;
	plcbit bEn;
	plcbit bOvenAllow;
};
_BUR_PUBLIC void fbOvenInfoExtdd(struct fbOvenInfoExtdd* inst);
_BUR_LOCAL plcbit(* p_bLinkOpsStatusRun);
_BUR_LOCAL unsigned char(* p_usiLinkProdRcpCurrRcpMcMod);
_BUR_LOCAL eTravLifULPos(* p_eLinkOpsTravLifPosGo);
_BUR_LOCAL eConvAction(* p_eLinkConvStat);
_BUR_LOCAL plcbit(* p_bLinkConvHvBrd);
_BUR_LOCAL eOvenInfoAction(* p_eAct);
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcbit(* p_bPrepExtdd);
_BUR_LOCAL plcbit(* p_bEnExtdd);
_BUR_LOCAL plcbit(* p_bDisExtdd);
_BUR_LOCAL plcbit(* p_bBGRun);
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL signed long(* p_diBffrMtySlt);
_BUR_LOCAL signed long(* p_diMinBffr);
_BUR_LOCAL signed long(* p_diAddBffr);
_BUR_LOCAL signed long(* p_diBrdPerSlt);
_BUR_LOCAL plcbit(* p_bCntUp);
_BUR_LOCAL plcbit(* p_bCntDown);
_BUR_LOCAL signed long(* p_diSetBrdInOven);
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL plcbit(* p_bNtParamAutoRcpPrep);
_BUR_LOCAL plcbit(* p_bMcParamAutoRcpDis);
_BUR_LOCAL eAutoRcpPreceded(* p_eNtParamAutoRcpPrecededBy);
_BUR_LOCAL eOvenInfoAction eAct;
_BUR_LOCAL eOvenInfoAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcbit bOvenAllow;
_BUR_LOCAL_RETAIN signed long diBrdInOven;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bPrepExtdd;
_BUR_LOCAL plcbit bEnExtdd;
_BUR_LOCAL plcbit bDisExtdd;
_BUR_LOCAL plcbit bBGRun;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL signed long diBffrMtySlt;
_BUR_LOCAL signed long diMinBffr;
_BUR_LOCAL signed long diAddBffr;
_BUR_LOCAL signed long diBrdPerSlt;
_BUR_LOCAL plcbit bCntUp;
_BUR_LOCAL plcbit bCntDown;
_BUR_LOCAL signed long diSetBrdInOven;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL struct fbOvenInfoStd fbStd;
_BUR_LOCAL struct fbOvenInfoExtdd fbExtdd;
_BUR_LOCAL eOvenInfoAction eStatOld;
_GLOBAL unsigned long p_UIOvenInfoAAct;
_GLOBAL unsigned long p_UIMnlMod;
_GLOBAL unsigned long p_UIOvenInfoSetBrdInOvenA;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL unsigned long p_ProdRcpCurrRcp0McMod;
_GLOBAL unsigned long p_ProdRcpCurrRcp0MinReqFreeBffr;
_GLOBAL unsigned long p_ProdRcpCurrRcp1McMod;
_GLOBAL unsigned long p_ProdRcpCurrRcp2MinReqFreeBffr;
_GLOBAL unsigned long p_McParamOvenMaxBffr;
_GLOBAL unsigned long p_McParamOvenEn;
_GLOBAL unsigned long p_McParamExtdOvenEn;
_GLOBAL unsigned long p_McParamAutoRcpDisable;
_GLOBAL unsigned long p_NtParamOvenInfoPrep;
_GLOBAL unsigned long p_NtParamOvenInfoExtdPrep;
_GLOBAL unsigned long p_NtParamAutoRcpPrep;
_GLOBAL unsigned long p_NtParamAutoRcpPrecededBy;
_GLOBAL unsigned long p_BufferMagABffrMtySlt;
_GLOBAL unsigned long p_PshrConvStat;
_GLOBAL unsigned long p_PshrConvHvBrd;
_GLOBAL unsigned long p_DIOvenInfeedSigA;
_GLOBAL unsigned long p_OpsStatusRun;
_GLOBAL unsigned long p_OpsTravLifULPosGo;
_LOCAL plcbit Edge0000700000;
_LOCAL plcbit Edge0000200000;
_LOCAL plcbit Edge0000200001;
static void __AS__Action__Act_InitGlobal(void);
static void __AS__Action__Act_LinkAction(void);
static void __AS__Action__Act_LinkEn(void);
static void __AS__Action__Act_Link(void);
static void __AS__Action__Act_InitLocal(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Action(void);
static void __AS__Action__Act_Main(void);
static void __AS__Action__Act_Main_Disable(void);
static void __AS__Action__Act_Background(void);
