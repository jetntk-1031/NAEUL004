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

#ifndef __AS__TYPE_eTravAction
#define __AS__TYPE_eTravAction
typedef enum eTravAction
{	TravActIdle = 0,
	TravActGoAPos = 1,
	TravActGoBPos = 2,
	TravActGoCPos = 3,
	TravActGoDPos = 4,
	TravActGoEPos = 5,
	TravActGoFPos = 6,
	TravActGoGPos = 7,
	TravActGoHPos = 8,
	TravActFullHm = 9,
	TravActPwrOn = 10,
	TravActPwrOff = 11,
	TravActHoming = 12,
	TravActMovAbs = 13,
	TravActMovRel = 14,
	TravActJogFront = 15,
	TravActJogRear = 16,
	TravActJogStop = 17,
	TravActRstAxisErr = 18,
	TravActStop = 19,
	TravActSDOWrite = 20,
	TravActBGStartModOKChk = 21,
	TravActBGStopModOKChk = 22,
	TravActRstNode = 23,
} eTravAction;
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
	unsigned long udiRunTime;
	unsigned long udiModuleNum;
	plcbit bAlm;
	plcbit bWarning;
} tyAlmDat;
#endif

_BUR_LOCAL eTravAction eStat;
_BUR_LOCAL eFBStatus eMainStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL tyAlmDat tyAlmData2;
_BUR_LOCAL tyAlmDat tyAlmData3;
_BUR_LOCAL tyMotionCANParamOut tyParamOut;
_BUR_LOCAL plcstring sAxisErrTxt[81];
_BUR_LOCAL plcbit bAPosDiff;
_BUR_LOCAL plcbit bBPosDiff;
_BUR_LOCAL plcbit bCPosDiff;
_BUR_LOCAL plcbit bDPosDiff;
_BUR_LOCAL plcbit bEPosDiff;
_BUR_LOCAL plcbit bFPosDiff;
_BUR_LOCAL plcbit bGPosDiff;
_BUR_LOCAL plcbit bHPosDiff;
_BUR_LOCAL plcbit bJogging;
_BUR_LOCAL plcbit bFrontSen;
_BUR_LOCAL plcbit bRearSen;
_GLOBAL unsigned long p_TravStat;
_GLOBAL unsigned long p_TravStatus;
_GLOBAL unsigned long p_TravStatTxt;
_GLOBAL unsigned long p_TravAlmData;
_GLOBAL unsigned long p_TravAlmData1;
_GLOBAL unsigned long p_TravAlmData2;
_GLOBAL unsigned long p_TravAlmData3;
_GLOBAL unsigned long p_TravParamOut;
_GLOBAL unsigned long p_TravPwrOn;
_GLOBAL unsigned long p_TravIsHomed;
_GLOBAL unsigned long p_TravPosDiff;
_GLOBAL unsigned long p_TravAxisErr;
_GLOBAL unsigned long p_TravAxisErrID;
_GLOBAL unsigned long p_TravAxisErrTxt;
_GLOBAL unsigned long p_TravFwdLmtSen;
_GLOBAL unsigned long p_TravRevLmtSen;
_GLOBAL unsigned long p_TravActualPos;
_GLOBAL unsigned long p_TravAPosDiff;
_GLOBAL unsigned long p_TravBPosDiff;
_GLOBAL unsigned long p_TravCPosDiff;
_GLOBAL unsigned long p_TravDPosDiff;
_GLOBAL unsigned long p_TravEPosDiff;
_GLOBAL unsigned long p_TravFPosDiff;
_GLOBAL unsigned long p_TravGPosDiff;
_GLOBAL unsigned long p_TravHPosDiff;
_GLOBAL unsigned long p_TravJogging;
_GLOBAL unsigned long p_TravFrontSen;
_GLOBAL unsigned long p_TravRearSen;
