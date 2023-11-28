/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136544_111_
#define _BUR_1701136544_111_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eDOAction
{	DOActIdle,
	DOActRstAll,
	DOActSetBypassCoverSwitch,
	DOActRstBypassCoverSwitch
} eDOAction;

typedef struct tyDigitalOutput
{	plcbit bSafetyRlyRst;
	plcbit bTLRed;
	plcbit bTLAmber;
	plcbit bTLGreen;
	plcbit bBuzzer;
	plcbit bUSBA;
	plcbit bUSBB;
	plcbit bOvenInfoSigA;
	plcbit bOvenInfoSigB;
	plcbit bPusherExtCtrl;
	plcbit bStopperUnBlkCtrlA;
	plcbit bStopperUnBlkCtrlB;
	plcbit bMag1FixedClampCtrl;
	plcbit bMag1RemoteClampCtrl;
	plcbit bMag2FixedClampCtrl;
	plcbit bMag2RemoteClampCtrl;
	plcbit bMag3FixedClampCtrl;
	plcbit bMag3RemoteClampCtrl;
	plcbit bInShutterOpenCtrl;
	plcbit bInShutterCloseCtrl;
	plcbit bOutShutterOpenCtrl;
	plcbit bOutShutterCloseCtrl;
	plcbit bMag1ConvMtrIn;
	plcbit bMag1ConvMtrOut;
	plcbit bMag2ConvMtrIn;
	plcbit bMag2ConvMtrOut;
	plcbit bMag3ConvMtrIn;
	plcbit bMag3ConvMtrOut;
	plcbit bMag1SelClampCtrl;
	plcbit bMag2SelClampCtrl;
	plcbit bMag3SelClampCtrl;
	plcbit bPusherConvMtrOn;
	plcbit bMag1WallEngageCtrl;
	plcbit bMag2WallEngageCtrl;
	plcbit bMag3WallEngageCtrl;
	plcbit bMag1SafetyBarRetCtrl;
	plcbit bMag2SafetyBarRetCtrl;
	plcbit bMag3SafetyBarRetCtrl;
	plcbit bSOT1MagError;
	plcbit bSOT1MagSizeLarge;
	plcbit bSOT1MagReady;
	plcbit bSOT1MagAvailable;
	plcbit bSOT2MagError;
	plcbit bSOT2MagSizeLarge;
	plcbit bSOT2MagReady;
	plcbit bSOT2MagAvailable;
	plcbit bSOT3MagError;
	plcbit bSOT3MagSizeLarge;
	plcbit bSOT3MagReady;
	plcbit bSOT3MagAvailable;
	plcbit bSOT4MagError;
	plcbit bSOT4MagSizeLarge;
	plcbit bSOT4MagReady;
	plcbit bSOT4MagAvailable;
	plcbit bMagAWOpenLimByp1;
	plcbit bMagAWOpenLimByp2;
	plcbit bMagAWOpenLimByp3;
	plcbit bMagAWOpenLimByp4;
	plcbit bMagAWSmallLimSen1;
	plcbit bMagAWSmallLimSen2;
	plcbit bMagAWSmallLimSen3;
	plcbit bMagAWSmallLimSen4;
	plcbit bMag1ReqToBring;
	plcbit bMag1ReqToGet;
	plcbit bMag2ReqToBring;
	plcbit bMag2ReqToGet;
	plcbit bMag3ReqToBring;
	plcbit bMag3ReqToGet;
	plcbit bMag4ReqToBring;
	plcbit bMag4ReqToGet;
	plcbit bMtrPshrExt;
	plcbit bMtrPshrRet;
	plcbit bMtrPshrOn;
	plcbit bMtrPshrBrakeRls;
	plcbit bMtrPshrSpdBinBit0;
	plcbit bMtrPshrSpdBinBit1;
	plcbit bMtrPshrSpdBinBit2;
	plcbit bMtrPshrAlmRst;
	plcbit bInMagConvMtrOn;
	plcbit bOutMagConvMtrOn;
	plcbit bInMagConv2MtrOn;
	plcbit bOutMagConv2MtrOn;
	plcbit bEntTopStprUnblkCtrl;
	plcbit bMidTopStprUnblkCtrl;
	plcbit bExtTopStprUnblkCtrl;
	plcbit bMidBtmStprUnblkCtrl;
	plcbit bExtBtmStprUnblkCtrl;
	plcbit bEntTopStprUnblkCtrl2;
	plcbit bMidTopStprUnblkCtrl2;
	plcbit bExtTopStprUnblkCtrl2;
	plcbit bMidBtmStprUnblkCtrl2;
	plcbit bExtBtmStprUnblkCtrl2;
	plcbit bMtrPwrRly;
	plcbit bMag1FixedClampOpenCtrl;
	plcbit bMag1RemoteClampOpenCtrl;
	plcbit bMag2FixedClampOpenCtrl;
	plcbit bMag2RemoteClampOpenCtrl;
	plcbit bMag3FixedClampOpenCtrl;
	plcbit bMag3RemoteClampOpenCtrl;
	plcbit bOutShutterOpenCtrl2;
	plcbit bOutShutterCloseCtrl2;
	plcbit bOutShutterOpenCtrl3;
	plcbit bOutShutterCloseCtrl3;
	plcbit bBypCurtainSen;
	plcbit bRstCurtainSen;
	plcbit bBypCurtainPBLED;
	plcbit diInletStopperRetCtrl;
	plcbit diInletStopperExtCtrl;
	plcbit diScanTrigSig;
	plcbit diMag1ExitPCB;
	plcbit diMag2ExitPCB;
	plcbit diMag3ExitPCB;
	plcbit bMag1SelUnClampCtrl;
} tyDigitalOutput;

