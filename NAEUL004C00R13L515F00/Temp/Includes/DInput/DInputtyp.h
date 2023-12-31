/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680534_109_
#define _BUR_1704680534_109_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct tyDigitalInput
{	plcbit bSafetyRlySig;
	plcbit bEStopSig;
	plcbit bCoverSWSig;
	plcbit bUBAA;
	plcbit bUBAB;
	plcbit bUBAAStat;
	plcbit bUBABStat;
	plcbit bPusherExtRS;
	plcbit bPusherRetRS;
	plcbit bConvLftSen;
	plcbit bConvMidSen;
	plcbit bConvRgtSen;
	plcbit bConvClrSen;
	plcbit bOvenInfeedSigA;
	plcbit bOvenInfeedSigB;
	plcbit bLifterTimingBeltSen;
	plcbit bLifterSafetyLmtSW1;
	plcbit bLifterSafetyLmtSW2;
	plcbit bMag1FixedClampRS;
	plcbit bMag1FixedUnclampRS;
	plcbit bMag1RemoteClampRS;
	plcbit bMag1RemoteUnclampRS;
	plcbit bMag2FixedClampRS;
	plcbit bMag2FixedUnclampRS;
	plcbit bMag2RemoteClampRS;
	plcbit bMag2RemoteUnclampRS;
	plcbit bMag3FixedClampRS;
	plcbit bMag3FixedUnclampRS;
	plcbit bMag3RemoteClampRS;
	plcbit bMag3RemoteUnclampRS;
	plcbit bInShutterOpenRS;
	plcbit bInShutterCloseRS;
	plcbit bOutShutterOpenRS;
	plcbit bOutShutterCloseRS;
	plcbit bMagPresentSen1;
	plcbit bMagPresentSen2;
	plcbit bMagPresentSen3;
	plcbit bMagConvEntSen1;
	plcbit bMagConvEntSen2;
	plcbit bMagConvEntSen3;
	plcbit bMag1AIVInPosSen1;
	plcbit bMag1AIVInPosSen2;
	plcbit bMag2AIVInPosSen1;
	plcbit bMag2AIVInPosSen2;
	plcbit bMag3AIVInPosSen1;
	plcbit bMag3AIVInPosSen2;
	plcbit bMag1OrientChkSen1;
	plcbit bMag1OrientChkSen2;
	plcbit bMag2OrientChkSen1;
	plcbit bMag2OrientChkSen2;
	plcbit bMag3OrientChkSen1;
	plcbit bMag3OrientChkSen2;
	plcbit bUSWidthChkSen;
	plcbit bConvLineAInletSen;
	plcbit bConvLineBInletSen;
	plcbit bMagConvHeightSen1;
	plcbit bMagConvHeightSen2;
	plcbit bMagConvHeightSen3;
	plcbit bMagConvSmallMagSen1;
	plcbit bMagConvSmallMagSen2;
	plcbit bMagConvSmallMagSen3;
	plcbit bMagConvLargeMagSen1;
	plcbit bMagConvLargeMagSen2;
	plcbit bMagConvLargeMagSen3;
	plcbit bMagConvCAB717MagSen1;
	plcbit bMagConvCAB717MagSen2;
	plcbit bMagConvCAB717MagSen3;
	plcbit bMag1SelUnClampRS;
	plcbit bMag2SelUnClampRS;
	plcbit bMag3SelUnClampRS;
	plcbit bMag1WallEngageRS;
	plcbit bMag1WallDisengageRS;
	plcbit bMag2WallEngageRS;
	plcbit bMag2WallDisengageRS;
	plcbit bMag3WallEngageRS;
	plcbit bMag3WallDisengageRS;
	plcbit bMag1SafetyBarExtRS;
	plcbit bMag1SafetyBarRetRS;
	plcbit bMag2SafetyBarExtRS;
	plcbit bMag2SafetyBarRetRS;
	plcbit bMag3SafetyBarExtRS;
	plcbit bMag3SafetyBarRetRS;
	plcbit bSOT1Receive;
	plcbit bSOT1AIVError;
	plcbit bSOT1AIVSizeLarge;
	plcbit bSOT1AIVReady;
	plcbit bSOT1AIVAvailable;
	plcbit bSOT2Receive;
	plcbit bSOT2AIVError;
	plcbit bSOT2AIVSizeLarge;
	plcbit bSOT2AIVReady;
	plcbit bSOT2AIVAvailable;
	plcbit bSOT3Receive;
	plcbit bSOT3AIVError;
	plcbit bSOT3AIVSizeLarge;
	plcbit bSOT3AIVReady;
	plcbit bSOT3AIVAvailable;
	plcbit bSOT4Receive;
	plcbit bSOT4AIVError;
	plcbit bSOT4AIVSizeLarge;
	plcbit bSOT4AIVReady;
	plcbit bSOT4AIVAvailable;
	plcbit bFleetManagerReady;
	plcbit bPusherExtSlwSen;
	plcbit bPusherRetSlwSen;
	plcbit bMtrPshrTorqueSig;
	plcbit bMtrPshrAlmSig;
	plcbit bMagWidthChkSen;
	plcbit bPshrAntiJam;
	plcbit bInMagConvEntSen;
	plcbit bInMagConvExtSen;
	plcbit bInMagConvMidSen;
	plcbit bOutMagConvEntSen;
	plcbit bOutMagConvExtSen;
	plcbit bOutMagConvMidSen;
	plcbit bInMagConv2EntSen;
	plcbit bInMagConv2ExtSen;
	plcbit bInMagConv2MidSen;
	plcbit bOutMagConv2EntSen;
	plcbit bOutMagConv2ExtSen;
	plcbit bOutMagConv2MidSen;
	plcbit bLifterLmtSW;
	plcbit bLifter2LmtSW;
	plcbit bMtrOverloadSig;
	plcbit bOutShutterOpenRS2;
	plcbit bOutShutterCloseRS2;
	plcbit bOutShutterOpenRS3;
	plcbit bOutShutterCloseRS3;
	plcbit bMag1FixedClampSen;
	plcbit bMag2FixedClampSen;
	plcbit bMag3FixedClampSen;
	plcbit bCurtainSenPB;
	plcbit bCurtainSen;
	plcbit bCurtainSafetySig;
	plcbit bHighMagDetSen1;
	plcbit bHighMagDetSen2;
	plcbit bHighMagDetSen3;
	plcbit bInletStopperASen;
	plcbit diScanComplSig;
	plcbit diPCBScanSen;
	plcbit bSPARE17;
	plcbit bSPARE18;
	plcbit bSPARE19;
	plcbit bSPARE20;
} tyDigitalInput;

