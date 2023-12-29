/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817513_129_
#define _BUR_1703817513_129_

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
_BUR_LOCAL plcstring sHMIIPAddr[16];
_BUR_LOCAL unsigned char usiSaveHMIIPAddrStep;
_BUR_LOCAL unsigned char usiDuplicate;
_BUR_LOCAL unsigned char usiGenSaveStep;
_BUR_LOCAL plcbit bBypassShutForCalib;
_BUR_LOCAL unsigned char usiExtRetTest;
_BUR_LOCAL struct TON fbPushExtRestTmr;
_BUR_LOCAL struct TON fbPushRetRestTmr;
_BUR_LOCAL plcbit bNaviLyr2;
_BUR_LOCAL plcbit bNaviLyr1;
_BUR_LOCAL plcstring sPshrExtWarnMsg[255];
_BUR_LOCAL signed short IPshrSafeDistanceValue;
_BUR_LOCAL plcbit bChgMagSig;
_BUR_LOCAL plcbit bFllw2SetFull;
_BUR_LOCAL struct TON fbChgMagBlinkTm;
_BUR_LOCAL struct TON tChgMag;
_BUR_LOCAL plcbit bChgMag;
_BUR_LOCAL struct TON fbUnloadBlinkTm;
_BUR_LOCAL struct TON fbMagAWSelfTestTim;
_BUR_LOCAL unsigned char usiMagAWSelfTestStep;
_BUR_LOCAL struct TON fbMagAWSelfTestTim2;
_BUR_LOCAL unsigned char usiMagAWSelfTestStep2;
_BUR_LOCAL struct TON fbMagAWSelfTestTim1;
_BUR_LOCAL unsigned char usiMagAWSelfTestStep1;
_BUR_LOCAL plcbit bMagAWSelfTest;
_BUR_LOCAL unsigned short uiLFStartEditNo;
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
_BUR_LOCAL unsigned char usiNetworkModeNew;
_BUR_LOCAL unsigned char usiNetworkModeOld;
_BUR_LOCAL plcbit bTeachServo;
_BUR_LOCAL plcbit bNetworkConfigChanged;
_BUR_LOCAL plcbit bSaveNetworkPriority;
_BUR_LOCAL plcstring sTempSubnetMask[16];
_BUR_LOCAL plcstring sTempIPAddr[16];
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
_BUR_LOCAL struct tySOTstatus tySOTSimulateSig3;
_BUR_LOCAL struct tySOTstatus tySOTSimulateSig2;
_BUR_LOCAL struct tySOTstatus tySOTSimulateSig1;
_BUR_LOCAL plcbit bAGVSimulationOn;
_BUR_LOCAL plcbit bAGVSimulateOnline;
_BUR_LOCAL struct tyTagAGVToDTMag tyAGVSimulateSig;
_BUR_LOCAL struct tyHermesUSParam a_tyHermesUSParamWr[4];
_BUR_LOCAL struct tyMagRcpParam tyMagRcpCurrRcpWr;
_BUR_LOCAL struct tyMagRcpParam tyMagRcpInfoIn;
_BUR_LOCAL struct tyProdRcpParam tyProdRcpCurrRcpWr;
_BUR_LOCAL struct tyProdRcpParam tyProdRcpInfoIn;
_BUR_LOCAL struct TON fbCurtainRstDly;
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


#endif /* _BUR_1703817513_129_ */

