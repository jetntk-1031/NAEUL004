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

#ifndef __AS__TYPE_eMcAGVCommProtocol
#define __AS__TYPE_eMcAGVCommProtocol
typedef enum eMcAGVCommProtocol
{	McSetAGVCommOPCUA = 0,
	McSetAGVCommHardIO = 1,
	McSetAGVCommDisabled = 2,
	McSetAGVTCPEnableTCP = 3,
	McSetAGVTCPDisableTCP = 4,
} eMcAGVCommProtocol;
#endif

#ifndef __AS__TYPE_eCustomer
#define __AS__TYPE_eCustomer
typedef enum eCustomer
{	NA = 0,
	Bosch_China = 1,
	Bosch_Portugal = 2,
	Bosch_America = 3,
	Bosch_Malaysia = 4,
	Siemens = 5,
	We_Fabricate = 6,
	New_Member5 = 7,
	New_Member6 = 8,
	New_Member7 = 9,
	New_Member8 = 10,
	New_Member9 = 11,
	New_Member10 = 12,
} eCustomer;
#endif

#ifndef __AS__TYPE_eULMag
#define __AS__TYPE_eULMag
typedef enum eULMag
{	ULMagDual = 0,
	ULMagTriple = 1,
	ULMagQuadruple = 2,
} eULMag;
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

#ifndef __AS__TYPE_eFBStatus
#define __AS__TYPE_eFBStatus
typedef enum eFBStatus
{	Idle = 0,
	Done = 1,
	Busy = 2,
	Error = 3,
} eFBStatus;
#endif

#ifndef __AS__TYPE_tyAlmTxt
#define __AS__TYPE_tyAlmTxt
typedef struct tyAlmTxt
{	plcstring sAlmText[201];
	plcstring sRcyText[201];
} tyAlmTxt;
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

