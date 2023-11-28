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

#ifndef __AS__TYPE_eMagRcpAction
#define __AS__TYPE_eMagRcpAction
typedef enum eMagRcpAction
{	MagRcpActIdle = 0,
	MagRcpActCreateDir = 1,
	MagRcpActAddEdit = 2,
	MagRcpActDel = 3,
	MagRcpActGetInfo = 4,
	MagRcpActGetList = 5,
	MagRcpActFilter = 6,
	MagRcpActReadCurrRcp = 7,
	MagRcpActLoadRcp = 8,
	MagRcpActWriteCurrRcpParam = 9,
	MagRcpActSaveList = 10,
	MagRcpActSort = 11,
} eMagRcpAction;
#endif

#ifndef __AS__TYPE_tyMagRcpParam
#define __AS__TYPE_tyMagRcpParam
typedef struct tyMagRcpParam
{	plcstring sRcpNm[31];
	signed long diTtlSlt;
	signed long diSltToSltInUM;
	signed long diMag1Slt1PosInUM;
	signed long diMag2Slt1PosInUM;
	signed long diMag3Slt1PosInUM;
	signed long diMag1TravPosInUM;
	signed long diMag2TravPosInUM;
	signed long diMag3TravPosInUM;
	unsigned char usiMagModel;
	plcstring sDisplayInfo[31];
	signed long diMagMaxBrdWidth;
	plcdt dtLastModified;
	plcbit bSafetyBarDisabled;
	plcbit bMagHeightChkEn;
} tyMagRcpParam;
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

_BUR_LOCAL eMagRcpAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL plcbit bNmExist;
_BUR_LOCAL plcbit bNmNotExist;
_BUR_LOCAL plcbit bNmEmpty;
_BUR_LOCAL plcbit bListFull;
_BUR_LOCAL struct tyMagRcpParam a_tyCurrList[10];
_BUR_LOCAL struct tyMagRcpParam a_tyFilterList[10];
_BUR_LOCAL struct tyMagRcpParam a_tySortList[10];
_BUR_LOCAL tyMagRcpParam tyInfoOut;
_BUR_LOCAL plcbit bFileNotFound;
_BUR_LOCAL tyMagRcpParam tyCurrRcp;
_GLOBAL unsigned long c_udiMagRcpMax;
_GLOBAL unsigned long p_MagRcpStat;
_GLOBAL unsigned long p_MagRcpStatus;
_GLOBAL unsigned long p_MagRcpStatTxt;
_GLOBAL unsigned long p_MagRcpAlmData;
_GLOBAL unsigned long p_MagRcpNmExist;
_GLOBAL unsigned long p_MagRcpNmNotExist;
_GLOBAL unsigned long p_MagRcpNmEmpty;
_GLOBAL unsigned long p_MagRcpListFull;
_GLOBAL unsigned long p_MagRcpCurrList;
_GLOBAL unsigned long p_MagRcpFilterList;
_GLOBAL unsigned long p_MagRcpSortedList;
_GLOBAL unsigned long p_MagRcpInfoOut;
_GLOBAL unsigned long p_MagRcpFileNotFound;
_GLOBAL unsigned long p_MagRcpCurrRcp;
_GLOBAL unsigned long p_MagRcpCurrRcpNm;
_GLOBAL unsigned long p_MagRcpCurrRcpTtlSlt;
_GLOBAL unsigned long p_MagRcpCurrRcpSltToSlt;
_GLOBAL unsigned long p_MagRcpCurrRcpMag1Slt1Pos;
_GLOBAL unsigned long p_MagRcpCurrRcpMag2Slt1Pos;
_GLOBAL unsigned long p_MagRcpCurrRcpMag3Slt1Pos;
_GLOBAL unsigned long p_MagRcpCurrRcpMag1TravPos;
_GLOBAL unsigned long p_MagRcpCurrRcpMag2TravPos;
_GLOBAL unsigned long p_MagRcpCurrRcpMag3TravPos;
_GLOBAL unsigned long p_MagRcpCurrRcpDisplayInfo;
_GLOBAL unsigned long p_MagRcpCurrRcpMagMaxBrdWidth;
_GLOBAL unsigned long p_MagRcpCurrRcpLastModified;
_GLOBAL unsigned long p_MagRcpCurrRcpMagModel;
_GLOBAL unsigned long p_MagRcpCurrRcpSBarDisabled;
_GLOBAL unsigned long p_MagRcpCurrRcpMagHeightChkEn;
