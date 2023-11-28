#ifndef __AS__TYPE_
#define __AS__TYPE_
static signed long __AS__STRING_CMP(char* pstr1, char* pstr2);
static unsigned long __AS__MEMCPY(unsigned long pDest, unsigned long pSrc, unsigned long length);
static unsigned long __AS__MEMSET(unsigned long pDest, unsigned char value, unsigned long length);
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

#ifndef __AS__TYPE_eTCPSvrAction
#define __AS__TYPE_eTCPSvrAction
typedef enum eTCPSvrAction
{	SvrActIdle = 0,
	SvrActRead = 1,
	SvrActRead1 = 2,
	SvrActWrite = 3,
} eTCPSvrAction;
#endif

#ifndef __AS__TYPE_eTCPClientServer
#define __AS__TYPE_eTCPClientServer
typedef enum eTCPClientServer
{	Client = 0,
	Server = 1,
} eTCPClientServer;
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

#ifndef __AS__TYPE_tyTCPAGVDetail
#define __AS__TYPE_tyTCPAGVDetail
typedef struct tyTCPAGVDetail
{	plcstring sAGVMag[11];
	eTCPAGVStatus eAGVStatus;
	unsigned char usiAGVReq;
} tyTCPAGVDetail;
#endif

#ifndef __AS__TYPE_DTStructure
#define __AS__TYPE_DTStructure
typedef struct DTStructure
{	unsigned short year;
	unsigned char month;
	unsigned char day;
	unsigned char wday;
	unsigned char hour;
	unsigned char minute;
	unsigned char second;
	unsigned short millisec;
	unsigned short microsec;
} DTStructure;
#endif

#ifndef __AS__TYPE_fiDIR_READ_DATA
#define __AS__TYPE_fiDIR_READ_DATA
typedef struct fiDIR_READ_DATA
{	unsigned char Filename[260];
	plcdt Date;
	unsigned long Filelength;
} fiDIR_READ_DATA;
#endif

#ifndef __AS__TYPE_fiFILE_INFO
#define __AS__TYPE_fiFILE_INFO
typedef struct fiFILE_INFO
{	unsigned long size;
	unsigned long linkCnt;
	plcdt accTime;
	plcdt modTime;
	plcdt chgTime;
	unsigned long reserved[21];
} fiFILE_INFO;
#endif

