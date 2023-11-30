/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225409_168_
#define _BUR_1701225409_168_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eTCPAction
{	TCPActIdle,
	TCPActCreateDir,
	TCPActDeleteOldLog
} eTCPAction;

typedef enum eTCPMsgType
{	MsgNA,
	MsgRcvFromTCP,
	MsgSndToTCP
} eTCPMsgType;

typedef enum eTCPSvrAction
{	SvrActIdle,
	SvrActRead,
	SvrActRead1,
	SvrActWrite
} eTCPSvrAction;

typedef enum eTCPClientServer
{	Client,
	Server
} eTCPClientServer;

typedef enum eTCPAGVStatus
{	AGVNA = 10,
	AGVError = 11,
	AGVReady = 12,
	AGVAvailable = 13,
	AGV2NA = 20,
	AGV2Error = 21,
	AGV2Ready = 22,
	AGV2Available = 23,
	AGV3NA = 30,
	AGV3Error = 31,
	AGV3Ready = 32,
	AGV3Available = 33,
	AGV4NA = 40,
	AGV4Error = 41,
	AGV4Ready = 42,
	AGV4Available = 43
} eTCPAGVStatus;

typedef enum eTCPAction1
{	TCPActIdle_0,
	TCPActFullWriteRead,
	TCPActFullWriteReadUntilValid,
	TCPActDebug
} eTCPAction1;

typedef struct tyTCPHistoryMsg
{	enum eTCPMsgType eTCP;
	plcstring sMsg[201];
} tyTCPHistoryMsg;

typedef struct tyAIVMsgRcvDat
{	plcbit bEnterPW;
	plcbit bELD1Reached;
	plcbit bELD1Completed;
	plcbit bELD2Reached;
	plcbit bELD2Completed;
	plcbit bELD3Reached;
	plcbit bELD3Completed;
	plcbit bEUL1Reached;
	plcbit bEUL1Completed;
	plcbit bEUL2Reached;
	plcbit bEUL2Completed;
	plcbit bEUL3Reached;
	plcbit bEUL3Completed;
	plcbit bStandbyReached;
	plcbit bStandbyCompleted;
	plcbit bLocalizeCompleted;
	plcbit bMoveBackCompleted;
	plcbit bLoginSuccess;
	plcbit bOneLineStatus;
} tyAIVMsgRcvDat;

typedef struct tyTCPAGVDetail
{	plcstring sAGVMag[11];
	enum eTCPAGVStatus eAGVStatus;
	unsigned char usiAGVReq;
} tyTCPAGVDetail;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCP.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225409_168_ */

