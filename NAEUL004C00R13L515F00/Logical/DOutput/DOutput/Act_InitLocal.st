(** 2019-03-25 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiMax ACCESS ADR(c_udiDOutputMax);
	p_eAct ACCESS ADR(eAct);
	p_tyDOSettings ACCESS ADR(tyDOSettings);
	p_bManual ACCESS ADR(bManual);
	
	p_bSafetyRlyRst ACCESS ADR(bSafetyRlyRst);
	p_bTLRed ACCESS ADR(bTLRed);
	p_bTLAmber ACCESS ADR(bTLAmber);
	p_bTLGreen ACCESS ADR(bTLGreen);
	p_bBuzzer ACCESS ADR(bBuzzer);
	p_bUSBA ACCESS ADR(bUSBA);
	p_bUSBB ACCESS ADR(bUSBB);
	p_bOvenInfoSigA ACCESS ADR(bOvenInfoSigA);
	p_bOvenInfoSigB ACCESS ADR(bOvenInfoSigB);
	p_bPusherExtCtrl ACCESS ADR(bPusherExtCtrl);
	p_bStopperUnblkCtrlA ACCESS ADR(bStopperUnblkCtrlA);
	p_bStopperUnblkCtrlB ACCESS ADR(bStopperUnblkCtrlB);
	p_bMag1FixedClampCtrl ACCESS ADR(bMag1FixedClampCtrl);
	p_bMag1RemoteClampCtrl ACCESS ADR(bMag1RemoteClampCtrl);
	p_bMag2FixedClampCtrl ACCESS ADR(bMag2FixedClampCtrl);
	p_bMag2RemoteClampCtrl ACCESS ADR(bMag2RemoteClampCtrl);
	p_bMag3FixedClampCtrl ACCESS ADR(bMag3FixedClampCtrl);
	p_bMag3RemoteClampCtrl ACCESS ADR(bMag3RemoteClampCtrl);
	p_bInShutterOpenCtrl ACCESS ADR(bInShutterOpenCtrl);
	p_bInShutterCloseCtrl ACCESS ADR(bInShutterCloseCtrl);
	p_bOutShutterOpenCtrl ACCESS ADR(bOutShutterOpenCtrl);
	p_bOutShutterCloseCtrl ACCESS ADR(bOutShutterCloseCtrl);
	p_bMag1ConvMtrIn ACCESS ADR(bMag1ConvMtrIn);
	p_bMag1ConvMtrOut ACCESS ADR(bMag1ConvMtrOut);
	p_bMag2ConvMtrIn ACCESS ADR(bMag2ConvMtrIn);
	p_bMag2ConvMtrOut ACCESS ADR(bMag2ConvMtrOut);
	p_bMag3ConvMtrIn ACCESS ADR(bMag3ConvMtrIn);
	p_bMag3ConvMtrOut ACCESS ADR(bMag3ConvMtrOut);
	p_bMag1SelClampCtrl ACCESS ADR(bMag1SelClampCtrl);
	p_bMag2SelClampCtrl ACCESS ADR(bMag2SelClampCtrl);
	p_bMag3SelClampCtrl ACCESS ADR(bMag3SelClampCtrl);
	p_bPushConvMtrOn ACCESS ADR(bPushConvMtrOn);
	p_bMag1SafetyBarRetCtrl ACCESS ADR(bMag1SafetyBarRetCtrl);
	p_bMag2SafetyBarRetCtrl ACCESS ADR(bMag2SafetyBarRetCtrl);
	p_bMag3SafetyBarRetCtrl ACCESS ADR(bMag3SafetyBarRetCtrl);
	p_bMag1WallEngageCtrl ACCESS ADR(bMag1WallEngageCtrl);
	p_bMag2WallEngageCtrl ACCESS ADR(bMag2WallEngageCtrl);
	p_bMag3WallEngageCtrl ACCESS ADR(bMag3WallEngageCtrl);
	p_bSOTMagError1 ACCESS ADR(bSOTMagError1);
	p_bSOTMagError2 ACCESS ADR(bSOTMagError2);
	p_bSOTMagError3 ACCESS ADR(bSOTMagError3);
	p_bSOTMagError4 ACCESS ADR(bSOTMagError4);
	p_bSOTMagReady1 ACCESS ADR(bSOTMagReady1);
	p_bSOTMagReady2 ACCESS ADR(bSOTMagReady2);
	p_bSOTMagReady3 ACCESS ADR(bSOTMagReady3);
	p_bSOTMagReady4 ACCESS ADR(bSOTMagReady4);
	p_bSOTMagAvailable1 ACCESS ADR(bSOTMagAvailable1);
	p_bSOTMagAvailable2 ACCESS ADR(bSOTMagAvailable2);
	p_bSOTMagAvailable3 ACCESS ADR(bSOTMagAvailable3);
	p_bSOTMagAvailable4 ACCESS ADR(bSOTMagAvailable4);
	p_bSOTMagSizeLarge1 ACCESS ADR(bSOTMagSLarge1);
	p_bSOTMagSizeLarge2 ACCESS ADR(bSOTMagSLarge2);
	p_bSOTMagSizeLarge3 ACCESS ADR(bSOTMagSLarge3);
	p_bSOTMagSizeLarge4 ACCESS ADR(bSOTMagSLarge4);
	p_bMagAWOpenLimByp1 ACCESS ADR(bMagAWOpenLimByp1);
	p_bMagAWOpenLimByp2 ACCESS ADR(bMagAWOpenLimByp2);
	p_bMagAWOpenLimByp3 ACCESS ADR(bMagAWOpenLimByp3);
	p_bMagAWOpenLimByp4 ACCESS ADR(bMagAWOpenLimByp4);
	p_bMagAWSmallLimSen1 ACCESS ADR(bMagAWSmallLimSen1);
	p_bMagAWSmallLimSen2 ACCESS ADR(bMagAWSmallLimSen2);
	p_bMagAWSmallLimSen3 ACCESS ADR(bMagAWSmallLimSen3);
	p_bMagAWSmallLimSen4 ACCESS ADR(bMagAWSmallLimSen4);
	p_bRequestToBring1 ACCESS ADR(bRequestToBring1);
	p_bRequestToGet1 ACCESS ADR(bRequestToGet1);
	p_bRequestToBring2 ACCESS ADR(bRequestToBring2);
	p_bRequestToGet2 ACCESS ADR(bRequestToGet2);
	p_bRequestToBring3 ACCESS ADR(bRequestToBring3);
	p_bRequestToGet3 ACCESS ADR(bRequestToGet3);
	p_bRequestToBring4 ACCESS ADR(bRequestToBring4);
	p_bRequestToGet4 ACCESS ADR(bRequestToGet4);
	
	p_bEntTopStprUnblkCtrl ACCESS ADR(bEntTopStprUnblkCtrl);
	p_bMidTopStprUnblkCtrl ACCESS ADR(bMidTopStprUnblkCtrl);
	p_bExtTopStprUnblkCtrl ACCESS ADR(bExtTopStprUnblkCtrl);
	p_bMidBtmStprUnblkCtrl ACCESS ADR(bMidBtmStprUnblkCtrl);
	p_bExtBtmStprUnblkCtrl ACCESS ADR(bExtBtmStprUnblkCtrl);
	p_bEntTopStprUnblkCtrl2 ACCESS ADR(bEntTopStprUnblkCtrl2);
	p_bMidTopStprUnblkCtrl2 ACCESS ADR(bMidTopStprUnblkCtrl2);
	p_bExtTopStprUnblkCtrl2 ACCESS ADR(bExtTopStprUnblkCtrl2);
	p_bMidBtmStprUnblkCtrl2 ACCESS ADR(bMidBtmStprUnblkCtrl2);
	p_bExtBtmStprUnblkCtrl2 ACCESS ADR(bExtBtmStprUnblkCtrl2);
	
	p_bInMagConvMtrOn ACCESS ADR(bInMagConvMtrOn);
	p_bOutMagConvMtrOn ACCESS ADR(bOutMagConvMtrOn);
	p_bInMagConv2MtrOn ACCESS ADR(bInMagConv2MtrOn);
	p_bOutMagConv2MtrOn ACCESS ADR(bOutMagConv2MtrOn);
	p_bMtrPwrRly ACCESS ADR(bMtrPwrRly);
	
	p_bBypCurtainSen ACCESS ADR(bBypCurtainSen);
	p_bRstCurtainSen ACCESS ADR(bRstCurtainSen);
	p_bBypCurtainPBLED	ACCESS ADR(bBypCurtainPBLED);
	

END_ACTION
