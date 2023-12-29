/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703837633_176_
#define _BUR_1703837633_176_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL enum eOptBtn *p_eCurrBtnPos;
_BUR_LOCAL plcbit *p_bLocalMagPresent;
_BUR_LOCAL struct tyDispBffrCycTm *p_tyBufferDispCycleTmBffr;
_BUR_LOCAL plcbit *p_bDIPCBScanComplSig;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyMagProperties (*pa_tyMagProps)[4];
#else
/* Variable pa_tyMagProps not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL signed short *p_iOpsMagConvUL3MESAcptCond;
_BUR_LOCAL signed short *p_iOpsMagConvUL2MESAcptCond;
_BUR_LOCAL signed short *p_iOpsMagConvUL1MESAcptCond;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyBoardProperty (*pa_tyAutoRcpBrdProps)[4];
#else
/* Variable pa_tyAutoRcpBrdProps not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit *p_bMcParamAutoRcpDisable;
_BUR_LOCAL struct PPTorqParam *p_tyNtParamPPTorqParam;
_BUR_LOCAL enum eCustomer *p_eNtParamCustomerReq;
_BUR_LOCAL plcbit p_FrontUSHermesConnect;
_BUR_LOCAL plcstring (*p_sOpsOutMagConvStepTxt1)[81];
_BUR_LOCAL plcstring (*p_sOpsOutMagConvStepTxt)[81];
_BUR_LOCAL plcstring (*p_sOpsInMagConvStepTxt1)[81];
_BUR_LOCAL plcstring (*p_sOpsInMagConvStepTxt)[81];
_BUR_LOCAL plcbit *p_bOpsLifMagULStepIdle2;
_BUR_LOCAL plcbit *p_bOpsLifMagULLifMov;
_BUR_LOCAL plcbit *p_bOpsLifMagULUnloading;
_BUR_LOCAL plcstring (*p_sOpsLifMagULStepTxt1)[81];
_BUR_LOCAL plcstring (*p_sOpsLifMagULStepTxt)[81];
_BUR_LOCAL plcbit *p_bOpsMagConvUL3EjectMagNotAllw;
_BUR_LOCAL plcbit *p_bOpsMagConvUL2EjectMagNotAllw;
_BUR_LOCAL plcbit *p_bOpsMagConvUL1EjectMagNotAllw;
_BUR_LOCAL plcbit *p_bOpsMagConvUL3EjectMESStep;
_BUR_LOCAL plcbit *p_bOpsMagConvUL2EjectMESStep;
_BUR_LOCAL plcbit *p_bOpsMagConvUL1EjectMESStep;
_BUR_LOCAL plcbit *p_bOpsMagConvUL3RlsMagAllw;
_BUR_LOCAL plcbit *p_bOpsMagConvUL2RlsMagAllw;
_BUR_LOCAL plcbit *p_bOpsMagConvUL1RlsMagAllw;
_BUR_LOCAL plcbit *p_bOpsMagConvUL3NewMagAllw;
_BUR_LOCAL plcbit *p_bOpsMagConvUL2NewMagAllw;
_BUR_LOCAL plcbit *p_bOpsMagConvUL1NewMagAllw;
_BUR_LOCAL plcbit *p_bOpsMagConvUL3MagExitedWait;
_BUR_LOCAL plcbit *p_bOpsMagConvUL2MagExitedWait;
_BUR_LOCAL plcbit *p_bOpsMagConvUL1MagExitedWait;
_BUR_LOCAL plcbit *p_bOpsMagConvUL3InitDone;
_BUR_LOCAL plcbit *p_bOpsMagConvUL2InitDone;
_BUR_LOCAL plcbit *p_bOpsMagConvUL1InitDone;
_BUR_LOCAL plcbit *p_bOpsTravLifMov;
_BUR_LOCAL plcbit *p_bOpsTravLifULInitConv;
_BUR_LOCAL plcstring (*p_sOpsMagConvUL3StepTxt)[81];
_BUR_LOCAL plcstring (*p_sOpsMagConvUL2StepTxt)[81];
_BUR_LOCAL plcstring (*p_sOpsMagConvUL1StepTxt)[81];
_BUR_LOCAL plcstring (*p_sOpsMagUL3StepTxt)[81];
_BUR_LOCAL plcstring (*p_sOpsMagUL2StepTxt)[81];
_BUR_LOCAL plcstring (*p_sOpsMagUL1StepTxt)[81];
_BUR_LOCAL plcstring (*p_sOpsTravLifULStepTxt)[81];
_BUR_LOCAL plcbit *p_bOpsStatusStep;
_BUR_LOCAL plcbit *p_bOpsStatusCycleStop;
_BUR_LOCAL plcbit *p_bOpsStatusStop;
_BUR_LOCAL plcbit *p_bOpsStatusRun;
_BUR_LOCAL enum eOperationsStatus *p_eOpsOpsStatus;
_BUR_LOCAL plcstring (*p_sOpsStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eOpsStatus;
_BUR_LOCAL enum eOperationsAction *p_eOpsStat;
_BUR_LOCAL plcbit *p_bLCSLFAccDataMnl;
_BUR_LOCAL plcbit *p_bLFFollowerProdAccDataMnl;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyLFFollowerToLeaderTag (*p_tyLFLeaderFollowerToLeaderTag)[50];
#else
/* Variable p_tyLFLeaderFollowerToLeaderTag not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyLFFollowerInfo (*p_tyLFLeaderFollowerInfo)[50];
#else
/* Variable p_tyLFLeaderFollowerInfo not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL enum eFBStatus *p_eLFLeaderStatus;
_BUR_LOCAL enum eLFAction *p_eLFLeaderStat;
_BUR_LOCAL plcbit *p_bUSHermesBAccDataMnl;
_BUR_LOCAL plcbit *p_bUSHermesBConnected;
_BUR_LOCAL plcbit *p_bUSHermesBDSGdRdy;
_BUR_LOCAL plcbit *p_bUSHermesBUSGdRdy;
_BUR_LOCAL plcbit *p_bUSHermesBDSRdy;
_BUR_LOCAL plcbit *p_bUSHermesBUSRdy;
_BUR_LOCAL plcstring (*p_sUSHermesBStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eUSHermesBStatus;
_BUR_LOCAL enum eHermesAction *p_eUSHermesBStat;
_BUR_LOCAL plcbit *p_bUSHermesAAccDataMnl;
_BUR_LOCAL plcbit *p_bUSHermesAConnected;
_BUR_LOCAL plcbit *p_bUSHermesADSGdRdy;
_BUR_LOCAL plcbit *p_bUSHermesAUSGdRdy;
_BUR_LOCAL plcbit *p_bUSHermesADSRdy;
_BUR_LOCAL plcbit *p_bUSHermesAUSRdy;
_BUR_LOCAL plcstring (*p_sUSHermesAStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eUSHermesAStatus;
_BUR_LOCAL enum eHermesAction *p_eUSHermesAStat;
_BUR_LOCAL struct tyHermesSendWorkOrderInfo *p_tySvyHermesBypassSendWOData;
_BUR_LOCAL struct tyHermesSendWorkOrderInfo *p_tySvyHermesSendWorkOrderData;
_BUR_LOCAL struct tyHermesSendWorkOrderInfo *p_tySendWorkOrderData;
_BUR_LOCAL plcbit *p_bNewIncomingBoard;
_BUR_LOCAL plcbit *p_bRcvWorkOrderInfo1;
_BUR_LOCAL plcbit *p_bReplyBypassWorkOrderInfo;
_BUR_LOCAL plcbit *p_bQueryBypassWorkOrder;
_BUR_LOCAL plcstring (*p_sWorkOrderId)[81];
_BUR_LOCAL signed long *p_diReqLoaderWidthInUM;
_BUR_LOCAL plcbit *p_bOpsConvWaitForTopUpBrd;
_BUR_LOCAL plcbit *p_bWaitDecision;
_BUR_LOCAL plcbit *p_bTransportFinished;
_BUR_LOCAL plcbit *p_bRcvBoardInfoIncompl;
_BUR_LOCAL plcbit *p_bRcvBoardInfoOk;
_BUR_LOCAL plcbit *p_bSvyUpdateUIData;
_BUR_LOCAL plcbit *p_bRmtUpdateUIData;
_BUR_LOCAL struct tyHermesConfiguration *p_tyHermesConfiguration;
_BUR_LOCAL enum eFBStatus *p_eHermesStatus;
_BUR_LOCAL enum eHermesAction *p_eHermesStat;
_BUR_LOCAL struct tyStatFromMES *p_tyTagFromMes;
_BUR_LOCAL struct tyStatToMES *p_tyTagToMes;
_BUR_LOCAL struct tyTagAGVToDTMag *p_tyAGVToDTMag;
_BUR_LOCAL struct tyTagDTMagToAGV *p_tyDTMagToAGV3;
_BUR_LOCAL struct tyTagDTMagToAGV *p_tyDTMagToAGV2;
_BUR_LOCAL struct tyTagDTMagToAGV *p_tyDTMagToAGV1;
_BUR_LOCAL struct tyDigitalOutput *p_tyDO;
_BUR_LOCAL plcstring (*p_sDOStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eDOStatus;
_BUR_LOCAL enum eDOAction *p_eDOStat;
_BUR_LOCAL struct tyDigitalInput *p_tyDI;
_BUR_LOCAL signed long *p_diNtParamTravAutoSpd;
_BUR_LOCAL signed long *p_diNtParamLifterAutoSpd;
_BUR_LOCAL enum eFBStatus *p_eNtParamStatus;
_BUR_LOCAL enum eNtParamAction *p_eNtParamStat;
_BUR_LOCAL unsigned char *p_usiNtParamNtAddr;
_BUR_LOCAL plcstring (*p_sNtParamJobNo)[31];
_BUR_LOCAL plcbit *p_bSimuStatusStep;
_BUR_LOCAL plcbit *p_bSimuStatusCycleStop;
_BUR_LOCAL plcbit *p_bSimuStatusStop;
_BUR_LOCAL plcbit *p_bSimuStatusRun;
_BUR_LOCAL enum eSimulationsStatus *p_eSimuSimuStatus;
_BUR_LOCAL enum eFBStatus *p_eSimuStatus;
_BUR_LOCAL enum eSimulationsAction *p_eSimuStat;
_BUR_LOCAL plcbit *p_bMag3AWEngageRetracted;
_BUR_LOCAL plcbit *p_bMag3AWEngageExtended;
_BUR_LOCAL plcbit *p_bMag3AWEngageTwoCtrlOut;
_BUR_LOCAL plcbit *p_bMag3AWEngageRetCtrl;
_BUR_LOCAL plcbit *p_bMag3AWEngageExtCtrl;
_BUR_LOCAL plcstring (*p_sMag3AWEngageStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMag3AWEngageStatus;
_BUR_LOCAL enum ePneuAction *p_eMag3AWEngageStat;
_BUR_LOCAL plcbit *p_bMag2AWEngageRetracted;
_BUR_LOCAL plcbit *p_bMag2AWEngageExtended;
_BUR_LOCAL plcbit *p_bMag2AWEngageTwoCtrlOut;
_BUR_LOCAL plcbit *p_bMag2AWEngageRetCtrl;
_BUR_LOCAL plcbit *p_bMag2AWEngageExtCtrl;
_BUR_LOCAL plcstring (*p_sMag2AWEngageStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMag2AWEngageStatus;
_BUR_LOCAL enum ePneuAction *p_eMag2AWEngageStat;
_BUR_LOCAL plcbit *p_bMag1AWEngageRetracted;
_BUR_LOCAL plcbit *p_bMag1AWEngageExtended;
_BUR_LOCAL plcbit *p_bMag1AWEngageTwoCtrlOut;
_BUR_LOCAL plcbit *p_bMag1AWEngageRetCtrl;
_BUR_LOCAL plcbit *p_bMag1AWEngageExtCtrl;
_BUR_LOCAL plcstring (*p_sMag1AWEngageStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMag1AWEngageStatus;
_BUR_LOCAL enum ePneuAction *p_eMag1AWEngageStat;
_BUR_LOCAL plcbit *p_bMag3SafetyBarRetracted;
_BUR_LOCAL plcbit *p_bMag3SafetyBarExtended;
_BUR_LOCAL plcbit *p_bMag3SafetyBarTwoCtrlOut;
_BUR_LOCAL plcbit *p_bMag3SafetyBarRetCtrl;
_BUR_LOCAL plcbit *p_bMag3SafetyBarExtCtrl;
_BUR_LOCAL plcstring (*p_sMag3SafetyBarStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMag3SafetyBarStatus;
_BUR_LOCAL enum ePneuAction *p_eMag3SafetyBarStat;
_BUR_LOCAL plcbit *p_bMag2SafetyBarRetracted;
_BUR_LOCAL plcbit *p_bMag2SafetyBarExtended;
_BUR_LOCAL plcbit *p_bMag2SafetyBarTwoCtrlOut;
_BUR_LOCAL plcbit *p_bMag2SafetyBarRetCtrl;
_BUR_LOCAL plcbit *p_bMag2SafetyBarExtCtrl;
_BUR_LOCAL plcstring (*p_sMag2SafetyBarStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMag2SafetyBarStatus;
_BUR_LOCAL enum ePneuAction *p_eMag2SafetyBarStat;
_BUR_LOCAL plcbit *p_bMag1SafetyBarRetracted;
_BUR_LOCAL plcbit *p_bMag1SafetyBarExtended;
_BUR_LOCAL plcbit *p_bMag1SafetyBarTwoCtrlOut;
_BUR_LOCAL plcbit *p_bMag1SafetyBarRetCtrl;
_BUR_LOCAL plcbit *p_bMag1SafetyBarExtCtrl;
_BUR_LOCAL plcstring (*p_sMag1SafetyBarStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMag1SafetyBarStatus;
_BUR_LOCAL enum ePneuAction *p_eMag1SafetyBarStat;
_BUR_LOCAL plcbit *p_bMagAWOpen3CloseSen;
_BUR_LOCAL plcbit *p_bMagAWOpen3OpenSen;
_BUR_LOCAL plcbit *p_bMagAWOpen3Engaging;
_BUR_LOCAL plcbit *p_bMagAWOpen3Jogging;
_BUR_LOCAL plcstring (*p_sMagAWOpen3AxisErrTxt)[81];
_BUR_LOCAL plcbit *p_bMagAWOpen3RevLmtSen;
_BUR_LOCAL plcbit *p_bMagAWOpen3FwdLmtSen;
_BUR_LOCAL signed long *p_diMagAWOpen3ActualPos;
_BUR_LOCAL plcbit *p_bMagAWOpen3IsHomed;
_BUR_LOCAL plcbit *p_bMagAWOpen3PwrOn;
_BUR_LOCAL plcbit *p_bMagAWOpen3AxisErr;
_BUR_LOCAL unsigned long *p_udiMagAWOpen3AxisErrID;
_BUR_LOCAL plcstring (*p_sMagAWOpen3StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMagAWOpen3Status;
_BUR_LOCAL enum eMagAWAction *p_eMagAWOpen3Stat;
_BUR_LOCAL plcbit *p_bMagAWOpen2CloseSen;
_BUR_LOCAL plcbit *p_bMagAWOpen2OpenSen;
_BUR_LOCAL plcbit *p_bMagAWOpen2Engaging;
_BUR_LOCAL plcbit *p_bMagAWOpen2Jogging;
_BUR_LOCAL plcstring (*p_sMagAWOpen2AxisErrTxt)[81];
_BUR_LOCAL plcbit *p_bMagAWOpen2RevLmtSen;
_BUR_LOCAL plcbit *p_bMagAWOpen2FwdLmtSen;
_BUR_LOCAL signed long *p_diMagAWOpen2ActualPos;
_BUR_LOCAL plcbit *p_bMagAWOpen2IsHomed;
_BUR_LOCAL plcbit *p_bMagAWOpen2PwrOn;
_BUR_LOCAL plcbit *p_bMagAWOpen2AxisErr;
_BUR_LOCAL unsigned long *p_udiMagAWOpen2AxisErrID;
_BUR_LOCAL plcstring (*p_sMagAWOpen2StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMagAWOpen2Status;
_BUR_LOCAL enum eMagAWAction *p_eMagAWOpen2Stat;
_BUR_LOCAL plcbit *p_bMagAWOpen1CloseSen;
_BUR_LOCAL plcbit *p_bMagAWOpen1OpenSen;
_BUR_LOCAL plcbit *p_bMagAWOpen1Engaging;
_BUR_LOCAL plcbit *p_bMagAWOpen1Jogging;
_BUR_LOCAL plcstring (*p_sMagAWOpen1AxisErrTxt)[81];
_BUR_LOCAL plcbit *p_bMagAWOpen1RevLmtSen;
_BUR_LOCAL plcbit *p_bMagAWOpen1FwdLmtSen;
_BUR_LOCAL signed long *p_diMagAWOpen1ActualPos;
_BUR_LOCAL plcbit *p_bMagAWOpen1IsHomed;
_BUR_LOCAL plcbit *p_bMagAWOpen1PwrOn;
_BUR_LOCAL plcbit *p_bMagAWOpen1AxisErr;
_BUR_LOCAL unsigned long *p_udiMagAWOpen1AxisErrID;
_BUR_LOCAL plcstring (*p_sMagAWOpen1StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMagAWOpen1Status;
_BUR_LOCAL enum eMagAWAction *p_eMagAWOpen1Stat;
_BUR_LOCAL plcbit *p_bTravHPosDiff;
_BUR_LOCAL plcbit *p_bTravGPosDiff;
_BUR_LOCAL plcbit *p_bTravFPosDiff;
_BUR_LOCAL plcbit *p_bTravEPosDiff;
_BUR_LOCAL plcbit *p_bTravDPosDiff;
_BUR_LOCAL plcbit *p_bTravCPosDiff;
_BUR_LOCAL plcbit *p_bTravBPosDiff;
_BUR_LOCAL plcbit *p_bTravAPosDiff;
_BUR_LOCAL plcbit *p_bTravRearSen;
_BUR_LOCAL plcbit *p_bTravFrontSen;
_BUR_LOCAL plcbit *p_bTravJogging;
_BUR_LOCAL signed long *p_diTravActualPos;
_BUR_LOCAL plcbit *p_bTravRevLmtSen;
_BUR_LOCAL plcbit *p_bTravFwdLmtSen;
_BUR_LOCAL plcstring (*p_sTravAxisErrTxt)[81];
_BUR_LOCAL unsigned long *p_udiTravAxisErrID;
_BUR_LOCAL plcbit *p_bTravAxisErr;
_BUR_LOCAL plcbit *p_bTravPosDiff;
_BUR_LOCAL plcbit *p_bTravIsHomed;
_BUR_LOCAL plcbit *p_bTravPwrOn;
_BUR_LOCAL plcstring (*p_sTravStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eTravStatus;
_BUR_LOCAL enum eTravAction *p_eTravStat;
_BUR_LOCAL plcbit *p_bLifter2SltAPosDiff;
_BUR_LOCAL plcbit *p_bLifter2DownSen;
_BUR_LOCAL plcbit *p_bLifter2UpSen;
_BUR_LOCAL signed long *p_diLifter2CurrSltC;
_BUR_LOCAL signed long *p_diLifter2CurrSltB;
_BUR_LOCAL signed long *p_diLifter2CurrSltA;
_BUR_LOCAL plcbit *p_bLifter2Jogging;
_BUR_LOCAL signed long *p_diLifter2ActualPos;
_BUR_LOCAL plcbit *p_bLifter2RevLmtSen;
_BUR_LOCAL plcbit *p_bLifter2FwdLmtSen;
_BUR_LOCAL plcstring (*p_sLifter2AxisErrTxt)[81];
_BUR_LOCAL unsigned long *p_udiLifter2AxisErrID;
_BUR_LOCAL plcbit *p_bLifter2AxisErr;
_BUR_LOCAL plcbit *p_bLifter2PosDiff;
_BUR_LOCAL plcbit *p_bLifter2IsHomed;
_BUR_LOCAL plcbit *p_bLifter2PwrOn;
_BUR_LOCAL plcstring (*p_sLifter2StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eLifter2Status;
_BUR_LOCAL enum eLifterAction *p_eLifter2Stat;
_BUR_LOCAL plcbit *p_bLifterBtmSltAPosDiff;
_BUR_LOCAL plcbit *p_bLifterBtmDownSen;
_BUR_LOCAL plcbit *p_bLifterBtmUpSen;
_BUR_LOCAL signed long *p_diLifterBtmCurrSltC;
_BUR_LOCAL signed long *p_diLifterBtmCurrSltB;
_BUR_LOCAL signed long *p_diLifterBtmCurrSltA;
_BUR_LOCAL plcbit *p_bLifterBtmJogging;
_BUR_LOCAL signed long *p_diLifterBtmActualPos;
_BUR_LOCAL plcbit *p_bLifterBtmRevLmtSen;
_BUR_LOCAL plcbit *p_bLifterBtmFwdLmtSen;
_BUR_LOCAL plcstring (*p_sLifterBtmAxisErrTxt)[81];
_BUR_LOCAL unsigned long *p_udiLifterBtmAxisErrID;
_BUR_LOCAL plcbit *p_bLifterBtmAxisErr;
_BUR_LOCAL plcbit *p_bLifterBtmPosDiff;
_BUR_LOCAL plcbit *p_bLifterBtmIsHomed;
_BUR_LOCAL plcbit *p_bLifterBtmPwrOn;
_BUR_LOCAL plcstring (*p_sLifterBtmStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eLifterBtmStatus;
_BUR_LOCAL enum eLifterAction *p_eLifterBtmStat;
_BUR_LOCAL plcbit *p_bAWOpenCloseSen;
_BUR_LOCAL plcbit *p_bAWOpenOpenSen;
_BUR_LOCAL plcbit *p_bAWOpenJogging;
_BUR_LOCAL plcstring (*p_sAWOpenAxisErrTxt)[81];
_BUR_LOCAL plcbit *p_bAWOpenRevLmtSen;
_BUR_LOCAL plcbit *p_bAWOpenFwdLmtSen;
_BUR_LOCAL signed long *p_diAWOpenActualPos;
_BUR_LOCAL plcbit *p_bAWOpenIsHomed;
_BUR_LOCAL plcbit *p_bAWOpenPwrOn;
_BUR_LOCAL plcbit *p_bAWOpenAxisErr;
_BUR_LOCAL unsigned long *p_udiAWOpenAxisErrID;
_BUR_LOCAL plcstring (*p_sAWOpenStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eAWOpenStatus;
_BUR_LOCAL enum eAWAction *p_eAWOpenStat;
_BUR_LOCAL plcbit *p_bAWPushOrPullerPrep;
_BUR_LOCAL plcbit *p_bAWPushOrPullerCloseSen;
_BUR_LOCAL plcbit *p_bAWPushOrPullerOpenSen;
_BUR_LOCAL plcbit *p_bAWPushOrPullerJogging;
_BUR_LOCAL plcstring (*p_sAWPushOrPullerAxisErrTxt)[81];
_BUR_LOCAL plcbit *p_bAWPushOrPullerRevLmtSen;
_BUR_LOCAL plcbit *p_bAWPushOrPullerFwdLmtSen;
_BUR_LOCAL signed long *p_diAWPushOrPullerActualPos;
_BUR_LOCAL plcbit *p_bAWPushOrPullerIsHomed;
_BUR_LOCAL plcbit *p_bAWPushOrPullerPwrOn;
_BUR_LOCAL plcbit *p_bAWPushOrPullerAxisErr;
_BUR_LOCAL unsigned long *p_udiAWPushOrPullerAxisErrID;
_BUR_LOCAL plcstring (*p_sAWPushOrPullerStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eAWPushOrPullerStatus;
_BUR_LOCAL enum eAWAction *p_eAWPushOrPullerStat;
_BUR_LOCAL plcbit *p_bMagConv2Clp3ClprTwoOutputCtrl;
_BUR_LOCAL plcbit *p_bMagConv2Clp3ClprRmtClampCtrl;
_BUR_LOCAL plcbit *p_bMagConv2Clp3ClprFixClampCtrl;
_BUR_LOCAL plcbit *p_bMagConv2Clp3MtrDirOrRToL;
_BUR_LOCAL plcbit *p_bMagConv2Clp3MtrSigOnOrLToR;
_BUR_LOCAL plcbit *p_bMagConv2Clp3HvMag;
_BUR_LOCAL plcstring (*p_sMagConv2Clp3StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMagConv2Clp3Status;
_BUR_LOCAL enum eMagConv2ClpAction *p_eMagConv2Clp3Stat;
_BUR_LOCAL plcbit *p_bMagConv2Clp2ClprTwoOutputCtrl;
_BUR_LOCAL plcbit *p_bMagConv2Clp2ClprRmtClampCtrl;
_BUR_LOCAL plcbit *p_bMagConv2Clp2ClprFixClampCtrl;
_BUR_LOCAL plcbit *p_bMagConv2Clp2MtrDirOrRToL;
_BUR_LOCAL plcbit *p_bMagConv2Clp2MtrSigOnOrLToR;
_BUR_LOCAL plcbit *p_bMagConv2Clp2HvMag;
_BUR_LOCAL plcstring (*p_sMagConv2Clp2StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMagConv2Clp2Status;
_BUR_LOCAL enum eMagConv2ClpAction *p_eMagConv2Clp2Stat;
_BUR_LOCAL plcbit *p_bMagConv2Clp1ClprTwoOutputCtrl;
_BUR_LOCAL plcbit *p_bMagConv2Clp1ClprRmtClampCtrl;
_BUR_LOCAL plcbit *p_bMagConv2Clp1ClprFixClampCtrl;
_BUR_LOCAL plcbit *p_bMagConv2Clp1MtrDirOrRToL;
_BUR_LOCAL plcbit *p_bMagConv2Clp1MtrSigOnOrLToR;
_BUR_LOCAL plcbit *p_bMagConv2Clp1HvMag;
_BUR_LOCAL plcstring (*p_sMagConv2Clp1StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMagConv2Clp1Status;
_BUR_LOCAL enum eMagConv2ClpAction *p_eMagConv2Clp1Stat;
_BUR_LOCAL plcbit *p_bTCPSvrDSB2;
_BUR_LOCAL plcbit *p_bTCPSvrDSB;
_BUR_LOCAL plcbit *p_bTCPSvrUBA2;
_BUR_LOCAL plcbit *p_bTCPSvrUBA;
_BUR_LOCAL plcbit *p_bTCPConnected;
_BUR_LOCAL plcbit *p_bStopper5TwoCtrlOut2;
_BUR_LOCAL plcbit *p_bStopper5RetCtrl2;
_BUR_LOCAL plcstring (*p_sStopper5StatTxt2)[201];
_BUR_LOCAL enum eFBStatus *p_eStopper5Status2;
_BUR_LOCAL enum ePneuAction *p_eStopper5Stat2;
_BUR_LOCAL plcbit *p_bStopper4TwoCtrlOut2;
_BUR_LOCAL plcbit *p_bStopper4RetCtrl2;
_BUR_LOCAL plcstring (*p_sStopper4StatTxt2)[201];
_BUR_LOCAL enum eFBStatus *p_eStopper4Status2;
_BUR_LOCAL enum ePneuAction *p_eStopper4Stat2;
_BUR_LOCAL plcbit *p_bStopper3TwoCtrlOut2;
_BUR_LOCAL plcbit *p_bStopper3RetCtrl2;
_BUR_LOCAL plcstring (*p_sStopper3StatTxt2)[201];
_BUR_LOCAL enum eFBStatus *p_eStopper3Status2;
_BUR_LOCAL enum ePneuAction *p_eStopper3Stat2;
_BUR_LOCAL plcbit *p_bStopper2TwoCtrlOut2;
_BUR_LOCAL plcbit *p_bStopper2RetCtrl2;
_BUR_LOCAL plcstring (*p_sStopper2StatTxt2)[201];
_BUR_LOCAL enum eFBStatus *p_eStopper2Status2;
_BUR_LOCAL enum ePneuAction *p_eStopper2Stat2;
_BUR_LOCAL plcbit *p_bStopper1TwoCtrlOut2;
_BUR_LOCAL plcbit *p_bStopper1RetCtrl2;
_BUR_LOCAL plcstring (*p_sStopper1StatTxt2)[201];
_BUR_LOCAL enum eFBStatus *p_eStopper1Status2;
_BUR_LOCAL enum ePneuAction *p_eStopper1Stat2;
_BUR_LOCAL plcbit *p_bStopper5TwoCtrlOut;
_BUR_LOCAL plcbit *p_bStopper5RetCtrl;
_BUR_LOCAL plcstring (*p_sStopper5StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eStopper5Status;
_BUR_LOCAL enum ePneuAction *p_eStopper5Stat;
_BUR_LOCAL plcbit *p_bStopper4TwoCtrlOut;
_BUR_LOCAL plcbit *p_bStopper4RetCtrl;
_BUR_LOCAL plcstring (*p_sStopper4StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eStopper4Status;
_BUR_LOCAL enum ePneuAction *p_eStopper4Stat;
_BUR_LOCAL plcbit *p_bStopper3TwoCtrlOut;
_BUR_LOCAL plcbit *p_bStopper3RetCtrl;
_BUR_LOCAL plcstring (*p_sStopper3StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eStopper3Status;
_BUR_LOCAL enum ePneuAction *p_eStopper3Stat;
_BUR_LOCAL plcbit *p_bStopper2TwoCtrlOut;
_BUR_LOCAL plcbit *p_bStopper2RetCtrl;
_BUR_LOCAL plcstring (*p_sStopper2StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eStopper2Status;
_BUR_LOCAL enum ePneuAction *p_eStopper2Stat;
_BUR_LOCAL plcbit *p_bStopper1TwoCtrlOut;
_BUR_LOCAL plcbit *p_bStopper1RetCtrl;
_BUR_LOCAL plcstring (*p_sStopper1StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eStopper1Status;
_BUR_LOCAL enum ePneuAction *p_eStopper1Stat;
_BUR_LOCAL plcbit *p_bLifterMagConv2ClprTwoCtrlOut;
_BUR_LOCAL plcbit *p_bLifterMagConv2MtrDirOrRToL;
_BUR_LOCAL plcbit *p_bLifterMagConv2ClprClampCtrl;
_BUR_LOCAL plcbit *p_bLifterMagConv2MtrSigOnOrLToR;
_BUR_LOCAL plcbit *p_bLifterMagConv2HvMag;
_BUR_LOCAL plcstring (*p_sLifterMagConv2StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eLifterMagConv2Status;
_BUR_LOCAL enum eMagConvAction *p_eLifterMagConv2Stat;
_BUR_LOCAL plcbit *p_bLifterMagConvClprTwoCtrlOut;
_BUR_LOCAL plcbit *p_bLifterMagConvClprClampCtrl;
_BUR_LOCAL plcbit *p_bLifterMagConvMtrDirOrRToL;
_BUR_LOCAL plcbit *p_bLifterMagConvMtrSigOnOrLToR;
_BUR_LOCAL plcbit *p_bLifterMagConvHvMag;
_BUR_LOCAL plcstring (*p_sLifterMagConvStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eLifterMagConvStatus;
_BUR_LOCAL enum eMagConvAction *p_eLifterMagConvStat;
_BUR_LOCAL plcbit *p_bOpsOutMagConv2StepInitDone;
_BUR_LOCAL plcstring (*p_sOutMagConv2StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eOutMagConv2Status;
_BUR_LOCAL enum eMagConvAction *p_eOutMagConv2Stat;
_BUR_LOCAL plcstring (*p_sInMagConv2StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eInMagConv2Status;
_BUR_LOCAL enum eMagConvAction *p_eInMagConv2Stat;
_BUR_LOCAL plcbit *p_bOpsOutMagConvStepInitDone;
_BUR_LOCAL plcstring (*p_sOutMagConvStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eOutMagConvStatus;
_BUR_LOCAL enum eMagConvAction *p_eOutMagConvStat;
_BUR_LOCAL plcstring (*p_sInMagConvStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eInMagConvStatus;
_BUR_LOCAL enum eMagConvAction *p_eInMagConvStat;
_BUR_LOCAL plcbit *p_bPshrConvRejectTwoOutputCtrl;
_BUR_LOCAL plcbit *p_bPshrConvRejectDownCtrl;
_BUR_LOCAL plcbit *p_bPshrConvRejectUpCtrl;
_BUR_LOCAL plcbit *p_bPshrConvRotTwoOutputCtrl;
_BUR_LOCAL plcbit *p_bPshrConvRotRemoteCtrl;
_BUR_LOCAL plcbit *p_bPshrConvPullerTwoOutputCtrl;
_BUR_LOCAL plcbit *p_bPshrConvPullerRetCtrl;
_BUR_LOCAL plcbit *p_bPshrConvPullerExtCtrl;
_BUR_LOCAL plcbit *p_bPshrConvPshrTwoOutputCtrl;
_BUR_LOCAL plcbit *p_bPshrConvPshrExtCtrl;
_BUR_LOCAL plcbit *p_bPshrConvMtrDirOrRToL;
_BUR_LOCAL plcbit *p_bPshrConvMtrSigOnOrLToR;
_BUR_LOCAL plcbit *p_bPshrConvLmtSenActivated;
_BUR_LOCAL plcbit *p_bPshrConvGdBrd;
_BUR_LOCAL plcbit *p_bPshrConvInspHvBrd;
_BUR_LOCAL plcbit *p_bPshrConvRejHvBrd;
_BUR_LOCAL plcbit *p_bPshrConvHvBrd;
_BUR_LOCAL plcstring (*p_sPshrConvStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_ePshrConvStatus;
_BUR_LOCAL enum eConvAction *p_ePshrConvStat;
_BUR_LOCAL plcstring (*p_sMtrPshrStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMtrPshrStatus;
_BUR_LOCAL enum eMtrPshrAction *p_eMtrPshrStat;
_BUR_LOCAL plcbit *p_bInStopperRetracted;
_BUR_LOCAL plcbit *p_bInStopperExtended;
_BUR_LOCAL plcbit *p_bInStopperTwoCtrlOut;
_BUR_LOCAL plcbit *p_bInStopperRetCtrl;
_BUR_LOCAL plcbit *p_bInStopperExtCtrl;
_BUR_LOCAL plcstring (*p_sInStopperStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eInStopperStatus;
_BUR_LOCAL enum ePneuAction *p_eInStopperStat;
_BUR_LOCAL plcbit *p_bStopperBRetracted;
_BUR_LOCAL plcbit *p_bStopperBExtended;
_BUR_LOCAL plcbit *p_bStopperBTwoCtrlOut;
_BUR_LOCAL plcbit *p_bStopperBRetCtrl;
_BUR_LOCAL plcbit *p_bStopperBExtCtrl;
_BUR_LOCAL plcstring (*p_sStopperBStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eStopperBStatus;
_BUR_LOCAL enum ePneuAction *p_eStopperBStat;
_BUR_LOCAL plcbit *p_bStopperARetracted;
_BUR_LOCAL plcbit *p_bStopperAExtended;
_BUR_LOCAL plcbit *p_bStopperATwoCtrlOut;
_BUR_LOCAL plcbit *p_bStopperARetCtrl;
_BUR_LOCAL plcbit *p_bStopperAExtCtrl;
_BUR_LOCAL plcstring (*p_sStopperAStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eStopperAStatus;
_BUR_LOCAL enum ePneuAction *p_eStopperAStat;
_BUR_LOCAL plcbit *p_bSelClamp3Retracted;
_BUR_LOCAL plcbit *p_bSelClamp3Extended;
_BUR_LOCAL plcbit *p_bSelClamp3TwoCtrlOut;
_BUR_LOCAL plcbit *p_bSelClamp3RetCtrl;
_BUR_LOCAL plcbit *p_bSelClamp3ExtCtrl;
_BUR_LOCAL plcstring (*p_sSelClamp3StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eSelClamp3Status;
_BUR_LOCAL enum ePneuAction *p_eSelClamp3Stat;
_BUR_LOCAL plcbit *p_bSelClamp2Retracted;
_BUR_LOCAL plcbit *p_bSelClamp2Extended;
_BUR_LOCAL plcbit *p_bSelClamp2TwoCtrlOut;
_BUR_LOCAL plcbit *p_bSelClamp2RetCtrl;
_BUR_LOCAL plcbit *p_bSelClamp2ExtCtrl;
_BUR_LOCAL plcstring (*p_sSelClamp2StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eSelClamp2Status;
_BUR_LOCAL enum ePneuAction *p_eSelClamp2Stat;
_BUR_LOCAL plcbit *p_bSelClamp1Retracted;
_BUR_LOCAL plcbit *p_bSelClamp1Extended;
_BUR_LOCAL plcbit *p_bSelClamp1TwoCtrlOut;
_BUR_LOCAL plcbit *p_bSelClamp1RetCtrl;
_BUR_LOCAL plcbit *p_bSelClamp1ExtCtrl;
_BUR_LOCAL plcstring (*p_sSelClamp1StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eSelClamp1Status;
_BUR_LOCAL enum ePneuAction *p_eSelClamp1Stat;
_BUR_LOCAL plcbit *p_bOutShutterRetracted2;
_BUR_LOCAL plcbit *p_bOutShutterExtended2;
_BUR_LOCAL plcbit *p_bOutShutterTwoCtrlOut2;
_BUR_LOCAL plcbit *p_bOutShutterRetCtrl2;
_BUR_LOCAL plcbit *p_bOutShutterExtCtrl2;
_BUR_LOCAL plcstring (*p_sOutShutterStatTxt2)[201];
_BUR_LOCAL enum eFBStatus *p_eOutShutterStatus2;
_BUR_LOCAL enum ePneuAction *p_eOutShutterStat2;
_BUR_LOCAL plcbit *p_bOutShutterRetracted3;
_BUR_LOCAL plcbit *p_bOutShutterExtended3;
_BUR_LOCAL plcbit *p_bOutShutterTwoCtrlOut3;
_BUR_LOCAL plcbit *p_bOutShutterRetCtrl3;
_BUR_LOCAL plcbit *p_bOutShutterExtCtrl3;
_BUR_LOCAL plcstring (*p_sOutShutterStatTxt3)[201];
_BUR_LOCAL enum eFBStatus *p_eOutShutterStatus3;
_BUR_LOCAL enum ePneuAction *p_eOutShutterStat3;
_BUR_LOCAL plcbit *p_bOutShutterRetracted;
_BUR_LOCAL plcbit *p_bOutShutterExtended;
_BUR_LOCAL plcbit *p_bOutShutterTwoCtrlOut;
_BUR_LOCAL plcbit *p_bOutShutterRetCtrl;
_BUR_LOCAL plcbit *p_bOutShutterExtCtrl;
_BUR_LOCAL plcstring (*p_sOutShutterStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eOutShutterStatus;
_BUR_LOCAL enum ePneuAction *p_eOutShutterStat;
_BUR_LOCAL plcbit *p_bInShutterRetracted;
_BUR_LOCAL plcbit *p_bInShutterExtended;
_BUR_LOCAL plcbit *p_bInShutterTwoCtrlOut;
_BUR_LOCAL plcbit *p_bInShutterRetCtrl;
_BUR_LOCAL plcbit *p_bInShutterExtCtrl;
_BUR_LOCAL plcstring (*p_sInShutterStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eInShutterStatus;
_BUR_LOCAL enum ePneuAction *p_eInShutterStat;
_BUR_LOCAL plcbit *p_bUSSMEMABDSRdy;
_BUR_LOCAL plcbit *p_bUSSMEMABUSGdBrdRdy;
_BUR_LOCAL plcbit *p_bUSSMEMABUSRdy;
_BUR_LOCAL plcstring (*p_sUSSMEMABStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eUSSMEMABStatus;
_BUR_LOCAL enum eSMEMAAction *p_eUSSMEMABStat;
_BUR_LOCAL plcbit *p_bUSSMEMAADSRdy;
_BUR_LOCAL plcbit *p_bUSSMEMAAUSGdBrdRdy;
_BUR_LOCAL plcbit *p_bUSSMEMAAUSRdy;
_BUR_LOCAL plcstring (*p_sUSSMEMAAStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eUSSMEMAAStatus;
_BUR_LOCAL enum eSMEMAAction *p_eUSSMEMAAStat;
_BUR_LOCAL signed long *p_diBufferMagBBffrMtySlt;
_BUR_LOCAL signed long *p_diBufferMagABffrMtySlt;
_BUR_LOCAL plcbit *p_bBufferMagRemoved3;
_BUR_LOCAL plcbit *p_bBuffer3MagPresent;
_BUR_LOCAL struct tyBffrStat *p_tyBuffer3BffrStat;
_BUR_LOCAL struct tyDispBffr *p_tyBuffer3DispBffr;
_BUR_LOCAL plcstring (*p_sBuffer3StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eBuffer3Status;
_BUR_LOCAL enum eBufferAction *p_eBuffer3Stat;
_BUR_LOCAL plcbit *p_bBuffer2MagPresent;
_BUR_LOCAL struct tyBffrStat *p_tyBuffer2BffrStat;
_BUR_LOCAL struct tyDispBffr *p_tyBuffer2DispBffr;
_BUR_LOCAL plcstring (*p_sBuffer2StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eBuffer2Status;
_BUR_LOCAL enum eBufferAction *p_eBuffer2Stat;
_BUR_LOCAL plcbit *p_bBufferMagRemoved1;
_BUR_LOCAL plcbit *p_bBufferMagRemoved2;
_BUR_LOCAL plcbit *p_bBuffer1MagPresent;
_BUR_LOCAL struct tyBffrStat *p_tyBuffer1BffrStat;
_BUR_LOCAL struct tyDispBffr *p_tyBuffer1DispBffr;
_BUR_LOCAL plcstring (*p_sBuffer1StatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eBuffer1Status;
_BUR_LOCAL enum eBufferAction *p_eBuffer1Stat;
_BUR_LOCAL signed long *p_diOvenInfoBBrdInOven;
_BUR_LOCAL plcstring (*p_sOvenInfoBStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eOvenInfoBStatus;
_BUR_LOCAL enum eOvenInfoAction *p_eOvenInfoBStat;
_BUR_LOCAL signed long *p_diOvenInfoABrdInOven;
_BUR_LOCAL plcstring (*p_sOvenInfoAStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eOvenInfoAStatus;
_BUR_LOCAL enum eOvenInfoAction *p_eOvenInfoAStat;
_BUR_LOCAL struct tyUsrMgmtFullDat *p_tyUsrMgmtFullData;
_BUR_LOCAL plcbit *p_bUsrMgmtUnableDelete;
_BUR_LOCAL plcbit *p_bUsrMgmtPwMismatch;
_BUR_LOCAL plcbit *p_bUsrMgmtLoginSuccess;
_BUR_LOCAL plcbit *p_bUsrMgmtLastAdmin;
_BUR_LOCAL plcbit *p_bUsrMgmtNmNotExist;
_BUR_LOCAL plcbit *p_bUsrMgmtNmExist;
_BUR_LOCAL plcbit *p_bUsrMgmtListFull;
_BUR_LOCAL plcbit *p_bUsrMgmtNmEmpty;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyUsrMgmtParam (*p_tyUsrMgmtAdminList)[50];
#else
/* Variable p_tyUsrMgmtAdminList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyUsrMgmtParam (*p_tyUsrMgmtLv3List)[50];
#else
/* Variable p_tyUsrMgmtLv3List not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyUsrMgmtParam (*p_tyUsrMgmtLv2List)[50];
#else
/* Variable p_tyUsrMgmtLv2List not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyUsrMgmtParam (*p_tyUsrMgmtAllList)[50];
#else
/* Variable p_tyUsrMgmtAllList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyUsrMgmtAccessRight *p_tyUsrMgmtCurrAccessRgt;
_BUR_LOCAL struct tyUsrMgmtParam *p_tyUsrMgmtCurrUsr;
_BUR_LOCAL plcstring (*p_sUsrMgmtStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eUsrMgmtStatus;
_BUR_LOCAL enum eUsrMgmtAction *p_eUsrMgmtStat;
_BUR_LOCAL struct tyNtParam *p_tyNtParamCurr;
_BUR_LOCAL plcbit *p_bSiemensMcModeChgPrep;
_BUR_LOCAL struct tyMcParam *p_tyMcParamCurr;
_BUR_LOCAL plcstring (*p_sMcParamStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMcParamStatus;
_BUR_LOCAL enum eMcParamAction *p_eMcParamStat;
_BUR_LOCAL plcbit *p_bMagRcpNmNotExist;
_BUR_LOCAL plcbit *p_bMagRcpListFull;
_BUR_LOCAL plcbit *p_bMagRcpNmEmpty;
_BUR_LOCAL struct tyMagRcpParam *p_tyMagRcpCurrRcp;
_BUR_LOCAL struct tyMagRcpParam *p_tyMagRcpInfoOut;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyMagRcpParam (*p_tyMagRcpCurrList)[10];
#else
/* Variable p_tyMagRcpCurrList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyMagRcpParam (*p_tyMagRcpSortedList)[2000];
#else
/* Variable p_tyMagRcpSortedList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyMagRcpParam (*p_tyMagRcpFilterList)[10];
#else
/* Variable p_tyMagRcpFilterList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcstring (*p_sMagRcpStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eMagRcpStatus;
_BUR_LOCAL enum eMagRcpAction *p_eMagRcpStat;
_BUR_LOCAL enum eFBStatus *p_eMpProdRcpStatus;
_BUR_LOCAL enum eMpProdRcpAction *p_eMpProdRcpStat;
_BUR_LOCAL plcbit *p_bProdRcpNmNotExist;
_BUR_LOCAL plcbit *p_bProdRcpListFull;
_BUR_LOCAL plcbit *p_bProdRcpNmEmpty;
_BUR_LOCAL struct tyProdRcpParam *p_tyProdRcpInfoOut;
_BUR_LOCAL struct tyProdRcpParam *p_tyProdRcpCurrRcp2;
_BUR_LOCAL struct tyProdRcpParam *p_tyProdRcpCurrRcp1;
_BUR_LOCAL struct tyProdRcpParam *p_tyProdRcpCurrRcp0;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyProdRcpParam (*p_tyProdRcpCurrList)[2000];
#else
/* Variable p_tyProdRcpCurrList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyProdRcpParam (*p_tyProdRcpSortedList)[2000];
#else
/* Variable p_tyProdRcpSortedList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyProdRcpParam (*p_tyProdRcpFilterList)[2000];
#else
/* Variable p_tyProdRcpFilterList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcstring (*p_sProdRcpStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eProdRcpStatus;
_BUR_LOCAL enum eProdRcpAction *p_eProdRcpStat;
_BUR_LOCAL plcstring (*p_sRstErrStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eRstErrStatus;
_BUR_LOCAL enum eRstErrAction *p_eRstErrStat;
_BUR_LOCAL plcbit *p_bAlarmInfoLF;
_BUR_LOCAL plcstring (*p_sAlarmInfoMsg)[201];
_BUR_LOCAL plcbit *p_bAlarmInfo;
_BUR_LOCAL plcbit *p_bAlarmErr;
_BUR_LOCAL plcbit *p_bAlarmWarning;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcstring (*p_tyAlarmHistoryList)[300][201];
#else
/* Variable p_tyAlarmHistoryList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long (*p_tyAlarmRcyList)[200];
#else
/* Variable p_tyAlarmRcyList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlarmCurr (*p_tyAlarmCurrList)[200];
#else
/* Variable p_tyAlarmCurrList not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcstring (*p_sTLBuzStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eTLBuzStatus;
_BUR_LOCAL enum eTLBuzAction *p_eTLBuzStat;
_BUR_LOCAL unsigned long *p_udiHWInfoEthMode;
_BUR_LOCAL plcstring (*p_sHWInfoSubnetMask)[16];
_BUR_LOCAL plcstring (*p_sHWInfoIPAddr)[16];
_BUR_LOCAL plcstring (*p_sHWInfoStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eHWInfoStatus;
_BUR_LOCAL enum eHWInfoAction *p_eHWInfoStat;
_BUR_LOCAL plcbit *p_bStartupUISettingsLoadDone;
_BUR_LOCAL plcbit *p_bStartupMismatchSetConfigDone;
_BUR_LOCAL plcbit *p_bStartupGetConfigDone;
_BUR_LOCAL plcstring (*p_sStartupStepTxt)[81];
_BUR_LOCAL enum eStartupStep *p_eStartupStep;
_BUR_LOCAL plcstring (*p_sStartupStatTxt)[201];
_BUR_LOCAL enum eFBStatus *p_eStartupStatus;
_BUR_LOCAL enum eStartupAction *p_eStartupStat;
_BUR_LOCAL plcbit *p_bStartupRun;
_BUR_LOCAL struct tyTagDTMagToAGV *p_tyDTMagToAGV;
_BUR_LOCAL plcbit *p_bAGVSimulationOn;
_BUR_LOCAL plcbit *p_bMachineOnline;
_BUR_LOCAL plcbit *p_bAGVOnline;
_BUR_LOCAL plcbit *p_bOpsRun;
_BUR_LOCAL unsigned long *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/UI/UI/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/NtLibraries/NtLF/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecdep \\\"Logical/UsrMgmt/UsrMgmt.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecdep \\\"Logical/MagRcp/MagRcp.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecdep \\\"Logical/ProdRcp/ProdRcp.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecdep \\\"Logical/Alarm/Alarm.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703837633_176_ */

