/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136546_407_
#define _BUR_1701136546_407_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit bPCBExitMag3;
_BUR_LOCAL plcbit bPCBExitMag2;
_BUR_LOCAL plcbit bPCBExitMag1;
_BUR_LOCAL plcbit bStartScanSig;
_BUR_LOCAL struct TON fbScanTimOut;
_BUR_LOCAL plcbit bSignalTrigMagOutEn;
_BUR_LOCAL plcbit bScannerEn;
_BUR_LOCAL struct TON fbInletStopperOffTim;
_BUR_LOCAL plcbit bAllwExitMag3;
_BUR_LOCAL plcbit bAllwExitMag2;
_BUR_LOCAL plcbit bAllwExitMag1;
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcstring asMagEntered[5][11];
_BUR_LOCAL plcbit bPLCGrabPic;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL signed long diMagBrdQty[3];
#else
/* Variable diMagBrdQty not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit bHermesBC;
_BUR_LOCAL signed long diTemp;
_BUR_LOCAL struct tyMagCoord tyMagCoordinate;
_BUR_LOCAL struct tyOpConPartProcessed tyPartProcessedItems;
_BUR_LOCAL struct tyOpConPartReceive tyPartReceive;
_BUR_LOCAL struct TON fbReturnCodeTO;
_BUR_LOCAL struct TON fbIdleTm;
_BUR_LOCAL plcbit bWaitMagChkRetCode;
_BUR_LOCAL plcbit bJamStarted;
_BUR_LOCAL enum eOpConMsgType tyOpConMsgReq;
_BUR_LOCAL struct tyLocationParam tyOpConParam;
_BUR_LOCAL plcbit bPass;
_BUR_LOCAL plcstring sBarcode[81];
_BUR_LOCAL enum eTCPAction1 eTCPBtmAct;
_BUR_LOCAL enum eTCPAction1 eTCPTopAct;
_BUR_LOCAL enum ePneuAction eInletStopperAct;
_BUR_LOCAL plcbit bWait;
_BUR_LOCAL enum eMcSetCommMod eLocalUSCommMod;
_BUR_LOCAL struct TON fbBypCurtainPBLEDBlinkTm;
_BUR_LOCAL plcbit *p_bLocalDSHermesStopTransport;
_BUR_LOCAL plcbit *p_bLocalDSHermesTransporting;
_BUR_LOCAL plcbit *p_bLocalDSHermesDSRdy;
_BUR_LOCAL plcbit *p_bLocalUSHermesStopTransport;
_BUR_LOCAL plcbit *p_bLocalUSHermesTransporting;
_BUR_LOCAL plcbit *p_bLocalUSHermesUSGdRdy;
_BUR_LOCAL plcbit *p_bLocalUSHermesUSRdy;
_BUR_LOCAL plcbit *p_bLocalDSSMEMAConvStart;
_BUR_LOCAL plcbit *p_bLocalDSSMEMADSRdy;
_BUR_LOCAL enum eFBStatus *p_eLocalDSSMEMAStatus;
_BUR_LOCAL enum eSMEMAAction *p_eLocalDSSMEMAStat;
_BUR_LOCAL enum eSMEMAAction *p_eLocalDSSMEMAAct;
_BUR_LOCAL plcbit *p_bLocalUSSMEMAConvStop;
_BUR_LOCAL plcbit *p_bLocalUSSMEMAConvStart;
_BUR_LOCAL plcbit *p_bLocalUSSMEMATransporting;
_BUR_LOCAL plcbit *p_bLocalUSSMEMAGdBrdRdy;
_BUR_LOCAL plcbit *p_bLocalUSSMEMAUSRdy;
_BUR_LOCAL enum eFBStatus *p_eLocalUSSMEMAStatus;
_BUR_LOCAL enum eSMEMAAction *p_eLocalUSSMEMAStat;
_BUR_LOCAL enum eSMEMAAction *p_eLocalUSSMEMAAct;
_BUR_LOCAL plcbit *p_bLocalDSRdy;
_BUR_LOCAL plcbit *p_bLocalUSGdRdy;
_BUR_LOCAL plcbit *p_bLocalUSRdy;
_BUR_LOCAL enum eMcSetCommMod *p_eLocalDSCommMod;
_BUR_LOCAL enum eMcSetCommMod *p_eLocalUSCommMod;
_BUR_LOCAL plcbit *p_bStopperBlk;
_BUR_LOCAL enum eFBStatus *p_eStopperStatus;
_BUR_LOCAL enum ePneuAction *p_eStopperStat;
_BUR_LOCAL enum ePneuAction *p_eStopperAct;
_BUR_LOCAL struct TON fb2SenTm;
_BUR_LOCAL struct TON fbRstCurtain;
_BUR_LOCAL plcbit bMagWidthChkDis;
_BUR_LOCAL plcbit bBypCurtainSensorPBLED;
_BUR_LOCAL plcbit bBypCurtainSenCtrl;
_BUR_LOCAL plcbit bBypCurtainSenPB;
_BUR_LOCAL plcbit bLifterBPosDiff;
_BUR_LOCAL plcbit bLifterAPosDiff;
_BUR_LOCAL plcbit bLifterBtmPosDiff;
_BUR_LOCAL plcbit bSelfTest;
_BUR_LOCAL plcbit bTravLifInDSPos;
_BUR_LOCAL struct TON tTravLiftInPos;
_BUR_LOCAL struct TON tExitBoardTimoutErr;
_BUR_LOCAL struct TON tEntBoardTimoutErr;
_BUR_LOCAL struct TON tConvLftSenOff;
_BUR_LOCAL struct TON tConvRgtSenOff;
_BUR_LOCAL plcbit bSkipCloseInletShutter;
_BUR_LOCAL plcbit bLocalDSRdy3;
_BUR_LOCAL plcbit bLocalDSRdy2;
_BUR_LOCAL plcbit bLocalDSRdy1;
_BUR_LOCAL plcbit bLocalUSGdRdy3;
_BUR_LOCAL plcbit bLocalUSRdy3;
_BUR_LOCAL plcbit bLocalUSGdRdy2;
_BUR_LOCAL plcbit bLocalUSRdy2;
_BUR_LOCAL plcbit bLocalUSGdRdy1;
_BUR_LOCAL plcbit bLocalUSRdy1;
_BUR_LOCAL plcbit bConvOutSenOn;
_BUR_LOCAL plcbit bConvInSenOn;
_BUR_LOCAL plcbit bStopperBrdOnSen;
_BUR_LOCAL plcbit bBrdOnStopperSen;
_BUR_LOCAL plcbit bBrdOnSen;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long a_udiMagAllwPriority[3];
#else
/* Variable a_udiMagAllwPriority not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long a_udiMagAllwMagPresentTm[3];
#else
/* Variable a_udiMagAllwMagPresentTm not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyBffrStat a_tyMagAllwBffrStat[3];
#else
/* Variable a_tyMagAllwBffrStat not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long a_udiPosAllwSum[3];
#else
/* Variable a_udiPosAllwSum not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bPosAllwSigOn[3];
#else
/* Variable a_bPosAllwSigOn not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL unsigned long udiPosAllwGo;
_BUR_LOCAL plcbit bGdChk;
_BUR_LOCAL unsigned long udi;
_BUR_LOCAL unsigned long udiCount;
_BUR_LOCAL unsigned long udiCmpTm;
_BUR_LOCAL unsigned long udiMagPresentTm;
_BUR_LOCAL unsigned long udiMagPresentTm1;
_BUR_LOCAL plcbit bOpsModGonethrough;
_BUR_LOCAL struct tyParamTravLifUL tyParamTravLif;
_BUR_LOCAL enum eTravLifULStep eGotoOpsStep;
_BUR_LOCAL enum eTravLifULStep eOpsStep;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bPneuUnclmpFBDone;
_BUR_LOCAL plcbit bCmdUnclmpFlag;
_BUR_LOCAL plcbit bWidthChkErrCmdUnclmp3;
_BUR_LOCAL plcbit bWidthChkErrCmdUnclmp2;
_BUR_LOCAL plcbit bWidthChkErrCmdUnclmp1;
_BUR_LOCAL plcbit bInitInletPneu;
_BUR_LOCAL plcstring sBtmMsgRd[81];
_BUR_LOCAL enum eFBStatus eTCPBtmStatus;
_BUR_LOCAL enum eTCPAction1 eTCPBtmStat;
_BUR_LOCAL plcstring sTopMsgRd[81];
_BUR_LOCAL enum eFBStatus eTCPTopStatus;
_BUR_LOCAL enum eTCPAction1 eTCPTopStat;
_BUR_LOCAL plcbit bScanEn;
_BUR_LOCAL enum eLifMagULUpdateData eMagBuffferActLoad;
_BUR_LOCAL plctime tShutterWaitTmr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bBufferMagPresent3;
_BUR_LOCAL plcbit bBufferMagPresent2;
_BUR_LOCAL plcbit bBufferMagPresent1;
_BUR_LOCAL plcbit bMagTransferBrd3;
_BUR_LOCAL plcbit bMagTransferBrd2;
_BUR_LOCAL plcbit bMagTransferBrd1;
_BUR_LOCAL plcbit bConvRgtSen;
_BUR_LOCAL plcbit bConvLftSen;
_BUR_LOCAL enum eFBStatus eOutletPneuStatus;
_BUR_LOCAL enum ePneuAction eOutletPneuStat;
_BUR_LOCAL plcbit bInletPneuCls;
_BUR_LOCAL enum eFBStatus eInletPneuStatus;
_BUR_LOCAL enum ePneuAction eInletPneuStat;
_BUR_LOCAL enum eFBStatus eLifStatus;
_BUR_LOCAL enum eLifterAction eLifStat;
_BUR_LOCAL enum eFBStatus eTravStatus;
_BUR_LOCAL enum eTravAction eTravStat;
_BUR_LOCAL plcbit bAWWidthPosDiff;
_BUR_LOCAL enum eFBStatus eAWStatus;
_BUR_LOCAL enum eAWAction eAWStat;
_BUR_LOCAL plcbit bConvGdBrd;
_BUR_LOCAL plcbit bConvHvBrd;
_BUR_LOCAL enum eConvDir eConvDirection;
_BUR_LOCAL enum eFBStatus eConvStatus;
_BUR_LOCAL enum eConvAction eConvStat;
_BUR_LOCAL plcbit bDSHermesStopTransport3;
_BUR_LOCAL plcbit bDSHermesTransporting3;
_BUR_LOCAL plcbit bDSHermesDSRdy3;
_BUR_LOCAL plcbit bDSHermesStopTransport2;
_BUR_LOCAL plcbit bDSHermesTransporting2;
_BUR_LOCAL plcbit bDSHermesDSRdy2;
_BUR_LOCAL plcbit bDSHermesStopTransport1;
_BUR_LOCAL plcbit bDSHermesTransporting1;
_BUR_LOCAL plcbit bDSHermesDSRdy1;
_BUR_LOCAL plcbit bUSHermesStopTransport3;
_BUR_LOCAL plcbit bUSHermesTransporting3;
_BUR_LOCAL plcbit bUSHermesUSGdRdy3;
_BUR_LOCAL plcbit bUSHermesUSRdy3;
_BUR_LOCAL plcbit bUSHermesStopTransport2;
_BUR_LOCAL plcbit bUSHermesTransporting2;
_BUR_LOCAL plcbit bUSHermesUSGdRdy2;
_BUR_LOCAL plcbit bUSHermesUSRdy2;
_BUR_LOCAL plcbit bUSHermesStopTransport1;
_BUR_LOCAL plcbit bUSHermesTransporting1;
_BUR_LOCAL plcbit bUSHermesUSGdRdy1;
_BUR_LOCAL plcbit bUSHermesUSRdy1;
_BUR_LOCAL plcbit bDSSMEMAConvStart3;
_BUR_LOCAL plcbit bDSSMEMADSRdy3;
_BUR_LOCAL enum eFBStatus eDSSMEMAStatus3;
_BUR_LOCAL enum eSMEMAAction eDSSMEMAStat3;
_BUR_LOCAL plcbit bDSSMEMAConvStart2;
_BUR_LOCAL plcbit bDSSMEMADSRdy2;
_BUR_LOCAL enum eFBStatus eDSSMEMAStatus2;
_BUR_LOCAL enum eSMEMAAction eDSSMEMAStat2;
_BUR_LOCAL plcbit bDSSMEMAConvStart1;
_BUR_LOCAL plcbit bDSSMEMADSRdy1;
_BUR_LOCAL enum eFBStatus eDSSMEMAStatus1;
_BUR_LOCAL enum eSMEMAAction eDSSMEMAStat1;
_BUR_LOCAL plcbit bUSSMEMAConvStop3;
_BUR_LOCAL plcbit bUSSMEMAConvStart3;
_BUR_LOCAL plcbit bUSSMEMATransporting3;
_BUR_LOCAL plcbit bUSSMEMAGdBrdRdy3;
_BUR_LOCAL plcbit bUSSMEMAUSRdy3;
_BUR_LOCAL enum eFBStatus eUSSMEMAStatus3;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAStat3;
_BUR_LOCAL plcbit bUSSMEMAConvStop2;
_BUR_LOCAL plcbit bUSSMEMAConvStart2;
_BUR_LOCAL plcbit bUSSMEMATransporting2;
_BUR_LOCAL plcbit bUSSMEMAGdBrdRdy2;
_BUR_LOCAL plcbit bUSSMEMAUSRdy2;
_BUR_LOCAL enum eFBStatus eUSSMEMAStatus2;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAStat2;
_BUR_LOCAL plcbit bUSSMEMAConvStop1;
_BUR_LOCAL plcbit bUSSMEMAConvStart1;
_BUR_LOCAL plcbit bUSSMEMATransporting1;
_BUR_LOCAL plcbit bUSSMEMAGdBrdRdy1;
_BUR_LOCAL plcbit bUSSMEMAUSRdy1;
_BUR_LOCAL enum eFBStatus eUSSMEMAStatus1;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAStat1;
_BUR_LOCAL enum eMcSetCommMod eDSCommMod3;
_BUR_LOCAL enum eMcSetCommMod eDSCommMod2;
_BUR_LOCAL enum eMcSetCommMod eDSCommMod1;
_BUR_LOCAL enum eMcSetCommMod eUSCommMod3;
_BUR_LOCAL enum eMcSetCommMod eUSCommMod2;
_BUR_LOCAL enum eMcSetCommMod eUSCommMod1;
_BUR_LOCAL plcbit bDSAllow;
_BUR_LOCAL plcbit bUSAllow;
_BUR_LOCAL plcbit bBypsGdBadBrd;
_BUR_LOCAL plcbit bNonBffrMod;
_BUR_LOCAL enum eULMag eULMagazine;
_BUR_LOCAL enum eULMod eULMode;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL enum eTravLifULStep eGotoOpsStepDummy;
_BUR_LOCAL signed short logIndexStep;
_BUR_LOCAL enum eTravLifULStep logStep[1000];
_BUR_LOCAL plcbit blog;
_BUR_LOCAL plcbit bClsLog;
_BUR_LOCAL struct TON fbWidthChkSenOffTim;
_BUR_LOCAL struct TON fbWidthChkSenOnTim;
_BUR_LOCAL struct TON fbWaitTimer;
_BUR_LOCAL plcbit bStopperExtStep;
_BUR_LOCAL plcbit bUSWidthChkBrdExist;
_BUR_LOCAL plcbit bTravLifMove;
_BUR_LOCAL plcbit bExitBrd;
_BUR_LOCAL plcbit bDSComm;
_BUR_LOCAL plcbit bEntBrd;
_BUR_LOCAL plcbit bUSComm;
_BUR_LOCAL plcbit bOpsInitDone;
_BUR_LOCAL plcbit bInitConv;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bMagRej[3];
#else
/* Variable a_bMagRej not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bMagDis[3];
#else
/* Variable a_bMagDis not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL enum eTravLifULPos eTravLifPosGo;
_BUR_LOCAL unsigned long udiJogSpeed;
_BUR_LOCAL enum ePneuAction eStopperAct3;
_BUR_LOCAL enum ePneuAction eStopperAct2;
_BUR_LOCAL enum ePneuAction eStopperAct1;
_BUR_LOCAL enum ePneuAction eOutletPneuAct3;
_BUR_LOCAL enum ePneuAction eOutletPneuAct2;
_BUR_LOCAL enum ePneuAction eOutletPneuAct;
_BUR_LOCAL enum ePneuAction eInletPneuAct;
_BUR_LOCAL enum eLifterAction eLifAct;
_BUR_LOCAL enum eTravAction eTravAct;
_BUR_LOCAL enum eAWAction eAWPushOrPullerAct;
_BUR_LOCAL enum eAWAction eAWAct;
_BUR_LOCAL enum eConvAction eConvAct;
_BUR_LOCAL enum eSMEMAAction eDSSMEMAAct3;
_BUR_LOCAL enum eSMEMAAction eDSSMEMAAct2;
_BUR_LOCAL enum eSMEMAAction eDSSMEMAAct1;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAAct3;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAAct2;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAAct1;
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcstring sStepTxt[81];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsTravLifUL/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136546_407_ */

