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
