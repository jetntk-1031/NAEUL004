/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704158824_3_
#define _BUR_1704158824_3_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eNtParamAction
{	NtParamActIdle,
	NtParamActCreateDir,
	NtParamActRead,
	NtParamActWrite,
	NtParamActLoad,
	NtParamActSave
} eNtParamAction;

typedef enum eMidSenParam
{	No,
	NcBoschChina
} eMidSenParam;

typedef enum eCustomer
{	NA,
	Bosch_China,
	Bosch_Portugal,
	Bosch_America,
	Bosch_Malaysia,
	Siemens,
	We_Fabricate,
	New_Member5,
	New_Member6,
	New_Member7,
	New_Member8,
	New_Member9,
	New_Member10
} eCustomer;

typedef enum eAutoRcpPreceded
{	PrecededBySelf,
	PrecededByF1,
	PrecededByF2
} eAutoRcpPreceded;

typedef struct tyUILmt
{	signed long diMax;
	signed long diMin;
} tyUILmt;

typedef struct PPTorqParam
{	unsigned char usiStartTorque;
	unsigned short uiRatio;
} PPTorqParam;

typedef struct eAutoRcpLmt
{	signed long diMaxBottomCleranceInUM;
	signed long diMaxTopClearamceInUM;
	signed long diThicknessInUM;
} eAutoRcpLmt;

