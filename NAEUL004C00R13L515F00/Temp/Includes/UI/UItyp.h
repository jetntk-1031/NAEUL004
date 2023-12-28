/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_3_
#define _BUR_1703660020_3_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eUIAction
{	UIActIdle,
	UIActInitial
} eUIAction;

typedef enum eUIInitial
{	UIInitialC0005,
	UIInitialC0007,
	UIInitialP0000,
	UIInitialP0002,
	UIInitialP0003,
	UIInitialP0200,
	UIInitialP0201,
	UIInitialP0202,
	UIInitialP0203,
	UIInitialP0204,
	UIInitialP0205,
	UIInitialP0206,
	UIInitialP0207,
	UIInitialP0300,
	UIInitialP0400,
	UIInitialP0410,
	UIInitialP0800,
	UIInitialP0850,
	UIInitialP0900,
	UIInitialP0910,
	UIInitialP0920,
	UIInitialP0921,
	UIInitialP0922,
	UIInitialP0923,
	UIInitialP0928,
	UIInitialP0929,
	UIInitialP0930,
	UIInitialP0931,
	UIInitialP0932,
	UIInitialP0933,
	UIInitialP0934,
	UIInitialP0935,
	UIInitialP0936,
	UIInitialP0937,
	UIInitialP0938,
	UIInitialP0939,
	UIInitialP0940,
	UIInitialP0950,
	UIInitialP1000,
	UIInitialP1020,
	UIInitialP1021,
	UIInitialP1022,
	UIInitialP1023,
	UIInitialP1024,
	UIInitialP1026,
	UIInitialP1027,
	UIInitialP1030,
	UIInitialP1031,
	UIInitialP1040,
	UIInitialP1050,
	UIInitialP1080,
	UIInitialP1081,
	UIInitialDone
} eUIInitial;

typedef struct tyUIAllAlm
{	plcbit bAlm[10000];
	plcbit bWarning[10000];
} tyUIAllAlm;

typedef struct tyIPAddress
{	plcstring sSetIPAddress[16];
	plcstring sSetSubnetMask[16];
	plcstring sSelectedNetworkMode[31];
	plcstring sTempIpAddress[16];
	plcstring sTempSubnetMask[16];
	plcstring sTempNetworkMode[31];
} tyIPAddress;

typedef struct eUIMnlAction
{	eStartupAction eStartupAct;
	eSimulationsAction eSimuAct;
	eHWInfoAction eHWInfoAct;
	eTLBuzAction eTLBuzAct;
	eRstErrAction eRstErrAct;
	eProdRcpAction eProdRcpAct;
	eMpProdRcpAction eMpProdRcpAct;
	eMagRcpAction eMagRcpAct;
	eMcParamAction eMcParamAct;
	eUsrMgmtAction eUsrMgmtAct;
	eOvenInfoAction eOvenInfoAAct;
	eOvenInfoAction eOvenInfoBAct;
	eBufferAction eBuffer1Act;
	eBufferAction eBuffer2Act;
	eBufferAction eBuffer3Act;
	eSMEMAAction eUSSMEMAAAct;
	eSMEMAAction eUSSMEMABAct;
	ePneuAction eInShutterAct;
	ePneuAction eOutShutterAct;
	ePneuAction eOutShutterAct2;
	ePneuAction eOutShutterAct3;
	ePneuAction eStopperAAct;
	ePneuAction eStopperBAct;
	ePneuAction eInStopperAct;
	ePneuAction eMag1SafetyBarAct;
	ePneuAction eMag2SafetyBarAct;
	ePneuAction eMag3SafetyBarAct;
	ePneuAction eMag1AWEngageAct;
	ePneuAction eMag2AWEngageAct;
	ePneuAction eMag3AWEngageAct;
	eConvAction ePshrConvAct;
	eMtrPshrAction eMtrPshrAct;
	ePneuAction eMagConvSelClp1Act;
	ePneuAction eMagConvSelClp2Act;
	ePneuAction eMagConvSelClp3Act;
	eMagConv2ClpAction eMagConv2Clp1Act;
	eMagConv2ClpAction eMagConv2Clp2Act;
	eMagConv2ClpAction eMagConv2Clp3Act;
	eAWAction eAWPushOrPullerAct;
	eAWAction eAWOpenAct;
	eLifterAction eLifterBtmAct;
	eLifterAction eLifter2Act;
	eTravAction eTravAct;
	eMagAWAction eMagAWOpen1Act;
	eMagAWAction eMagAWOpen2Act;
	eMagAWAction eMagAWOpen3Act;
	eDOAction eDOAct;
	eHermesAction eHermesAct;
	eLFAction eLFLeaderAct;
	eOperationsAction eOpsAct;
	ePneuAction eStopper1Act;
	ePneuAction eStopper2Act;
	ePneuAction eStopper3Act;
	ePneuAction eStopper4Act;
	ePneuAction eStopper5Act;
	ePneuAction eStopper1Act2;
	ePneuAction eStopper2Act2;
	ePneuAction eStopper3Act2;
	ePneuAction eStopper4Act2;
	ePneuAction eStopper5Act2;
} eUIMnlAction;