typedef struct tyDigitalInputSettings
{	signed long diSafetyRlySig;
	signed long diEStopSig;
	signed long diCoverSWSig;
	signed long diUBAA;
	signed long diUBAB;
	signed long diUBAAStat;
	signed long diUBABStat;
	signed long diPusherExtRS;
	signed long diPusherRetRS;
	signed long diConvLftSen;
	signed long diConvMidSen;
	signed long diConvRgtSen;
	signed long diConvClrSen;
	signed long diOvenInfeedSigA;
	signed long diOvenInfeedSigB;
	signed long diLifterTimingBeltSen;
	signed long diLifterSafetyLmtSW1;
	signed long diLifterSafetyLmtSW2;
	signed long diMag1FixedClampRS;
	signed long diMag1FixedUnclampRS;
	signed long diMag1RemoteClampRS;
	signed long diMag1RemoteUnclampRS;
	signed long diMag2FixedClampRS;
	signed long diMag2FixedUnclampRS;
	signed long diMag2RemoteClampRS;
	signed long diMag2RemoteUnclampRS;
	signed long diMag3FixedClampRS;
	signed long diMag3FixedUnclampRS;
	signed long diMag3RemoteClampRS;
	signed long diMag3RemoteUnclampRS;
	signed long diInShutterOpenRS;
	signed long diInShutterCloseRS;
	signed long diOutShutterOpenRS;
	signed long diOutShutterCloseRS;
	signed long diMagPresentSen1;
	signed long diMagPresentSen2;
	signed long diMagPresentSen3;
	signed long diMagConvEntSen1;
	signed long diMagConvEntSen2;
	signed long diMagConvEntSen3;
	signed long diMag1AIVInPosSen1;
	signed long diMag1AIVInPosSen2;
	signed long diMag2AIVInPosSen1;
	signed long diMag2AIVInPosSen2;
	signed long diMag3AIVInPosSen1;
	signed long diMag3AIVInPosSen2;
	signed long diMag1OrientChkSen1;
	signed long diMag1OrientChkSen2;
	signed long diMag2OrientChkSen1;
	signed long diMag2OrientChkSen2;
	signed long diMag3OrientChkSen1;
	signed long diMag3OrientChkSen2;
	signed long diUSWidthChkSen;
	signed long diConvLineAInletSen;
	signed long diConvLineBInletSen;
	signed long diMagConvHeightSen1;
	signed long diMagConvHeightSen2;
	signed long diMagConvHeightSen3;
	signed long diMagConvSmallMagSen1;
	signed long diMagConvSmallMagSen2;
	signed long diMagConvSmallMagSen3;
	signed long diMagConvLargeMagSen1;
	signed long diMagConvLargeMagSen2;
	signed long diMagConvLargeMagSen3;
	signed long diMagConvCAB717MagSen1;
	signed long diMagConvCAB717MagSen2;
	signed long diMagConvCAB717MagSen3;
	signed long diMag1SelUnClampRS;
	signed long diMag2SelUnClampRS;
	signed long diMag3SelUnClampRS;
	signed long diMag1WallEngageRS;
	signed long diMag1WallDisengageRS;
	signed long diMag2WallEngageRS;
	signed long diMag2WallDisengageRS;
	signed long diMag3WallEngageRS;
	signed long diMag3WallDisengageRS;
	signed long diMag1SafetyBarExtRS;
	signed long diMag1SafetyBarRetRS;
	signed long diMag2SafetyBarExtRS;
	signed long diMag2SafetyBarRetRS;
	signed long diMag3SafetyBarExtRS;
	signed long diMag3SafetyBarRetRS;
	signed long diSOT1Receive;
	signed long diSOT1AIVError;
	signed long diSOT1AIVSizeLarge;
	signed long diSOT1AIVReady;
	signed long diSOT1AIVAvailable;
	signed long diSOT2Receive;
	signed long diSOT2AIVError;
	signed long diSOT2AIVSizeLarge;
	signed long diSOT2AIVReady;
	signed long diSOT2AIVAvailable;
	signed long diSOT3Receive;
	signed long diSOT3AIVError;
	signed long diSOT3AIVSizeLarge;
	signed long diSOT3AIVReady;
	signed long diSOT3AIVAvailable;
	signed long diSOT4Receive;
	signed long diSOT4AIVError;
	signed long diSOT4AIVSizeLarge;
	signed long diSOT4AIVReady;
	signed long diSOT4AIVAvailable;
	signed long diFleetManagerReady;
	signed long diPusherExtSlwSen;
	signed long diPusherRetSlwSen;
	signed long diMtrPshrTorqueSig;
	signed long diMtrPshrAlmSig;
	signed long diMagWidthChkSen;
	signed long diPshrAntiJam;
	signed long diInMagConvEntSen;
	signed long diInMagConvExtSen;
	signed long diInMagConvMidSen;
	signed long diOutMagConvEntSen;
	signed long diOutMagConvExtSen;
	signed long diOutMagConvMidSen;
	signed long diInMagConv2EntSen;
	signed long diInMagConv2ExtSen;
	signed long diInMagConv2MidSen;
	signed long diOutMagConv2EntSen;
	signed long diOutMagConv2ExtSen;
	signed long diOutMagConv2MidSen;
	signed long diLifterLmtSW;
	signed long diLifter2LmtSW;
	signed long diMtrOverloadSig;
	signed long diOutShutterOpenRS2;
	signed long diOutShutterCloseRS2;
	signed long diOutShutterOpenRS3;
	signed long diOutShutterCloseRS3;
	signed long diMag1FixedClampSen;
	signed long diMag2FixedClampSen;
	signed long diMag3FixedClampSen;
	signed long diCurtainSenPB;
	signed long diCurtainSen;
	signed long diCurtainSafetySig;
	signed long diHighMagDetSen1;
	signed long diHighMagDetSen2;
	signed long diHighMagDetSen3;
	signed long diInletStopperASen;
	signed long diScanComplSig;
	signed long diPCBScanSen;
	signed long diSPARE17;
	signed long diSPARE18;
	signed long diSPARE19;
	signed long diSPARE20;
} tyDigitalInputSettings;

typedef struct tySOTSigmulateSig
{	plcbit tyBtnInPos;
	plcbit tyBtnError;
	plcbit tyBtnRdy;
	plcbit tyBtnAvail;
} tySOTSigmulateSig;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/DInput/DInput.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680534_109_ */

