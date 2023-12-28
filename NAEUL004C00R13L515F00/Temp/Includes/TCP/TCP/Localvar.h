/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_332_
#define _BUR_1703660021_332_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct tyTagDTMagToAGV tyDTMagToAGV;
_BUR_LOCAL plcstring a_sMagMcStatus[8][3];
_BUR_LOCAL enum eTCPAGVStatus eMagAGVStatus[8];
_BUR_LOCAL plcstring sData[8][31];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyTCPAGVDetail tyAGVCurr[2];
#else
/* Variable tyAGVCurr not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL signed short iSeparator;
_BUR_LOCAL signed short i;
_BUR_LOCAL plcbit bSingleMagLine;
_BUR_LOCAL enum eFBStatus eSvrStatus;
_BUR_LOCAL enum eTCPSvrAction eSvrStat;
_BUR_LOCAL plcbit bReconnect;
_BUR_LOCAL unsigned short uiAllwClntPort;
_BUR_LOCAL plcstring sAllwClntIP[16];
_BUR_LOCAL plcbit bFltrPort;
_BUR_LOCAL plcbit bFltrIP;
_BUR_LOCAL unsigned long udiSvrIdent;
_BUR_LOCAL plcstring sSTANDBYCompleted[81];
_BUR_LOCAL plcstring sSTANDBYReached[81];
_BUR_LOCAL plcstring sEUL3Completed[81];
_BUR_LOCAL plcstring sEUL3Reached[81];
_BUR_LOCAL plcstring sEUL2Completed[81];
_BUR_LOCAL plcstring sEUL2Reached[81];
_BUR_LOCAL plcstring sEUL1Completed[81];
_BUR_LOCAL plcstring sEUL1Reached[81];
_BUR_LOCAL plcstring sELD3Completed[81];
_BUR_LOCAL plcstring sELD3Reached[81];
_BUR_LOCAL plcstring sELD2Completed[81];
_BUR_LOCAL plcstring sELD2Reached[81];
_BUR_LOCAL plcstring sELD1Completed[81];
_BUR_LOCAL plcstring sELD1Reached[81];
_BUR_LOCAL struct tyAIVMsgRcvDat tyAIVMsgRcvData;
_BUR_LOCAL struct TON fbCheckAliveTimer;
_BUR_LOCAL struct TON fbSendAliveTimer;
_BUR_LOCAL plcbit bWaitAliveResponse;
_BUR_LOCAL plcbit bCheckAliveTimeout;
_BUR_LOCAL plcbit bLoginSuccess;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyTCPHistoryMsg a_tyHistoryList[8];
#else
/* Variable a_tyHistoryList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL signed short iHistoryCntr;
_BUR_LOCAL signed short iWriteLogStep;
_BUR_LOCAL struct fbFileOldDel fbFileOldDel1;
_BUR_LOCAL struct fbFileFullAppend fbFileAppend1;
_BUR_LOCAL struct fbDirCreate fbDirCreate2;
_BUR_LOCAL struct fbDirCreate fbDirCreate1;
_BUR_LOCAL plcdt dtCurrDTTemp;
_BUR_LOCAL plcstring sDT[81];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcstring a_sLogList[10][65536];
#else
/* Variable a_sLogList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL unsigned long udiWriteLogCntr;
_BUR_LOCAL unsigned long udiLogCntr;
_BUR_LOCAL struct RF_TRIG fbTrig3;
_BUR_LOCAL struct RF_TRIG fbTrig2;
_BUR_LOCAL struct RF_TRIG fbTrig1;
_BUR_LOCAL struct RF_TRIG fbTrig;
_BUR_LOCAL struct fbTCPClose fbClose;
_BUR_LOCAL struct fbTCPSnd fbSend;
_BUR_LOCAL struct fbTCPRcv fbRcv;
_BUR_LOCAL struct fbTCPSvrListenFltr fbTCPSvrSvrListenFltr;
_BUR_LOCAL struct fbTCPCreateSvr fbTCPSvrCreateSvr;
_BUR_LOCAL struct fbTCPClntConnect fbClntConnect;
_BUR_LOCAL plcstring sRcv[65536];
_BUR_LOCAL plcstring sSnd[65536];
_BUR_LOCAL plcstring sSvrMsgRcv[65536];
_BUR_LOCAL plcstring sMsgRcv[65536];
_BUR_LOCAL plcstring sMsgSnd[65536];
_BUR_LOCAL plcbit bMsgRcv;
_BUR_LOCAL plcbit bMsgSnd;
_BUR_LOCAL plcstring a_sMsgSend[51][65536];
_BUR_LOCAL plcstring sDecodeMsg[65536];
_BUR_LOCAL plcstring sExtractBatteryLvl[31];
_BUR_LOCAL float rCurrentBatteryLvl;
_BUR_LOCAL signed short iFindBatteryLvl;
_BUR_LOCAL unsigned long udiSndMsgLen;
_BUR_LOCAL unsigned long udiMsgSendBffr;
_BUR_LOCAL unsigned long udiTCPIdent;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bRstState;
_BUR_LOCAL plcbit bRstConnection;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL enum eTCPAction eStatOld;
_BUR_LOCAL enum eTCPClientServer eTCPModel;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL unsigned char usiProjMag;
_BUR_LOCAL unsigned long udiFileKeepDay;
_BUR_LOCAL plcbit bOpsRun;
_BUR_LOCAL plctime tConnTimeOut;
_BUR_LOCAL unsigned long udiAliveIdleTimeInSec;
_BUR_LOCAL unsigned long udiRcvBffrSize;
_BUR_LOCAL unsigned long udiSndBffrSize;
_BUR_LOCAL plcdt dtCurrDT;
_BUR_LOCAL struct DTStructure tyDTStructure;
_BUR_LOCAL plcstring sIPAddr[16];
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL unsigned short uiClientPort;
_BUR_LOCAL unsigned short uiSvrPort;
_BUR_LOCAL plcstring sSvrIP[16];
_BUR_LOCAL plcbit bDBA2;
_BUR_LOCAL plcbit bDSB2;
_BUR_LOCAL plcbit bUBA2;
_BUR_LOCAL plcbit bUSB2;
_BUR_LOCAL plcbit bDBA;
_BUR_LOCAL plcbit bDSB;
_BUR_LOCAL plcbit bUBA;
_BUR_LOCAL plcbit bUSB;
_BUR_LOCAL plcbit bConnected;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[200];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData3;
_BUR_LOCAL struct tyAlmDat tyAlmData2;
_BUR_LOCAL struct tyAlmDat tyAlmData1;
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL unsigned long udiStatus5;
_BUR_LOCAL unsigned long udiStatus4;
_BUR_LOCAL unsigned long udiStatus3;
_BUR_LOCAL unsigned long udiStatus2;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus2;
_BUR_LOCAL enum eFBStatus eStatus1;
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eFBStatus eMainStatus;
_BUR_LOCAL enum eTCPAction eStat;
_BUR_LOCAL enum eTCPAction eAct;
_BUR_LOCAL plcbit bManual;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCP/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/NtFileIO.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTCP/NtTCP.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_332_ */

