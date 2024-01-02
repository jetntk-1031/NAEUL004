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

#ifndef __AS__TYPE_eTimeAction
#define __AS__TYPE_eTimeAction
typedef enum eTimeAction
{	TimeActIdle = 0,
	TimeActGetTime = 1,
	TimeActGetTimeZone = 2,
	TimeActSetTime = 3,
	TimeActSetTimeZone = 4,
} eTimeAction;
#endif

#ifndef __AS__TYPE_tyProdRcpParam
#define __AS__TYPE_tyProdRcpParam
typedef struct tyProdRcpParam
{	plcstring sRcpNm[255];
	signed long diWidthInUM;
	signed long diWidthInUM2;
	signed long diIntvlCntr;
	signed long diMinSltValue;
	signed long diMaxSltValue;
	signed long diPitch;
	signed long diBrdPerSlt;
	unsigned char usiMcMod;
	plcbit bTopToBtm;
	plcbit bGapBwtnBrd;
	plcbit bLongBrd;
	signed long diMinReqFreeBffr;
	plcstring sDisplayInfo[31];
	plcdt dtLastModified;
	signed long diMtrPshrExtSpd;
	signed long diMtrPshrExtTorq;
	signed long diPshrOffset;
} tyProdRcpParam;
#endif

#ifndef __AS__TYPE_tyLFFollowerIn1
#define __AS__TYPE_tyLFFollowerIn1
typedef struct tyLFFollowerIn1
{	plcbit bEn;
	plcbit bDis;
	plcbit bPrep;
	plcbit bUSWidthChkSen;
	plcbit bDSWidthChkSen;
	plcstring sProgNm[16];
	plcstring sMagRcpNm[16];
} tyLFFollowerIn1;
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

#ifndef __AS__TYPE_tyLFLeaderInfo
#define __AS__TYPE_tyLFLeaderInfo
typedef struct tyLFLeaderInfo
{	plcbit bOnline;
	unsigned char usiRunTmOld;
} tyLFLeaderInfo;
#endif

#ifndef __AS__TYPE_tyLFFollowerOut1
#define __AS__TYPE_tyLFFollowerOut1
typedef struct tyLFFollowerOut1
{	eFBStatus eStatus;
	tyAlmDat tyAlmData;
	tyAlmDat tyInfoData;
	tyAlmDat tyInfoData1;
	plcbit bUSAllow;
	plcbit bDSAllow;
	plcbit bProdAccDataMnl;
	plcbit bProdUpdtDataMnl;
	plcbit bMagAccDataMnl;
	eTimeAction eTimeAct;
	plcdt dtTm;
	plcbit bWaitRlsBrd;
	tyProdRcpParam tyUpdtProdRcp;
	plcbit bLdrSeqCtrlInActive;
	tyLFLeaderInfo tyLeaderInfo;
} tyLFFollowerOut1;
#endif

#ifndef __AS__TYPE_tyLFFollower1
#define __AS__TYPE_tyLFFollower1
typedef struct tyLFFollower1
{	tyLFFollowerIn1 In;
	tyLFFollowerOut1 Out;
} tyLFFollower1;
#endif

_BUR_LOCAL tyLFFollower1 tylocalFollower;
_BUR_LOCAL plcbit bAutoUpdtData;
_BUR_LOCAL plcbit bInternalUse;
_GLOBAL unsigned long p_Follower1;
