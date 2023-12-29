#ifndef __AS__TYPE_eRstErrAction
#define __AS__TYPE_eRstErrAction
typedef enum eRstErrAction
{	RstErrActIdle = 0,
	RstErrActRun = 1,
	RstErrActSetSafetyRlyRst = 2,
	RstErrActRstSafetyRlyRst = 3,
} eRstErrAction;
#endif

#ifndef __AS__TYPE_tyRstErrIn1
#define __AS__TYPE_tyRstErrIn1
typedef struct tyRstErrIn1
{	eRstErrAction eAct;
	plcbit bSafetyRlySig;
	plcbit bManual;
} tyRstErrIn1;
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

#ifndef __AS__TYPE_tyRstErrOut1
#define __AS__TYPE_tyRstErrOut1
typedef struct tyRstErrOut1
{	eRstErrAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	unsigned long udiRstErr;
	plcbit bSafetyRlyRst;
} tyRstErrOut1;
#endif

#ifndef __AS__TYPE_tyRstErr
#define __AS__TYPE_tyRstErr
typedef struct tyRstErr
{	tyRstErrIn1 In;
	tyRstErrOut1 Out;
} tyRstErr;
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
_BUR_LOCAL eRstErrAction eAct;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bSafetyRlyRst;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bSafetyRlySig;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL struct TON fbSafetyRlyRstTm;
_BUR_LOCAL tyRstErr tylocalRstErr;
