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

#ifndef __AS__TYPE_eHermesFailedBoard
#define __AS__TYPE_eHermesFailedBoard
typedef enum eHermesFailedBoard
{	HermesUnknownBoard = 0,
	HermesGoodBoard = 1,
	HermesFailedBoard = 2,
} eHermesFailedBoard;
#endif

#ifndef __AS__TYPE_eHermesFlippedBoard
#define __AS__TYPE_eHermesFlippedBoard
typedef enum eHermesFlippedBoard
{	HermesFlippedBoardUnknownSide = 0,
	HermesFlippedBoardTopSideUp = 1,
	HermesFlippedBoardBtmSideUp = 2,
} eHermesFlippedBoard;
#endif

#ifndef __AS__TYPE_tyBoardProperty
#define __AS__TYPE_tyBoardProperty
typedef struct tyBoardProperty
{	plcstring sWorkOrderId[81];
	plcstring sBatchId[81];
	plcstring sBoardId[37];
	plcstring sBoardIdCreatedBy[81];
	eHermesFailedBoard eFailedBoard;
	plcstring sProductTypeId[255];
	eHermesFlippedBoard eFlippedBoard;
	plcstring sTopBarcode[255];
	plcstring sBottomBarcode[255];
	float rLength;
	float rWidth;
	float rThickness;
	float rConveyorSpeed;
	float rTopClearanceHeight;
	float rBottomClearanceHeight;
	float rWeight;
} tyBoardProperty;
#endif

#ifndef __AS__TYPE_tyMagProperties
#define __AS__TYPE_tyMagProperties
typedef struct tyMagProperties
{	plcstring sRcpNm[255];
	signed long diWidth;
	signed long diPitch;
	signed long diMinSlt;
	signed long diMaxSlt;
	plcstring sTrailingBarcode[255];
} tyMagProperties;
#endif

#ifndef __AS__TYPE_eAutoRcpAction
#define __AS__TYPE_eAutoRcpAction
typedef enum eAutoRcpAction
{	AutoRcpActIdle = 0,
	AutoRcpActCreateDir = 1,
	AutoRcpActReadRetain2 = 2,
	AutoRcpActWriteRetain2 = 3,
	AutoRcpActReadRetain = 4,
	AutoRcpActWriteRetain = 5,
} eAutoRcpAction;
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

_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL eAutoRcpAction eStat;
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyInfoData;
_BUR_LOCAL tyAlmDat tyInfoData1;
_BUR_LOCAL plcbit bAutoUpdtData;
_BUR_LOCAL plcbit bInternalUse;
_BUR_LOCAL plcbit bTravLifWidthDiffBlk;
_BUR_LOCAL plcbit a_bMagChangOverBlk[4];
_BUR_LOCAL plcbit a_bAllwChangeWidth[4];
_BUR_LOCAL plcbit a_bAllwChangeSlot[4];
_BUR_LOCAL plcbit bForceExitMag;
_BUR_LOCAL plcbit a_bCheckDifferent[4];
_BUR_LOCAL plcstring sProdtypeID[255];
_BUR_LOCAL signed long diProdWidth;
_BUR_LOCAL struct tyBoardProperty a_tyCurrZ2Rcp[4];
_BUR_LOCAL signed long diTravLifWidth;
_BUR_LOCAL struct tyMagProperties a_tyMagProps[4];
_GLOBAL unsigned long p_AutoRcpStat;
_GLOBAL unsigned long p_AutoRcpStatus;
_GLOBAL unsigned long p_AutoRcpAlmData;
_GLOBAL unsigned long p_AutoRcpInfoData;
_GLOBAL unsigned long p_AutoRcpInfoData1;
_GLOBAL unsigned long p_AutoRcpCurrRcpProdID;
_GLOBAL unsigned long p_AutoRcpCurrRcpWidth;
_GLOBAL unsigned long p_AutoRcpbTravWidthDiffblk;
_GLOBAL unsigned long p_AutoRcpbMagChangeOverBlk;
_GLOBAL unsigned long p_AutoRcpbMag1PropDiffBlk;
_GLOBAL unsigned long p_AutoRcpbMag2PropDiffBlk;
_GLOBAL unsigned long p_AutoRcpbMag3PropDiffBlk;
_GLOBAL unsigned long p_AutoRcpbMag1WidthChg;
_GLOBAL unsigned long p_AutoRcpbMag2WidthChg;
_GLOBAL unsigned long p_AutoRcpbMag3WidthChg;
_GLOBAL unsigned long p_AutoRcpbMag1SlotChg;
_GLOBAL unsigned long p_AutoRcpbMag2SlotChg;
_GLOBAL unsigned long p_AutoRcpbMag3SlotChg;
_GLOBAL unsigned long p_diAutoRcpTravLifWidth;
_GLOBAL unsigned long p_diAutoRcpAllMagProps;
_GLOBAL unsigned long p_diAutoRcpBrdProps;
_GLOBAL unsigned long p_diAutoRcpMag1MaxSlt;
_GLOBAL unsigned long p_diAutoRcpMag1MinSlt;
_GLOBAL unsigned long p_diAutoRcpMag1Pitch;
_GLOBAL unsigned long p_diAutoRcpMag1Width;
_GLOBAL unsigned long p_diAutoRcpMag2MaxSlt;
_GLOBAL unsigned long p_diAutoRcpMag2MinSlt;
_GLOBAL unsigned long p_diAutoRcpMag2Pitch;
_GLOBAL unsigned long p_diAutoRcpMag2Width;
_GLOBAL unsigned long p_diAutoRcpMag3MaxSlt;
_GLOBAL unsigned long p_diAutoRcpMag3MinSlt;
_GLOBAL unsigned long p_diAutoRcpMag3Pitch;
_GLOBAL unsigned long p_diAutoRcpMag3Width;
_GLOBAL unsigned long p_AutoRcpForceExitMag;
