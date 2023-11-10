(*2018-12-13*)
(**)
(*Action*)

TYPE
	eDOAction : 
		(
		DOActIdle,
		DOActRstAll,
		DOActSetBypassCoverSwitch,
		DOActRstBypassCoverSwitch
		);
END_TYPE

(**)
(*Data*)

TYPE
	tyDigitalOutput : 	STRUCT 
		bSafetyRlyRst : BOOL;
		bTLRed : BOOL;
		bTLAmber : BOOL;
		bTLGreen : BOOL;
		bBuzzer : BOOL;
		bUSBA : BOOL;
		bUSBB : BOOL;
		bOvenInfoSigA : BOOL;
		bOvenInfoSigB : BOOL;
		bPusherExtCtrl : BOOL;
		bStopperUnBlkCtrlA : BOOL;
		bStopperUnBlkCtrlB : BOOL;
		bMag1FixedClampCtrl : BOOL;
		bMag1RemoteClampCtrl : BOOL;
		bMag2FixedClampCtrl : BOOL;
		bMag2RemoteClampCtrl : BOOL;
		bMag3FixedClampCtrl : BOOL;
		bMag3RemoteClampCtrl : BOOL;
		bInShutterOpenCtrl : BOOL;
		bInShutterCloseCtrl : BOOL;
		bOutShutterOpenCtrl : BOOL;
		bOutShutterCloseCtrl : BOOL;
		bMag1ConvMtrIn : BOOL; (*LifterMagConv*)
		bMag1ConvMtrOut : BOOL;
		bMag2ConvMtrIn : BOOL;
		bMag2ConvMtrOut : BOOL;
		bMag3ConvMtrIn : BOOL;
		bMag3ConvMtrOut : BOOL;
		bMag1SelClampCtrl : BOOL;
		bMag2SelClampCtrl : BOOL;
		bMag3SelClampCtrl : BOOL;
		bPusherConvMtrOn : BOOL;
		bMag1WallEngageCtrl : BOOL;
		bMag2WallEngageCtrl : BOOL;
		bMag3WallEngageCtrl : BOOL;
		bMag1SafetyBarRetCtrl : BOOL;
		bMag2SafetyBarRetCtrl : BOOL;
		bMag3SafetyBarRetCtrl : BOOL;
		bSOT1MagError : BOOL;
		bSOT1MagSizeLarge : BOOL;
		bSOT1MagReady : BOOL;
		bSOT1MagAvailable : BOOL;
		bSOT2MagError : BOOL;
		bSOT2MagSizeLarge : BOOL;
		bSOT2MagReady : BOOL;
		bSOT2MagAvailable : BOOL;
		bSOT3MagError : BOOL;
		bSOT3MagSizeLarge : BOOL;
		bSOT3MagReady : BOOL;
		bSOT3MagAvailable : BOOL;
		bSOT4MagError : BOOL;
		bSOT4MagSizeLarge : BOOL;
		bSOT4MagReady : BOOL;
		bSOT4MagAvailable : BOOL;
		bMagAWOpenLimByp1 : BOOL;
		bMagAWOpenLimByp2 : BOOL;
		bMagAWOpenLimByp3 : BOOL;
		bMagAWOpenLimByp4 : BOOL;
		bMagAWSmallLimSen1 : BOOL;
		bMagAWSmallLimSen2 : BOOL;
		bMagAWSmallLimSen3 : BOOL;
		bMagAWSmallLimSen4 : BOOL;
		bMag1ReqToBring : BOOL;
		bMag1ReqToGet : BOOL;
		bMag2ReqToBring : BOOL;
		bMag2ReqToGet : BOOL;
		bMag3ReqToBring : BOOL;
		bMag3ReqToGet : BOOL;
		bMag4ReqToBring : BOOL;
		bMag4ReqToGet : BOOL;
		bMtrPshrExt : BOOL;
		bMtrPshrRet : BOOL;
		bMtrPshrOn : BOOL;
		bMtrPshrBrakeRls : BOOL;
		bMtrPshrSpdBinBit0 : BOOL;
		bMtrPshrSpdBinBit1 : BOOL;
		bMtrPshrSpdBinBit2 : BOOL;
		bMtrPshrAlmRst : BOOL;
		bInMagConvMtrOn : BOOL;
		bOutMagConvMtrOn : BOOL;
		bInMagConv2MtrOn : BOOL;
		bOutMagConv2MtrOn : BOOL;
		bEntTopStprUnblkCtrl : BOOL; (*MagConv_Top*)
		bMidTopStprUnblkCtrl : BOOL;
		bExtTopStprUnblkCtrl : BOOL;
		bMidBtmStprUnblkCtrl : BOOL;
		bExtBtmStprUnblkCtrl : BOOL;
		bEntTopStprUnblkCtrl2 : BOOL; (*MagConv2_Top*)
		bMidTopStprUnblkCtrl2 : BOOL;
		bExtTopStprUnblkCtrl2 : BOOL;
		bMidBtmStprUnblkCtrl2 : BOOL;
		bExtBtmStprUnblkCtrl2 : BOOL;
		bMtrPwrRly : BOOL;
		bMag1FixedClampOpenCtrl : BOOL;
		bMag1RemoteClampOpenCtrl : BOOL;
		bMag2FixedClampOpenCtrl : BOOL;
		bMag2RemoteClampOpenCtrl : BOOL;
		bMag3FixedClampOpenCtrl : BOOL;
		bMag3RemoteClampOpenCtrl : BOOL;
		bOutShutterOpenCtrl2 : BOOL;
		bOutShutterCloseCtrl2 : BOOL;
		bOutShutterOpenCtrl3 : BOOL;
		bOutShutterCloseCtrl3 : BOOL;
		bBypCurtainSen : BOOL;
		bRstCurtainSen : BOOL;
		bBypCurtainPBLED : BOOL;
		diInletStopperRetCtrl : BOOL;
		diInletStopperExtCtrl : BOOL;
		diScanTrigSig : BOOL;
		diMag1ExitPCB : BOOL;
		diMag2ExitPCB : BOOL;
		diMag3ExitPCB : BOOL;
		bMag1SelUnClampCtrl : BOOL;
	END_STRUCT;
	tyDigitalOutputSettings : 	STRUCT 
		diSafetyRlyRst : DINT;
		diTLRed : DINT;
		diTLAmber : DINT;
		diTLGreen : DINT;
		diBuzzer : DINT;
		diUSBA : DINT;
		diUSBB : DINT;
		diOvenInfoSigA : DINT;
		diOvenInfoSigB : DINT;
		diPusherExtCtrl : DINT;
		diStopperUnblkCtrlA : DINT;
		diStopperUnblkCtrlB : DINT;
		diMag1FixedClampCtrl : DINT;
		diMag1RemoteClampCtrl : DINT;
		diMag2FixedClampCtrl : DINT;
		diMag2RemoteClampCtrl : DINT;
		diMag3FixedClampCtrl : DINT;
		diMag3RemoteClampCtrl : DINT;
		diInShutterOpenCtrl : DINT;
		diInShutterCloseCtrl : DINT;
		diOutShutterOpenCtrl : DINT;
		diOutShutterCloseCtrl : DINT;
		diMag1ConvMtrIn : DINT;
		diMag1ConvMtrOut : DINT;
		diMag2ConvMtrIn : DINT;
		diMag2ConvMtrOut : DINT;
		diMag3ConvMtrIn : DINT;
		diMag3ConvMtrOut : DINT;
		diMag1SelClampCtrl : DINT;
		diMag2SelClampCtrl : DINT;
		diMag3SelClampCtrl : DINT;
		diPushConvMtrOn : DINT;
		diMag1WallEngageCtrl : DINT;
		diMag2WallEngageCtrl : DINT;
		diMag3WallEngageCtrl : DINT;
		diMag1SafetyBarRetCtrl : DINT;
		diMag2SafetyBarRetCtrl : DINT;
		diMag3SafetyBarRetCtrl : DINT;
		diSOT1MagError : DINT;
		diSOT1MagSizeLarge : DINT;
		diSOT1MagReady : DINT;
		diSOT1MagAvailable : DINT;
		diSOT2MagError : DINT;
		diSOT2MagSizeLarge : DINT;
		diSOT2MagReady : DINT;
		diSOT2MagAvailable : DINT;
		diSOT3MagError : DINT;
		diSOT3MagSizeLarge : DINT;
		diSOT3MagReady : DINT;
		diSOT3MagAvailable : DINT;
		diSOT4MagError : DINT;
		diSOT4MagSizeLarge : DINT;
		diSOT4MagReady : DINT;
		diSOT4MagAvailable : DINT;
		diMagAWOpenLimByp1 : DINT;
		diMagAWOpenLimByp2 : DINT;
		diMagAWOpenLimByp3 : DINT;
		diMagAWOpenLimByp4 : DINT;
		diMagAWSmallLimSen1 : DINT;
		diMagAWSmallLimSen2 : DINT;
		diMagAWSmallLimSen3 : DINT;
		diMagAWSmallLimSen4 : DINT;
		diMag1ReqToBring : DINT;
		diMag1ReqToGet : DINT;
		diMag2ReqToBring : DINT;
		diMag2ReqToGet : DINT;
		diMag3ReqToBring : DINT;
		diMag3ReqToGet : DINT;
		diMag4ReqToBring : DINT;
		diMag4ReqToGet : DINT;
		diMtrPshrExt : DINT;
		diMtrPshrRet : DINT;
		diMtrPshrOn : DINT;
		diMtrPshrBrakeRls : DINT;
		diMtrPshrSpdBinBit0 : DINT;
		diMtrPshrSpdBinBit1 : DINT;
		diMtrPshrSpdBinBit2 : DINT;
		diMtrPshrAlmRst : DINT;
		diInMagConvMtrOn : DINT;
		diOutMagConvMtrOn : DINT;
		diInMagConv2MtrOn : DINT;
		diOutMagConv2MtrOn : DINT;
		diEntTopStprUnblkCtrl : DINT; (*MagConv_Top*)
		diMidTopStprUnblkCtrl : DINT;
		diExtTopStprUnblkCtrl : DINT;
		diMidBtmStprUnblkCtrl : DINT;
		diExtBtmStprUnblkCtrl : DINT;
		diEntTopStprUnblkCtrl2 : DINT;
		diMidTopStprUnblkCtrl2 : DINT;
		diExtTopStprUnblkCtrl2 : DINT;
		diMidBtmStprUnblkCtrl2 : DINT;
		diExtBtmStprUnblkCtrl2 : DINT;
		diMtrPwrRly : DINT;
		diMag1FixedClampOpenCtrl : DINT;
		diMag1RemoteClampOpenCtrl : DINT;
		diMag2FixedClampOpenCtrl : DINT;
		diMag2RemoteClampOpenCtrl : DINT;
		diMag3FixedClampOpenCtrl : DINT;
		diMag3RemoteClampOpenCtrl : DINT;
		diOutShutterOpenCtrl2 : DINT;
		diOutShutterCloseCtrl2 : DINT;
		diOutShutterOpenCtrl3 : DINT;
		diOutShutterCloseCtrl3 : DINT;
		diBypCurtainSen : DINT;
		diRstCurtainSen : DINT;
		diBypCurtainPBLED : DINT;
		diInletStopperRetCtrl : DINT;
		diInletStopperExtCtrl : DINT;
		diScanTrigSig : DINT;
		diMag1ExitPCB : DINT;
		diMag2ExitPCB : DINT;
		diMag3ExitPCB : DINT;
		diMag1SelUnClampCtrl : DINT;
	END_STRUCT;
END_TYPE