typedef struct tyNtParam
{	struct tyDigitalInputSettings tyDISettings;
	struct tyDigitalOutputSettings tyDOSettings;
	plcbit bAWPusherPrep;
	plcbit bAWPrep;
	plcbit bLFPrep;
	plcbit bLeaderMc;
	plcbit bLFUsrSetPrep;
	signed long diLFWidthLimit;
	plcbit bLFProdWidthChk;
	plcbit bUSWidthChkPrep;
	plcbit bLCSLFPrep;
	plcbit bLCSReqRcpPrep;
	plcbit bLCSManageRcpPrep;
	plcbit bLCSLiveDatPrep;
	plcbit bIPCSMEMA9851ExtdPrep;
	plcbit bVSMEMAPrep;
	plcbit bHermesPrep;
	plcbit bHermesRmtPrep;
	plcbit bOvenInfoPrep;
	plcbit bOvenInfoExtdPrep;
	plcbit bSSaverPrep;
	signed long diAWPushPulOffsetInUM;
	signed long diWidthOffsetInUM;
	plcstring sJobNo[31];
	unsigned char usiNtAddr;
	plcbit bProjLifterMagPlatform;
	plcbit bProjLaneBPrep;
	plcbit bProjBrdPerSltPrep;
	plcbit bProjLongBrdPrep;
	plcbit bProjInletShutPrep;
	plcbit bProjOutletShutPrep;
	plcbit bProjStopperAPrep;
	plcbit bProjStopperBPrep;
	plcbit bProjMag1ConvPrep;
	plcbit bProjMag2ConvPrep;
	plcbit bProjMag3ConvPrep;
	plcbit bProjLifter2Prep;
	plcbit bProjMagConvLane1Prep;
	plcbit bProjMagConvLane2Prep;
	plcbit bProjTopEntStprPrep;
	plcbit bProjTopMidStprPrep;
	plcbit bProjTopExtStprPrep;
	plcbit bProjBtmMidStprPrep;
	plcbit bProjBtmExtStprPrep;
	plcbit bProjTopEntStprPrep2;
	plcbit bProjTopMidStprPrep2;
	plcbit bProjTopExtStprPrep2;
	plcbit bProjBtmMidStprPrep2;
	plcbit bProjBtmExtStprPrep2;
	plcbit bProjMagOrientChkSenPrep;
	plcbit bProjAGVPrep;
	plcbit bProjTCPAGVSigPrep;
	plcbit bProjBypsInitConvPrep;
	plcbit bProjRlsNewProdPrep;
	plcbit bProjBtnInsertRmvMag;
	plcbit bProjSOTSensorPrep;
	plcbit bProjMotorizedPusherPrep;
	plcbit bProjMagAWPrep;
	plcbit bProjMagSafetyBarPrep;
	signed long diProjMagMinSlt;
	signed long diProjMagMaxSlt;
	eULMag eProjMag;
	eConvDir eProjConvDir;
	eConvDir eProjMagConvDir;
	eLifMagULUpdateData eProjMagBuffferActLoad;
	eConvDir eProjInMagConvDir;
	eConvDir eProjOutMagConvDir;
	eConvDir eProjLifterMagConvDir;
	eConvDir eProjInMagConv2Dir;
	eConvDir eProjOutMagConv2Dir;
	eConvDir eProjLifterMagConv2Dir;
	plcstring sUsrFolderProgNm[16];
	plcstring sLibVersionProgNm[16];
	plcstring sTimeProgNm[16];
	plcstring sHWInfoProgNm[16];
	plcstring sHWInfoDevice[4];
	struct tyTLBuzIn1 tyTLBuz;
	plcstring sAlmProgNm[16];
	unsigned long udiAlmFileKeepDay;
	plcstring sProdRcpProgNm[16];
	plcstring sProdRcpListFileNm[81];
	plcstring sProdRcpSingleFileNm[81];
	plcstring sMpProdRcpProgNm[16];
	plcstring sMpProdRcpFileNm[256];
	plcstring sMpProdRcpPVNm[101];
	plcstring sMagRcpProgNm[16];
	plcstring sMagRcpListFileNm[81];
	plcstring sMagRcpSingleFileNm[81];
	plcstring sMcParamProgNm[16];
	plcstring sMcParamFileNm[81];
	plcstring sUsrMgmtProgNm[16];
	plcstring sBffr1ProgNm[16];
	plcstring sBffr1FileNm[81];
	plcbit bBffr1NxtLoadSeq;
	plcstring sBffr2ProgNm[16];
	plcstring sBffr2FileNm[81];
	plcbit bBffr2NxtLoadSeq;
	plcstring sBffr3ProgNm[16];
	plcstring sBffr3FileNm[81];
	plcbit bBffr3NxtLoadSeq;
	plcstring sUSSMEMAAProgNm[16];
	plctime tUSSMEMAARstDlyTm;
	plctime tUSSMEMAASigInChkTm;
	plcstring sUSSMEMABProgNm[16];
	plctime tUSSMEMABRstDlyTm;
	plctime tUSSMEMABSigInChkTm;
	plcstring sUSSMEMA1ProgNm[16];
	plctime tUSSMEMA1RstDlyTm;
	plctime tUSSMEMA1SigInChkTm;
	plcstring sUSSMEMA2ProgNm[16];
	plctime tUSSMEMA2RstDlyTm;
	plctime tUSSMEMA2SigInChkTm;
	plcstring sUSSMEMA3ProgNm[16];
	plctime tUSSMEMA3RstDlyTm;
	plctime tUSSMEMA3SigInChkTm;
	plcstring sDSSMEMA1ProgNm[16];
	plctime tDSSMEMA1RstDlyTm;
	plctime tDSSMEMA1SigInChkTm;
	plcstring sDSSMEMA2ProgNm[16];
	plctime tDSSMEMA2RstDlyTm;
	plctime tDSSMEMA2SigInChkTm;
	plcstring sDSSMEMA3ProgNm[16];
	plctime tDSSMEMA3RstDlyTm;
	plctime tDSSMEMA3SigInChkTm;
	plcstring sInShutterProgNm[16];
	plcbit bInShutterTwoCtrlIn;
	plctime tInShutterExtTO;
	plctime tInShutterRetTO;
	plcstring sOutShutterProgNm[16];
	plcbit bOutShutterTwoCtrlIn;
	plctime tOutShutterExtTO;
	plctime tOutShutterRetTO;
	plcstring sSelClamp1ProgNm[16];
	plcbit bSelClamp1TwoCtrlIn;
	plctime tSelClamp1ExtDlyTm;
	plctime tSelClamp1RetDlyTm;
	plcstring sSelClamp2ProgNm[16];
	plcbit bSelClamp2TwoCtrlIn;
	plctime tSelClamp2ExtDlyTm;
	plctime tSelClamp2RetDlyTm;
	plcstring sSelClamp3ProgNm[16];
	plcbit bSelClamp3TwoCtrlIn;
	plctime tSelClamp3ExtDlyTm;
	plctime tSelClamp3RetDlyTm;
	plcstring sTopEntStprProgNm[16];
	plcbit bTopEntStprTwoCtrlIn;
	plctime tTopEntStprExtDlyTm;
	plctime tTopEntStprRetDlyTm;
	plcstring sTopMidStprProgNm[16];
	plcbit bTopMidStprTwoCtrlIn;
	plctime tTopMidStprExtDlyTm;
	plctime tTopMidStprRetDlyTm;
	plcstring sTopExtStprProgNm[16];
	plcbit bTopExtStprTwoCtrlIn;
	plctime tTopExtStprExtDlyTm;
	plctime tTopExtStprRetDlyTm;
	plcstring sBtmMidStprProgNm[16];
	plcbit bBtmMidStprTwoCtrlIn;
	plctime tBtmMidStprExtDlyTm;
	plctime tBtmMidStprRetDlyTm;
	plcstring sBtmExtStprProgNm[16];
	plcbit bBtmExtStprTwoCtrlIn;
	plctime tBtmExtStprExtDlyTm;
	plctime tBtmExtStprRetDlyTm;
	plcstring sTopEntStprProgNm2[16];
	plcbit bTopEntStprTwoCtrlIn2;
	plctime tTopEntStprExtDlyTm2;
	plctime tTopEntStprRetDlyTm2;
	plcstring sTopMidStprProgNm2[16];
	plcbit bTopMidStprTwoCtrlIn2;
	plctime tTopMidStprExtDlyTm2;
	plctime tTopMidStprRetDlyTm2;
	plcstring sTopExtStprProgNm2[16];
	plcbit bTopExtStprTwoCtrlIn2;
	plctime tTopExtStprExtDlyTm2;
	plctime tTopExtStprRetDlyTm2;
	plcstring sBtmMidStprProgNm2[16];
	plcbit bBtmMidStprTwoCtrlIn2;
	plctime tBtmMidStprExtDlyTm2;
	plctime tBtmMidStprRetDlyTm2;
	plcstring sBtmExtStprProgNm2[16];
	plcbit bBtmExtStprTwoCtrlIn2;
	plctime tBtmExtStprExtDlyTm2;
	plctime tBtmExtStprRetDlyTm2;
	plcstring sStopperAProgNm[16];
	plcbit bStopperATwoCtrlIn;
	plctime tStopperAExtDlyTm;
	plctime tStopperARetDlyTm;
	plcstring sStopperBProgNm[16];
	plcbit bStopperBTwoCtrlIn;
	plctime tStopperBExtDlyTm;
	plctime tStopperBRetDlyTm;
	plcstring sPshrConvProgNm[16];
	plcbit bPshrConvOnDirMod;
	plctime tPshrConvMtrOffDlyTm;
	plctime tPshrConvPshrExtTO;
	plctime tPshrConvPshrRetTO;
	plcstring sMag1SafetyBarProgNm[16];
	plcbit bMag1SafetyBarTwoCtrlIn;
	plctime tMag1SafetyBarExtTO;
	plctime tMag1SafetyBarRetTO;
	plcstring sMag2SafetyBarProgNm[16];
	plcbit bMag2SafetyBarTwoCtrlIn;
	plctime tMag2SafetyBarExtTO;
	plctime tMag2SafetyBarRetTO;
	plcstring sMag3SafetyBarProgNm[16];
	plcbit bMag3SafetyBarTwoCtrlIn;
	plctime tMag3SafetyBarExtTO;
	plctime tMag3SafetyBarRetTO;
	plcstring sMag1AWEngageProgNm[16];
	plcbit bMag1AWEngageTwoCtrlIn;
	plctime tMag1AWEngageExtTO;
	plctime tMag1AWEngageRetTO;
	plcstring sMag2AWEngageProgNm[16];
	plcbit bMag2AWEngageTwoCtrlIn;
	plctime tMag2AWEngageExtTO;
	plctime tMag2AWEngageRetTO;
	plcstring sMag3AWEngageProgNm[16];
	plcbit bMag3AWEngageTwoCtrlIn;
	plctime tMag3AWEngageExtTO;
	plctime tMag3AWEngageRetTO;
	plcstring sMagConv1ProgNm[16];
	plcbit bMagConv1OnDirMod;
	plctime tMagConv1MtrOffDlyTm;
	plctime tMagConv1ClprClampTO;
	plctime tMagConv1ClprUnclampTO;
	plcstring sMagConv2ProgNm[16];
	plcbit bMagConv2OnDirMod;
	plctime tMagConv2MtrOffDlyTm;
	plctime tMagConv2ClprClampTO;
	plctime tMagConv2ClprUnclampTO;
	plcstring sMagConv3ProgNm[16];
	plcbit bMagConv3OnDirMod;
	plctime tMagConv3MtrOffDlyTm;
	plctime tMagConv3ClprClampTO;
	plctime tMagConv3ClprUnclampTO;
	plcstring sMtrPshrProgNm[16];
	plcbit bMtrPshrDir;
	plctime tMtrPshrAlmRstTm;
	plctime tMtrPshrAlmTrigTm;
	plctime tMtrPshrExtTO;
	plctime tMtrPshrRetTO;
	signed long diMtrPshrExtSlowSpd;
	signed long diMtrPshrRetSlowSpd;
	signed long diMtrPshrExtNomSpd;
	signed long diMtrPshrRetNomSpd;
	signed long diMtrPshrExtTorq;
	signed long diMtrPshrRetTorq;
	signed long diMtrPshrStartTorq;
	plcstring sInMagConvProgNm[16];
	plcbit bInMagConvOnDirMod;
	plctime tInMagConvMtrOffDlyTm;
	plcstring sOutMagConvProgNm[16];
	plcbit bOutMagConvOnDirMod;
	plctime tOutMagConvMtrOffDlyTm;
	plcstring sLifterMagProgNm[16];
	plcbit bLifterMagOnDirMod;
	plctime tLifterMagMtrOffDlyTm;
	plctime tLifterMagClprClampTO;
	plctime tLifterMagClprUnclampTO;
	plcstring sInMagConv2ProgNm[16];
	plcbit bInMagConv2OnDirMod;
	plctime tInMagConv2MtrOffDlyTm;
	plcstring sOutMagConv2ProgNm[16];
	plcbit bOutMagConv2OnDirMod;
	plctime tOutMagConv2MtrOffDlyTm;
	plcstring sLifterMag2ProgNm[16];
	plcbit bLifterMag2OnDirMod;
	plctime tLifterMag2MtrOffDlyTm;
	plctime tLifterMagClprClampTO2;
	plctime tLifterMagClprUnclampTO2;
	plcstring sAWPushPullProgNm[16];
	plcstring sAWPushPullDevice[4];
	unsigned char usiAWPushPullNode;
	plcbit bAWPushPullDir;
	plcbit bAWPushPullDirBl;
	signed long diAWPushPullPitchInUM;
	signed long diAWPushPullMovBlDistInUM;
	struct tyMotionCANParamInHm tyAWPushPullParamInHm;
	struct tyMotionCANParamInConvert tyAWPushPullParamInConvert;
	struct tyMotionParam tyAWPushPullParam;
	struct tyMotionCANTuning tyAWPushPullTuning;
	eServoMotorType eAWPushPullServoMotorType;
	plcstring sAWProgNm[16];
	plcstring sAWDevice[4];
	unsigned char usiAWNode;
	plcbit bAWDir;
	plcbit bAWDirBl;
	signed long diAWPitchInUM;
	signed long diAWMovBlDistInUM;
	struct tyMotionCANParamInHm tyAWParamInHm;
	struct tyMotionCANParamInConvert tyAWParamInConvert;
	struct tyMotionParam tyAWParam;
	struct tyMotionCANTuning tyAWTuning;
	eServoMotorType eAWServoMotorType;
	plcstring sTravProgNm[16];
	plcstring sTravDevice[4];
	unsigned char usiTravNode;
	plcbit bTravDir;
	struct tyMotionCANParamInHm tyTravParamInHm;
	struct tyMotionCANParamInConvert tyTravParamInConvert;
	struct tyMotionParam tyTravParam;
	struct tyMotionCANTuning tyTravTuning;
	eServoMotorType eTravServoMotorType;
	signed long diTravAutoSpdLongBrdInUMPS;
	plcstring sLifterProgNm[16];
	plcstring sLifterDevice[4];
	unsigned char usiLifterNode;
	plcbit bLifterDir;
	struct tyMotionCANParamInHm tyLifterParamInHm;
	struct tyMotionCANParamInConvert tyLifterParamInConvert;
	struct tyMotionParam tyLifterParam;
	struct tyMotionCANTuning tyLifterTuning;
	eServoMotorType eLifterServoMotorType;
	plcstring sLifterProgNm2[16];
	plcstring sLifterDevice2[4];
	unsigned char usiLifterNode2;
	plcbit bLifterDir2;
	struct tyMotionCANParamInHm tyLifterParamInHm2;
	struct tyMotionCANParamInConvert tyLifterParamInConvert2;
	struct tyMotionParam tyLifterParam2;
	struct tyMotionCANTuning tyLifterTuning2;
	eServoMotorType eLifterServoMotorType2;
	plcstring sDIProgNm[16];
	plcstring sAGVProgNm[16];
	plcstring sAGVMag1ProgNm[16];
	plcstring sAGVMag2ProgNm[16];
	plcstring sAGVMag3ProgNm[16];
	plcstring sHermesProgNm[16];
	plcstring sHermesRetainFileNm[81];
	plcstring sHermesConfigFileNm[81];
	plcstring sUSHermesAProgNm[16];
	unsigned long udiUSHermesAFileKeepDay;
	unsigned long udiUSHermesAAliveTmInSec;
	plctime tUSHermesAConnTO;
	plcstring sUSHermesBProgNm[16];
	unsigned long udiUSHermesBFileKeepDay;
	unsigned long udiUSHermesBAliveTmInSec;
	plctime tUSHermesBConnTO;
	plcstring sRmtHermesProgNm[16];
	plcstring sRmtHermesConfigFileNm[81];
	unsigned long udiRmtHermesFileKeepDay;
	unsigned long udiRmtHermesAliveTmInSec;
	unsigned long udiRmtHermesSndBffrSize;
	unsigned long udiRmtHermesRcvBffrSize;
	plcstring sLFLeaderProgNm[16];
	plctime tLFLeaderOnlineChkDlyTm;
	plctime tLFLeaderSetTmOffDlyTm;
	plcstring sLFFollowerProgNm[16];
	plcstring sFollower1ProgNm[16];
	plcstring sFollower2ProgNm[16];
	plcstring sLCSProgNm[16];
	plcstring sLCSMngRcpProgNm[16];
	plcstring sLCSLFProgNm[16];
	plcstring sOpsTravLifULProgNm[16];
	plcstring sOpsMagUL1ProgNm[16];
	plcstring sOpsMagUL2ProgNm[16];
	plcstring sOpsMagUL3ProgNm[16];
	plcstring sOpsMagConvUL1ProgNm[16];
	plcstring sOpsMagConvUL2ProgNm[16];
	plcstring sOpsMagConvUL3ProgNm[16];
	plcstring sOpsInMagConv[16];
	plcstring sOpsOutMagConv[16];
	plcstring sOpsMagConvStprProgNm[16];
	plcstring sOpsMagConvStprProgNm1[16];
	struct tyUILmt tyProdRcpWidth;
	struct tyUILmt tyProdRcpMinSlt;
	struct tyUILmt tyProdRcpMaxSlt;
	struct tyUILmt tyProdRcpPitch;
	struct tyUILmt tyProdRcpBrdPerSlt;
	struct tyUILmt tyProdRcpMcModA;
	struct tyUILmt tyProdRcpMcModAB;
	struct tyUILmt tyProdRcpOvenMinReqFreeBffr;
	struct tyUILmt tyUISSaverTm;
	struct tyUILmt tyUIConvInitTm;
	struct tyUILmt tyUIMagConvRunTm;
	struct tyUILmt tyUILifterTopPos;
	struct tyUILmt tyUILifterBtmPos;
	struct tyUILmt tyUITranInErrDlyTm;
	struct tyUILmt tyUIOvenMaxBffrBtwnMc;
	struct tyUILmt tyUIHermesSndAliveTm;
	struct tyUILmt tyUIHermesLnID;
	struct tyUILmt tyUIAntiGapSenOnTm;
	struct tyUILmt tyUIAntiGapSenOffTm;
	struct tyUILmt tyUISltToSltDist;
	struct tyUILmt tyUIAWTargetPos;
	struct tyUILmt tyUIAWStepSize;
	struct tyUILmt tyUIAWNomSpd;
	struct tyUILmt tyUIAWSlwSpd;
	struct tyUILmt tyUITravTargetPos;
	struct tyUILmt tyUITravStepSize;
	struct tyUILmt tyUITravNomSpd;
	struct tyUILmt tyUITravSlwSpd;
	struct tyUILmt tyUILifterTargetPos;
	struct tyUILmt tyUILifterStepSize;
	struct tyUILmt tyUILifterNomSpd;
	struct tyUILmt tyUILifterSlwSpd;
	struct tyUILmt tyUIMagAWTargetPos;
	struct tyUILmt tyUIMagAWStepSize;
	struct tyUILmt tyUIMagAWNomSpd;
	struct tyUILmt tyUIMagAWSlwSpd;
	struct tyUILmt tyUILFIndexBeforeOven;
	struct tyUILmt tyUILFIndexAfterOven;
	plcstring sUIDefaultLoginNm[31];
	plcstring sUIDefaultLoginPw[31];
	plctime tShutterWaitTmr;
	struct tyUILmt tyUIAWOffset;
	plcbit bAutoLogoutPrep;
	struct tyUILmt tyUIAutoLogoutTm;
	plcbit bMagAutoVerifyPrep;
	struct tyUILmt tyUIMcParamMagAutoEntSenTm;
	plcbit bProjAIVInPosSenPrep;
	plcstring sMpNtParamFileNm[256];
	plcstring sMpNtParamPVNm[101];
	struct tyUILmt tyNetworkMode;
	plcbit bHermesSvyPrep;
	plcbit bHermesSvyFirstMcInTheLine1;
	plcbit bHermesSvyMagTypeMc;
	plcstring sSvyHermesProgNm[16];
	plcstring sSvyHermesConfigFileNm[81];
	unsigned long udiSvyHermesFileKeepDay;
	unsigned long udiSvyHermesAliveTmInSec;
	plctime tSvyHermesConnTO;
	plcstring sSvyHermesRetainFileNm[81];
	plcstring sDSHermesRetainFileNm[81];
	float rMachineCycleTime;
	float rAutoWidthCycleTime;
	plcbit bHermesScannerPrep1;
	signed short iInput;
	signed short iOutput;
	plcbit bLFProdWidth2Prep;
	plctime tLFFollowerOnlineChkDlyTm;
	plcstring sMagAW1ProgNm[16];
	plcstring sMagAW1Device[4];
	unsigned char usiMagAW1Node;
	plcbit bMagAW1Dir;
	plcbit bMagAW1DirBl;
	signed long diMagAW1PitchInUM;
	signed long diMagAW1MovBlDistInUM;
	struct tyMotionCANParamInHm tyMagAW1ParamInHm;
	struct tyMotionCANParamInConvert tyMagAW1ParamInConvert;
	struct tyMotionParam tyMagAW1Param;
	struct tyMotionCANTuning tyMagAW1Tuning;
	signed long diMagAW1EngageSpdInUMPS;
	eServoMotorType eMagAW1ServoMotorType;
	signed long diMag1WidthOffsetInUM;
	plcstring sMagAW2ProgNm[16];
	plcstring sMagAW2Device[4];
	unsigned char usiMagAW2Node;
	plcbit bMagAW2Dir;
	plcbit bMagAW2DirBl;
	signed long diMagAW2PitchInUM;
	signed long diMagAW2MovBlDistInUM;
	struct tyMotionCANParamInHm tyMagAW2ParamInHm;
	struct tyMotionCANParamInConvert tyMagAW2ParamInConvert;
	struct tyMotionParam tyMagAW2Param;
	struct tyMotionCANTuning tyMagAW2Tuning;
	signed long diMagAW2EngageSpdInUMPS;
	eServoMotorType eMagAW2ServoMotorType;
	signed long diMag2WidthOffsetInUM;
	plcstring sMagAW3ProgNm[16];
	plcstring sMagAW3Device[4];
	unsigned char usiMagAW3Node;
	plcbit bMagAW3Dir;
	plcbit bMagAW3DirBl;
	signed long diMagAW3PitchInUM;
	signed long diMagAW3MovBlDistInUM;
	struct tyMotionCANParamInHm tyMagAW3ParamInHm;
	struct tyMotionCANParamInConvert tyMagAW3ParamInConvert;
	struct tyMotionParam tyMagAW3Param;
	struct tyMotionCANTuning tyMagAW3Tuning;
	signed long diMagAW3EngageSpdInUMPS;
	eServoMotorType eMagAW3ServoMotorType;
	signed long diMag3WidthOffsetInUM;
	plcstring sMachineProgNm[16];
	plcstring sUSSOT1ProgNm[16];
	plctime tUSSOT1RstDlyTm;
	plctime tUSSOT1SigInChkTm;
	plcstring sUSSOT2ProgNm[16];
	plctime tUSSOT2RstDlyTm;
	plctime tUSSOT2SigInChkTm;
	plcstring sUSSOT3ProgNm[16];
	plctime tUSSOT3RstDlyTm;
	plctime tUSSOT3SigInChkTm;
	plcstring sDSSOT1ProgNm[16];
	plctime tDSSOT1RstDlyTm;
	plctime tDSSOT1SigInChkTm;
	plcstring sDSSOT2ProgNm[16];
	plctime tDSSOT2RstDlyTm;
	plctime tDSSOT2SigInChkTm;
	plcstring sDSSOT3ProgNm[16];
	plctime tDSSOT3RstDlyTm;
	plctime tDSSOT3SigInChkTm;
	plcbit bSOTReadyOnFirst;
	plcbit bShowMESName;
	plcbit bShowFMorMESActive;
	struct tyUILmt tyProdRcpMtrPshrExtSpd;
	struct tyUILmt tyProdRcpMtrPshrExtTorq;
	plcbit bProjUSFixToFixRail;
	plcbit bUIConvDirRL;
	plcbit bDSWidthChkPrep;
	plcbit bProjServoPullerPusherPrep;
	plcstring sPPProgNm[16];
	plcstring sPPDevice[4];
	unsigned char usiPPNode;
	plcbit bPPDir;
	plcbit bPPDirBl;
	signed long diPPPitchInUM;
	signed long diPPMovBlDistInUM;
	struct tyMotionCANParamInHm tyPPParamInHm;
	struct tyMotionCANParamInConvert tyPPParamInConvert;
	struct tyMotionParam tyPPParam;
	struct tyMotionCANTuning tyPPTuning;
	eServoMotorType ePPServoMotorType;
	plcbit bProjFixClprMagDetectSenPrep;
	plcbit bCurtainSenPrep;
	plcbit bProjMagHeightChkPrep;
	signed long diTravGoToMagWidthChkPt1;
	signed long diTravGoToMagWidthChkPt2;
	signed long diTravGoToMagWidthChkPt3;
	plcbit bProjOutletShut2Prep;
	plcbit bProjOutletShut3Prep;
	plcbit bProjScanPrep;
	plcbit bProjOpConPrep;
	struct PPTorqParam tyPPTorqParam;
	plcbit bProjLifTravMnlLoad;
	enum eMidSenParam eMidSenNcNoType;
	plcbit bHermesScannerPrep;
	plcbit bHermesSvyFirstMcInTheLine;
	plcbit bAutoRcpPrep;
	enum eCustomer eCustomerReq;
	plcbit bProjInletStopperPrep;
	plcstring sInletStopperProgNm[16];
	plcbit bInletStopperTwoCtrlIn;
	plctime tInletStopperExtDlyTm;
	plctime tInletStopperRetDlyTm;
	struct eAutoRcpLmt eAutoRcpParamLmt;
	plcstring sAutoRcpProgNm[16];
	enum eAutoRcpPreceded eAutoRcpPrecededBy;
	plcbit bChinesePrep;
	plcbit bGermanPrep;
	plcstring sHWInfoHMIMacAddress[28];
	struct tyUILmt tyUIBtnPosLmt;
} tyNtParam;

typedef struct tyNtParamIn1
{	enum eNtParamAction eAct;
	unsigned long udiRstErr;
	plcstring sFileName[81];
	plcstring sProgNm[81];
	struct MpComIdentType tyMpNtParamMpLink;
	plcstring sFileName1[81];
	plcstring sPVName[81];
} tyNtParamIn1;

typedef struct tyNtParamOut1
{	enum eNtParamAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcbit bFileNotFound;
} tyNtParamOut1;

typedef struct tyNtParamGen
{	struct tyNtParamIn1 In;
	struct tyNtParamOut1 Out;
} tyNtParamGen;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/NtParam/NtParam.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704158824_3_ */

