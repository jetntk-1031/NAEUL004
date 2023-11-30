/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225410_374_
#define _BUR_1701225410_374_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct TON fbDeleteLogTmr;
_BUR_LOCAL struct TON fbDlyTmr;
_BUR_LOCAL plcbit bReplyMcRdyId;
_BUR_LOCAL struct TON fbUSBlkTm;
_BUR_LOCAL struct TON fbDelayTm;
_BUR_LOCAL struct TON fbCheckBATimer;
_BUR_LOCAL struct TON fbSendTm;
_BUR_LOCAL plcbit bProcessBoardForecastId;
_BUR_LOCAL plcbit bFeatureBoardForecast;
_BUR_LOCAL unsigned char usiAccDataStep;
_BUR_LOCAL unsigned char usiBFAccDataStep;
_BUR_LOCAL signed short i;
_BUR_LOCAL signed short iWriteLogStep;
_BUR_LOCAL struct fbFileOldDel fbFileOldDel1;
_BUR_LOCAL struct fbFileFullAppend fbFileAppend1;
_BUR_LOCAL plcdt dtCurrDTTemp;
_BUR_LOCAL plcstring sDT[81];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcstring a_sLogList[10][65536];
#else
/* Variable a_sLogList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL unsigned long udiWriteLogCntr;
_BUR_LOCAL unsigned long udiLogCntr;
_BUR_LOCAL plcbit bManuallInsertLastZone;
_BUR_LOCAL plcbit bBFBlkUS;
_BUR_LOCAL plcbit bBABlkUS;
_BUR_LOCAL plcbit bBlkUS;
_BUR_LOCAL struct tyHermesUSParam tyParamOld;
_BUR_LOCAL enum eHermesAction eStatOld;
_BUR_LOCAL struct fbHermesGetSlt fbGetSlt;
_BUR_LOCAL struct fbHermesSequenceTO fbSequenceTO;
_BUR_LOCAL struct fbHermesSequenceUS fbSequenceUS;
_BUR_LOCAL struct fbHermesCheckAliveRcvPing fbCheckAliveRcvPing;
_BUR_LOCAL struct fbHermesCheckAliveSendPing fbCheckAliveSendPing;
_BUR_LOCAL struct fbHermesCheckAlive fbCheckAlive;
_BUR_LOCAL struct fbHermesParseXMLTable fbParseXMLTable;
_BUR_LOCAL struct fbTCPClose fbClose;
_BUR_LOCAL struct fbTCPSnd fbSend;
_BUR_LOCAL struct fbTCPRcv fbRcv;
_BUR_LOCAL struct fbTCPClntConnect fbClntConnect;
_BUR_LOCAL struct tyHermesSendBoardInfo tySendBoardInfoRcv;
_BUR_LOCAL struct tyHermesQueryBoardInfo tyQueryBoardInfo;
_BUR_LOCAL struct tyHermesBoardForecast tyBoardForecastRcv;
_BUR_LOCAL struct tyHermesBoardForecast tyBoardForecastAcc;
_BUR_LOCAL struct tyHermesCurrentConfiguration tyCurrentConfiguration;
_BUR_LOCAL struct tyHermesSetConfiguration tySetConfiguration;
_BUR_LOCAL struct tyHermesTransportFinished tyTransportFinished;
_BUR_LOCAL struct tyHermesStopTransport tyStopTransport;
_BUR_LOCAL struct tyHermesStartTransport tyStartTransport;
_BUR_LOCAL struct tyHermesMachineReady tyMachineReady;
_BUR_LOCAL struct tyHermesBoardAvailable tyBoardAvailableRcv;
_BUR_LOCAL struct tyHermesNotification tyNotificationRcv;
_BUR_LOCAL struct tyHermesNotification tyNotificationSnd;
_BUR_LOCAL struct tyHermesServiceDescription tyServiceDescriptionRcv;
_BUR_LOCAL struct tyHermesServiceDescription tyServiceDescriptionSnd;
_BUR_LOCAL struct tyHermesCheckAlive tyCheckAlivePongRcv;
_BUR_LOCAL struct tyHermesCheckAlive tyCheckAlivePingRcv;
_BUR_LOCAL struct tyHermesCheckAlive tyCheckAliveRcv;
_BUR_LOCAL struct tyHermesCheckAlive tyCheckAlivePongSnd;
_BUR_LOCAL struct tyHermesCheckAlive tyCheckAlivePingSnd;
_BUR_LOCAL struct tyHermesCheckAlive tyCheckAliveSnd;
_BUR_LOCAL struct tyHermesMsgType tyMsgTypeRcv;
_BUR_LOCAL enum eHermesMsgType a_eMsgSend[51];
_BUR_LOCAL struct tyXMLTableDat a_tyXMLTableDataSnd[201];
_BUR_LOCAL struct tyXMLTableDat a_tyXMLTableDataRcv[201];
_BUR_LOCAL plcstring sRcv[65536];
_BUR_LOCAL plcstring sSnd[65536];
_BUR_LOCAL unsigned long udiSndMsgLen;
_BUR_LOCAL unsigned long udiMsgSendBffr;
_BUR_LOCAL unsigned long udiXMLTableWriteIdx;
_BUR_LOCAL unsigned long udiTCPIdent;
_BUR_LOCAL plcbit bRstState;
_BUR_LOCAL plcbit bRstConnection;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bOpsGConv1HvBrd;
_BUR_LOCAL plcbit bManualInsertZoneHvBrd;
_BUR_LOCAL plcbit bManualInsertEndSen;
_BUR_LOCAL plcbit bTransportFinished;
_BUR_LOCAL struct tyHermesConfiguration tyHermesCurrConfiguration;
_BUR_LOCAL plcstring sInternalRcv[65536];
_BUR_LOCAL plcbit bInternalUse;
_BUR_LOCAL plcstring sBottomBarcode[255];
_BUR_LOCAL plcstring sTopBarcode[255];
_BUR_LOCAL plcbit bQueryBoardInfo;
_BUR_LOCAL plcbit bUIAccData;
_BUR_LOCAL plcbit bMcParamMnlAccData;
_BUR_LOCAL struct tyProdRcpParam tyProdRcpCurrRcp;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyProdRcpParam a_tyProdRcpList[2000];
#else
/* Variable a_tyProdRcpList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcstring sInfoMsg2[201];
_BUR_LOCAL plcstring sInfoMsg1[201];
_BUR_LOCAL plcstring sInfoMsg[201];
_BUR_LOCAL plcbit bAccNewRcpCond;
_BUR_LOCAL plcbit bSvyEn;
_BUR_LOCAL plcbit bSvyPrep;
_BUR_LOCAL plcbit bRmtEn;
_BUR_LOCAL plcbit bRmtPrep;
_BUR_LOCAL plcbit bAccDataRdy;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL unsigned long udiFileKeepDay;
_BUR_LOCAL plcbit bInterruptSen;
_BUR_LOCAL plcbit bOpsRun;
_BUR_LOCAL signed long diTransferInTO;
_BUR_LOCAL plctime tConnTimeOut;
_BUR_LOCAL unsigned long udiAliveIdleTimeInSec;
_BUR_LOCAL unsigned long udiRcvBffrSize;
_BUR_LOCAL unsigned long udiSndBffrSize;
_BUR_LOCAL signed long diSltToSltInUM;
_BUR_LOCAL signed long diTtlSlt;
_BUR_LOCAL signed long diPitch;
_BUR_LOCAL signed long diMaxSltValue;
_BUR_LOCAL signed long diMinSltValue;
_BUR_LOCAL signed long diWidthInUM;
_BUR_LOCAL plcstring sRecipeNm[255];
_BUR_LOCAL enum eHermesFailedBoard eFailedBoard;
_BUR_LOCAL plcstring sVersion[8];
_BUR_LOCAL plcstring sInterfaceId[81];
_BUR_LOCAL plcstring sMcId[81];
_BUR_LOCAL plcbit bBFSltEn;
_BUR_LOCAL plcbit bBFWidthEn;
_BUR_LOCAL plcbit bBASltEn;
_BUR_LOCAL plcbit bBAWidthEn;
_BUR_LOCAL plcbit bRcvNotStart;
_BUR_LOCAL plcbit bRcvInCompl;
_BUR_LOCAL plcbit bRcvCompl;
_BUR_LOCAL plcbit bRdyTransport;
_BUR_LOCAL plcbit bRdyRcv;
_BUR_LOCAL plcdt dtCurrDT;
_BUR_LOCAL struct DTStructure tyDTStructure;
_BUR_LOCAL plcstring sIPAddr[16];
_BUR_LOCAL struct tyHermesUSParam tyParam;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bBaReceivedInRdyState;
_BUR_LOCAL plcbit bBfReceivedInRdyState;
_BUR_LOCAL plctime tNextPCBTm;
_BUR_LOCAL struct tyHermesSendBoardInfo tySendBoardInfoAcc;
_BUR_LOCAL plcbit bRcvBoardInfoIncompl;
_BUR_LOCAL plcbit bRcvBoardInfoOk;
_BUR_LOCAL struct tyHermesBoardAvailable tyBoardArrivedInfo;
_BUR_LOCAL plcbit bStopTransportSnd;
_BUR_LOCAL plcbit bBFAccDataMnl;
_BUR_LOCAL plcbit bAccDataMnl;
_BUR_LOCAL plcstring sInternalSnd[65536];
_BUR_LOCAL plcbit bBlkUS2;
_BUR_LOCAL plcbit bStopTransport;
_BUR_LOCAL plcbit bTransporting;
_BUR_LOCAL plcbit bDSGdRdy;
_BUR_LOCAL plcbit bUSGdRdy;
_BUR_LOCAL plcbit bDSRdy;
_BUR_LOCAL plcbit bUSRdy;
_BUR_LOCAL plcbit bBoardAvailable;
_BUR_LOCAL plcbit bNotAvlNotRdy;
_BUR_LOCAL signed long diReqPitch;
_BUR_LOCAL signed long diReqMaxSltValue;
_BUR_LOCAL signed long diReqMinSltValue;
_BUR_LOCAL signed long diReqWidthInUM;
_BUR_LOCAL plcstring sReqRecipeNm[255];
_BUR_LOCAL plcbit bBFOverWriteWidth;
_BUR_LOCAL plcbit bBFOverWriteSlt;
_BUR_LOCAL plcbit bOverWriteWidth;
_BUR_LOCAL plcbit bOverWriteSlt;
_BUR_LOCAL plcbit bBFAccDataReq;
_BUR_LOCAL plcbit bAccDataReq;
_BUR_LOCAL plcbit bHandshakeDone;
_BUR_LOCAL plcbit bConnected;
_BUR_LOCAL signed short iXMLTableDataBrdAvlTtlIdx;
_BUR_LOCAL struct tyXMLTableDat a_tyXMLTableDataBrdAvl[201];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[200];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyInfoData2;
_BUR_LOCAL struct tyAlmDat tyInfoData1;
_BUR_LOCAL struct tyAlmDat tyInfoData;
_BUR_LOCAL struct tyAlmDat tyAlmData5;
_BUR_LOCAL struct tyAlmDat tyAlmData4;
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
_BUR_LOCAL enum eFBStatus eStatus4;
_BUR_LOCAL enum eFBStatus eStatus3;
_BUR_LOCAL enum eFBStatus eStatus2;
_BUR_LOCAL enum eFBStatus eStatus1;
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eFBStatus eMainStatus;
_BUR_LOCAL enum eHermesAction eStat;
_BUR_LOCAL enum eHermesAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Hermes/USHermesB/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/NtFileIO.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtHermes/NtHermes.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTCP/NtTCP.fun\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/ProdRcp/ProdRcp.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225410_374_ */

