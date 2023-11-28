#ifndef __AS__TYPE_eMcAGVCommProtocol
#define __AS__TYPE_eMcAGVCommProtocol
typedef enum eMcAGVCommProtocol
{	McSetAGVCommOPCUA = 0,
	McSetAGVCommHardIO = 1,
	McSetAGVCommDisabled = 2,
	McSetAGVTCPEnableTCP = 3,
	McSetAGVTCPDisableTCP = 4,
} eMcAGVCommProtocol;
#endif

#ifndef __AS__TYPE_eCustomer
#define __AS__TYPE_eCustomer
typedef enum eCustomer
{	NA = 0,
	Bosch_China = 1,
	Bosch_Portugal = 2,
	Bosch_America = 3,
	Bosch_Malaysia = 4,
	Siemens = 5,
	We_Fabricate = 6,
	New_Member5 = 7,
	New_Member6 = 8,
	New_Member7 = 9,
	New_Member8 = 10,
	New_Member9 = 11,
	New_Member10 = 12,
} eCustomer;
#endif

#ifndef __AS__TYPE_eDOAction
#define __AS__TYPE_eDOAction
typedef enum eDOAction
{	DOActIdle = 0,
	DOActRstAll = 1,
	DOActSetBypassCoverSwitch = 2,
	DOActRstBypassCoverSwitch = 3,
} eDOAction;
#endif

#ifndef __AS__TYPE_tyDigitalOutput
#define __AS__TYPE_tyDigitalOutput
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
#endif

#ifndef __AS__TYPE_tyDigitalOutputSettings
#define __AS__TYPE_tyDigitalOutputSettings
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
#endif

#ifndef __AS__TYPE_eFBStatus
#define __AS__TYPE_eFBStatus
typedef enum eFBStatus
{	Idle = 0,
	Done = 1,
	Busy = 2,
	Error = 3,
} eFBStatus;
#endif

