/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_239_
#define _BUR_1703660021_239_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL struct tyHermesSendBoardInfo *p_tyUSHermesSendBoardInfoAcpt;
_BUR_LOCAL plcbit *p_bUSHermesARcvBoardInfo;
_BUR_LOCAL plcbit *p_bPshrConvHvBrd;
_BUR_LOCAL plcbit *p_bDSSMEMA3ConvStart;
_BUR_LOCAL plcbit *p_bDSSMEMA2ConvStart;
_BUR_LOCAL plcbit *p_bDSSMEMA1ConvStart;
_BUR_LOCAL signed long *p_diBuffer3Slt;
_BUR_LOCAL signed long *p_diBuffer2Slt;
_BUR_LOCAL signed long *p_diBuffer1Slt;
_BUR_LOCAL enum eMcSetCommMod *p_eLinkMcParamUSCommMod;
_BUR_LOCAL plcbit *p_bOpsTravLifGdBrdChk;
_BUR_LOCAL unsigned char *p_usiLinkProdRcpCurrRcpMcMod;
_BUR_LOCAL plcbit *p_bLinkStepStackMode;
_BUR_LOCAL plcbit *p_bSiemensMcModeChgPrep;
_BUR_LOCAL unsigned char *p_usiSelProdRcpStep;
_BUR_LOCAL plcbit *p_bUITopUpBrdRdy;
_BUR_LOCAL plcbit *p_bUSHermesUSRdy;
_BUR_LOCAL plcbit *p_bLoaderChangeOver;
_BUR_LOCAL plcbit *p_bUSSMEMAUSRdy;
_BUR_LOCAL plcbit *p_bOpsConvStepAllwTopUpBrd;
_BUR_LOCAL plcbit *p_bOpsPneuTopUpBrdReq;
_BUR_LOCAL plcbit *p_bOpsConvStepChkInit;
_BUR_LOCAL plcbit *p_bOpsPneuStepAllwInitConv;
_BUR_LOCAL plcbit *p_bSendBFId;
_BUR_LOCAL plcbit *p_bOpsConvTopUpBrdReq;
_BUR_LOCAL plcbit *p_bOpsConvWaitForTopUpBrd;
_BUR_LOCAL struct tyDigitalInput *p_tyDI;
_BUR_LOCAL plcbit *p_bLinkDIPresentSen;
_BUR_LOCAL struct tyProdRcpParam *p_tyProdRcpCurrRcp1;
_BUR_LOCAL struct tyProdRcpParam *p_tyProdRcpCurrRcp;
_BUR_LOCAL plcbit *p_bAcceptCondition;
_BUR_LOCAL plcbit *p_bInternalUse;
_BUR_LOCAL plcstring (*p_sInternalRcv)[65536];
_BUR_LOCAL plcstring (*p_sRetainFileName3)[81];
_BUR_LOCAL plcstring (*p_sRetainFileName2)[81];
_BUR_LOCAL plcstring (*p_sRetainFileName1)[81];
_BUR_LOCAL plcstring (*p_sRetainFileName)[81];
_BUR_LOCAL plcbit *p_bFirstMcIntheLine;
_BUR_LOCAL plcbit *p_bDeleteWorkOrder;
_BUR_LOCAL plcbit *p_bAllZonesEmpty;
_BUR_LOCAL enum eHermesAction *p_eHermesStat;
_BUR_LOCAL enum eFBStatus *p_eHermesStatus;
_BUR_LOCAL enum eMcParamAction *p_eMcParamStat;
_BUR_LOCAL enum eFBStatus *p_eMcParamStatus;
_BUR_LOCAL plcstring (*p_sInfoMsg4)[201];
_BUR_LOCAL plcstring (*p_sInfoMsg3)[201];
_BUR_LOCAL plcstring (*p_sInfoMsg2)[201];
_BUR_LOCAL plcstring (*p_sInfoMsg1)[201];
_BUR_LOCAL plcstring (*p_sInfoMsg)[201];
_BUR_LOCAL unsigned long *p_udiBypassRetainDataLen0;
_BUR_LOCAL unsigned long *p_udiBypassRetainDataAddr0;
_BUR_LOCAL unsigned long *p_udiLoaderRetainDataLen1;
_BUR_LOCAL unsigned long *p_udiLoaderRetainDataAddr1;
_BUR_LOCAL unsigned long *p_udiLoaderRetainDataLen0;
_BUR_LOCAL unsigned long *p_udiLoaderRetainDataAddr0;
_BUR_LOCAL unsigned long *p_udiRetainDataLen;
_BUR_LOCAL unsigned long *p_udiRetainDataAddr;
_BUR_LOCAL struct tyHermesBoardForecast *p_tyUSBoardForecastRcv;
_BUR_LOCAL struct tyHermesBoardAvailable *p_tyUSBoardAvailableRcv;
_BUR_LOCAL struct tyHermesBoardAvailable *p_tyDSBoardDeparted4;
_BUR_LOCAL struct tyHermesBoardAvailable *p_tyDSBoardDeparted3;
_BUR_LOCAL struct tyHermesBoardAvailable *p_tyDSBoardDeparted2;
_BUR_LOCAL struct tyHermesBoardAvailable *p_tyDSBoardDeparted1;
_BUR_LOCAL plcbit *p_bDSHermesTransportFinished4;
_BUR_LOCAL plcbit *p_bDSHermesTransportFinished3;
_BUR_LOCAL plcbit *p_bDSHermesTransportFinished2;
_BUR_LOCAL plcbit *p_bDSHermesTransportFinished1;
_BUR_LOCAL struct tyHermesBoardAvailable *p_tyUSBoardArrived4;
_BUR_LOCAL struct tyHermesBoardAvailable *p_tyUSBoardArrived3;
_BUR_LOCAL struct tyHermesBoardAvailable *p_tyUSBoardArrived2;
_BUR_LOCAL struct tyHermesBoardAvailable *p_tyUSBoardArrived1;
_BUR_LOCAL plcbit *p_bUSHermesStopTransport4;
_BUR_LOCAL plcbit *p_bUSHermesStopTransport3;
_BUR_LOCAL plcbit *p_bUSHermesStopTransport2;
_BUR_LOCAL plcbit *p_bUSHermesStopTransport1;
_BUR_LOCAL struct tyHermesConfiguration *p_tyHermesConfiguration;
_BUR_LOCAL plcbit *p_bQueryWorkOrderInfo;
_BUR_LOCAL plcbit *p_bSvyEn;
_BUR_LOCAL plcbit *p_bSvyPrep;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL plcstring (*p_sConfigFileName)[81];
_BUR_LOCAL unsigned long *p_udiFileKeepDay;
_BUR_LOCAL plcbit *p_bOpsRun;
_BUR_LOCAL plcbit *p_bNewBrdAvlLastZone;
_BUR_LOCAL signed long *p_diTransferInTO;
_BUR_LOCAL plctime *p_tConnTimeOut;
_BUR_LOCAL unsigned long *p_udiAliveIdleTimeInSec;
_BUR_LOCAL unsigned long *p_udiRcvBffrSize;
_BUR_LOCAL unsigned long *p_udiSndBffrSize;
_BUR_LOCAL plcstring (*p_sVersion)[8];
_BUR_LOCAL plcstring (*p_sBarcode)[255];
_BUR_LOCAL enum eHermesBoardTransfer *p_eBoardTransfer4;
_BUR_LOCAL enum eHermesBoardTransfer *p_eBoardTransfer3;
_BUR_LOCAL enum eHermesBoardTransfer *p_eBoardTransfer2;
_BUR_LOCAL enum eHermesBoardTransfer *p_eBoardTransfer1;
_BUR_LOCAL signed short *p_iSlotId;
_BUR_LOCAL plcstring (*p_sMagazineId)[81];
_BUR_LOCAL plcstring (*p_sRecipeNm)[255];
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL plcbit *p_bPrep;
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL enum eHermesAction *p_eAct;
_BUR_LOCAL signed short *p_iLaneID;
_BUR_LOCAL plcstring (*p_sDownstreamInterfaceId)[81];
_BUR_LOCAL plcstring (*p_sMcId)[81];
_BUR_LOCAL plcdt *p_dtCurrDT;
_BUR_LOCAL struct DTStructure *p_tyDTStructure;
_BUR_LOCAL unsigned char (*pa_usiMacAddr)[6];
_BUR_LOCAL plcstring (*p_sIPAddr)[16];
_BUR_LOCAL struct tyHermesSvyParam *p_tyParam;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Hermes/SvyHermes/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_239_ */

