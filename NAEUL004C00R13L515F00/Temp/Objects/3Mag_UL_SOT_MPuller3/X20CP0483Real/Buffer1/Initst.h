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

#ifndef __AS__TYPE_eBufferAction
#define __AS__TYPE_eBufferAction
typedef enum eBufferAction
{	BufferActIdle = 0,
	BufferActCreateDir = 1,
	BufferActGetRetainBffr = 2,
	BufferActSetFull = 3,
	BufferActSetMty = 4,
	BufferActLoad = 5,
	BufferActLoadSltChk = 6,
	BufferActUnload = 7,
	BufferActUnloadSltChk = 8,
	BufferActUnloadCoolChk = 9,
	BufferActUnloadSltChkCoolChk = 10,
	BufferActNxtLoad = 11,
	BufferActNxtLoadGd = 12,
	BufferActNxtLoadBad = 13,
	BufferActNxtUnload = 14,
	BufferActNxtUnloadGd = 15,
	BufferActNxtUnloadBad = 16,
	BufferActChkCoolTm = 17,
	BufferActChkCoolBrdAny = 18,
	BufferActChkCoolBrdGd = 19,
	BufferActChkCoolBrdBad = 20,
	BufferActRstBffr = 21,
	BufferActSetCoolFan = 22,
	BufferActRstCoolFan = 23,
	BufferActBGStartBffrSetFull = 24,
	BufferActBGStartBffrSetMty = 25,
	BufferActBGStopBffrSet = 26,
	BufferActBGStartUpdtSen = 27,
	BufferActBGStopUpdtSen = 28,
	BufferActBGStartUpdtDisplay = 29,
	BufferActBGStopUpdtDisplay = 30,
	BufferActBGStartCoolFan = 31,
	BufferActBGStopCoolFan = 32,
} eBufferAction;
#endif

#ifndef __AS__TYPE_tyBffrStat
#define __AS__TYPE_tyBffrStat
typedef struct tyBffrStat
{	plcbit bBffrFull;
	plcbit bBffrMty;
	signed long diTtlBrdCap;
	signed long diTtlGdBrd;
	signed long diTtlBadBrd;
} tyBffrStat;
#endif

#ifndef __AS__TYPE_tyBrdUnloadStat
#define __AS__TYPE_tyBrdUnloadStat
typedef struct tyBrdUnloadStat
{	plcbit bGdSigBrd;
	plcdt dtSltTm;
	plcstring sProdNm[16];
	plcstring sBarcode1[81];
	plcstring sBarcode2[81];
} tyBrdUnloadStat;
#endif

#ifndef __AS__TYPE_tySubBffrDat
#define __AS__TYPE_tySubBffrDat
typedef struct tySubBffrDat
{	plcbit bSubForBrd;
	plcbit bBrdAvl;
	plcdt dtSltTm;
	plcstring sProdNm[16];
	plcstring sBarcode1[81];
	plcstring sBarcode2[81];
} tySubBffrDat;
#endif

#ifndef __AS__TYPE_tyBffrDat
#define __AS__TYPE_tyBffrDat
typedef struct tyBffrDat
{	plcbit bSltForBrd;
	plcbit bBrdAvl;
	plcbit bSltFull;
	plcbit bGdSigBrd;
	plcbit bSkip;
	signed long diSltCap;
	signed long diBrdQty;
	struct tySubBffrDat a_tySubBffrDat[2];
} tyBffrDat;
#endif

#ifndef __AS__TYPE_tyBffr
#define __AS__TYPE_tyBffr
typedef struct tyBffr
{	plcstring sName[16];
	struct tyBffrDat a_tyBffrDat[60];
} tyBffr;
#endif

#ifndef __AS__TYPE_tyDispBffrDat
#define __AS__TYPE_tyDispBffrDat
typedef struct tyDispBffrDat
{	plcstring sSltIdx[81];
	plcstring sSltTm[81];
	plcstring sBrdStoreTm[11];
	plcstring sRemainCoolTm[11];
	plcdword dwColor;
} tyDispBffrDat;
#endif

#ifndef __AS__TYPE_tyDispBffr
#define __AS__TYPE_tyDispBffr
typedef struct tyDispBffr
{	signed long diDispIdxSt;
	signed long diDispIdxEnd;
	struct tyDispBffrDat a_tyDispBffrDat[120];
} tyDispBffr;
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

_BUR_LOCAL eBufferAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL signed long diNxtLoadSlt;
_BUR_LOCAL signed long diNxtUnloadSlt;
_BUR_LOCAL signed long diCoolBrdAny;
_BUR_LOCAL signed long diCoolBrdGd;
_BUR_LOCAL signed long diCoolBrdBad;
_BUR_LOCAL plcbit bCoolNotRdy;
_BUR_LOCAL tyBffr tyBuffer;
_BUR_LOCAL tyDispBffr tyDispBuffer;
_BUR_LOCAL tyBffrStat tyBufferStat;
_BUR_LOCAL tyBrdUnloadStat tyBoardUnloadStat;
_BUR_LOCAL plcbit bFileNotFound;
_BUR_LOCAL plcbit bCoolFanCtrl;
_BUR_LOCAL_RETAIN plcbit bMagPresent;
_BUR_LOCAL plcdt dtMagPresentTm;
_BUR_LOCAL plcbit bNewProduct;
_BUR_LOCAL plcbit bLastProductUnload;
_BUR_LOCAL plcbit bLastProductLeftInBffr;
_BUR_LOCAL plcbit bParamDiff;
_BUR_LOCAL plcbit bMagRemoved;
_BUR_LOCAL plcbit bFIFOOld;
_BUR_LOCAL signed long diCurrSlt;
_GLOBAL unsigned long p_Buffer1Stat;
_GLOBAL unsigned long p_Buffer1Status;
_GLOBAL unsigned long p_Buffer1StatTxt;
_GLOBAL unsigned long p_Buffer1AlmData;
_GLOBAL unsigned long p_Buffer1NxtLoadSlt;
_GLOBAL unsigned long p_Buffer1NxtUnloadSlt;
_GLOBAL unsigned long p_Buffer1CoolBrdAny;
_GLOBAL unsigned long p_Buffer1CoolBrdGd;
_GLOBAL unsigned long p_Buffer1CoolBrdBad;
_GLOBAL unsigned long p_Buffer1CoolNotRdy;
_GLOBAL unsigned long p_Buffer1Bffr;
_GLOBAL unsigned long p_Buffer1DispBffr;
_GLOBAL unsigned long p_Buffer1BffrStat;
_GLOBAL unsigned long p_Buffer1BrdUnloadStat;
_GLOBAL unsigned long p_Buffer1FileNotFound;
_GLOBAL unsigned long p_Buffer1CoolFanCtrl;
_GLOBAL unsigned long p_Buffer1MagPresent;
_GLOBAL unsigned long p_Buffer1MagPresentTm;
_GLOBAL unsigned long p_Buffer1NewProduct;
_GLOBAL unsigned long p_Buffer1LastProductUnload;
_GLOBAL unsigned long p_Buffer1LastProductLeftInBffr;
_GLOBAL unsigned long p_Buffer1ParamDiff;
_GLOBAL unsigned long p_Buffer1MagRemoved;
_GLOBAL unsigned long p_Buffer1FIFOOld;
_GLOBAL unsigned long p_Buffer1SlotNo;
_GLOBAL signed long c_diBffrSize;
_GLOBAL signed long c_diBffrSubSize;
_GLOBAL signed long c_diDispBffrSize;