struct TON
{	plctime PT;
	plctime ET;
	plctime StartTime;
	unsigned long Restart;
	plcbit IN;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void TON(struct TON* inst);
_BUR_LOCAL plcbit(* p_bLinkStartupRun);
_BUR_LOCAL plcbit(* p_bLinkOpsRun);
_BUR_LOCAL plcbit(* p_bLinkError);
_BUR_LOCAL eMcAGVCommProtocol(* p_eLinkAGVComProtocol);
_BUR_LOCAL plcbit(* p_bLinkNtParamProjSOTSenPrep);
_BUR_LOCAL plcbit(* p_bLinkProjMagConvLane1Prep);
_BUR_LOCAL plcbit(* p_bLinkProjMagConvLane2Prep);
_BUR_LOCAL plcbit(* p_bLinkAGVCommRdy1);
_BUR_LOCAL plcbit(* p_bLinkAGVCommRdy2);
_BUR_LOCAL plcbit(* p_bLinkAGVCommRdy3);
_BUR_LOCAL plcbit(* p_bLinkOpsBypCurtainSen);
_BUR_LOCAL plcbit(* p_bLinkOpsBypCurtainLED);
_BUR_LOCAL eDOAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiMax);
_BUR_LOCAL struct tyDigitalOutputSettings(* p_tyDOSettings);
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL plcbit(* p_bSafetyRlyRst);
_BUR_LOCAL plcbit(* p_bTLRed);
_BUR_LOCAL plcbit(* p_bTLAmber);
_BUR_LOCAL plcbit(* p_bTLGreen);
_BUR_LOCAL plcbit(* p_bBuzzer);
_BUR_LOCAL plcbit(* p_bUSBA);
_BUR_LOCAL plcbit(* p_bUSBB);
_BUR_LOCAL plcbit(* p_bOvenInfoSigA);
_BUR_LOCAL plcbit(* p_bOvenInfoSigB);
_BUR_LOCAL plcbit(* p_bPusherExtCtrl);
_BUR_LOCAL plcbit(* p_bStopperUnblkCtrlA);
_BUR_LOCAL plcbit(* p_bStopperUnblkCtrlB);
_BUR_LOCAL plcbit(* p_bInletStopperRetCtrl);
_BUR_LOCAL eCustomer(* p_eCustomerReq);
_BUR_LOCAL plcbit(* p_bInletStopperExtCtrl);
_BUR_LOCAL plcbit(* p_bMag1SelClampCtrl);
_BUR_LOCAL plcbit(* p_bMag2SelClampCtrl);
_BUR_LOCAL plcbit(* p_bMag3SelClampCtrl);
_BUR_LOCAL plcbit(* p_bMag1SelUnclampCtrl);
_BUR_LOCAL plcbit(* p_bMag2SelUnclampCtrl);
_BUR_LOCAL plcbit(* p_bMag3SelUnclampCtrl);
_BUR_LOCAL plcbit(* p_bMag1FixedClampCtrl);
_BUR_LOCAL plcbit(* p_bMag1RemoteClampCtrl);
_BUR_LOCAL plcbit(* p_bMag2FixedClampCtrl);
_BUR_LOCAL plcbit(* p_bMag2RemoteClampCtrl);
_BUR_LOCAL plcbit(* p_bMag3FixedClampCtrl);
_BUR_LOCAL plcbit(* p_bMag3RemoteClampCtrl);
_BUR_LOCAL plcbit(* p_bInShutterOpenCtrl);
_BUR_LOCAL plcbit(* p_bInShutterCloseCtrl);
_BUR_LOCAL plcbit(* p_bOutShutterOpenCtrl);
_BUR_LOCAL plcbit(* p_bOutShutterCloseCtrl);
_BUR_LOCAL plcbit(* p_bMag1ConvMtrIn);
_BUR_LOCAL plcbit(* p_bMag1ConvMtrOut);
_BUR_LOCAL plcbit(* p_bMag2ConvMtrIn);
_BUR_LOCAL plcbit(* p_bMag2ConvMtrOut);
_BUR_LOCAL plcbit(* p_bMag3ConvMtrIn);
_BUR_LOCAL plcbit(* p_bMag3ConvMtrOut);
_BUR_LOCAL plcbit(* p_bPushConvMtrOn);
_BUR_LOCAL plcbit(* p_bMag1WallEngageCtrl);
_BUR_LOCAL plcbit(* p_bMag2WallEngageCtrl);
_BUR_LOCAL plcbit(* p_bMag3WallEngageCtrl);
_BUR_LOCAL plcbit(* p_bMag1SafetyBarRetCtrl);
_BUR_LOCAL plcbit(* p_bMag2SafetyBarRetCtrl);
_BUR_LOCAL plcbit(* p_bMag3SafetyBarRetCtrl);
_BUR_LOCAL plcbit(* p_bSOTMagError1);
_BUR_LOCAL plcbit(* p_bSOTMagSizeLarge1);
_BUR_LOCAL plcbit(* p_bSOTMagReady1);
_BUR_LOCAL plcbit(* p_bSOTMagAvailable1);
_BUR_LOCAL plcbit(* p_bSOTMagError2);
_BUR_LOCAL plcbit(* p_bSOTMagSizeLarge2);
_BUR_LOCAL plcbit(* p_bSOTMagReady2);
_BUR_LOCAL plcbit(* p_bSOTMagAvailable2);
_BUR_LOCAL plcbit(* p_bSOTMagError3);
_BUR_LOCAL plcbit(* p_bSOTMagSizeLarge3);
_BUR_LOCAL plcbit(* p_bSOTMagReady3);
_BUR_LOCAL plcbit(* p_bSOTMagAvailable3);
_BUR_LOCAL plcbit(* p_bSOTMagError4);
_BUR_LOCAL plcbit(* p_bSOTMagSizeLarge4);
_BUR_LOCAL plcbit(* p_bSOTMagReady4);
_BUR_LOCAL plcbit(* p_bSOTMagAvailable4);
_BUR_LOCAL plcbit(* p_bMagAWOpenLimByp1);
_BUR_LOCAL plcbit(* p_bMagAWOpenLimByp2);
_BUR_LOCAL plcbit(* p_bMagAWOpenLimByp3);
_BUR_LOCAL plcbit(* p_bMagAWOpenLimByp4);
_BUR_LOCAL plcbit(* p_bMagAWSmallLimSen1);
_BUR_LOCAL plcbit(* p_bMagAWSmallLimSen2);
_BUR_LOCAL plcbit(* p_bMagAWSmallLimSen3);
_BUR_LOCAL plcbit(* p_bMagAWSmallLimSen4);
_BUR_LOCAL plcbit(* p_bRequestToBring1);
_BUR_LOCAL plcbit(* p_bRequestToBring2);
_BUR_LOCAL plcbit(* p_bRequestToBring3);
_BUR_LOCAL plcbit(* p_bRequestToBring4);
_BUR_LOCAL plcbit(* p_bRequestToGet1);
_BUR_LOCAL plcbit(* p_bRequestToGet2);
_BUR_LOCAL plcbit(* p_bRequestToGet3);
_BUR_LOCAL plcbit(* p_bRequestToGet4);
_BUR_LOCAL plcbit(* p_bEntTopStprUnblkCtrl);
_BUR_LOCAL plcbit(* p_bMidTopStprUnblkCtrl);
_BUR_LOCAL plcbit(* p_bExtTopStprUnblkCtrl);
_BUR_LOCAL plcbit(* p_bMidBtmStprUnblkCtrl);
_BUR_LOCAL plcbit(* p_bExtBtmStprUnblkCtrl);
_BUR_LOCAL plcbit(* p_bEntTopStprUnblkCtrl2);
_BUR_LOCAL plcbit(* p_bMidTopStprUnblkCtrl2);
_BUR_LOCAL plcbit(* p_bExtTopStprUnblkCtrl2);
_BUR_LOCAL plcbit(* p_bMidBtmStprUnblkCtrl2);
_BUR_LOCAL plcbit(* p_bExtBtmStprUnblkCtrl2);
_BUR_LOCAL plcbit(* p_bInMagConvMtrOn);
_BUR_LOCAL plcbit(* p_bOutMagConvMtrOn);
_BUR_LOCAL plcbit(* p_bInMagConv2MtrOn);
_BUR_LOCAL plcbit(* p_bOutMagConv2MtrOn);
_BUR_LOCAL plcbit(* p_bMtrPwrRly);
_BUR_LOCAL plcbit(* p_bMag1FixedClampOpenCtrl);
_BUR_LOCAL plcbit(* p_bMag1RemoteClampOpenCtrl);
_BUR_LOCAL plcbit(* p_bMag2FixedClampOpenCtrl);
_BUR_LOCAL plcbit(* p_bMag2RemoteClampOpenCtrl);
_BUR_LOCAL plcbit(* p_bMag3FixedClampOpenCtrl);
_BUR_LOCAL plcbit(* p_bMag3RemoteClampOpenCtrl);
_BUR_LOCAL plcbit(* p_bOutShutterOpenCtrl3);
_BUR_LOCAL plcbit(* p_bOutShutterCloseCtrl3);
_BUR_LOCAL plcbit(* p_bOutShutterOpenCtrl2);
_BUR_LOCAL plcbit(* p_bOutShutterCloseCtrl2);
_BUR_LOCAL plcbit(* p_bMtrPshrExt);
_BUR_LOCAL plcbit(* p_bMtrPshrRet);
_BUR_LOCAL plcbit(* p_bMtrPshrOn);
_BUR_LOCAL plcbit(* p_bMtrPshrBrakeRls);
_BUR_LOCAL plcbit(* p_bMtrPshrSpdBinBit0);
_BUR_LOCAL plcbit(* p_bMtrPshrSpdBinBit1);
_BUR_LOCAL plcbit(* p_bMtrPshrSpdBinBit2);
_BUR_LOCAL plcbit(* p_bMtrPshrAlmRst);
_BUR_LOCAL plcbit(* p_bBypCurtainPBLED);
_BUR_LOCAL plcbit(* p_bBypCurtainSen);
_BUR_LOCAL plcbit(* p_bRstCurtainSen);
_BUR_LOCAL plcbit(* p_bScanTrigSig);
_BUR_LOCAL plcbit(* p_bMag1ExitPCB);
_BUR_LOCAL plcbit(* p_bMag2ExitPCB);
_BUR_LOCAL plcbit(* p_bMag3ExitPCB);
_BUR_LOCAL eDOAction eAct;
_BUR_LOCAL eDOAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL tyDigitalOutput tyDOutput;
_BUR_LOCAL tyDigitalOutputSettings tyDOSettings;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bSafetyRlyRst;
_BUR_LOCAL plcbit bTLRed;
_BUR_LOCAL plcbit bTLAmber;
_BUR_LOCAL plcbit bTLGreen;
_BUR_LOCAL plcbit bBuzzer;
_BUR_LOCAL plcbit bUSBA;
_BUR_LOCAL plcbit bUSBB;
_BUR_LOCAL plcbit bOvenInfoSigA;
_BUR_LOCAL plcbit bOvenInfoSigB;
_BUR_LOCAL plcbit bPusherExtCtrl;
_BUR_LOCAL plcbit bStopperUnblkCtrlA;
_BUR_LOCAL plcbit bStopperUnblkCtrlB;
_BUR_LOCAL plcbit bMag1FixedClampCtrl;
_BUR_LOCAL plcbit bMag1RemoteClampCtrl;
_BUR_LOCAL plcbit bMag2FixedClampCtrl;
_BUR_LOCAL plcbit bMag2RemoteClampCtrl;
_BUR_LOCAL plcbit bMag3FixedClampCtrl;
_BUR_LOCAL plcbit bMag3RemoteClampCtrl;
_BUR_LOCAL plcbit bInShutterOpenCtrl;
_BUR_LOCAL plcbit bInShutterCloseCtrl;
_BUR_LOCAL plcbit bOutShutterOpenCtrl;
_BUR_LOCAL plcbit bOutShutterCloseCtrl;
_BUR_LOCAL plcbit bMag1ConvMtrIn;
_BUR_LOCAL plcbit bMag1ConvMtrOut;
_BUR_LOCAL plcbit bMag2ConvMtrIn;
_BUR_LOCAL plcbit bMag2ConvMtrOut;
_BUR_LOCAL plcbit bMag3ConvMtrIn;
_BUR_LOCAL plcbit bMag3ConvMtrOut;
_BUR_LOCAL plcbit bPushConvMtrOn;
_BUR_LOCAL plcbit bMag1SelClampCtrl;
_BUR_LOCAL plcbit bMag2SelClampCtrl;
_BUR_LOCAL plcbit bMag3SelClampCtrl;
_BUR_LOCAL plcbit bMag1SafetyBarRetCtrl;
_BUR_LOCAL plcbit bMag2SafetyBarRetCtrl;
_BUR_LOCAL plcbit bMag3SafetyBarRetCtrl;
_BUR_LOCAL plcbit bMag1WallEngageCtrl;
_BUR_LOCAL plcbit bMag2WallEngageCtrl;
_BUR_LOCAL plcbit bMag3WallEngageCtrl;
_BUR_LOCAL plcbit bSOTMagError1;
_BUR_LOCAL plcbit bSOTMagSLarge1;
_BUR_LOCAL plcbit bSOTMagReady1;
_BUR_LOCAL plcbit bSOTMagAvailable1;
_BUR_LOCAL plcbit bSOTMagError2;
_BUR_LOCAL plcbit bSOTMagSLarge2;
_BUR_LOCAL plcbit bSOTMagReady2;
_BUR_LOCAL plcbit bSOTMagAvailable2;
_BUR_LOCAL plcbit bSOTMagError3;
_BUR_LOCAL plcbit bSOTMagSLarge3;
_BUR_LOCAL plcbit bSOTMagReady3;
_BUR_LOCAL plcbit bSOTMagAvailable3;
_BUR_LOCAL plcbit bSOTMagError4;
_BUR_LOCAL plcbit bSOTMagSLarge4;
_BUR_LOCAL plcbit bSOTMagReady4;
_BUR_LOCAL plcbit bSOTMagAvailable4;
_BUR_LOCAL plcbit bMagAWOpenLimByp1;
_BUR_LOCAL plcbit bMagAWOpenLimByp2;
_BUR_LOCAL plcbit bMagAWOpenLimByp3;
_BUR_LOCAL plcbit bMagAWOpenLimByp4;
_BUR_LOCAL plcbit bMagAWSmallLimSen1;
_BUR_LOCAL plcbit bMagAWSmallLimSen2;
_BUR_LOCAL plcbit bMagAWSmallLimSen3;
_BUR_LOCAL plcbit bMagAWSmallLimSen4;
_BUR_LOCAL plcbit bRequestToBring1;
_BUR_LOCAL plcbit bRequestToGet1;
_BUR_LOCAL plcbit bRequestToBring2;
_BUR_LOCAL plcbit bRequestToGet2;
_BUR_LOCAL plcbit bRequestToBring3;
_BUR_LOCAL plcbit bRequestToGet3;
_BUR_LOCAL plcbit bRequestToBring4;
_BUR_LOCAL plcbit bRequestToGet4;
_BUR_LOCAL plcbit bEntTopStprUnblkCtrl;
_BUR_LOCAL plcbit bMidTopStprUnblkCtrl;
_BUR_LOCAL plcbit bExtTopStprUnblkCtrl;
_BUR_LOCAL plcbit bMidBtmStprUnblkCtrl;
_BUR_LOCAL plcbit bExtBtmStprUnblkCtrl;
_BUR_LOCAL plcbit bEntTopStprUnblkCtrl2;
_BUR_LOCAL plcbit bMidTopStprUnblkCtrl2;
_BUR_LOCAL plcbit bExtTopStprUnblkCtrl2;
_BUR_LOCAL plcbit bMidBtmStprUnblkCtrl2;
_BUR_LOCAL plcbit bExtBtmStprUnblkCtrl2;
_BUR_LOCAL plcbit bInMagConvMtrOn;
_BUR_LOCAL plcbit bOutMagConvMtrOn;
_BUR_LOCAL plcbit bInMagConv2MtrOn;
_BUR_LOCAL plcbit bOutMagConv2MtrOn;
_BUR_LOCAL plcbit bMtrPwrRly;
_BUR_LOCAL plcbit bBypCurtainSen;
_BUR_LOCAL plcbit bRstCurtainSen;
_BUR_LOCAL plcbit bBypCurtainPBLED;
_BUR_LOCAL plcbit bStartScanSig;
_BUR_LOCAL plcbit bPCBExitMag1;
_BUR_LOCAL plcbit bPCBExitMag2;
_BUR_LOCAL plcbit bPCBExitMag3;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit a_bPhysicalDO[200];
_BUR_LOCAL eDOAction eStatOld;
_BUR_LOCAL unsigned char usiShutterTuningStep;
_BUR_LOCAL plcbit bShutterTuning;
_BUR_LOCAL struct TON fbShutterTuneOpnTim;
_BUR_LOCAL struct TON fbShutterTuneClsTim;
_BUR_LOCAL plcbit bAgvComIODisabled;
_GLOBAL unsigned long c_udiDOutputMax;
