/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680535_178_
#define _BUR_1704680535_178_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long a_tyPtrtoAddr[7];
#else
/* Variable a_tyPtrtoAddr not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL unsigned char usidx;
_BUR_LOCAL unsigned char usiPosidx;
_BUR_LOCAL plcstring sDefaultGWBlkUp[31];
_BUR_LOCAL plcbit bUpdtHMIIPAddr;
_BUR_LOCAL plcstring sHMIIPAddr[16];
_BUR_LOCAL plcstring sSetHMIIPAddr[16];
_BUR_LOCAL unsigned char usiSaveHMIIPAddrStep;
_BUR_LOCAL unsigned char usiDuplicate;
_BUR_LOCAL unsigned char usiGenSaveStep;
_BUR_LOCAL plcbit bBypassShutForCalib;
_BUR_LOCAL unsigned char usiExtRetTest;
_BUR_LOCAL struct TON fbPushExtRestTmr;
_BUR_LOCAL struct TON fbPushRetRestTmr;
_BUR_LOCAL signed short iSlotId;
_BUR_LOCAL plcbit bReadWorkOrder;
_BUR_LOCAL plcbit bSkipWorkOrder;
_BUR_LOCAL plcbit bSaveHMIConfigure;
_BUR_LOCAL plcbit bSaveHMISvyConfig;
_BUR_LOCAL plcbit bDeleteWorkOrder;
_BUR_LOCAL plcbit bQueryWorkOrderInfo;
_BUR_LOCAL plcbit bQueryBoardInfo;
_BUR_LOCAL plcbit bNaviLyr2;
_BUR_LOCAL plcbit bNaviLyr1;
_BUR_LOCAL plcstring sPshrExtWarnMsg[255];
_BUR_LOCAL signed short IPshrSafeDistanceValue;
_BUR_LOCAL plcbit bOpsMnlUnloadMag2;
_BUR_LOCAL plcbit bOpsMnlUnloadMag;
_BUR_LOCAL plcbit bChgMagSig;
_BUR_LOCAL plcbit bFllw2SetFull;
_BUR_LOCAL struct TON fbChgMagBlinkTm;
_BUR_LOCAL struct TON tChgMag;
_BUR_LOCAL plcbit bChgMag;
_BUR_LOCAL struct TON fbUnloadBlinkTm;
_BUR_LOCAL plcbit bUnloadMag;
_BUR_LOCAL struct TON fbMagAWSelfTestTim;
_BUR_LOCAL unsigned char usiMagAWSelfTestStep;
_BUR_LOCAL struct TON fbMagAWSelfTestTim2;
_BUR_LOCAL unsigned char usiMagAWSelfTestStep2;
_BUR_LOCAL struct TON fbMagAWSelfTestTim1;
_BUR_LOCAL unsigned char usiMagAWSelfTestStep1;
_BUR_LOCAL plcbit bMagAWSelfTest;
_BUR_LOCAL unsigned short uiLFStartEditNo;
_BUR_LOCAL plcbit bPCBExitMag3;
_BUR_LOCAL plcbit bPCBExitMag2;
_BUR_LOCAL plcbit bPCBExitMag1;
_BUR_LOCAL plcbit bStartScanSig;
_BUR_LOCAL plcbit bSmallMagLimSen4;
_BUR_LOCAL plcbit bSmallMagLimSen3;
_BUR_LOCAL plcbit bSmallMagLimSen2;
_BUR_LOCAL plcbit bSmallMagLimSen1;
_BUR_LOCAL plcbit bMagAWOpenLimByp4;
_BUR_LOCAL plcbit bMagAWOpenLimByp3;
_BUR_LOCAL plcbit bMagAWOpenLimByp2;
_BUR_LOCAL plcbit bMagAWOpenLimByp1;
_BUR_LOCAL plcbit bAIVReqGet4;
_BUR_LOCAL plcbit bAIVReqGet3;
_BUR_LOCAL plcbit bAIVReqGet2;
_BUR_LOCAL plcbit bAIVReqGet1;
_BUR_LOCAL plcbit bAIVReqBring4;
_BUR_LOCAL plcbit bAIVReqBring3;
_BUR_LOCAL plcbit bAIVReqBring2;
_BUR_LOCAL plcbit bAIVReqBring1;
_BUR_LOCAL plcbit bSOTMagSLarge4;
_BUR_LOCAL plcbit bSOTMagSLarge3;
_BUR_LOCAL plcbit bSOTMagSLarge2;
_BUR_LOCAL plcbit bSOTMagSLarge1;
_BUR_LOCAL plcbit bSOTMagAvail4;
_BUR_LOCAL plcbit bSOTMagAvail3;
_BUR_LOCAL plcbit bSOTMagAvail2;
_BUR_LOCAL plcbit bSOTMagAvail1;
_BUR_LOCAL plcbit bSOTMagRdy4;
_BUR_LOCAL plcbit bSOTMagRdy3;
_BUR_LOCAL plcbit bSOTMagRdy2;
_BUR_LOCAL plcbit bSOTMagRdy1;
_BUR_LOCAL plcbit bSOTMagErr4;
_BUR_LOCAL plcbit bSOTMagErr3;
_BUR_LOCAL plcbit bSOTMagErr2;
_BUR_LOCAL plcbit bSOTMagErr1;
_BUR_LOCAL plcbit bJogStopMagAW3;
_BUR_LOCAL plcbit bJogStopMagAW2;
_BUR_LOCAL plcbit bJogStopMagAW1;
_BUR_LOCAL plcbit bDispMagConv3;
_BUR_LOCAL plcbit bDispMagConv2;
_BUR_LOCAL plcbit bDispMagConv1;
_BUR_LOCAL plcbit bDispMagAW3;
_BUR_LOCAL plcbit bDispMagAW2;
_BUR_LOCAL plcbit bDispMagAW1;
_BUR_LOCAL plcbit bDispSafetyBar2;
_BUR_LOCAL plcbit bDispSafetyBar1;
_BUR_LOCAL plcbit bLFSettingAutoClear;
_BUR_LOCAL plcbit bLFSettingAutoFill;
_BUR_LOCAL plcstring sLFSettingTemp[16];
_BUR_LOCAL plcstring sLFSettingAutoFill[16];
_BUR_LOCAL signed short iLFSettingCurrentIP;
_BUR_LOCAL plcstring sLFSettingCurrentIP[5];
_BUR_LOCAL signed short iIPExtract;
_BUR_LOCAL plcbit bUpdateP1050Table;
_BUR_LOCAL plcbit bUpdateP1021Network;
_BUR_LOCAL plcbit bLFRunInBG;
_BUR_LOCAL struct fbTouchGetAction fbTouchTm;
_BUR_LOCAL struct TON fbAutoLogoutTm;
_BUR_LOCAL plcbit bPromptSessionExp;
_BUR_LOCAL plcbit bChgPageDone;
_BUR_LOCAL plcbit bUITravLifShowIOMonitor2;
_BUR_LOCAL unsigned long udiTempEthMode;
_BUR_LOCAL unsigned char usiRefreshDetailStep;
_BUR_LOCAL unsigned char usiChgNetworkConfigStep;
_BUR_LOCAL unsigned char usiNetworkModeSelected;
_BUR_LOCAL unsigned char usiNetworkModeNew;
_BUR_LOCAL unsigned char usiNetworkModeOld;
_BUR_LOCAL plcbit bTeachServo;
_BUR_LOCAL plcbit bNetworkConfigChanged;
_BUR_LOCAL plcbit bSaveNetworkPriority;
_BUR_LOCAL plcbit bOverwriteEthMode;
_BUR_LOCAL plcbit bOverwriteSubnet;
_BUR_LOCAL plcbit bOverwriteIP;
_BUR_LOCAL plcbit bIPConfigChgDone;
_BUR_LOCAL plcstring sTempSubnetMask[16];
_BUR_LOCAL plcstring sTempIPAddr[16];
_BUR_LOCAL plcbit bTempAddrFillDone;
_BUR_LOCAL plcbit bMismatchOverWriteConfig;
_BUR_LOCAL plcbit bUpdateP1040LoadData;
_BUR_LOCAL plcbit bUpdateP1030LoadData;
_BUR_LOCAL plcbit bUpdateP1040Table;
_BUR_LOCAL plcbit bUpdateP1030Table;
_BUR_LOCAL plcbit bUpdateP0410Table;
_BUR_LOCAL plcbit bUpdateP0400Table;
_BUR_LOCAL unsigned short iSelectedRowValue;
_BUR_LOCAL plcbit bFilterSortP1040;
_BUR_LOCAL plcbit bFilterSortP0400;
_BUR_LOCAL plcstring sLFIPAddrTemp[16];
_BUR_LOCAL plcbit bCheckDone;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL signed short a_iSubnetMaskPart1[4];
#else
/* Variable a_iSubnetMaskPart1 not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL signed short a_iIPPart2[4];
#else
/* Variable a_iIPPart2 not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL signed short a_iIPPart1[4];
#else
/* Variable a_iIPPart1 not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL unsigned short uiSSaverCnt;
_BUR_LOCAL unsigned long udiP1080SelectedRow;
_BUR_LOCAL unsigned char usiP1080SelectedLvl;
_BUR_LOCAL unsigned long udiP1040SelectedRow;
_BUR_LOCAL unsigned long udiP1040SelectedRowOld;
_BUR_LOCAL unsigned long udiP1030SelectedRow;
_BUR_LOCAL unsigned long udiP1030SelectedRowOld;
_BUR_LOCAL struct fbTableCtrl fbP1080Table;
_BUR_LOCAL struct tyTable tyP1080Table;
_BUR_LOCAL struct fbTableCtrl fbP1050Table;
_BUR_LOCAL struct tyTable tyP1050Table;
_BUR_LOCAL struct fbTableCtrl_v2 fbP1040Table;
_BUR_LOCAL struct tyTable tyP1040Table;
_BUR_LOCAL struct fbTableCtrl_v2 fbP1030Table;
_BUR_LOCAL struct tyTable tyP1030Table;
_BUR_LOCAL struct fbTableCtrl fbP0950Table1;
_BUR_LOCAL struct tyTable tyP0950Table1;
_BUR_LOCAL struct fbTableCtrl fbP0800Table3;
_BUR_LOCAL struct tyTable tyP0800Table3;
_BUR_LOCAL struct fbTableCtrl fbP0800Table2;
_BUR_LOCAL struct tyTable tyP0800Table2;
_BUR_LOCAL struct fbTableCtrl fbP0800Table1;
_BUR_LOCAL struct tyTable tyP0800Table1;
_BUR_LOCAL struct fbTableCtrl fbP0700Table;
_BUR_LOCAL struct tyTable tyP0700Table;
_BUR_LOCAL struct fbTableCtrl fbP0410Table;
_BUR_LOCAL struct tyTable tyP0410Table;
_BUR_LOCAL struct fbTableCtrl fbP0400Table;
_BUR_LOCAL struct tyTable tyP0400Table;
_BUR_LOCAL struct TON fbMag3EntrySenOnTm;
_BUR_LOCAL struct TON fbMag2EntrySenOnTm;
_BUR_LOCAL struct TON fbMag1EntrySenOnTm;
_BUR_LOCAL struct TON fbLFLeaderCtrlBlinkTm;
_BUR_LOCAL struct TON fbStopBlinkTm;
_BUR_LOCAL struct TON fbMcStatUpdtTm;
_BUR_LOCAL struct TON fbBypsInitConvBlinkTm;
_BUR_LOCAL struct TON fbAccDatBlinkTm;
_BUR_LOCAL struct TON fbRstBlinkTm;
_BUR_LOCAL struct TON fbErrBlinkTm;
_BUR_LOCAL struct TON fbLmtRstTm;
_BUR_LOCAL struct TON fbJogSlowToFastDlyTm;
_BUR_LOCAL struct TON fbSSaverTm;
_BUR_LOCAL struct TON fbActSimuTmr;
_BUR_LOCAL struct TON fbShutterSimChgOver;
_BUR_LOCAL unsigned char usiSimuNtStep;
_BUR_LOCAL unsigned char usiTestTravStep;
_BUR_LOCAL enum eNtParamAction eNtWr;
_BUR_LOCAL plcbit bSimuMod;
_BUR_LOCAL unsigned char usiTableShftStep;
_BUR_LOCAL unsigned char usiDelMcDetailsStep;
_BUR_LOCAL unsigned char usiChgPage;
_BUR_LOCAL unsigned char usiLFLeaderCtrlStep;
_BUR_LOCAL unsigned char usiDelMagRcpStep;
_BUR_LOCAL unsigned char usiSaveMagRcpStep;
_BUR_LOCAL unsigned char usiProdRcpFromXMLStep;
_BUR_LOCAL unsigned char usiProdRcpToXMLStep;
_BUR_LOCAL unsigned char usiDelProdRcpStep;
_BUR_LOCAL unsigned char usiSaveProdRcpStep;
_BUR_LOCAL unsigned char usiDelUsrMgmtStep;
_BUR_LOCAL unsigned char usiEditUsrMgmtStep;
_BUR_LOCAL unsigned char usiSaveUsrMgmtStep;
_BUR_LOCAL unsigned char usiSaveIPAddrStep;
_BUR_LOCAL unsigned char usiSaveSubnetMaskStep;
_BUR_LOCAL unsigned char usiSaveAIVCommStep;
_BUR_LOCAL unsigned char usiSaveCommStep;
_BUR_LOCAL unsigned char usiSelMagRcpStep;
_BUR_LOCAL unsigned char usiSelProdRcpStep;
_BUR_LOCAL unsigned char usiLoginStep;
_BUR_LOCAL plcbit bTeachTravPosMag3;
_BUR_LOCAL plcbit bTeachTravPosMag2;
_BUR_LOCAL plcbit bTeachTravPosMag1;
_BUR_LOCAL plcbit bTeachLifterMag3Slt1Pos;
_BUR_LOCAL plcbit bTeachLifterMag2Slt1Pos;
_BUR_LOCAL plcbit bTeachLifterMag1Slt1Pos;
_BUR_LOCAL plcbit bTeachLifterBtmPos2;
_BUR_LOCAL plcbit bTeachLifterTopPos2;
_BUR_LOCAL plcbit bTeachLifterBtmPos;
_BUR_LOCAL plcbit bTeachLifterTopPos;
_BUR_LOCAL plcbit bTeachLifterPosB;
_BUR_LOCAL plcbit bTeachLifterPosA;
_BUR_LOCAL plcbit bTeachTravPosB;
_BUR_LOCAL plcbit bTeachTravPosA;
_BUR_LOCAL plcbit bOnlineTemp;
_BUR_LOCAL plcbit bIPDuplicate;
_BUR_LOCAL plcbit bRefreshUsrMgmtTable;
_BUR_LOCAL plcbit bRefreshProdRcpTable;
_BUR_LOCAL plcbit bRefreshProdRcpDetail;
_BUR_LOCAL plcbit bRefreshMagRcpTable;
_BUR_LOCAL plcbit bRefreshMagRcpDetail;
_BUR_LOCAL plcbit bLoginSuccess;
_BUR_LOCAL plcbit bJogStopLifter;
_BUR_LOCAL plcbit bJogStopTrav;
_BUR_LOCAL plcbit bJogStopAW;
_BUR_LOCAL plcbit bJogStopAWPushOrPuller;
_BUR_LOCAL plcbit bJogSlow;
_BUR_LOCAL plcbit bJogFast;
_BUR_LOCAL plcbit bChgPage;
_BUR_LOCAL enum ePage eCurrPage;
_BUR_LOCAL enum ePage eChgPageOld;
_BUR_LOCAL enum ePage eChgPage;
_BUR_LOCAL unsigned short i;
_BUR_LOCAL enum eUIInitial eUIInit;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned char usiHComModChaged;
_BUR_LOCAL signed long diMnlServoMtrMaxPulRatio;
_BUR_LOCAL signed long diMnlPPJogSpd;
_BUR_LOCAL signed long diMnlPPNomSpd;
_BUR_LOCAL signed long diMnlPPStepSize;
_BUR_LOCAL signed long diMnlPPTargetPos;
_BUR_LOCAL signed long diMnlPPGoWidth;
_BUR_LOCAL struct tyLyrP0950SOTstatus tySOTSimulateSig3;
_BUR_LOCAL struct tyLyrP0950SOTstatus tySOTSimulateSig2;
_BUR_LOCAL struct tyLyrP0950SOTstatus tySOTSimulateSig1;
_BUR_LOCAL plcbit bAGVSimulationOn;
_BUR_LOCAL plcbit bAGVSimulateOnline;
_BUR_LOCAL struct tyTagAGVToDTMag tyAGVSimulateSig;
_BUR_LOCAL plcbit bRlsMag3;
_BUR_LOCAL plcbit bRlsMag2;
_BUR_LOCAL plcbit bRlsMag1;
_BUR_LOCAL plcbit bNewMag3;
_BUR_LOCAL plcbit bNewMag2;
_BUR_LOCAL plcbit bNewMag1;
_BUR_LOCAL plcbit bEjectMag3;
_BUR_LOCAL plcbit bEjectMag2;
_BUR_LOCAL plcbit bEjectMag1;
_BUR_LOCAL plcbit bOpsBypsInitConv;
_BUR_LOCAL plcbit bProdAccData;
_BUR_LOCAL plcbit bLeaderRun;
_BUR_LOCAL signed long diSetBrdInOvenB;
_BUR_LOCAL signed long diSetBrdInOvenA;
_BUR_LOCAL plcbit bVSMEMAUBABStat;
_BUR_LOCAL plcbit bVSMEMAUBAB;
_BUR_LOCAL plcbit bVSMEMAUBAAStat;
_BUR_LOCAL plcbit bVSMEMAUBAA;
_BUR_LOCAL plcbit bVSMEMAUSBEn;
_BUR_LOCAL plcbit bVSMEMAUSAEn;
_BUR_LOCAL signed long diMnlMagAW3JogSpd;
_BUR_LOCAL signed long diMnlMagAW3StepSize;
_BUR_LOCAL signed long diMnlMagAW3TargetPos;
_BUR_LOCAL signed long diMnlMagAW3NomSpd;
_BUR_LOCAL signed long diMnlMagAW3GoWidth;
_BUR_LOCAL signed long diMnlMagAW2JogSpd;
_BUR_LOCAL signed long diMnlMagAW2StepSize;
_BUR_LOCAL signed long diMnlMagAW2TargetPos;
_BUR_LOCAL signed long diMnlMagAW2NomSpd;
_BUR_LOCAL signed long diMnlMagAW2GoWidth;
_BUR_LOCAL signed long diMnlMagAW1JogSpd;
_BUR_LOCAL signed long diMnlMagAW1StepSize;
_BUR_LOCAL signed long diMnlMagAW1TargetPos;
_BUR_LOCAL signed long diMnlMagAW1NomSpd;
_BUR_LOCAL signed long diMnlMagAW1GoWidth;
_BUR_LOCAL signed long diMnlTravJogSpd;
_BUR_LOCAL signed long diMnlTravStepSize;
_BUR_LOCAL signed long diMnlTravTargetPos;
_BUR_LOCAL signed long diMnlTravNomSpd;
_BUR_LOCAL signed long diMnlLifterJogSpd2;
_BUR_LOCAL signed long diMnlLifterStepSize2;
_BUR_LOCAL signed long diMnlLifterTargetPos2;
_BUR_LOCAL signed long diMnlLifterNomSpd2;
_BUR_LOCAL signed long diMnlLifterMag3GoSlt2;
_BUR_LOCAL signed long diMnlLifterMag2GoSlt2;
_BUR_LOCAL signed long diMnlLifterMag1GoSlt2;
_BUR_LOCAL signed long diMnlLifterGoSlt1Pos2;
_BUR_LOCAL signed long diMnlLifterJogSpd;
_BUR_LOCAL signed long diMnlLifterStepSize;
_BUR_LOCAL signed long diMnlLifterTargetPos;
_BUR_LOCAL signed long diMnlLifterNomSpd;
_BUR_LOCAL signed long diMnlLifterMag3GoSlt;
_BUR_LOCAL signed long diMnlLifterMag2GoSlt;
_BUR_LOCAL signed long diMnlLifterMag1GoSlt;
_BUR_LOCAL signed long diMnlLifterGoSlt1Pos;
_BUR_LOCAL signed long diMnlAWJogSpd;
_BUR_LOCAL signed long diMnlAWStepSize;
_BUR_LOCAL signed long diMnlAWTargetPos;
_BUR_LOCAL signed long diMnlAWNomSpd;
_BUR_LOCAL signed long diMnlAWGoWidth;
_BUR_LOCAL signed long diMnlAWPushOrPullerJogSpd;
_BUR_LOCAL signed long diMnlAWPushOrPullerStepSize;
_BUR_LOCAL signed long diMnlAWPushOrPullerTargetPos;
_BUR_LOCAL signed long diMnlAWPushOrPullerNomSpd;
_BUR_LOCAL signed long diMnlAWPushOrPullerGoWidth;
_BUR_LOCAL signed long diMnlMtrPshrExtTorq;
_BUR_LOCAL signed long diMnlMtrPshrExtSpd;
_BUR_LOCAL signed long diConstant2;
_BUR_LOCAL signed long diConstant1;
_BUR_LOCAL plcbit bMuteBuz;
_BUR_LOCAL plcbit bUIManualMod;
_BUR_LOCAL plcbit bManualMod;
_BUR_LOCAL plcstring sSetSubnetMask[31];
_BUR_LOCAL plcstring sSetIPAddr[31];
_BUR_LOCAL struct tyHermesSvyParam tyHermesSvyParamWr;
_BUR_LOCAL struct tyHermesUSParam a_tyHermesUSParamWr[4];
_BUR_LOCAL struct tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl3Wr;
_BUR_LOCAL struct tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl2Wr;
_BUR_LOCAL struct tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl1Wr;
_BUR_LOCAL struct tyUsrMgmtParam tyUsrMgmtInfoIn;
_BUR_LOCAL struct tyMagRcpParam tyMagRcpCurrRcpWr;
_BUR_LOCAL plcstring sMagRcpSearch[31];
_BUR_LOCAL struct tyMagRcpParam tyMagRcpInfoIn;
_BUR_LOCAL struct tyProdRcpParam tyProdRcpCurrRcpWr;
_BUR_LOCAL plcstring sProdRcpScan[31];
_BUR_LOCAL plcstring sProdRcpSearch[31];
_BUR_LOCAL struct tyProdRcpParam tyProdRcpInfoIn;
_BUR_LOCAL struct tyMcParam tyMcParamWr;
_BUR_LOCAL struct TON fbCurtainRstDly;
_BUR_LOCAL plcbit bBypCurtainPBLED;
_BUR_LOCAL plcbit bBypCurtainSen;
_BUR_LOCAL plcbit bSafetyCurtainReset;
_BUR_LOCAL enum ePneuAction eStopper5Act2;
_BUR_LOCAL enum ePneuAction eStopper4Act2;
_BUR_LOCAL enum ePneuAction eStopper3Act2;
_BUR_LOCAL enum ePneuAction eStopper2Act2;
_BUR_LOCAL enum ePneuAction eStopper1Act2;
_BUR_LOCAL enum ePneuAction eStopper5Act;
_BUR_LOCAL enum ePneuAction eStopper4Act;
_BUR_LOCAL enum ePneuAction eStopper3Act;
_BUR_LOCAL enum ePneuAction eStopper2Act;
_BUR_LOCAL enum ePneuAction eStopper1Act;
_BUR_LOCAL enum eMagConvAction eLifterMagConv2Act;
_BUR_LOCAL enum eMagConvAction eLifterMagConvAct;
_BUR_LOCAL enum eMagConvAction eOutMagConv2Act;
_BUR_LOCAL enum eMagConvAction eInMagConv2Act;
_BUR_LOCAL enum eMagConvAction eOutMagConvAct;
_BUR_LOCAL enum eMagConvAction eInMagConvAct;
_BUR_LOCAL enum eOperationsAction eOpsAct;
_BUR_LOCAL enum eLFAction eLFLeaderAct;
_BUR_LOCAL enum eHermesAction eHermesAct;
_BUR_LOCAL enum eDOAction eDOAct;
_BUR_LOCAL enum eMagAWAction eMagAWOpen3Act;
_BUR_LOCAL enum eMagAWAction eMagAWOpen2Act;
_BUR_LOCAL enum eMagAWAction eMagAWOpen1Act;
_BUR_LOCAL enum eTravAction eTravAct;
_BUR_LOCAL enum eLifterAction eLifter2Act;
_BUR_LOCAL enum eLifterAction eLifterBtmAct;
_BUR_LOCAL enum eAWAction eAWOpenAct;
_BUR_LOCAL enum eAWAction eAWPushOrPullerAct;
_BUR_LOCAL enum eMagConv2ClpAction eMagConv2Clp3Act;
_BUR_LOCAL enum eMagConv2ClpAction eMagConv2Clp2Act;
_BUR_LOCAL enum eMagConv2ClpAction eMagConv2Clp1Act;
_BUR_LOCAL enum ePneuAction eMagConvSelClp3Act;
_BUR_LOCAL enum ePneuAction eMagConvSelClp2Act;
_BUR_LOCAL enum ePneuAction eMagConvSelClp1Act;
_BUR_LOCAL enum eMtrPshrAction eMtrPshrAct;
_BUR_LOCAL enum eConvAction ePshrConvAct;
_BUR_LOCAL enum ePneuAction eMag3AWEngageAct;
_BUR_LOCAL enum ePneuAction eMag2AWEngageAct;
_BUR_LOCAL enum ePneuAction eMag1AWEngageAct;
_BUR_LOCAL enum ePneuAction eMag3SafetyBarAct;
_BUR_LOCAL enum ePneuAction eMag2SafetyBarAct;
_BUR_LOCAL enum ePneuAction eMag1SafetyBarAct;
_BUR_LOCAL enum ePneuAction eInStopperAct;
_BUR_LOCAL enum ePneuAction eStopperBAct;
_BUR_LOCAL enum ePneuAction eStopperAAct;
_BUR_LOCAL enum ePneuAction eOutShutterAct3;
_BUR_LOCAL enum ePneuAction eOutShutterAct2;
_BUR_LOCAL enum ePneuAction eOutShutterAct;
_BUR_LOCAL enum ePneuAction eInShutterAct;
_BUR_LOCAL enum eSMEMAAction eUSSMEMABAct;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAAAct;
_BUR_LOCAL enum eBufferAction eBuffer3Act;
_BUR_LOCAL enum eBufferAction eBuffer2Act;
_BUR_LOCAL enum eBufferAction eBuffer1Act;
_BUR_LOCAL enum eOvenInfoAction eOvenInfoBAct;
_BUR_LOCAL enum eOvenInfoAction eOvenInfoAAct;
_BUR_LOCAL enum eUsrMgmtAction eUsrMgmtAct;
_BUR_LOCAL enum eMcParamAction eMcParamAct;
_BUR_LOCAL enum eMagRcpAction eMagRcpAct;
_BUR_LOCAL enum eMpProdRcpAction eMpProdRcpAct;
_BUR_LOCAL enum eProdRcpAction eProdRcpAct;
_BUR_LOCAL enum eRstErrAction eRstErrAct;
_BUR_LOCAL enum eTLBuzAction eTLBuzAct;
_BUR_LOCAL enum eHWInfoAction eHWInfoAct;
_BUR_LOCAL enum eSimulationsAction eSimuAct;
_BUR_LOCAL enum eStartupAction eStartupAct;
_BUR_LOCAL struct tyUIAllAlm tyUIAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eUIAction eStat;
_BUR_LOCAL enum eUIAction eAct;
_BUR_LOCAL plcstring sTempNetworkMode[31];
_BUR_LOCAL plcstring sSelectedNetworkMode[31];
_BUR_LOCAL struct tyIPAddress g_sIPAddress;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/UI/UI/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtUI/NtUI.fun\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/NtLibraries/NtHermes/Constants.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680535_178_ */

