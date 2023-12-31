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

#ifndef __AS__TYPE_eOperationsAction
#define __AS__TYPE_eOperationsAction
typedef enum eOperationsAction
{	OperationsActIdle = 0,
	OperationsActStart = 1,
	OperationsActStop = 2,
	OperationsActStep = 3,
	OperationsActError = 4,
} eOperationsAction;
#endif

#ifndef __AS__TYPE_eOperationsStatus
#define __AS__TYPE_eOperationsStatus
typedef enum eOperationsStatus
{	OperationsStatusRun = 0,
	OperationsStatusStop = 1,
	OperationsStatusCycleStopping = 2,
	OperationsStatusStep = 3,
} eOperationsStatus;
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

_BUR_LOCAL plcbit(* p_bLinkOpsTravLifULPaused);
_BUR_LOCAL plcbit(* p_bLinkOpsMagConvUL1Paused);
_BUR_LOCAL plcbit(* p_bLinkOpsMagConvUL2Paused);
_BUR_LOCAL plcbit(* p_bLinkOpsMagConvUL3Paused);
_BUR_LOCAL plcbit(* p_bLinkOpsInMagConvPaused);
_BUR_LOCAL plcbit(* p_bLinkOpsOutMagConvPaused);
_BUR_LOCAL plcbit(* p_bLinkOpsMagConvStprPaused);
_BUR_LOCAL plcbit(* p_bLinkOpsMagConv2StprPaused);
_BUR_LOCAL eOperationsAction(* p_bLinkUIOpsAct);
_BUR_LOCAL plcbit(* p_bLinkSimuRun);
_BUR_LOCAL plcbit(* p_bLinkSimuStop);
_BUR_LOCAL plcbit(* p_bLinkOpsLifMagULPaused);
_BUR_LOCAL plcbit(* p_bLinkProjLifterMagPlatform);
_BUR_LOCAL plcbit(* p_bLinkProjMagConvLanePrep);
_BUR_LOCAL eOperationsAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bPaused);
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL eOperationsAction eAct;
_BUR_LOCAL eOperationsAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL eOperationsStatus eOpsStatus;
_BUR_LOCAL plcbit bStatusRun;
_BUR_LOCAL plcbit bStatusStop;
_BUR_LOCAL plcbit bStatusCycleStop;
_BUR_LOCAL plcbit bStatusStep;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL eOperationsAction eStatOld;
_BUR_LOCAL unsigned char usiStep;
_GLOBAL unsigned long p_UIOpsAct;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL unsigned long p_RstErrReset;
_GLOBAL unsigned long p_NtParamProjLifterMagPlatform;
_GLOBAL unsigned long p_NtParamProjMagConvLane1Prep;
_GLOBAL unsigned long p_OpsTravLifULPaused;
_GLOBAL unsigned long p_OpsMagConvUL1Paused;
_GLOBAL unsigned long p_OpsMagConvUL2Paused;
_GLOBAL unsigned long p_OpsMagConvUL3Paused;
_GLOBAL unsigned long p_OpsLifMagULPaused;
_GLOBAL unsigned long p_OpsInMagConvPaused;
_GLOBAL unsigned long p_OpsOutMagConvPaused;
_GLOBAL unsigned long p_OpsMagConvStprPaused;
_GLOBAL unsigned long p_OpsMagConv2StprPaused;
_GLOBAL unsigned long p_SimuRun;
_GLOBAL unsigned long p_SimuStop;
_LOCAL plcbit Edge0000600000;
_LOCAL plcbit Edge0000600001;
static void __AS__Action__Act_InitGlobal(void);
static void __AS__Action__Act_LinkAction(void);
static void __AS__Action__Act_Link(void);
static void __AS__Action__Act_RstErr(void);
static void __AS__Action__Act_InitLocal(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Action(void);
static void __AS__Action__Act_Main(void);
