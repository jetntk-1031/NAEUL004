/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_105_
#define _BUR_1703660020_105_

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






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/AGVCom/AGV.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_105_ */

