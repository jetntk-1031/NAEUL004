/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225410_365_
#define _BUR_1701225410_365_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit bAgvComIODisabled;
_BUR_LOCAL struct TON fbShutterTuneClsTim;
_BUR_LOCAL struct TON fbShutterTuneOpnTim;
_BUR_LOCAL plcbit bShutterTuning;
_BUR_LOCAL unsigned char usiShutterTuningStep;
_BUR_LOCAL enum eDOAction eStatOld;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bPhysicalDO[200];
#else
/* Variable a_bPhysicalDO not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bPCBExitMag3;
_BUR_LOCAL plcbit bPCBExitMag2;
_BUR_LOCAL plcbit bPCBExitMag1;
_BUR_LOCAL plcbit bStartScanSig;
_BUR_LOCAL plcbit bBypCurtainPBLED;
_BUR_LOCAL plcbit bRstCurtainSen;
_BUR_LOCAL plcbit bBypCurtainSen;
_BUR_LOCAL plcbit bMtrPwrRly;
_BUR_LOCAL plcbit bOutMagConv2MtrOn;
_BUR_LOCAL plcbit bInMagConv2MtrOn;
_BUR_LOCAL plcbit bOutMagConvMtrOn;
_BUR_LOCAL plcbit bInMagConvMtrOn;
_BUR_LOCAL plcbit bExtBtmStprUnblkCtrl2;
_BUR_LOCAL plcbit bMidBtmStprUnblkCtrl2;
_BUR_LOCAL plcbit bExtTopStprUnblkCtrl2;
_BUR_LOCAL plcbit bMidTopStprUnblkCtrl2;
_BUR_LOCAL plcbit bEntTopStprUnblkCtrl2;
_BUR_LOCAL plcbit bExtBtmStprUnblkCtrl;
_BUR_LOCAL plcbit bMidBtmStprUnblkCtrl;
_BUR_LOCAL plcbit bExtTopStprUnblkCtrl;
_BUR_LOCAL plcbit bMidTopStprUnblkCtrl;
_BUR_LOCAL plcbit bEntTopStprUnblkCtrl;
_BUR_LOCAL plcbit bRequestToGet4;
_BUR_LOCAL plcbit bRequestToBring4;
_BUR_LOCAL plcbit bRequestToGet3;
_BUR_LOCAL plcbit bRequestToBring3;
_BUR_LOCAL plcbit bRequestToGet2;
_BUR_LOCAL plcbit bRequestToBring2;
_BUR_LOCAL plcbit bRequestToGet1;
_BUR_LOCAL plcbit bRequestToBring1;
_BUR_LOCAL plcbit bMagAWSmallLimSen4;
_BUR_LOCAL plcbit bMagAWSmallLimSen3;
_BUR_LOCAL plcbit bMagAWSmallLimSen2;
_BUR_LOCAL plcbit bMagAWSmallLimSen1;
_BUR_LOCAL plcbit bMagAWOpenLimByp4;
_BUR_LOCAL plcbit bMagAWOpenLimByp3;
_BUR_LOCAL plcbit bMagAWOpenLimByp2;
_BUR_LOCAL plcbit bMagAWOpenLimByp1;
_BUR_LOCAL plcbit bSOTMagAvailable4;
_BUR_LOCAL plcbit bSOTMagReady4;
_BUR_LOCAL plcbit bSOTMagSLarge4;
_BUR_LOCAL plcbit bSOTMagError4;
_BUR_LOCAL plcbit bSOTMagAvailable3;
_BUR_LOCAL plcbit bSOTMagReady3;
_BUR_LOCAL plcbit bSOTMagSLarge3;
_BUR_LOCAL plcbit bSOTMagError3;
_BUR_LOCAL plcbit bSOTMagAvailable2;
_BUR_LOCAL plcbit bSOTMagReady2;
_BUR_LOCAL plcbit bSOTMagSLarge2;
_BUR_LOCAL plcbit bSOTMagError2;
_BUR_LOCAL plcbit bSOTMagAvailable1;
_BUR_LOCAL plcbit bSOTMagReady1;
_BUR_LOCAL plcbit bSOTMagSLarge1;
_BUR_LOCAL plcbit bSOTMagError1;
_BUR_LOCAL plcbit bMag3WallEngageCtrl;
_BUR_LOCAL plcbit bMag2WallEngageCtrl;
_BUR_LOCAL plcbit bMag1WallEngageCtrl;
_BUR_LOCAL plcbit bMag3SafetyBarRetCtrl;
_BUR_LOCAL plcbit bMag2SafetyBarRetCtrl;
_BUR_LOCAL plcbit bMag1SafetyBarRetCtrl;
_BUR_LOCAL plcbit bMag3SelClampCtrl;
_BUR_LOCAL plcbit bMag2SelClampCtrl;
_BUR_LOCAL plcbit bMag1SelClampCtrl;
_BUR_LOCAL plcbit bPushConvMtrOn;
_BUR_LOCAL plcbit bMag3ConvMtrOut;
_BUR_LOCAL plcbit bMag3ConvMtrIn;
_BUR_LOCAL plcbit bMag2ConvMtrOut;
_BUR_LOCAL plcbit bMag2ConvMtrIn;
_BUR_LOCAL plcbit bMag1ConvMtrOut;
_BUR_LOCAL plcbit bMag1ConvMtrIn;
_BUR_LOCAL plcbit bOutShutterCloseCtrl;
_BUR_LOCAL plcbit bOutShutterOpenCtrl;
_BUR_LOCAL plcbit bInShutterCloseCtrl;
_BUR_LOCAL plcbit bInShutterOpenCtrl;
_BUR_LOCAL plcbit bMag3RemoteClampCtrl;
_BUR_LOCAL plcbit bMag3FixedClampCtrl;
_BUR_LOCAL plcbit bMag2RemoteClampCtrl;
_BUR_LOCAL plcbit bMag2FixedClampCtrl;
_BUR_LOCAL plcbit bMag1RemoteClampCtrl;
_BUR_LOCAL plcbit bMag1FixedClampCtrl;
_BUR_LOCAL plcbit bStopperUnblkCtrlB;
_BUR_LOCAL plcbit bStopperUnblkCtrlA;
_BUR_LOCAL plcbit bPusherExtCtrl;
_BUR_LOCAL plcbit bOvenInfoSigB;
_BUR_LOCAL plcbit bOvenInfoSigA;
_BUR_LOCAL plcbit bUSBB;
_BUR_LOCAL plcbit bUSBA;
_BUR_LOCAL plcbit bBuzzer;
_BUR_LOCAL plcbit bTLGreen;
_BUR_LOCAL plcbit bTLAmber;
_BUR_LOCAL plcbit bTLRed;
_BUR_LOCAL plcbit bSafetyRlyRst;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL struct tyDigitalOutputSettings tyDOSettings;
_BUR_LOCAL struct tyDigitalOutput tyDOutput;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eDOAction eStat;
_BUR_LOCAL enum eDOAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/DOutput/DOutput/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/DOutput/DOutput.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225410_365_ */

