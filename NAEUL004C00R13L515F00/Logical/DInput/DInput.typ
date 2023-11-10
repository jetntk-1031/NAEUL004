(*2018-12-10*)
(**)
(*Data*)

TYPE
	tyDigitalInput : 	STRUCT 
		bSafetyRlySig : BOOL;
		bEStopSig : BOOL;
		bCoverSWSig : BOOL;
		bUBAA : BOOL;
		bUBAB : BOOL;
		bUBAAStat : BOOL;
		bUBABStat : BOOL;
		bPusherExtRS : BOOL;
		bPusherRetRS : BOOL;
		bConvLftSen : BOOL;
		bConvMidSen : BOOL;
		bConvRgtSen : BOOL;
		bConvClrSen : BOOL;
		bOvenInfeedSigA : BOOL;
		bOvenInfeedSigB : BOOL;
		bLifterTimingBeltSen : BOOL;
		bLifterSafetyLmtSW1 : BOOL;
		bLifterSafetyLmtSW2 : BOOL;
		bMag1FixedClampRS : BOOL;
		bMag1FixedUnclampRS : BOOL;
		bMag1RemoteClampRS : BOOL;
		bMag1RemoteUnclampRS : BOOL;
		bMag2FixedClampRS : BOOL;
		bMag2FixedUnclampRS : BOOL;
		bMag2RemoteClampRS : BOOL;
		bMag2RemoteUnclampRS : BOOL;
		bMag3FixedClampRS : BOOL;
		bMag3FixedUnclampRS : BOOL;
		bMag3RemoteClampRS : BOOL;
		bMag3RemoteUnclampRS : BOOL;
		bInShutterOpenRS : BOOL;
		bInShutterCloseRS : BOOL;
		bOutShutterOpenRS : BOOL;
		bOutShutterCloseRS : BOOL;
		bMagPresentSen1 : BOOL;
		bMagPresentSen2 : BOOL;
		bMagPresentSen3 : BOOL;
		bMagConvEntSen1 : BOOL;
		bMagConvEntSen2 : BOOL;
		bMagConvEntSen3 : BOOL;
		bMag1AIVInPosSen1 : BOOL;
		bMag1AIVInPosSen2 : BOOL;
		bMag2AIVInPosSen1 : BOOL;
		bMag2AIVInPosSen2 : BOOL;
		bMag3AIVInPosSen1 : BOOL;
		bMag3AIVInPosSen2 : BOOL;
		bMag1OrientChkSen1 : BOOL;
		bMag1OrientChkSen2 : BOOL;
		bMag2OrientChkSen1 : BOOL;
		bMag2OrientChkSen2 : BOOL;
		bMag3OrientChkSen1 : BOOL;
		bMag3OrientChkSen2 : BOOL;
		bUSWidthChkSen : BOOL;
		bConvLineAInletSen : BOOL;
		bConvLineBInletSen : BOOL;
		bMagConvHeightSen1 : BOOL;
		bMagConvHeightSen2 : BOOL;
		bMagConvHeightSen3 : BOOL;
		bMagConvSmallMagSen1 : BOOL;
		bMagConvSmallMagSen2 : BOOL;
		bMagConvSmallMagSen3 : BOOL;
		bMagConvLargeMagSen1 : BOOL;
		bMagConvLargeMagSen2 : BOOL;
		bMagConvLargeMagSen3 : BOOL;
		bMagConvCAB717MagSen1 : BOOL;
		bMagConvCAB717MagSen2 : BOOL;
		bMagConvCAB717MagSen3 : BOOL;
		bMag1SelUnClampRS : BOOL;
		bMag2SelUnClampRS : BOOL;
		bMag3SelUnClampRS : BOOL;
		bMag1WallEngageRS : BOOL;
		bMag1WallDisengageRS : BOOL;
		bMag2WallEngageRS : BOOL;
		bMag2WallDisengageRS : BOOL;
		bMag3WallEngageRS : BOOL;
		bMag3WallDisengageRS : BOOL;
		bMag1SafetyBarExtRS : BOOL;
		bMag1SafetyBarRetRS : BOOL;
		bMag2SafetyBarExtRS : BOOL;
		bMag2SafetyBarRetRS : BOOL;
		bMag3SafetyBarExtRS : BOOL;
		bMag3SafetyBarRetRS : BOOL;
		bSOT1Receive : BOOL;
		bSOT1AIVError : BOOL;
		bSOT1AIVSizeLarge : BOOL;
		bSOT1AIVReady : BOOL;
		bSOT1AIVAvailable : BOOL;
		bSOT2Receive : BOOL;
		bSOT2AIVError : BOOL;
		bSOT2AIVSizeLarge : BOOL;
		bSOT2AIVReady : BOOL;
		bSOT2AIVAvailable : BOOL;
		bSOT3Receive : BOOL;
		bSOT3AIVError : BOOL;
		bSOT3AIVSizeLarge : BOOL;
		bSOT3AIVReady : BOOL;
		bSOT3AIVAvailable : BOOL;
		bSOT4Receive : BOOL;
		bSOT4AIVError : BOOL;
		bSOT4AIVSizeLarge : BOOL;
		bSOT4AIVReady : BOOL;
		bSOT4AIVAvailable : BOOL;
		bFleetManagerReady : BOOL;
		bPusherExtSlwSen : BOOL;
		bPusherRetSlwSen : BOOL;
		bMtrPshrTorqueSig : BOOL;
		bMtrPshrAlmSig : BOOL;
		bMagWidthChkSen : BOOL;
		bPshrAntiJam : BOOL;
		bInMagConvEntSen : BOOL;
		bInMagConvExtSen : BOOL;
		bInMagConvMidSen : BOOL;
		bOutMagConvEntSen : BOOL;
		bOutMagConvExtSen : BOOL;
		bOutMagConvMidSen : BOOL;
		bInMagConv2EntSen : BOOL;
		bInMagConv2ExtSen : BOOL;
		bInMagConv2MidSen : BOOL;
		bOutMagConv2EntSen : BOOL;
		bOutMagConv2ExtSen : BOOL;
		bOutMagConv2MidSen : BOOL;
		bLifterLmtSW : BOOL;
		bLifter2LmtSW : BOOL;
		bMtrOverloadSig : BOOL;
		bOutShutterOpenRS2 : BOOL;
		bOutShutterCloseRS2 : BOOL;
		bOutShutterOpenRS3 : BOOL;
		bOutShutterCloseRS3 : BOOL;
		bMag1FixedClampSen : BOOL;
		bMag2FixedClampSen : BOOL;
		bMag3FixedClampSen : BOOL;
		bCurtainSenPB : BOOL;
		bCurtainSen : BOOL;
		bCurtainSafetySig : BOOL;
		bHighMagDetSen1 : BOOL;
		bHighMagDetSen2 : BOOL;
		bHighMagDetSen3 : BOOL;
		bInletStopperASen : BOOL;
		diScanComplSig : BOOL;
		diPCBScanSen : BOOL;
		bSPARE17 : BOOL;
		bSPARE18 : BOOL;
		bSPARE19 : BOOL;
		bSPARE20 : BOOL;
	END_STRUCT;
	tyDigitalInputSettings : 	STRUCT 
		diSafetyRlySig : DINT;
		diEStopSig : DINT;
		diCoverSWSig : DINT;
		diUBAA : DINT;
		diUBAB : DINT;
		diUBAAStat : DINT;
		diUBABStat : DINT;
		diPusherExtRS : DINT;
		diPusherRetRS : DINT;
		diConvLftSen : DINT;
		diConvMidSen : DINT;
		diConvRgtSen : DINT;
		diConvClrSen : DINT;
		diOvenInfeedSigA : DINT;
		diOvenInfeedSigB : DINT;
		diLifterTimingBeltSen : DINT;
		diLifterSafetyLmtSW1 : DINT;
		diLifterSafetyLmtSW2 : DINT;
		diMag1FixedClampRS : DINT;
		diMag1FixedUnclampRS : DINT;
		diMag1RemoteClampRS : DINT;
		diMag1RemoteUnclampRS : DINT;
		diMag2FixedClampRS : DINT;
		diMag2FixedUnclampRS : DINT;
		diMag2RemoteClampRS : DINT;
		diMag2RemoteUnclampRS : DINT;
		diMag3FixedClampRS : DINT;
		diMag3FixedUnclampRS : DINT;
		diMag3RemoteClampRS : DINT;
		diMag3RemoteUnclampRS : DINT;
		diInShutterOpenRS : DINT;
		diInShutterCloseRS : DINT;
		diOutShutterOpenRS : DINT;
		diOutShutterCloseRS : DINT;
		diMagPresentSen1 : DINT;
		diMagPresentSen2 : DINT;
		diMagPresentSen3 : DINT;
		diMagConvEntSen1 : DINT;
		diMagConvEntSen2 : DINT;
		diMagConvEntSen3 : DINT;
		diMag1AIVInPosSen1 : DINT;
		diMag1AIVInPosSen2 : DINT;
		diMag2AIVInPosSen1 : DINT;
		diMag2AIVInPosSen2 : DINT;
		diMag3AIVInPosSen1 : DINT;
		diMag3AIVInPosSen2 : DINT;
		diMag1OrientChkSen1 : DINT;
		diMag1OrientChkSen2 : DINT;
		diMag2OrientChkSen1 : DINT;
		diMag2OrientChkSen2 : DINT;
		diMag3OrientChkSen1 : DINT;
		diMag3OrientChkSen2 : DINT;
		diUSWidthChkSen : DINT;
		diConvLineAInletSen : DINT;
		diConvLineBInletSen : DINT;
		diMagConvHeightSen1 : DINT;
		diMagConvHeightSen2 : DINT;
		diMagConvHeightSen3 : DINT;
		diMagConvSmallMagSen1 : DINT;
		diMagConvSmallMagSen2 : DINT;
		diMagConvSmallMagSen3 : DINT;
		diMagConvLargeMagSen1 : DINT;
		diMagConvLargeMagSen2 : DINT;
		diMagConvLargeMagSen3 : DINT;
		diMagConvCAB717MagSen1 : DINT;
		diMagConvCAB717MagSen2 : DINT;
		diMagConvCAB717MagSen3 : DINT;
		diMag1SelUnClampRS : DINT;
		diMag2SelUnClampRS : DINT;
		diMag3SelUnClampRS : DINT;
		diMag1WallEngageRS : DINT;
		diMag1WallDisengageRS : DINT;
		diMag2WallEngageRS : DINT;
		diMag2WallDisengageRS : DINT;
		diMag3WallEngageRS : DINT;
		diMag3WallDisengageRS : DINT;
		diMag1SafetyBarExtRS : DINT;
		diMag1SafetyBarRetRS : DINT;
		diMag2SafetyBarExtRS : DINT;
		diMag2SafetyBarRetRS : DINT;
		diMag3SafetyBarExtRS : DINT;
		diMag3SafetyBarRetRS : DINT;
		diSOT1Receive : DINT;
		diSOT1AIVError : DINT;
		diSOT1AIVSizeLarge : DINT;
		diSOT1AIVReady : DINT;
		diSOT1AIVAvailable : DINT;
		diSOT2Receive : DINT;
		diSOT2AIVError : DINT;
		diSOT2AIVSizeLarge : DINT;
		diSOT2AIVReady : DINT;
		diSOT2AIVAvailable : DINT;
		diSOT3Receive : DINT;
		diSOT3AIVError : DINT;
		diSOT3AIVSizeLarge : DINT;
		diSOT3AIVReady : DINT;
		diSOT3AIVAvailable : DINT;
		diSOT4Receive : DINT;
		diSOT4AIVError : DINT;
		diSOT4AIVSizeLarge : DINT;
		diSOT4AIVReady : DINT;
		diSOT4AIVAvailable : DINT;
		diFleetManagerReady : DINT;
		diPusherExtSlwSen : DINT;
		diPusherRetSlwSen : DINT;
		diMtrPshrTorqueSig : DINT;
		diMtrPshrAlmSig : DINT;
		diMagWidthChkSen : DINT;
		diPshrAntiJam : DINT;
		diInMagConvEntSen : DINT;
		diInMagConvExtSen : DINT;
		diInMagConvMidSen : DINT;
		diOutMagConvEntSen : DINT;
		diOutMagConvExtSen : DINT;
		diOutMagConvMidSen : DINT;
		diInMagConv2EntSen : DINT;
		diInMagConv2ExtSen : DINT;
		diInMagConv2MidSen : DINT;
		diOutMagConv2EntSen : DINT;
		diOutMagConv2ExtSen : DINT;
		diOutMagConv2MidSen : DINT;
		diLifterLmtSW : DINT;
		diLifter2LmtSW : DINT;
		diMtrOverloadSig : DINT;
		diOutShutterOpenRS2 : DINT;
		diOutShutterCloseRS2 : DINT;
		diOutShutterOpenRS3 : DINT;
		diOutShutterCloseRS3 : DINT;
		diMag1FixedClampSen : DINT;
		diMag2FixedClampSen : DINT;
		diMag3FixedClampSen : DINT;
		diCurtainSenPB : DINT;
		diCurtainSen : DINT;
		diCurtainSafetySig : DINT;
		diHighMagDetSen1 : DINT;
		diHighMagDetSen2 : DINT;
		diHighMagDetSen3 : DINT;
		diInletStopperASen : DINT; (*Inlet Lane A stopper*)
		diScanComplSig : DINT;
		diPCBScanSen : DINT;
		diSPARE17 : DINT;
		diSPARE18 : DINT;
		diSPARE19 : DINT;
		diSPARE20 : DINT;
	END_STRUCT;
	tySOTSigmulateSig : 	STRUCT 
		tyBtnInPos : BOOL;
		tyBtnError : BOOL;
		tyBtnRdy : BOOL;
		tyBtnAvail : BOOL;
	END_STRUCT;
END_TYPE