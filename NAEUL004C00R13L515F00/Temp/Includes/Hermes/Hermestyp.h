/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136544_113_
#define _BUR_1701136544_113_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eHermesAction
{	HermesActIdle,
	HermesActBGStartRun,
	HermesActBGStopRun,
	HermesActDeleteOldLog,
	HermesActCreateDir,
	HermesActWriteRetain,
	HermesActWriteRetainLane1,
	HermesActWriteRetainLane2,
	HermesActWriteRetainLane3,
	HermesActWriteRetainLane4,
	HermesActWriteRetainSendWO1,
	HermesActWriteRetainSendWO2,
	HermesActWriteRetainSendWO3,
	HermesActReadRetain,
	HermesActReadRetainLane1,
	HermesActReadRetainLane2,
	HermesActReadRetainLane3,
	HermesActReadRetainLane4,
	HermesActReadRetainSendWO1,
	HermesActReadRetainSendWO2,
	HermesActReadRetainSendWO3,
	HermesActWriteConfig,
	HermesActReadConfig
} eHermesAction;

typedef struct tyHermesBrdAvlDat
{	struct tyXMLTableDat a_tyXMLTableDataBrdAvl[201];
	signed short iXMLTableDataBrdAvlTtlIdx;
	plcbit bNewBrdAvl;
} tyHermesBrdAvlDat;

typedef struct tyHermesSvyParam
{	plctime tSndAlive;
	plctime tRcvAlive;
	unsigned short uiSvySvstemPort;
	signed short iLaneID;
	plcstring sMachineId[81];
	plcstring sClientAddress[16];
	unsigned short uiClientPort;
	plcbit bFeatureCheckAliveResponse;
	plcbit bFeatureConfiguration;
	plcbit bFeatureBoardTracking;
	plcbit bFeatureQueryWorkOrderInfo;
	plcbit bFeatureSendWorkOrderInfo;
	plcbit bFeatureReplyWorkOrderInfo;
} tyHermesSvyParam;

typedef struct tyHermesRmtParam
{	unsigned short uiSvrPort;
} tyHermesRmtParam;

typedef struct tyHermesDSParam
{	plctime tSndAlive;
	plctime tRcvAlive;
	plcstring sDownstreamInterfaceId[81];
	unsigned short uiSvrPort;
	signed short iLaneID;
	plcstring sMachineId[81];
	plcstring sClientAddress[16];
	unsigned short uiClientPort;
	plcbit bFeatureCheckAliveResponse;
	plcbit bFeatureBoardForecast;
	plcbit bFeatureSendBoardInfo;
} tyHermesDSParam;

typedef struct tyHermesUSParam
{	plctime tSndAlive;
	plctime tRcvAlive;
	unsigned short uiClntPort;
	signed short iLaneID;
	plcstring sMachineId[81];
	plcstring sHostAddress[16];
	plcstring sUpstreamInterfaceId[81];
	unsigned short uiHostPort;
	plcbit bFeatureCheckAliveResponse;
	plcbit bFeatureBoardForecast;
	plcbit bFeatureQueryBoardInfo;
	plcbit bCmpTypeId;
	plcbit bCmpParam;
	plcbit bOverwrite;
} tyHermesUSParam;

typedef struct tyHermesConfiguration
{	struct tyHermesUSParam a_tyUSParam[4];
	struct tyHermesDSParam a_tyDSParam[4];
	struct tyHermesSvyParam tySvyParam;
} tyHermesConfiguration;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Hermes/Hermes.typ\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/NtLibraries/NtHermes/Constants.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136544_113_ */

