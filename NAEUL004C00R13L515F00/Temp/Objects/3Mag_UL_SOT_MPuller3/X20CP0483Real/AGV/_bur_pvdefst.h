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

#ifndef __AS__TYPE_tyStatPlatformFromLoader
#define __AS__TYPE_tyStatPlatformFromLoader
typedef struct tyStatPlatformFromLoader
{	unsigned char usiMagBrdUnloadCnt;
	plcbit bFinishedLoading;
} tyStatPlatformFromLoader;
#endif

#ifndef __AS__TYPE_tyStatFromLoader
#define __AS__TYPE_tyStatFromLoader
typedef struct tyStatFromLoader
{	struct tyStatPlatformFromLoader tyTagStatOfPlatForms[4];
} tyStatFromLoader;
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
_BUR_LOCAL plcbit(* p_bLinkOpsSimu);
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
_BUR_LOCAL eAGVMagAction eAct;
_BUR_LOCAL eAGVMagAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL eFBStatus eStatus1;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL plcstring sStatTxt[101];
_BUR_LOCAL plcstring a_sStatText[51][101];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL plcbit bMcRunRdy;
_BUR_LOCAL plcbit bRdyEnt;
_BUR_LOCAL plcbit bRdyExit;
_BUR_LOCAL plcbit bMag1Ent;
_BUR_LOCAL plcbit bMag1Exit;
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
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL eAGVMagAction eStatOld;
_BUR_LOCAL struct TON fbConnectionTmCCS;
_BUR_LOCAL struct TON fbConnectionAGVTm;
_BUR_LOCAL struct TON fbConnectionAGVTm1;
_BUR_LOCAL tyStatToMES tyTagToMes;
_BUR_LOCAL tyStatFromMES tyTagFromMes;
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL tyStatFromLoader tyTagFromLoader;
