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

#ifndef __AS__TYPE_ePullerPusherAction
#define __AS__TYPE_ePullerPusherAction
typedef enum ePullerPusherAction
{	PPActIdle = 0,
	PPActGoWidth = 1,
	PPActFullHm = 2,
	PPActPwrOn = 3,
	PPActPwrOff = 4,
	PPActHoming = 5,
	PPActMovAbs = 6,
	PPActMovRel = 7,
	PPActJogOpen = 8,
	PPActJogClose = 9,
	PPActJogStop = 10,
	PPActRstAxisErr = 11,
	PPActStop = 12,
	PPActSDOWrite = 13,
	PPActBGStartModOKChk = 14,
	PPActBGStopModOKChk = 15,
	PPActGoWidthOff = 16,
	PPActRstNode = 17,
} ePullerPusherAction;
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

_BUR_LOCAL ePullerPusherAction eStat;
_BUR_LOCAL eFBStatus eMainStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL tyAlmDat tyAlmData2;
_BUR_LOCAL tyAlmDat tyAlmData3;
_BUR_LOCAL tyMotionCANParamOut tyParamOut;
_BUR_LOCAL plcstring sAxisErrTxt[81];
_BUR_LOCAL plcbit bWidthPosDiff;
_BUR_LOCAL plcbit bJogging;
_BUR_LOCAL plcbit bOpenSen;
_BUR_LOCAL plcbit bCloseSen;
_GLOBAL unsigned long p_PPStat;
_GLOBAL unsigned long p_PPStatus;
_GLOBAL unsigned long p_PPStatTxt;
_GLOBAL unsigned long p_PPAlmData;
_GLOBAL unsigned long p_PPAlmData1;
_GLOBAL unsigned long p_PPAlmData2;
_GLOBAL unsigned long p_PPAlmData3;
_GLOBAL unsigned long p_PPParamOut;
_GLOBAL unsigned long p_PPPwrOn;
_GLOBAL unsigned long p_PPIsHomed;
_GLOBAL unsigned long p_PPPosDiff;
_GLOBAL unsigned long p_PPAxisErr;
_GLOBAL unsigned long p_PPAxisErrID;
_GLOBAL unsigned long p_PPAxisErrTxt;
_GLOBAL unsigned long p_PPFwdLmtSen;
_GLOBAL unsigned long p_PPRevLmtSen;
_GLOBAL unsigned long p_PPActualPos;
_GLOBAL unsigned long p_PPWidthPosDiff;
_GLOBAL unsigned long p_PPJogging;
_GLOBAL unsigned long p_PPExtSen;
_GLOBAL unsigned long p_PPRetSen;
