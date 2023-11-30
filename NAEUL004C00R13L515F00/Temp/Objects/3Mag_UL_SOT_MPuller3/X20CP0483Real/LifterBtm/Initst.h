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

#ifndef __AS__TYPE_eLifterAction
#define __AS__TYPE_eLifterAction
typedef enum eLifterAction
{	LifterActIdle = 0,
	LifterActGoAPos = 1,
	LifterActGoBPos = 2,
	LifterActGoCPos = 3,
	LifterActGoDPos = 4,
	LifterActGoEPos = 5,
	LifterActGoFPos = 6,
	LifterActGoGPos = 7,
	LifterActGoHPos = 8,
	LifterActGoASltPos = 9,
	LifterActGoNxtASltPos = 10,
	LifterActGoPrevASltPos = 11,
	LifterActGoBSltPos = 12,
	LifterActGoNxtBSltPos = 13,
	LifterActGoPrevBSltPos = 14,
	LifterActGoCSltPos = 15,
	LifterActGoNxtCSltPos = 16,
	LifterActGoPrevCSltPos = 17,
	LifterActGoDSltPos = 18,
	LifterActGoNxtDSltPos = 19,
	LifterActGoPrevDSltPos = 20,
	LifterActFullHm = 21,
	LifterActPwrOn = 22,
	LifterActPwrOff = 23,
	LifterActHoming = 24,
	LifterActMovAbs = 25,
	LifterActMovRel = 26,
	LifterActJogUp = 27,
	LifterActJogDown = 28,
	LifterActJogStop = 29,
	LifterActRstAxisErr = 30,
	LifterActStop = 31,
	LifterActSDOWrite = 32,
	LifterActBGStartModOKChk = 33,
	LifterActBGStopModOKChk = 34,
	LifterActFullMovRel = 35,
	LifterActRstNode = 36,
} eLifterAction;
#endif

#ifndef __AS__TYPE_tyMotionCANParamOut
#define __AS__TYPE_tyMotionCANParamOut
typedef struct tyMotionCANParamOut
{	plcbit bPwrOn;
	plcbit bIsHomed;
	plcbit bInPos;
	plcbit bStopped;
	plcbit bFwdLmtSen;
	plcbit bRevLmtSen;
	plcbit bAxisErr;
	plcbit bPosDiff;
	signed long diActualPosInUM;
	unsigned long udiAxisErrID;
	signed long diHmSpdForSwitch;
	signed long diHmSpdForZero;
	signed long diProfileAcc;
	signed long diProfileDec;
	signed long diHmAcc;
	unsigned long diSchProfileAcc;
	unsigned long diSchProfileDec;
	signed long diSchHmMode;
} tyMotionCANParamOut;
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

_BUR_LOCAL eLifterAction eStat;
_BUR_LOCAL eFBStatus eMainStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL tyAlmDat tyAlmData2;
_BUR_LOCAL tyAlmDat tyAlmData3;
_BUR_LOCAL tyMotionCANParamOut tyParamOut;
_BUR_LOCAL plcstring sAxisErrTxt[81];
_BUR_LOCAL plcbit bSltAPosDiff;
_BUR_LOCAL plcbit bSltBPosDiff;
_BUR_LOCAL plcbit bSltCPosDiff;
_BUR_LOCAL plcbit bSltDPosDiff;
_BUR_LOCAL signed long diCurrSltA;
_BUR_LOCAL signed long diCurrSltB;
_BUR_LOCAL signed long diCurrSltC;
_BUR_LOCAL signed long diCurrSltD;
_BUR_LOCAL plcbit bAPosDiff;
_BUR_LOCAL plcbit bBPosDiff;
_BUR_LOCAL plcbit bCPosDiff;
_BUR_LOCAL plcbit bDPosDiff;
_BUR_LOCAL plcbit bEPosDiff;
_BUR_LOCAL plcbit bFPosDiff;
_BUR_LOCAL plcbit bGPosDiff;
_BUR_LOCAL plcbit bHPosDiff;
_BUR_LOCAL plcbit bJogging;
_BUR_LOCAL plcbit bUpSen;
_BUR_LOCAL plcbit bDownSen;
_BUR_LOCAL signed short iLifterMovedSlot;
_GLOBAL unsigned long p_LifterBtmStat;
_GLOBAL unsigned long p_LifterBtmStatus;
_GLOBAL unsigned long p_LifterBtmStatTxt;
_GLOBAL unsigned long p_LifterBtmAlmData;
_GLOBAL unsigned long p_LifterBtmAlmData1;
_GLOBAL unsigned long p_LifterBtmAlmData2;
_GLOBAL unsigned long p_LifterBtmAlmData3;
_GLOBAL unsigned long p_LifterBtmParamOut;
_GLOBAL unsigned long p_LifterBtmPwrOn;
_GLOBAL unsigned long p_LifterBtmIsHomed;
_GLOBAL unsigned long p_LifterBtmPosDiff;
_GLOBAL unsigned long p_LifterBtmAxisErr;
_GLOBAL unsigned long p_LifterBtmAxisErrID;
_GLOBAL unsigned long p_LifterBtmAxisErrTxt;
_GLOBAL unsigned long p_LifterBtmFwdLmtSen;
_GLOBAL unsigned long p_LifterBtmRevLmtSen;
_GLOBAL unsigned long p_LifterBtmActualPos;
_GLOBAL unsigned long p_LifterBtmSltAPosDiff;
_GLOBAL unsigned long p_LifterBtmSltBPosDiff;
_GLOBAL unsigned long p_LifterBtmSltCPosDiff;
_GLOBAL unsigned long p_LifterBtmSltDPosDiff;
_GLOBAL unsigned long p_LifterBtmCurrSltA;
_GLOBAL unsigned long p_LifterBtmCurrSltB;
_GLOBAL unsigned long p_LifterBtmCurrSltC;
_GLOBAL unsigned long p_LifterBtmCurrSltD;
_GLOBAL unsigned long p_LifterBtmAPosDiff;
_GLOBAL unsigned long p_LifterBtmBPosDiff;
_GLOBAL unsigned long p_LifterBtmCPosDiff;
_GLOBAL unsigned long p_LifterBtmDPosDiff;
_GLOBAL unsigned long p_LifterBtmEPosDiff;
_GLOBAL unsigned long p_LifterBtmFPosDiff;
_GLOBAL unsigned long p_LifterBtmGPosDiff;
_GLOBAL unsigned long p_LifterBtmHPosDiff;
_GLOBAL unsigned long p_LifterBtmJogging;
_GLOBAL unsigned long p_LifterBtmUpSen;
_GLOBAL unsigned long p_LifterBtmDownSen;
_GLOBAL unsigned long p_LifterBtmMovedSlt;