typedef struct tyUIOut1
{	struct eUIMnlAction eMnlAct;
	plcstring sProdRcpSearch[31];
	plcstring sProdRcpScan[31];
	plcstring sMagRcpSearch[31];
	struct tyUsrMgmtParam tyUsrMgmtInfoIn;
	struct tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl1Wr;
	struct tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl2Wr;
	struct tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl3Wr;
	struct tyMcParam tyMcParamWr;
	plcstring sSetIPAddr[31];
	plcstring sSetSubnetMask[31];
	plcbit bManualMod;
	plcbit bUIManualMod;
	plcbit bMuteBuz;
	plcbit bSimuMod;
	signed long diConstant1;
	signed long diConstant2;
	signed long diMnlMtrPshrExtSpd;
	signed long diMnlMtrPshrExtTorq;
	signed long diMnlAWPushOrPullerGoWidth;
	signed long diMnlAWPushOrPullerNomSpd;
	signed long diMnlAWPushOrPullerTargetPos;
	signed long diMnlAWPushOrPullerStepSize;
	signed long diMnlAWPushOrPullerJogSpd;
	signed long diMnlAWGoWidth;
	signed long diMnlAWNomSpd;
	signed long diMnlAWTargetPos;
	signed long diMnlAWStepSize;
	signed long diMnlAWJogSpd;
	signed long diMnlLifterGoSlt1Pos;
	signed long diMnlLifterMag1GoSlt;
	signed long diMnlLifterMag2GoSlt;
	signed long diMnlLifterMag3GoSlt;
	signed long diMnlLifterNomSpd;
	signed long diMnlLifterTargetPos;
	signed long diMnlLifterStepSize;
	signed long diMnlLifterJogSpd;
	signed long diMnlLifterGoSlt1Pos2;
	signed long diMnlLifterMag1GoSlt2;
	signed long diMnlLifterMag2GoSlt2;
	signed long diMnlLifterMag3GoSlt2;
	signed long diMnlLifterNomSpd2;
	signed long diMnlLifterTargetPos2;
	signed long diMnlLifterStepSize2;
	signed long diMnlLifterJogSpd2;
	signed long diMnlTravNomSpd;
	signed long diMnlTravTargetPos;
	signed long diMnlTravStepSize;
	signed long diMnlTravJogSpd;
	signed long diMnlMagAW1GoWidth;
	signed long diMnlMagAW1NomSpd;
	signed long diMnlMagAW1TargetPos;
	signed long diMnlMagAW1StepSize;
	signed long diMnlMagAW1JogSpd;
	signed long diMnlMagAW2GoWidth;
	signed long diMnlMagAW2NomSpd;
	signed long diMnlMagAW2TargetPos;
	signed long diMnlMagAW2StepSize;
	signed long diMnlMagAW2JogSpd;
	signed long diMnlMagAW3GoWidth;
	signed long diMnlMagAW3NomSpd;
	signed long diMnlMagAW3TargetPos;
	signed long diMnlMagAW3StepSize;
	signed long diMnlMagAW3JogSpd;
	plcbit bVSMEMAUSAEn;
	plcbit bVSMEMAUSBEn;
	plcbit bVSMEMAUBAA;
	plcbit bVSMEMAUBAAStat;
	plcbit bVSMEMAUBAB;
	plcbit bVSMEMAUBABStat;
	signed long diSetBrdInOvenA;
	signed long diSetBrdInOvenB;
	plcbit bLeaderRun;
	plcbit bProdAccData;
	plcbit bOpsBypsInitConv;
	plcbit bEjectMag1;
	plcbit bEjectMag2;
	plcbit bEjectMag3;
	plcbit bNewMag1;
	plcbit bNewMag2;
	plcbit bNewMag3;
	plcbit bRlsMag1;
	plcbit bRlsMag2;
	plcbit bRlsMag3;
	signed long diMnlPPGoWidth;
	signed long diMnlPPTargetPos;
	signed long diMnlPPStepSize;
	signed long diMnlPPNomSpd;
	signed long diMnlPPJogSpd;
	signed long diMnlServoMtrMaxPulRatio;
	unsigned char usiHComModChaged;
	plcbit bStartScanSig;
	plcbit bPCBExitMag1;
	plcbit bPCBExitMag2;
	plcbit bPCBExitMag3;
	plcstring sSetHMIIPAddr[16];
	plcbit bUpdtHMIIPAddr;
	plcbit bSafetyCurtainReset;
	plcbit bBypCurtainSen;
	plcbit bBypCurtainPBLED;
	plcbit bSOTMagErr1;
	plcbit bSOTMagErr2;
	plcbit bSOTMagErr3;
	plcbit bSOTMagErr4;
	plcbit bSOTMagRdy1;
	plcbit bSOTMagRdy2;
	plcbit bSOTMagRdy3;
	plcbit bSOTMagRdy4;
	plcbit bSOTMagAvail1;
	plcbit bSOTMagAvail2;
	plcbit bSOTMagAvail3;
	plcbit bSOTMagAvail4;
	plcbit bSOTMagSLarge1;
	plcbit bSOTMagSLarge2;
	plcbit bSOTMagSLarge3;
	plcbit bSOTMagSLarge4;
	plcbit bAIVReqBring1;
	plcbit bAIVReqBring2;
	plcbit bAIVReqBring3;
	plcbit bAIVReqBring4;
	plcbit bAIVReqGet1;
	plcbit bAIVReqGet2;
	plcbit bAIVReqGet3;
	plcbit bAIVReqGet4;
	signed short iSlotId;
	plcbit bSkipWorkOrder;
	plcbit bReadWorkOrder;
	plcbit bDeleteWorkOrder;
	plcbit bMismatchOverWriteConfig;
	unsigned char usiNetworkModeSelected;
	plcbit bTempAddrFillDone;
	plcbit bIPConfigChgDone;
	plcbit bOverwriteIP;
	plcbit bOverwriteSubnet;
	plcbit bOverwriteEthMode;
	plcbit bMagAWOpenLimByp1;
	plcbit bMagAWOpenLimByp2;
	plcbit bMagAWOpenLimByp3;
	plcbit bMagAWOpenLimByp4;
	plcbit bSmallMagLimSen1;
	plcbit bSmallMagLimSen2;
	plcbit bSmallMagLimSen3;
	plcbit bSmallMagLimSen4;
	unsigned char usiSelProdRcpStep;
	plcbit bUnloadMag;
	plcbit bOpsMnlUnloadMag;
	plcbit bOpsMnlUnloadMag2;
	plcbit bQueryBoardInfo;
	plcbit bQueryWorkOrderInfo;
	plcbit bSaveHMISvyConfig;
	plcbit bSaveHMIConfigure;
} tyUIOut1;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/UI/UI.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_3_ */

