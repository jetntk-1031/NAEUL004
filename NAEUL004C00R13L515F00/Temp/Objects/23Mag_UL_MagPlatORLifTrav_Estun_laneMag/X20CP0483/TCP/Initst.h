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

#ifndef __AS__TYPE_eTCPAction
#define __AS__TYPE_eTCPAction
typedef enum eTCPAction
{	TCPActIdle = 0,
	TCPActCreateDir = 1,
	TCPActDeleteOldLog = 2,
} eTCPAction;
#endif

#ifndef __AS__TYPE_eTCPMsgType
#define __AS__TYPE_eTCPMsgType
typedef enum eTCPMsgType
{	MsgNA = 0,
	MsgRcvFromTCP = 1,
	MsgSndToTCP = 2,
} eTCPMsgType;
#endif

#ifndef __AS__TYPE_tyTCPHistoryMsg
#define __AS__TYPE_tyTCPHistoryMsg
typedef struct tyTCPHistoryMsg
{	eTCPMsgType eTCP;
	plcstring sMsg[201];
} tyTCPHistoryMsg;
#endif

#ifndef __AS__TYPE_tyAIVMsgRcvDat
#define __AS__TYPE_tyAIVMsgRcvDat
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
#endif

#ifndef __AS__TYPE_eTCPAGVStatus
#define __AS__TYPE_eTCPAGVStatus
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
	AGV4Available = 43,
} eTCPAGVStatus;
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

_BUR_LOCAL eTCPAction eStat;
_BUR_LOCAL eFBStatus eMainStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL tyAlmDat tyAlmData2;
_BUR_LOCAL tyAlmDat tyAlmData3;
_BUR_LOCAL plcbit bConnected;
_BUR_LOCAL plcbit bUBA;
_BUR_LOCAL plcbit bDSB;
_BUR_LOCAL plcbit bUBA2;
_BUR_LOCAL plcbit bDSB2;
_BUR_LOCAL float rCurrentBatteryLvl;
_BUR_LOCAL plcstring sExtractBatteryLvl[31];
_BUR_LOCAL plcstring sSvrMsgRcv[65536];
_BUR_LOCAL struct tyTCPHistoryMsg a_tyHistoryList[8];
_BUR_LOCAL tyAIVMsgRcvDat tyAIVMsgRcvData;
_BUR_LOCAL eTCPAGVStatus eMagAGVStatus[8];
_GLOBAL unsigned long p_TCPStat;
_GLOBAL unsigned long p_TCPStatus;
_GLOBAL unsigned long p_TCPStatTxt;
_GLOBAL unsigned long p_TCPAlmData;
_GLOBAL unsigned long p_TCPAlmData1;
_GLOBAL unsigned long p_TCPAlmData2;
_GLOBAL unsigned long p_TCPAlmData3;
_GLOBAL unsigned long p_TCPAIVBatteryLvl;
_GLOBAL unsigned long p_TCPAIVCurrentBatteryLvl;
_GLOBAL unsigned long p_TCPConnected;
_GLOBAL unsigned long p_TCPHistoryList;
_GLOBAL unsigned long p_TCPMsgRcvData;
_GLOBAL unsigned long p_TCPSvrMsgRcvData;
_GLOBAL unsigned long p_TCPSvrAGVStatus1;
_GLOBAL unsigned long p_TCPSvrAGVStatus2;
_GLOBAL unsigned long p_TCPSvrAGVStatus3;
_GLOBAL unsigned long p_TCPSvrAGVStatus4;
_GLOBAL unsigned long p_TCPSvrUBA;
_GLOBAL unsigned long p_TCPSvrUBA2;
_GLOBAL unsigned long p_TCPSvrDSB;
_GLOBAL unsigned long p_TCPSvrDSB2;