struct TON
{	plctime PT;
	plctime ET;
	plctime StartTime;
	unsigned long Restart;
	plcbit IN;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void TON(struct TON* inst);
_BUR_LOCAL plcbit(* p_bLinkCoverSWSig);
_BUR_LOCAL plcbit(* p_bLinkSafetyRlySig);
_BUR_LOCAL plcbit(* p_bLinkAlarmWarning);
_BUR_LOCAL plcbit(* p_bLinkAlarmInfo);
_BUR_LOCAL plcbit(* p_bLinkError);
_BUR_LOCAL eULMag(* p_eLinkULMag);
_BUR_LOCAL eMcAGVCommProtocol(* p_eLinkAGVComProtocol);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL plcstring(* p_sJobNo)[31];
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL struct tyTagDTMagToAGV(* p_tyDTMagToAGV1);
_BUR_LOCAL struct tyTagDTMagToAGV(* p_tyDTMagToAGV2);
_BUR_LOCAL struct tyTagDTMagToAGV(* p_tyDTMagToAGV3);
_BUR_LOCAL plcbit(* p_bOpsRun);
_BUR_LOCAL plcbit(* p_bIncorrectMagazine1);
_BUR_LOCAL plcbit(* p_bIncorrectMagazine2);
_BUR_LOCAL plcbit(* p_bIncorrectMagazine3);
_BUR_LOCAL struct tyTagAGVToDTMag(* p_tyUIAGVToDTMagSimulateData);
_BUR_LOCAL plcbit(* p_bUIAGVOnline);
_BUR_LOCAL plcbit(* p_bUIAGVSimulationOn);
_BUR_LOCAL plcbit(* p_bAGVRdyEnter1);
_BUR_LOCAL plcbit(* p_bAGVRdyExit1);
_BUR_LOCAL plcbit(* p_bAGVRdyEnter2);
_BUR_LOCAL plcbit(* p_bAGVRdyExit2);
_BUR_LOCAL plcbit(* p_bAGVRdyEnter3);
_BUR_LOCAL plcbit(* p_bAGVRdyExit3);
_BUR_LOCAL plcbit(* p_bRequestToBring1);
_BUR_LOCAL plcbit(* p_bRequestToBring2);
_BUR_LOCAL plcbit(* p_bRequestToBring3);
_BUR_LOCAL plcbit(* p_bRequestToBring4);
_BUR_LOCAL plcbit(* p_bRequestToGet1);
_BUR_LOCAL plcbit(* p_bRequestToGet2);
_BUR_LOCAL plcbit(* p_bRequestToGet3);
_BUR_LOCAL plcbit(* p_bRequestToGet4);
_BUR_LOCAL plcbit(* p_bUISOTMagError1);
_BUR_LOCAL plcbit(* p_bUISOTMagError2);
_BUR_LOCAL plcbit(* p_bUISOTMagError3);
_BUR_LOCAL plcbit(* p_bUISOTMagReady1);
_BUR_LOCAL plcbit(* p_bUISOTMagReady2);
_BUR_LOCAL plcbit(* p_bUISOTMagReady3);
_BUR_LOCAL plcbit(* p_bUISOTMagAvailable1);
_BUR_LOCAL plcbit(* p_bUISOTMagAvailable2);
_BUR_LOCAL plcbit(* p_bUISOTMagAvailable3);
_BUR_LOCAL plcbit(* p_bUISOTMagSizeLarge1);
_BUR_LOCAL plcbit(* p_bUISOTMagSizeLarge2);
_BUR_LOCAL plcbit(* p_bUISOTMagSizeLarge3);
_BUR_LOCAL plcbit(* p_bUIRequestToBring1);
_BUR_LOCAL plcbit(* p_bUIRequestToBring2);
_BUR_LOCAL plcbit(* p_bUIRequestToBring3);
_BUR_LOCAL plcbit(* p_bUIRequestToGet1);
_BUR_LOCAL plcbit(* p_bUIRequestToGet2);
_BUR_LOCAL plcbit(* p_bUIRequestToGet3);
_BUR_LOCAL plcbit(* p_bDIFleetManagerActive);
_BUR_LOCAL eMcAGVCommProtocol(* p_eAGVComProtocol);
_BUR_LOCAL plcbit(* p_bSOTMagError1);
_BUR_LOCAL plcbit(* p_bSOTMagSizeLarge1);
_BUR_LOCAL plcbit(* p_bSOTMagReady1);
_BUR_LOCAL plcbit(* p_bSOTMagAvailable1);
_BUR_LOCAL plcbit(* p_bSOTMagError2);
_BUR_LOCAL plcbit(* p_bSOTMagSizeLarge2);
_BUR_LOCAL plcbit(* p_bSOTMagReady2);
_BUR_LOCAL plcbit(* p_bSOTMagAvailable2);
_BUR_LOCAL plcbit(* p_bSOTMagError3);
_BUR_LOCAL plcbit(* p_bSOTMagSizeLarge3);
_BUR_LOCAL plcbit(* p_bSOTMagReady3);
_BUR_LOCAL plcbit(* p_bSOTMagAvailable3);
_BUR_LOCAL plcbit(* p_bDisableFMWarning);
_BUR_LOCAL eCustomer(* p_eCustomerReq);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL1ReadRFID);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL1WriteRFID);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL2ReadRFID);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL2WriteRFID);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL3ReadRFID);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL3WriteRFID);
_BUR_LOCAL eAGVMagAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL plcstring sStatTxt[101];
_BUR_LOCAL plcstring a_sStatText[51][101];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL tyTagAGVToDTMag tyAGVToDTMag;
_BUR_LOCAL tyTagDTMagToAGV tyDTMagToAGV;
_BUR_LOCAL plcbit bAGVOnline;
_BUR_LOCAL plcbit bMachineOnline;
_BUR_LOCAL plcbit bInternalAGVOnline;
_BUR_LOCAL plcbit bInternalAGVSimulateOn;
_BUR_LOCAL tyTagDTMagToAGV tyDTMagToAGV1;
_BUR_LOCAL tyTagDTMagToAGV tyDTMagToAGV2;
_BUR_LOCAL tyTagDTMagToAGV tyDTMagToAGV3;
_BUR_LOCAL plcbit bRequestToBring1;
_BUR_LOCAL plcbit bRequestToGet1;
_BUR_LOCAL plcbit bRequestToBring2;
_BUR_LOCAL plcbit bRequestToGet2;
_BUR_LOCAL plcbit bRequestToBring3;
_BUR_LOCAL plcbit bRequestToGet3;
_BUR_LOCAL plcbit bRequestToBring4;
_BUR_LOCAL plcbit bRequestToGet4;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bFleetManagerActive;
_BUR_LOCAL struct TON fbFMOnTimeout;
_BUR_LOCAL struct TON fbFMOffTimeout;
_BUR_LOCAL struct TON fbConnectionAGVTm;
_BUR_LOCAL struct TON fbConnectionAGVTm1;
_BUR_LOCAL tyStatToMES tyTagToMes;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL unsigned long p_UIUIMnlMod;
_GLOBAL unsigned long p_UIAGVSimulateOnline;
_GLOBAL unsigned long p_UIAGVSimulateSig;
_GLOBAL unsigned long p_UIAGVSimulationOn;
_GLOBAL unsigned long p_UISOTMagErr1;
_GLOBAL unsigned long p_UISOTMagErr2;
_GLOBAL unsigned long p_UISOTMagErr3;
_GLOBAL unsigned long p_UISOTMagRdy1;
_GLOBAL unsigned long p_UISOTMagRdy2;
_GLOBAL unsigned long p_UISOTMagRdy3;
_GLOBAL unsigned long p_UISOTMagAvail1;
_GLOBAL unsigned long p_UISOTMagAvail2;
_GLOBAL unsigned long p_UISOTMagAvail3;
_GLOBAL unsigned long p_UISOTMagSLarge1;
_GLOBAL unsigned long p_UISOTMagSLarge2;
_GLOBAL unsigned long p_UISOTMagSLarge3;
_GLOBAL unsigned long p_UIAIVReqBring1;
_GLOBAL unsigned long p_UIAIVReqBring2;
_GLOBAL unsigned long p_UIAIVReqBring3;
_GLOBAL unsigned long p_UIAIVReqGet1;
_GLOBAL unsigned long p_UIAIVReqGet2;
_GLOBAL unsigned long p_UIAIVReqGet3;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL unsigned long p_AlarmErr;
_GLOBAL unsigned long p_AlarmWarning;
_GLOBAL unsigned long p_AlarmInfo;
_GLOBAL plcstring g_sAGVComProgNm[16];
_GLOBAL unsigned long p_RstErrReset;
_GLOBAL unsigned long p_McParamAGVComProtocol;
_GLOBAL unsigned long p_McParamDisableFMWarning;
_GLOBAL unsigned long p_NtParamJobNo;
_GLOBAL unsigned long p_NtParamProjAGVPrep;
_GLOBAL unsigned long p_NtParamProjMag;
_GLOBAL unsigned long p_NtParamAGVProgNm;
_GLOBAL unsigned long p_NtParamCustomerReq;
_GLOBAL unsigned long p_Buffer1MagRemoved;
_GLOBAL unsigned long p_Buffer2MagRemoved;
_GLOBAL unsigned long p_Buffer3MagRemoved;
_GLOBAL unsigned long p_DISafetyRlySig;
_GLOBAL unsigned long p_DICoverSWSig;
_GLOBAL unsigned long p_DIFleetManagerActive;
_GLOBAL unsigned long p_OpsRun;
_GLOBAL unsigned long p_OpsMagConvUL1IncorrectMagModel;
_GLOBAL unsigned long p_OpsMagConvUL1ReadRFID;
_GLOBAL unsigned long p_OpsMagConvUL1WriteRFID;
_GLOBAL unsigned long p_OpsMagConvUL2IncorrectMagModel;
_GLOBAL unsigned long p_OpsMagConvUL2ReadRFID;
_GLOBAL unsigned long p_OpsMagConvUL2WriteRFID;
_GLOBAL unsigned long p_OpsMagConvUL3IncorrectMagModel;
_GLOBAL unsigned long p_OpsMagConvUL3ReadRFID;
_GLOBAL unsigned long p_OpsMagConvUL3WriteRFID;
_GLOBAL unsigned long p_AGVMag1RdyEnter;
_GLOBAL unsigned long p_AGVMag1RdyExit;
_GLOBAL unsigned long p_AGVMag1DTMagToAGV;
_GLOBAL unsigned long p_AGVMag2RdyEnter;
_GLOBAL unsigned long p_AGVMag2RdyExit;
_GLOBAL unsigned long p_AGVMag2DTMagToAGV;
_GLOBAL unsigned long p_AGVMag3RdyEnter;
_GLOBAL unsigned long p_AGVMag3RdyExit;
_GLOBAL unsigned long p_AGVMag3DTMagToAGV;
_GLOBAL unsigned long p_USSOT1USB;
_GLOBAL unsigned long p_DSSOT1DBA;
_GLOBAL unsigned long p_DSSOT1MagSizeLarge;
_GLOBAL unsigned long p_USSOT2USB;
_GLOBAL unsigned long p_DSSOT2DBA;
_GLOBAL unsigned long p_DSSOT2MagSizeLarge;
_GLOBAL unsigned long p_USSOT3USB;
_GLOBAL unsigned long p_DSSOT3DBA;
_GLOBAL unsigned long p_DSSOT3MagSizeLarge;
_LOCAL plcbit Edge0001100000;
_LOCAL plcbit Edge0000200000;
static void __AS__Action__Act_InitGlobal(void);
static void __AS__Action__Act_LinkAction(void);
static void __AS__Action__Act_Link(void);
static void __AS__Action__Act_LinkEn(void);
static void __AS__Action__Act_RstErr(void);
static void __AS__Action__Act_InitLocal(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Action(void);
static void __AS__Action__Act_Main(void);
static void __AS__Action__Act_Background(void);
static void __AS__Action__Act_Alarm(void);
static void __AS__Action__Act_Alarm1(void);
