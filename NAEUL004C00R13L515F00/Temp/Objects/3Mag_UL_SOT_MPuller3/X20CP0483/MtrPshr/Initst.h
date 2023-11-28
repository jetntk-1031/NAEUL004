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

#ifndef __AS__TYPE_eMtrPshrAction
#define __AS__TYPE_eMtrPshrAction
typedef enum eMtrPshrAction
{	MtrPshrActIdle = 0,
	MtrPshrActExt = 1,
	MtrPshrActRet = 2,
	MtrPshrActStop = 3,
	MtrPshrActSetExt = 4,
	MtrPshrActRstExt = 5,
	MtrPshrActSetRet = 6,
	MtrPshrActRstRet = 7,
	MtrPshrActSetSpdBit0 = 8,
	MtrPshrActRstSpdBit0 = 9,
	MtrPshrActSetSpdBit1 = 10,
	MtrPshrActRstSpdBit1 = 11,
	MtrPshrActSetSpdBit2 = 12,
	MtrPshrActRstSpdBit2 = 13,
	MtrPshrActSetSigOn = 14,
	MtrPshrActRstSigOn = 15,
	MtrPshrActSetBrake = 16,
	MtrPshrActRstBrake = 17,
	MtrPshrActSetAlmRst = 18,
	MtrPshrActRstAlmRst = 19,
	MtrPshrActSetAll = 20,
	MtrPshrActRstAll = 21,
} eMtrPshrAction;
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

_BUR_LOCAL eMtrPshrAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL plcbit bExtended;
_BUR_LOCAL plcbit bRetracted;
_BUR_LOCAL plcbit bCW;
_BUR_LOCAL plcbit bCCW;
_BUR_LOCAL plcbit bSpdBinBit0;
_BUR_LOCAL plcbit bSpdBinBit1;
_BUR_LOCAL plcbit bSpdBinBit2;
_BUR_LOCAL plcbit bSigOn;
_BUR_LOCAL plcbit bBrake;
_BUR_LOCAL plcbit bAlmRst;
_GLOBAL unsigned long p_MtrPshrStat;
_GLOBAL unsigned long p_MtrPshrStatus;
_GLOBAL unsigned long p_MtrPshrStatTxt;
_GLOBAL unsigned long p_MtrPshrAlmData;
_GLOBAL unsigned long p_MtrPshrExtended;
_GLOBAL unsigned long p_MtrPshrRetracted;
_GLOBAL unsigned long p_MtrPshrCW;
_GLOBAL unsigned long p_MtrPshrCCW;
_GLOBAL unsigned long p_MtrPshrSpdBinBit0;
_GLOBAL unsigned long p_MtrPshrSpdBinBit1;
_GLOBAL unsigned long p_MtrPshrSpdBinBit2;
_GLOBAL unsigned long p_MtrPshrSigOn;
_GLOBAL unsigned long p_MtrPshrBrake;
_GLOBAL unsigned long p_MtrPshrAlmRst;