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

#ifndef __AS__TYPE_eAGVMagAction
#define __AS__TYPE_eAGVMagAction
typedef enum eAGVMagAction
{	AGVMagActIdle = 0,
	AGVMagActEnter = 1,
	AGVMagActExit = 2,
} eAGVMagAction;
#endif

#ifndef __AS__TYPE_tyTagDTMagToAGV
#define __AS__TYPE_tyTagDTMagToAGV
typedef struct tyTagDTMagToAGV
{	plcbit bEStopErr;
	plcbit bCI1MagazineFull;
	plcbit bCI1Rdy;
	plcbit bCI1Auto;
	plcbit bCI1Occupied;
	plcbit bCI1Running;
	plcbit bCI1IncorrectMagazineModel;
	plcbit bCI2MagazineFull;
	plcbit bCI2Rdy;
	plcbit bCI2Auto;
	plcbit bCI2Occupied;
	plcbit bCI2Running;
	plcbit bCI2IncorrectMagazineModel;
	plcbit bCI3MagazineFull;
	plcbit bCI3Rdy;
	plcbit bCI3Auto;
	plcbit bCI3Occupied;
	plcbit bCI3Running;
	plcbit bCI3IncorrectMagazineModel;
	plcbit bCI4MagazineFull;
	plcbit bCI4Rdy;
	plcbit bCI4Auto;
	plcbit bCI4Occupied;
	plcbit bCI4Running;
	plcbit bCI4IncorrectMagazineModel;
} tyTagDTMagToAGV;
#endif

#ifndef __AS__TYPE_tyTagAGVToDTMag
#define __AS__TYPE_tyTagAGVToDTMag
typedef struct tyTagAGVToDTMag
{	plcbit bVEHInPos1;
	plcbit bVEHInPos2;
	plcbit bVEHInPos3;
	plcbit bVEHAuto;
	plcbit bVEH1Occupied;
	plcbit bVEH2Occupied;
	plcbit bVEH3Occupied;
	plcbit bVEHRunning;
} tyTagAGVToDTMag;
#endif

#ifndef __AS__TYPE_tyStatPlatform
#define __AS__TYPE_tyStatPlatform
typedef struct tyStatPlatform
{	plcbit bMagLoaded;
	plcbit bError;
	plcbit bSizeLarge;
	plcbit bReady;
	plcbit bAvailable;
	plcbit bReqAIVToBring;
	plcbit bReqAIVToGet;
	plcbit bReadRFID;
	plcbit bWriteRFID;
} tyStatPlatform;
#endif

#ifndef __AS__TYPE_tyStatToMES
#define __AS__TYPE_tyStatToMES
typedef struct tyStatToMES
{	plcstring sMachineName[31];
	plcbit bActive;
	plcbit bAuto_Run;
	plcbit bError;
	plcbit bWarning;
	unsigned char nNumberOfPlatforms;
	struct tyStatPlatform tyTagStatOfPlatforms[4];
} tyStatToMES;
#endif

#ifndef __AS__TYPE_tyStatPlatformFromMES
#define __AS__TYPE_tyStatPlatformFromMES
typedef struct tyStatPlatformFromMES
{	signed short iAcceptCondition;
	plcbit bError;
	plcbit bSizeLarge;
	plcbit bReady;
	plcbit bAvailable;
	plcbit bRFIDWriteComplete;
	plcbit bTrigMagFull;
} tyStatPlatformFromMES;
#endif

#ifndef __AS__TYPE_tyStatFromMES
#define __AS__TYPE_tyStatFromMES
typedef struct tyStatFromMES
{	plcstring sMESName[31];
	plcbit bActive;
	struct tyStatPlatformFromMES tyTagStatOfPlatforms[4];
} tyStatFromMES;
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

_BUR_LOCAL eAGVMagAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[101];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL tyTagAGVToDTMag tyAGVToDTMag;
_BUR_LOCAL tyTagDTMagToAGV tyDTMagToAGV;
_BUR_LOCAL plcbit bMachineOnline;
_BUR_LOCAL plcbit bInternalAGVOnline;
_BUR_LOCAL plcbit bInternalAGVSimulateOn;
_BUR_LOCAL plcbit bFleetManagerActive;
_BUR_LOCAL tyStatToMES tyTagToMes;
_BUR_LOCAL tyStatFromMES tyTagFromMes;
_GLOBAL unsigned long p_AGVStat;
_GLOBAL unsigned long p_AGVStatus;
_GLOBAL unsigned long p_AGVStatTxt;
_GLOBAL unsigned long p_AGVAlmData;
_GLOBAL unsigned long p_AGVAlmData1;
_GLOBAL unsigned long p_AGVOnline;
_GLOBAL unsigned long p_MachineOnline;
_GLOBAL unsigned long p_AGVTagAGVToDTMag;
_GLOBAL unsigned long p_DTMagToAGV;
_GLOBAL unsigned long p_AGVSimulationOn;
_GLOBAL unsigned long p_TagToMes;
_GLOBAL unsigned long p_TagFromMes;
_GLOBAL unsigned long p_FleetManagerActive;
_GLOBAL unsigned long p_TagToMesMagConv1;
_GLOBAL unsigned long p_TagToMesMagConv2;
_GLOBAL unsigned long p_TagToMesMagConv3;
_GLOBAL unsigned long p_TagFromMesMagConv1;
_GLOBAL unsigned long p_TagFromMesMagConv2;
_GLOBAL unsigned long p_TagFromMesMagConv3;
