/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704162565_1_
#define _BUR_1704162565_1_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eAGVMagAction
{	AGVMagActIdle,
	AGVMagActEnter,
	AGVMagActExit
} eAGVMagAction;

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

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct tyStatToMES
{	plcstring sMachineName[31];
	plcbit bActive;
	plcbit bAuto_Run;
	plcbit bError;
	plcbit bWarning;
	unsigned char nNumberOfPlatforms;
	struct tyStatPlatform tyTagStatOfPlatforms[4];
} tyStatToMES;
#else
/* Data type tyStatToMES not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct tyStatPlatformFromMES
{	signed short iAcceptCondition;
	plcbit bError;
	plcbit bSizeLarge;
	plcbit bReady;
	plcbit bAvailable;
	plcbit bRFIDWriteComplete;
	plcbit bTrigMagFull;
} tyStatPlatformFromMES;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct tyStatFromMES
{	plcstring sMESName[31];
	plcbit bActive;
	struct tyStatPlatformFromMES tyTagStatOfPlatforms[4];
} tyStatFromMES;
#else
/* Data type tyStatFromMES not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct tyStatPlatformFromLoader
{	unsigned char usiMagBrdUnloadCnt;
	plcbit bFinishedLoading;
} tyStatPlatformFromLoader;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct tyStatFromLoader
{	struct tyStatPlatformFromLoader tyTagStatOfPlatForms[4];
} tyStatFromLoader;
#else
/* Data type tyStatFromLoader not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct tyAGVComIn1
{	plcbit bManual;
	struct tyTagDTMagToAGV tyDTMagToAGV1;
	struct tyTagDTMagToAGV tyDTMagToAGV2;
	struct tyTagDTMagToAGV tyDTMagToAGV3;
	plcbit bOpsRun;
	plcbit bLinkOpsSimu;
	plcbit bIncorrectMagazine1;
	plcbit bIncorrectMagazine2;
	plcbit bIncorrectMagazine3;
	plcbit bRequestToBring1;
	plcbit bRequestToBring2;
	plcbit bRequestToBring3;
	plcbit bRequestToBring4;
	plcbit bRequestToGet1;
	plcbit bRequestToGet2;
	plcbit bRequestToGet3;
	plcbit bRequestToGet4;
	plcbit bUISOTMagError1;
	plcbit bUISOTMagError2;
	plcbit bUISOTMagError3;
	plcbit bUISOTMagReady1;
	plcbit bUISOTMagReady2;
	plcbit bUISOTMagReady3;
	plcbit bUISOTMagAvailable1;
	plcbit bUISOTMagAvailable2;
	plcbit bUISOTMagAvailable3;
	plcbit bUISOTMagSizeLarge1;
	plcbit bUISOTMagSizeLarge2;
	plcbit bUISOTMagSizeLarge3;
	plcbit bUIRequestToBring1;
	plcbit bUIRequestToBring2;
	plcbit bUIRequestToBring3;
	plcbit bUIRequestToGet1;
	plcbit bUIRequestToGet2;
	plcbit bUIRequestToGet3;
	plcbit bDIFleetManagerActive;
	eMcAGVCommProtocol eAGVComProtocol;
	plcbit bSOTMagError1;
	plcbit bSOTMagSizeLarge1;
	plcbit bSOTMagReady1;
	plcbit bSOTMagAvailable1;
	plcbit bSOTMagError2;
	plcbit bSOTMagSizeLarge2;
	plcbit bSOTMagReady2;
	plcbit bSOTMagAvailable2;
	plcbit bSOTMagError3;
	plcbit bSOTMagSizeLarge3;
	plcbit bSOTMagReady3;
	plcbit bSOTMagAvailable3;
	plcbit bAGVSimulationOn;
	plcbit bDisableFMWarning;
	plcbit bAGVRdyEnter2;
	plcbit bAGVRdyExit2;
	plcbit bAGVRdyEnter3;
	plcbit bAGVRdyExit3;
	plcbit bAGVRdyEnter1;
	plcbit bAGVRdyExit1;
	plcstring sJobNo[31];
	plcstring sProgNm[16];
	unsigned long udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	eCustomer eCustomerReq;
	plcbit bOpsMagConvUL1ReadRFID;
	plcbit bOpsMagConvUL1WriteRFID;
	plcbit bOpsMagConvUL2ReadRFID;
	plcbit bOpsMagConvUL2WriteRFID;
	plcbit bOpsMagConvUL3ReadRFID;
	plcbit bOpsMagConvUL3WriteRFID;
	struct tyTagAGVToDTMag tyUIAGVToDTMagSimulateData;
} tyAGVComIn1;

typedef struct tyAGVComOut1
{	enum eAGVMagAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	struct tyAlmDat tyAlmData1;
	struct tyTagAGVToDTMag tyAGVToDTMag;
	plcbit bInternalAGVOnline;
	plcbit bMachineOnline;
	struct tyTagDTMagToAGV tyDTMagToAGV;
	plcbit bInternalAGVSimulateOn;
	struct tyStatToMES tyTagToMes;
	struct tyStatFromMES tyTagFromMes;
	plcbit bFleetManagerActive;
} tyAGVComOut1;

typedef struct tyAGVCom
{	struct tyAGVComIn1 In;
	struct tyAGVComOut1 Out;
} tyAGVCom;

typedef struct tyAGVIn1
{	unsigned long udiRstErr;
	plcbit bPrep;
	plcbit bEn;
	plcbit bDis;
	plcstring sProgNm[16];
	plcbit bNtSettingsLoadDone;
	signed long diTxInTimeOut;
	signed long diTxOutTimeOut;
	eConvDir eDirection;
	plcbit bBufferMagPresent;
	plcbit bMagConvLftSen;
	plcbit bMagConvRgtSen;
	plcbit bMagConvMtrIn;
	plcbit bMagConvMtrOut;
	plcbit bAGVInPosSen1;
	plcbit bAGVInPosSen2;
	plcbit bNtParamAGVInPosSenPrep;
	plcbit bSOTRcvOk;
	plcbit bSOTErr;
	plcbit bSOTRdy;
	plcbit bSOTAvailable;
	struct tyTagAGVToDTMag tyAGVToDTMag;
	struct tyTagDTMagToAGV tyDTMagToAGV;
	plcbit bLinkAGVOnline;
} tyAGVIn1;

typedef struct tyAGVOut1
{	enum eAGVMagAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcbit bRdyEnt;
	plcbit bRdyExit;
	plcbit bMcRunRdy;
	struct tyTagDTMagToAGV tyDTMagToAGV;
} tyAGVOut1;

typedef struct tyAGV1
{	struct tyAGVIn1 In;
	struct tyAGVOut1 Out;
} tyAGV1;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/AGVCom/AGV.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704162565_1_ */