struct DirInfo
{	unsigned long pDevice;
	unsigned long pPath;
	unsigned short status;
	unsigned long dirnum;
	unsigned long filenum;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void DirInfo(struct DirInfo* inst);
#ifndef __AS__TYPE_tyDirInfoInternal
#define __AS__TYPE_tyDirInfoInternal
typedef struct tyDirInfoInternal
{	struct DirInfo fbDirInfo;
} tyDirInfoInternal;
#endif

struct fbDirInfo
{	plcstring sDevice[81];
	plcstring sPath[81];
	unsigned long udiSubDirNum;
	unsigned long udiFileNum;
	unsigned long udiStatus;
	tyDirInfoInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbDirInfo(struct fbDirInfo* inst);
struct DirRead
{	unsigned long pDevice;
	unsigned long pPath;
	unsigned long entry;
	unsigned char option;
	unsigned long pData;
	unsigned long data_len;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void DirRead(struct DirRead* inst);
#ifndef __AS__TYPE_tyDirReadInternal
#define __AS__TYPE_tyDirReadInternal
typedef struct tyDirReadInternal
{	struct DirRead fbDirRead;
} tyDirReadInternal;
#endif

struct fbDirRead
{	plcstring sDevice[81];
	plcstring sPath[81];
	unsigned long udiEntry;
	unsigned char usiOption;
	fiDIR_READ_DATA tyDirReadData;
	unsigned long udiStatus;
	tyDirReadInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbDirRead(struct fbDirRead* inst);
struct FileDelete
{	unsigned long pDevice;
	unsigned long pName;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileDelete(struct FileDelete* inst);
#ifndef __AS__TYPE_tyFileDeleteInternal
#define __AS__TYPE_tyFileDeleteInternal
typedef struct tyFileDeleteInternal
{	struct FileDelete fbFileDelete;
} tyFileDeleteInternal;
#endif

struct fbFileDelete
{	plcstring sDevice[81];
	plcstring sFile[81];
	unsigned long udiStatus;
	tyFileDeleteInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileDelete(struct fbFileDelete* inst);
#ifndef __AS__TYPE_tyFileOldDelInternal
#define __AS__TYPE_tyFileOldDelInternal
typedef struct tyFileOldDelInternal
{	struct fbDirInfo fbDirInfo;
	struct fbDirRead fbDirRead;
	struct fbFileDelete fbFileDel;
	plcstring sFileNm[261];
	fiDIR_READ_DATA tyfiDIR_READ_DATA;
	unsigned long udiDTNow;
	unsigned long udiFileDT;
	unsigned long udiFileKeep;
	unsigned long udiFileNum;
	unsigned long udiKeywordLen;
	unsigned char usiStep;
} tyFileOldDelInternal;
#endif

struct FileClose
{	unsigned long ident;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileClose(struct FileClose* inst);
#ifndef __AS__TYPE_tyFileCloseInternal
#define __AS__TYPE_tyFileCloseInternal
typedef struct tyFileCloseInternal
{	struct FileClose fbFileClose;
} tyFileCloseInternal;
#endif

struct fbFileClose
{	unsigned long udiIdent;
	unsigned long udiStatus;
	tyFileCloseInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileClose(struct fbFileClose* inst);
struct FileCreate
{	unsigned long pDevice;
	unsigned long pFile;
	unsigned short status;
	unsigned long ident;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileCreate(struct FileCreate* inst);
struct FileOpen
{	unsigned long pDevice;
	unsigned long pFile;
	unsigned char mode;
	unsigned short status;
	unsigned long ident;
	unsigned long filelen;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileOpen(struct FileOpen* inst);
#ifndef __AS__TYPE_tyFileOpenCreateInternal
#define __AS__TYPE_tyFileOpenCreateInternal
typedef struct tyFileOpenCreateInternal
{	struct FileCreate fbFileCreate;
	struct FileOpen fbFileOpen;
	unsigned char usiStep;
} tyFileOpenCreateInternal;
#endif

struct fbFileOpenCreate
{	plcstring sDevice[81];
	plcstring sFile[81];
	unsigned char usiMode;
	unsigned long udiIdent;
	unsigned long udiStatus;
	tyFileOpenCreateInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileOpenCreate(struct fbFileOpenCreate* inst);
struct FileInfo
{	unsigned long pDevice;
	unsigned long pName;
	unsigned long pInfo;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileInfo(struct FileInfo* inst);
#ifndef __AS__TYPE_tyFileInfoInternal
#define __AS__TYPE_tyFileInfoInternal
typedef struct tyFileInfoInternal
{	struct FileInfo fbFileInfo;
} tyFileInfoInternal;
#endif

struct fbFileInfo
{	plcstring sDevice[81];
	plcstring sFile[81];
	fiFILE_INFO tyFileInfo;
	unsigned long udiStatus;
	tyFileInfoInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileInfo(struct fbFileInfo* inst);
struct FileWriteEx
{	unsigned long ident;
	unsigned long offset;
	unsigned long pSrc;
	unsigned long len;
	unsigned long option;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileWriteEx(struct FileWriteEx* inst);
#ifndef __AS__TYPE_tyFileWriteInternal
#define __AS__TYPE_tyFileWriteInternal
typedef struct tyFileWriteInternal
{	struct FileWriteEx fbFileWrite;
} tyFileWriteInternal;
#endif

struct fbFileWrite
{	unsigned long udiIdent;
	unsigned long udiOffset;
	unsigned long p_Src;
	unsigned long udiLen;
	unsigned long udiOption;
	unsigned long udiStatus;
	tyFileWriteInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileWrite(struct fbFileWrite* inst);
#ifndef __AS__TYPE_tyFileFullAppendInternal
#define __AS__TYPE_tyFileFullAppendInternal
typedef struct tyFileFullAppendInternal
{	struct fbFileClose fbFileClose;
	struct fbFileOpenCreate fbFileOpenCreate;
	struct fbFileInfo fbFileInfo;
	struct fbFileWrite fbFileWrite;
	fiFILE_INFO tyFileInfo;
	unsigned long udiIdent;
	unsigned char usiStep;
} tyFileFullAppendInternal;
#endif

struct DirCreate
{	unsigned long pDevice;
	unsigned long pName;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void DirCreate(struct DirCreate* inst);
#ifndef __AS__TYPE_tyDirCreateInternal
#define __AS__TYPE_tyDirCreateInternal
typedef struct tyDirCreateInternal
{	struct DirCreate fbDirCreate;
} tyDirCreateInternal;
#endif

#ifndef __AS__TYPE_eTCPClntConnectStat
#define __AS__TYPE_eTCPClntConnectStat
typedef enum eTCPClntConnectStat
{	TCPClntConnectStatOpen = 0,
	TCPClntConnectStatSetup = 1,
	TCPClntConnectStatConnect = 2,
	TCPClntConnectStatClose = 3,
} eTCPClntConnectStat;
#endif

#ifndef __AS__TYPE_eTCPCreateSvrStat
#define __AS__TYPE_eTCPCreateSvrStat
typedef enum eTCPCreateSvrStat
{	TCPCreateSvrStatOpen = 0,
	TCPCreateSvrStatSetup = 1,
	TCPCreateSvrStatClose = 2,
} eTCPCreateSvrStat;
#endif

#ifndef __AS__TYPE_eTCPSvrListenStat
#define __AS__TYPE_eTCPSvrListenStat
typedef enum eTCPSvrListenStat
{	TCPSvrListenStatListen = 0,
	TCPSvrListenStatClose = 1,
} eTCPSvrListenStat;
#endif

struct TcpOpen
{	unsigned long pIfAddr;
	unsigned short port;
	unsigned long options;
	unsigned short status;
	unsigned long ident;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void TcpOpen(struct TcpOpen* inst);
#ifndef __AS__TYPE_tyTCPOpenPortInternal
#define __AS__TYPE_tyTCPOpenPortInternal
typedef struct tyTCPOpenPortInternal
{	struct TcpOpen fbTCPOpen;
} tyTCPOpenPortInternal;
#endif

struct fbTCPOpenPort
{	plcstring sIP[16];
	unsigned short uiPort;
	unsigned long udiTCPIdent;
	unsigned long udiStatus;
	tyTCPOpenPortInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPOpenPort(struct fbTCPOpenPort* inst);
struct TcpIoctl
{	unsigned long ident;
	unsigned long ioctl;
	unsigned long pData;
	unsigned long datalen;
	unsigned short status;
	unsigned long outlen;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void TcpIoctl(struct TcpIoctl* inst);
#ifndef __AS__TYPE_tyTCPIoCtlSetInternal
#define __AS__TYPE_tyTCPIoCtlSetInternal
typedef struct tyTCPIoCtlSetInternal
{	struct TcpIoctl fbTCPIoCtl;
} tyTCPIoCtlSetInternal;
#endif

struct fbTCPSndBffrSet
{	unsigned long udiTCPIdent;
	unsigned long udiSndBffrSize;
	unsigned long udiStatus;
	tyTCPIoCtlSetInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPSndBffrSet(struct fbTCPSndBffrSet* inst);
struct fbTCPRcvBffrSet
{	unsigned long udiTCPIdent;
	unsigned long udiRcvBffrSize;
	unsigned long udiStatus;
	tyTCPIoCtlSetInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPRcvBffrSet(struct fbTCPRcvBffrSet* inst);
struct fbTCPAliveEnSet
{	unsigned long udiTCPIdent;
	unsigned long udiEn;
	unsigned long udiStatus;
	tyTCPIoCtlSetInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPAliveEnSet(struct fbTCPAliveEnSet* inst);
struct fbTCPAliveCntSet
{	unsigned long udiTCPIdent;
	unsigned long udiCnt;
	unsigned long udiStatus;
	tyTCPIoCtlSetInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPAliveCntSet(struct fbTCPAliveCntSet* inst);
struct fbTCPAliveIdleSet
{	unsigned long udiTCPIdent;
	unsigned long udiIdleTmInSec;
	unsigned long udiStatus;
	tyTCPIoCtlSetInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPAliveIdleSet(struct fbTCPAliveIdleSet* inst);
struct fbTCPAliveIntvlSet
{	unsigned long udiTCPIdent;
	unsigned long udiIntvlTmInSec;
	unsigned long udiStatus;
	tyTCPIoCtlSetInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPAliveIntvlSet(struct fbTCPAliveIntvlSet* inst);
#ifndef __AS__TYPE_tyTCPKeepAliveSetInternal
#define __AS__TYPE_tyTCPKeepAliveSetInternal
typedef struct tyTCPKeepAliveSetInternal
{	struct fbTCPAliveEnSet fbTCPAliveEnSet;
	struct fbTCPAliveCntSet fbTCPAliveCntSet;
	struct fbTCPAliveIdleSet fbTCPAliveIdleSet;
	struct fbTCPAliveIntvlSet fbTCPAliveIntvlSet;
	unsigned char usiStep;
} tyTCPKeepAliveSetInternal;
#endif

struct fbTCPKeepAliveSet
{	unsigned long udiTCPIdent;
	unsigned long udiEn;
	unsigned long udiCnt;
	unsigned long udiIdleTmInSec;
	unsigned long udiIntvlTmInSec;
	unsigned long udiStatus;
	tyTCPKeepAliveSetInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPKeepAliveSet(struct fbTCPKeepAliveSet* inst);
struct fbTCPListenNoWaitingSet
{	unsigned long udiTCPIdent;
	unsigned long udiStatus;
	tyTCPIoCtlSetInternal tyInternal;
	plcbit bEn;
	plcbit bEnNoWaiting;
};
_BUR_PUBLIC void fbTCPListenNoWaitingSet(struct fbTCPListenNoWaitingSet* inst);
struct TcpClient
{	unsigned long ident;
	unsigned long pServer;
	unsigned short portserv;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void TcpClient(struct TcpClient* inst);
#ifndef __AS__TYPE_tyTCPConnectInternal
#define __AS__TYPE_tyTCPConnectInternal
typedef struct tyTCPConnectInternal
{	struct TcpClient fbTCPConnect;
} tyTCPConnectInternal;
#endif

struct fbTCPConnect
{	unsigned long udiTCPIdent;
	plcstring sSvrIP[16];
	unsigned short uiSvrPort;
	unsigned long udiStatus;
	tyTCPConnectInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPConnect(struct fbTCPConnect* inst);
struct TcpClose
{	unsigned long ident;
	unsigned long how;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void TcpClose(struct TcpClose* inst);
#ifndef __AS__TYPE_tyTCPCloseInternal
#define __AS__TYPE_tyTCPCloseInternal
typedef struct tyTCPCloseInternal
{	struct TcpClose fbTCPClose;
} tyTCPCloseInternal;
#endif

struct fbTCPClose
{	unsigned long udiTCPIdent;
	unsigned long udiStatus;
	tyTCPCloseInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPClose(struct fbTCPClose* inst);
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
#ifndef __AS__TYPE_tyTCPClntConnectInternal
#define __AS__TYPE_tyTCPClntConnectInternal
typedef struct tyTCPClntConnectInternal
{	eTCPClntConnectStat eStat;
	struct fbTCPOpenPort fbTCPOpenPort;
	struct fbTCPSndBffrSet fbTCPSndBffrSet;
	struct fbTCPRcvBffrSet fbTCPRcvBffrSet;
	struct fbTCPKeepAliveSet fbTCPKeepAliveSet;
	struct fbTCPListenNoWaitingSet fbTCPListenNoWaitingSet;
	struct fbTCPConnect fbTCPConnect;
	struct fbTCPClose fbTCPClose;
	struct TON fbConnectTO;
	unsigned char usiSetupStep;
	unsigned long udiErrStatus;
} tyTCPClntConnectInternal;
#endif

#ifndef __AS__TYPE_tyTCPCreateSvrInternal
#define __AS__TYPE_tyTCPCreateSvrInternal
typedef struct tyTCPCreateSvrInternal
{	eTCPCreateSvrStat eStat;
	struct fbTCPOpenPort fbTCPOpenPort;
	struct fbTCPSndBffrSet fbTCPSndBffrSet;
	struct fbTCPRcvBffrSet fbTCPRcvBffrSet;
	struct fbTCPKeepAliveSet fbTCPKeepAliveSet;
	struct fbTCPListenNoWaitingSet fbTCPListenNoWaitingSet;
	struct fbTCPClose fbTCPClose;
	unsigned char usiSetupStep;
	unsigned long udiErrStatus;
} tyTCPCreateSvrInternal;
#endif

struct TcpServer
{	unsigned long ident;
	unsigned long backlog;
	unsigned long pIpAddr;
	unsigned short status;
	unsigned long identclnt;
	unsigned short portclnt;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void TcpServer(struct TcpServer* inst);
#ifndef __AS__TYPE_tyTCPListenInternal
#define __AS__TYPE_tyTCPListenInternal
typedef struct tyTCPListenInternal
{	struct TcpServer fbTCPListen;
} tyTCPListenInternal;
#endif

struct fbTCPListen
{	unsigned long udiSvrIdent;
	plcstring sConnectedIP[16];
	unsigned short uiConnectedPort;
	unsigned long udiClntIdent;
	unsigned long udiStatus;
	tyTCPListenInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPListen(struct fbTCPListen* inst);
#ifndef __AS__TYPE_tyTCPSvrListenInternal
#define __AS__TYPE_tyTCPSvrListenInternal
typedef struct tyTCPSvrListenInternal
{	eTCPSvrListenStat eStat;
	struct fbTCPListen fbTCPListen;
	struct fbTCPClose fbTCPClose;
	signed long di;
	signed long diFltr;
} tyTCPSvrListenInternal;
#endif

struct TcpSend
{	unsigned long ident;
	unsigned long pData;
	unsigned long datalen;
	unsigned long flags;
	unsigned short status;
	unsigned long sentlen;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void TcpSend(struct TcpSend* inst);
#ifndef __AS__TYPE_tyTCPSndInternal
#define __AS__TYPE_tyTCPSndInternal
typedef struct tyTCPSndInternal
{	struct TcpSend fbTCPSnd;
	unsigned char usiRetryCnt;
} tyTCPSndInternal;
#endif

struct TcpRecv
{	unsigned long ident;
	unsigned long pData;
	unsigned long datamax;
	unsigned long flags;
	unsigned short status;
	unsigned long recvlen;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void TcpRecv(struct TcpRecv* inst);
#ifndef __AS__TYPE_tyTCPRcvInternal
#define __AS__TYPE_tyTCPRcvInternal
typedef struct tyTCPRcvInternal
{	struct TcpRecv fbTCPRcv;
} tyTCPRcvInternal;
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

struct RF_TRIG
{	plcbit CLK;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void RF_TRIG(struct RF_TRIG* inst);
_BUR_PUBLIC signed short LEN(plcstring IN[32768]);
_BUR_PUBLIC plcstring* LEFT(plcstring IN[32768], signed short L);
_BUR_PUBLIC plcstring* RIGHT(plcstring IN[32768], signed short L);
_BUR_PUBLIC plcstring* MID(plcstring IN[32768], signed short L, signed short P);
_BUR_PUBLIC plcstring* CONCAT(plcstring IN1[32768], plcstring IN2[32768]);
_BUR_PUBLIC plcstring* DELETE(plcstring IN[32768], signed short L, signed short P);
_BUR_PUBLIC signed short FIND(plcstring IN1[32768], plcstring IN2[32768]);
_BUR_PUBLIC unsigned long memset(unsigned long pDest, unsigned char value, unsigned long length);
_BUR_PUBLIC unsigned long memcpy(unsigned long pDest, unsigned long pSrc, unsigned long length);
_BUR_PUBLIC unsigned long memmove(unsigned long pDest, unsigned long pSrc, unsigned long length);
_BUR_PUBLIC unsigned char str2usint(plcstring IN[81]);
_BUR_PUBLIC float str2real(plcstring IN[81]);
struct fbFileOldDel
{	plcstring sDevice[81];
	plcstring sPath[81];
	plcstring sKeyword[81];
	plcdt dtDTNow;
	unsigned long udiFileKeepDay;
	unsigned long udiStatus;
	tyFileOldDelInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileOldDel(struct fbFileOldDel* inst);
struct fbFileFullAppend
{	plcstring sDevice[81];
	plcstring sFile[81];
	unsigned long p_Src;
	unsigned long udiLen;
	unsigned long udiStatus;
	tyFileFullAppendInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileFullAppend(struct fbFileFullAppend* inst);
struct fbDirCreate
{	plcstring sDevice[81];
	plcstring sDirName[81];
	unsigned long udiStatus;
	tyDirCreateInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbDirCreate(struct fbDirCreate* inst);
_BUR_PUBLIC plcbit fLogDTConvert(plcstring p_sDTOut[81], plcdt dtIn);
struct fbTCPClntConnect
{	plcstring sClntIP[16];
	plcstring sSvrIP[16];
	unsigned short uiClntPort;
	unsigned short uiSvrPort;
	unsigned long udiSndBffrSize;
	unsigned long udiRcvBffrSize;
	unsigned long udiAliveIdleTmInSec;
	plctime tConnectTO;
	unsigned long udiTCPIdent;
	unsigned long udiStatus;
	unsigned long udiErrorStatus;
	tyTCPClntConnectInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPClntConnect(struct fbTCPClntConnect* inst);
struct fbTCPSvrListenFltr
{	unsigned long udiSvrIdent;
	plcstring a_sConfigIP[50][16];
	unsigned short a_uiConfigPort[50];
	plcstring sConnectedIP[16];
	unsigned short uiConnectedPort;
	unsigned long udiClntIdent;
	signed long diConnectedIdx;
	unsigned long udiStatus;
	tyTCPSvrListenInternal tyInternal;
	plcbit bEn;
	plcbit bFltrIP;
	plcbit bFltrPort;
	plcbit bRejected;
};
_BUR_PUBLIC void fbTCPSvrListenFltr(struct fbTCPSvrListenFltr* inst);
struct fbTCPCreateSvr
{	plcstring sSvrIP[16];
	unsigned short uiSvrPort;
	unsigned long udiSndBffrSize;
	unsigned long udiRcvBffrSize;
	unsigned long udiAliveIdleTmInSec;
	unsigned long udiTCPIdent;
	unsigned long udiStatus;
	tyTCPCreateSvrInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPCreateSvr(struct fbTCPCreateSvr* inst);
struct fbTCPSnd
{	unsigned long udiTCPIdent;
	unsigned long udiSndSize;
	unsigned long p_BffrDest;
	unsigned long udiStatus;
	tyTCPSndInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPSnd(struct fbTCPSnd* inst);
struct fbTCPRcv
{	unsigned long udiTCPIdent;
	unsigned long udiBffrSize;
	unsigned long p_BffrDest;
	unsigned long udiDataSizeRcv;
	unsigned long udiStatus;
	tyTCPRcvInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbTCPRcv(struct fbTCPRcv* inst);
_BUR_LOCAL eMcAGVCommProtocol(* p_eLinkAGVComProtocol);
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL eTCPAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL plcstring(* p_sSvrIP)[16];
_BUR_LOCAL unsigned short(* p_uiSvrPort);
_BUR_LOCAL unsigned short(* p_uiClientPort);
_BUR_LOCAL plcstring(* p_sMsgSnd)[65536];
_BUR_LOCAL plcstring(* p_sIPAddr)[16];
_BUR_LOCAL struct DTStructure(* p_tyDTStructure);
_BUR_LOCAL plcdt(* p_dtCurrDT);
_BUR_LOCAL eTCPClientServer(* p_eTCPModel);
_BUR_LOCAL plcbit(* p_bFltrIP);
_BUR_LOCAL plcbit(* p_bFltrPort);
_BUR_LOCAL plcstring(* p_sAllwClntIP)[16];
_BUR_LOCAL unsigned short(* p_uiAllwClntPort);
_BUR_LOCAL plcbit(* p_bReconnect);
_BUR_LOCAL unsigned long(* p_udiSndBffrSize);
_BUR_LOCAL unsigned long(* p_udiRcvBffrSize);
_BUR_LOCAL unsigned long(* p_udiAliveIdleTimeInSec);
_BUR_LOCAL plctime(* p_tConnTimeOut);
_BUR_LOCAL plcbit(* p_bOpsRun);
_BUR_LOCAL unsigned char(* p_usiProjMag);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL unsigned long(* p_udiFileKeepDay);
_BUR_LOCAL struct tyTagDTMagToAGV(* p_tyDTMagToAGV);
_BUR_LOCAL plcbit(* p_bUSB);
_BUR_LOCAL plcbit(* p_bUSB2);
_BUR_LOCAL plcbit(* p_bDBA);
_BUR_LOCAL plcbit(* p_bDBA2);
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL eTCPAction eAct;
_BUR_LOCAL eTCPAction eStat;
_BUR_LOCAL eFBStatus eMainStatus;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL eFBStatus eStatus1;
_BUR_LOCAL eFBStatus eStatus2;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL unsigned long udiStatus2;
_BUR_LOCAL unsigned long udiStatus3;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyAlmDat tyAlmData1;
_BUR_LOCAL tyAlmDat tyAlmData2;
_BUR_LOCAL tyAlmDat tyAlmData3;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[200];
_BUR_LOCAL plcbit bConnected;
_BUR_LOCAL plcbit bUSB;
_BUR_LOCAL plcbit bUBA;
_BUR_LOCAL plcbit bDSB;
_BUR_LOCAL plcbit bDBA;
_BUR_LOCAL plcbit bUSB2;
_BUR_LOCAL plcbit bUBA2;
_BUR_LOCAL plcbit bDSB2;
_BUR_LOCAL plcbit bDBA2;
_BUR_LOCAL plcstring sSvrIP[16];
_BUR_LOCAL unsigned short uiSvrPort;
_BUR_LOCAL unsigned short uiClientPort;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcstring sIPAddr[16];
_BUR_LOCAL DTStructure tyDTStructure;
_BUR_LOCAL plcdt dtCurrDT;
_BUR_LOCAL unsigned long udiSndBffrSize;
_BUR_LOCAL unsigned long udiRcvBffrSize;
_BUR_LOCAL unsigned long udiAliveIdleTimeInSec;
_BUR_LOCAL plctime tConnTimeOut;
_BUR_LOCAL plcbit bOpsRun;
_BUR_LOCAL unsigned long udiFileKeepDay;
_BUR_LOCAL unsigned char usiProjMag;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL eTCPClientServer eTCPModel;
_BUR_LOCAL eTCPAction eStatOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRstConnection;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL unsigned long udiTCPIdent;
_BUR_LOCAL unsigned long udiMsgSendBffr;
_BUR_LOCAL unsigned long udiSndMsgLen;
_BUR_LOCAL signed short iFindBatteryLvl;
_BUR_LOCAL float rCurrentBatteryLvl;
_BUR_LOCAL plcstring sExtractBatteryLvl[31];
_BUR_LOCAL plcstring sDecodeMsg[65536];
_BUR_LOCAL plcstring a_sMsgSend[51][65536];
_BUR_LOCAL plcbit bMsgSnd;
_BUR_LOCAL plcbit bMsgRcv;
_BUR_LOCAL plcstring sMsgSnd[65536];
_BUR_LOCAL plcstring sMsgRcv[65536];
_BUR_LOCAL plcstring sSvrMsgRcv[65536];
_BUR_LOCAL plcstring sSnd[65536];
_BUR_LOCAL plcstring sRcv[65536];
_BUR_LOCAL struct fbTCPClntConnect fbClntConnect;
_BUR_LOCAL struct fbTCPCreateSvr fbTCPSvrCreateSvr;
_BUR_LOCAL struct fbTCPSvrListenFltr fbTCPSvrSvrListenFltr;
_BUR_LOCAL struct fbTCPRcv fbRcv;
_BUR_LOCAL struct fbTCPSnd fbSend;
_BUR_LOCAL struct fbTCPClose fbClose;
_BUR_LOCAL struct RF_TRIG fbTrig;
_BUR_LOCAL struct RF_TRIG fbTrig1;
_BUR_LOCAL struct RF_TRIG fbTrig2;
_BUR_LOCAL struct RF_TRIG fbTrig3;
_BUR_LOCAL unsigned long udiLogCntr;
_BUR_LOCAL plcstring a_sLogList[10][65536];
_BUR_LOCAL plcstring sDT[81];
_BUR_LOCAL struct fbDirCreate fbDirCreate1;
_BUR_LOCAL struct fbDirCreate fbDirCreate2;
_BUR_LOCAL struct fbFileFullAppend fbFileAppend1;
_BUR_LOCAL struct fbFileOldDel fbFileOldDel1;
_BUR_LOCAL signed short iWriteLogStep;
_BUR_LOCAL signed short iHistoryCntr;
_BUR_LOCAL struct tyTCPHistoryMsg a_tyHistoryList[8];
_BUR_LOCAL plcbit bLoginSuccess;
_BUR_LOCAL plcbit bCheckAliveTimeout;
_BUR_LOCAL plcbit bWaitAliveResponse;
_BUR_LOCAL struct TON fbSendAliveTimer;
_BUR_LOCAL struct TON fbCheckAliveTimer;
_BUR_LOCAL tyAIVMsgRcvDat tyAIVMsgRcvData;
_BUR_LOCAL plcstring sELD1Reached[81];
_BUR_LOCAL plcstring sELD1Completed[81];
_BUR_LOCAL plcstring sELD2Reached[81];
_BUR_LOCAL plcstring sELD2Completed[81];
_BUR_LOCAL plcstring sELD3Reached[81];
_BUR_LOCAL plcstring sELD3Completed[81];
_BUR_LOCAL plcstring sEUL1Reached[81];
_BUR_LOCAL plcstring sEUL1Completed[81];
_BUR_LOCAL plcstring sEUL2Reached[81];
_BUR_LOCAL plcstring sEUL2Completed[81];
_BUR_LOCAL plcstring sEUL3Reached[81];
_BUR_LOCAL plcstring sEUL3Completed[81];
_BUR_LOCAL plcstring sSTANDBYReached[81];
_BUR_LOCAL plcstring sSTANDBYCompleted[81];
_BUR_LOCAL unsigned long udiSvrIdent;
_BUR_LOCAL plcbit bFltrIP;
_BUR_LOCAL plcbit bFltrPort;
_BUR_LOCAL plcstring sAllwClntIP[16];
_BUR_LOCAL unsigned short uiAllwClntPort;
_BUR_LOCAL plcbit bReconnect;
_BUR_LOCAL eTCPSvrAction eSvrStat;
_BUR_LOCAL eFBStatus eSvrStatus;
_BUR_LOCAL plcbit bSingleMagLine;
_BUR_LOCAL signed short i;
_BUR_LOCAL signed short iSeparator;
_BUR_LOCAL struct tyTCPAGVDetail tyAGVCurr[2];
_BUR_LOCAL plcstring sData[8][31];
_BUR_LOCAL eTCPAGVStatus eMagAGVStatus[8];
_BUR_LOCAL plcstring a_sMagMcStatus[8][3];
_BUR_LOCAL tyTagDTMagToAGV tyDTMagToAGV;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL unsigned long p_TimeCurrDT;
_GLOBAL unsigned long p_TimeCurrDTStruct;
_GLOBAL unsigned long p_HWInfoIPAddr;
_GLOBAL plcstring g_sTCPProgNm[16];
_GLOBAL unsigned long p_RstErrReset;
_GLOBAL unsigned long p_McParamAGVComProtocol;
_GLOBAL unsigned long p_McParamTCPSvrPort;
_GLOBAL unsigned long p_NtParamProjMag;
_GLOBAL unsigned long p_OpsRun;
_GLOBAL unsigned long p_USSOT1USB;
_GLOBAL unsigned long p_DSSOT1DBA;
_GLOBAL unsigned long p_USSOT2USB;
_GLOBAL unsigned long p_DSSOT2DBA;
_GLOBAL signed long c_diTCPClntNum;
_LOCAL plcbit Edge0000600000;
_LOCAL plcbit Edge0000600001;
_LOCAL plcbit Edge0000600002;
_LOCAL plcbit Edge0000600003;
_LOCAL plcbit Edge0000200000;
_LOCAL plcbit Edge0000300000;
_LOCAL plcbit Edge0000400000;
static void __AS__Action__Act_InitGlobal(void);
static void __AS__Action__Act_LinkAction(void);
static void __AS__Action__Act_LinkEn(void);
static void __AS__Action__Act_Link(void);
static void __AS__Action__Act_RstErr(void);
static void __AS__Action__Act_InitLocal(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Action(void);
static void __AS__Action__Act_Main(void);
static void __AS__Action__Act_Background(void);
static void __AS__Action__Act_Background_ChkAlive(void);
static void __AS__Action__Act_Background_TCPConnect(void);
static void __AS__Action__Act_Background_TCPProcess(void);
static void __AS__Action__Act_Background_TCPRcv(void);
static void __AS__Action__Act_Background_TCPSend(void);
static void __AS__Action__Act_Background_TCPClose(void);
static void __AS__Action__Act_Background_Stop(void);
static void __AS__Action__Act_TCPSvr(void);
static void __AS__Action__Act_TCPSvrProcess(void);
static void __AS__Action__Act_Main_Disable(void);
static void __AS__Action__Act_CombineErr(void);
static void __AS__Action__Act_Alarm(void);
static void __AS__Action__Act_Alarm1(void);
static void __AS__Action__Act_Alarm2(void);
static void __AS__Action__Act_Alarm3(void);
