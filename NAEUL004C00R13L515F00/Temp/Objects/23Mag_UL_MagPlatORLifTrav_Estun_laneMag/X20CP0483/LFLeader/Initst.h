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

#ifndef __AS__TYPE_eLFAction
#define __AS__TYPE_eLFAction
typedef enum eLFAction
{	LFActIdle = 0,
	LFActBGStartRun = 1,
	LFActBGStopRun = 2,
	LFActSyncPLCTm = 3,
	LFActChgAllAuto = 4,
	LFActChgAllMnl = 5,
	LFActChgSeqAuto = 6,
	LFActChgSeqMnl = 7,
} eLFAction;
#endif

#ifndef __AS__TYPE_tyLFLeaderIn1
#define __AS__TYPE_tyLFLeaderIn1
typedef struct tyLFLeaderIn1
{	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
} tyLFLeaderIn1;
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

#ifndef __AS__TYPE_tyLFFollowerInfo
#define __AS__TYPE_tyLFFollowerInfo
typedef struct tyLFFollowerInfo
{	plcbit bOnline;
	unsigned char usiRunTmOld;
} tyLFFollowerInfo;
#endif

#ifndef __AS__TYPE_eMachineStat
#define __AS__TYPE_eMachineStat
typedef enum eMachineStat
{	Run = 0,
	Stop = 1,
	Manual = 2,
	Warning = 3,
	InError = 4,
} eMachineStat;
#endif

#ifndef __AS__TYPE_tyLFFollowerToLeaderTag
#define __AS__TYPE_tyLFFollowerToLeaderTag
typedef struct tyLFFollowerToLeaderTag
{	plcstring sCurrProdRcp[255];
	signed long diCurrProdWidthUS;
	signed long diCurrProdWidthDS;
	plcstring sCurrMagRcp[31];
	plcstring sIPAddr[16];
	plcstring sMcNm[31];
	plcbit bSectionLeader;
	unsigned char usiRunTm;
	plcbit bProdRcpErr;
	plcbit bProdWidthErr;
	plcbit bMagRcpErr;
	plcbit bSyncTmErr;
	eMachineStat eCurrMachineStat;
	plcbit bProdChgOverActive;
} tyLFFollowerToLeaderTag;
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

#ifndef __AS__TYPE_tyLFLeaderOut1
#define __AS__TYPE_tyLFLeaderOut1
typedef struct tyLFLeaderOut1
{	eLFAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[101];
	struct tyLFFollowerInfo a_tyFollowerInfo[50];
	struct tyLFFollowerToLeaderTag a_tyFollowerToLeaderTag[50];
	tyAlmDat tyAlmData;
} tyLFLeaderOut1;
#endif

#ifndef __AS__TYPE_tyLFLeader1
#define __AS__TYPE_tyLFLeader1
typedef struct tyLFLeader1
{	tyLFLeaderIn1 In;
	tyLFLeaderOut1 Out;
} tyLFLeader1;
#endif

_BUR_LOCAL tyLFLeader1 tylocalLFLeader;
_GLOBAL unsigned long p_LFLeader;
_GLOBAL signed long c_diLFClntNum;