typedef struct tyDigitalOutputSettings
{	signed long diSafetyRlyRst;
	signed long diTLRed;
	signed long diTLAmber;
	signed long diTLGreen;
	signed long diBuzzer;
	signed long diUSBA;
	signed long diUSBB;
	signed long diOvenInfoSigA;
	signed long diOvenInfoSigB;
	signed long diPusherExtCtrl;
	signed long diStopperUnblkCtrlA;
	signed long diStopperUnblkCtrlB;
	signed long diMag1FixedClampCtrl;
	signed long diMag1RemoteClampCtrl;
	signed long diMag2FixedClampCtrl;
	signed long diMag2RemoteClampCtrl;
	signed long diMag3FixedClampCtrl;
	signed long diMag3RemoteClampCtrl;
	signed long diInShutterOpenCtrl;
	signed long diInShutterCloseCtrl;
	signed long diOutShutterOpenCtrl;
	signed long diOutShutterCloseCtrl;
	signed long diMag1ConvMtrIn;
	signed long diMag1ConvMtrOut;
	signed long diMag2ConvMtrIn;
	signed long diMag2ConvMtrOut;
	signed long diMag3ConvMtrIn;
	signed long diMag3ConvMtrOut;
	signed long diMag1SelClampCtrl;
	signed long diMag2SelClampCtrl;
	signed long diMag3SelClampCtrl;
	signed long diPushConvMtrOn;
	signed long diMag1WallEngageCtrl;
	signed long diMag2WallEngageCtrl;
	signed long diMag3WallEngageCtrl;
	signed long diMag1SafetyBarRetCtrl;
	signed long diMag2SafetyBarRetCtrl;
	signed long diMag3SafetyBarRetCtrl;
	signed long diSOT1MagError;
	signed long diSOT1MagSizeLarge;
	signed long diSOT1MagReady;
	signed long diSOT1MagAvailable;
	signed long diSOT2MagError;
	signed long diSOT2MagSizeLarge;
	signed long diSOT2MagReady;
	signed long diSOT2MagAvailable;
	signed long diSOT3MagError;
	signed long diSOT3MagSizeLarge;
	signed long diSOT3MagReady;
	signed long diSOT3MagAvailable;
	signed long diSOT4MagError;
	signed long diSOT4MagSizeLarge;
	signed long diSOT4MagReady;
	signed long diSOT4MagAvailable;
	signed long diMagAWOpenLimByp1;
	signed long diMagAWOpenLimByp2;
	signed long diMagAWOpenLimByp3;
	signed long diMagAWOpenLimByp4;
	signed long diMagAWSmallLimSen1;
	signed long diMagAWSmallLimSen2;
	signed long diMagAWSmallLimSen3;
	signed long diMagAWSmallLimSen4;
	signed long diMag1ReqToBring;
	signed long diMag1ReqToGet;
	signed long diMag2ReqToBring;
	signed long diMag2ReqToGet;
	signed long diMag3ReqToBring;
	signed long diMag3ReqToGet;
	signed long diMag4ReqToBring;
	signed long diMag4ReqToGet;
	signed long diMtrPshrExt;
	signed long diMtrPshrRet;
	signed long diMtrPshrOn;
	signed long diMtrPshrBrakeRls;
	signed long diMtrPshrSpdBinBit0;
	signed long diMtrPshrSpdBinBit1;
	signed long diMtrPshrSpdBinBit2;
	signed long diMtrPshrAlmRst;
	signed long diInMagConvMtrOn;
	signed long diOutMagConvMtrOn;
	signed long diInMagConv2MtrOn;
	signed long diOutMagConv2MtrOn;
	signed long diEntTopStprUnblkCtrl;
	signed long diMidTopStprUnblkCtrl;
	signed long diExtTopStprUnblkCtrl;
	signed long diMidBtmStprUnblkCtrl;
	signed long diExtBtmStprUnblkCtrl;
	signed long diEntTopStprUnblkCtrl2;
	signed long diMidTopStprUnblkCtrl2;
	signed long diExtTopStprUnblkCtrl2;
	signed long diMidBtmStprUnblkCtrl2;
	signed long diExtBtmStprUnblkCtrl2;
	signed long diMtrPwrRly;
	signed long diMag1FixedClampOpenCtrl;
	signed long diMag1RemoteClampOpenCtrl;
	signed long diMag2FixedClampOpenCtrl;
	signed long diMag2RemoteClampOpenCtrl;
	signed long diMag3FixedClampOpenCtrl;
	signed long diMag3RemoteClampOpenCtrl;
	signed long diOutShutterOpenCtrl2;
	signed long diOutShutterCloseCtrl2;
	signed long diOutShutterOpenCtrl3;
	signed long diOutShutterCloseCtrl3;
	signed long diBypCurtainSen;
	signed long diRstCurtainSen;
	signed long diBypCurtainPBLED;
	signed long diInletStopperRetCtrl;
	signed long diInletStopperExtCtrl;
	signed long diScanTrigSig;
	signed long diMag1ExitPCB;
	signed long diMag2ExitPCB;
	signed long diMag3ExitPCB;
	signed long diMag1SelUnClampCtrl;
} tyDigitalOutputSettings;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/DOutput/DOutput.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136544_111_ */

