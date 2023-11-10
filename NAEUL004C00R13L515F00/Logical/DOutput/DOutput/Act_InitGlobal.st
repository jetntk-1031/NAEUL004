(** 2019-05-20 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkError ACCESS p_AlarmErr;
	p_eLinkAGVComProtocol ACCESS p_McParamAGVComProtocol;
	p_bLinkNtParamProjSOTSenPrep ACCESS p_NtParamProjSOTSenPrep;
	p_bLinkProjMagConvLane1Prep ACCESS p_NtParamProjMagConvLane1Prep;
	p_bLinkProjMagConvLane2Prep ACCESS p_NtParamProjMagConvLane2Prep;
	
	p_bLinkAGVCommRdy1 ACCESS p_OpsAGVCommRdy1;
	p_bLinkAGVCommRdy2 ACCESS p_OpsAGVCommRdy2;
	p_bLinkAGVCommRdy3 ACCESS p_OpsAGVCommRdy3;
	
	p_bLinkOpsBypCurtainLED ACCESS p_OpsTravLifULBypCurtainLED;	//Bypass Curtain Push Button LED
	p_bLinkOpsBypCurtainSen ACCESS p_OpsTravLifULBypCurtainSenCtrl; //Bypass the Curtain Sensor
	
	//Pass Data To Internal Use
	p_eAct ACCESS p_UIDOAct;
	p_tyDOSettings ACCESS p_NtParamDOSettings;
	p_bManual ACCESS p_UIUIMnlMod;
	p_bSafetyRlyRst ACCESS p_RstErrSafetyRlyRst;
	p_bTLRed ACCESS p_TLBuzRed;
	p_bTLAmber ACCESS p_TLBuzAmber;
	p_bTLGreen ACCESS p_TLBuzGreen;
	p_bBuzzer ACCESS p_TLBuzBeep;
	p_bUSBA ACCESS p_USSMEMAAUSB;
	p_bUSBB ACCESS p_USSMEMABUSB;
	p_bOvenInfoSigA ACCESS p_OvenInfoAOvenAllow;
	p_bOvenInfoSigB ACCESS p_OvenInfoBOvenAllow;
	p_bPusherExtCtrl ACCESS p_PshrConvPshrExtCtrl;
	p_bStopperUnblkCtrlA ACCESS p_PneuNoSenStopperARetCtrl;
	p_bStopperUnblkCtrlB ACCESS p_PneuNoSenStopperBRetCtrl;
//	p_bMag1FixedClampCtrl ACCESS p_MagConv2Clp1FixClprClampCtrl; //share lifter mag clmp -act_link
	p_bMag1RemoteClampCtrl ACCESS p_MagConv2Clp1RmtClprClampCtrl;
//	p_bMag2FixedClampCtrl ACCESS p_MagConv2Clp2FixClprClampCtrl;
	p_bMag2RemoteClampCtrl ACCESS p_MagConv2Clp2RmtClprClampCtrl;
	p_bMag3FixedClampCtrl ACCESS p_MagConv2Clp3FixClprClampCtrl;
	p_bMag3RemoteClampCtrl ACCESS p_MagConv2Clp3RmtClprClampCtrl;
	p_bInShutterOpenCtrl ACCESS p_Pneu2SenInShutterRetCtrl;
	p_bInShutterCloseCtrl ACCESS p_Pneu2SenInShutterExtCtrl;
	p_bOutShutterOpenCtrl ACCESS p_Pneu2SenOutShutterRetCtrl;
	p_bOutShutterCloseCtrl ACCESS p_Pneu2SenOutShutterExtCtrl;
//	p_bMag1ConvMtrIn ACCESS p_MagConv2Clp1MtrSigOnOrLToR; //share lifter mag conv -act_link
//	p_bMag1ConvMtrOut ACCESS p_MagConv2Clp1MtrDirOrRToL;
//	p_bMag2ConvMtrIn ACCESS p_MagConv2Clp2MtrSigOnOrLToR;
//	p_bMag2ConvMtrOut ACCESS p_MagConv2Clp2MtrDirOrRToL;
	p_bMag3ConvMtrIn ACCESS p_MagConv2Clp3MtrSigOnOrLToR;
	p_bMag3ConvMtrOut ACCESS p_MagConv2Clp3MtrDirOrRToL;
	p_bMag1SelClampCtrl ACCESS p_PneuNoSenSelClamp1RetCtrl;
	p_bMag2SelClampCtrl ACCESS p_PneuNoSenSelClamp2RetCtrl;
	p_bMag3SelClampCtrl ACCESS p_PneuNoSenSelClamp3RetCtrl;
	p_bMag1SelUnclampCtrl ACCESS p_PneuNoSenSelClamp1ExtCtrl;
	p_bMag2SelUnclampCtrl ACCESS p_PneuNoSenSelClamp2ExtCtrl;
	p_bMag3SelUnclampCtrl ACCESS p_PneuNoSenSelClamp3ExtCtrl;
	
	p_bPushConvMtrOn ACCESS p_PshrConvMtrSigOnOrLToR;
	p_bMag1WallEngageCtrl ACCESS p_Pneu2SMag1AWEngageExtCtrl;
	p_bMag2WallEngageCtrl ACCESS p_Pneu2SMag2AWEngageExtCtrl;
	p_bMag3WallEngageCtrl ACCESS p_Pneu2SMag3AWEngageExtCtrl;	
	p_bMag1SafetyBarRetCtrl ACCESS p_Pneu2SMag1SafetyBarRetCtrl;
	p_bMag2SafetyBarRetCtrl ACCESS p_Pneu2SMag2SafetyBarRetCtrl;
	p_bMag3SafetyBarRetCtrl ACCESS p_Pneu2SMag3SafetyBarRetCtrl;
	p_bMtrPshrExt ACCESS p_MtrPshrCW;
	p_bMtrPshrRet ACCESS p_MtrPshrCCW;
	p_bMtrPshrOn ACCESS p_MtrPshrSigOn;
	p_bMtrPshrBrakeRls ACCESS p_MtrPshrBrake;
	p_bMtrPshrSpdBinBit0 ACCESS p_MtrPshrSpdBinBit0;
	p_bMtrPshrSpdBinBit1 ACCESS p_MtrPshrSpdBinBit1;
	p_bMtrPshrSpdBinBit2 ACCESS p_MtrPshrSpdBinBit2;
	p_bMtrPshrAlmRst ACCESS p_MtrPshrAlmRst;

	p_bEntTopStprUnblkCtrl ACCESS p_PneuNoSenTopEntStprRetCtrl;
	p_bMidTopStprUnblkCtrl ACCESS p_PneuNoSenTopMidStprExtCtrl;
	p_bExtTopStprUnblkCtrl ACCESS p_PneuNoSenTopExtStprRetCtrl;
	p_bMidBtmStprUnblkCtrl ACCESS p_PneuNoSenBtmMidStprExtCtrl;
	p_bExtBtmStprUnblkCtrl ACCESS p_PneuNoSenBtmExtStprRetCtrl;
	p_bEntTopStprUnblkCtrl2 ACCESS p_PneuNoSenTopEntStpr2RetCtrl;
	p_bMidTopStprUnblkCtrl2 ACCESS p_PneuNoSenTopMidStpr2ExtCtrl;
	p_bExtTopStprUnblkCtrl2 ACCESS p_PneuNoSenTopExtStpr2RetCtrl;
	p_bMidBtmStprUnblkCtrl2 ACCESS p_PneuNoSenBtmMidStpr2ExtCtrl;
	p_bExtBtmStprUnblkCtrl2 ACCESS p_PneuNoSenBtmExtStpr2RetCtrl;
	p_bInMagConvMtrOn ACCESS p_InMagConvMtrDirOrRToL;
	p_bOutMagConvMtrOn ACCESS p_OutMagConvMtrSigOnOrLToR;
	p_bInMagConv2MtrOn ACCESS p_InMagConv2MtrDirOrRToL;
	p_bOutMagConv2MtrOn ACCESS p_OutMagConv2MtrSigOnOrLToR;
	
	p_bMag1FixedClampOpenCtrl ACCESS p_MagConv2Clp1FixClprClampCtrl;
	p_bMag1RemoteClampOpenCtrl ACCESS p_MagConv2Clp1RmtClprClampCtrl;
	p_bMag2FixedClampOpenCtrl ACCESS p_MagConv2Clp2FixClprClampCtrl;
	p_bMag2RemoteClampOpenCtrl ACCESS p_MagConv2Clp2RmtClprClampCtrl;
	p_bMag3FixedClampOpenCtrl ACCESS p_MagConv2Clp3FixClprClampCtrl;
	p_bMag3RemoteClampOpenCtrl ACCESS p_MagConv2Clp3RmtClprClampCtrl;
	
	p_bOutShutterOpenCtrl2 ACCESS p_Pneu2SenOutShutterRetCtrl2;
	p_bOutShutterCloseCtrl2 ACCESS p_Pneu2SenOutShutterExtCtrl2;
	p_bOutShutterOpenCtrl3 ACCESS p_Pneu2SenOutShutterRetCtrl3;
	p_bOutShutterCloseCtrl3 ACCESS p_Pneu2SenOutShutterExtCtrl3;

	p_bInletStopperExtCtrl ACCESS p_InletStopperExtCtrl;
	p_bInletStopperRetCtrl ACCESS p_InletStopperRetCtrl;
	

	
	
	p_eCustomerReq ACCESS p_NtParamCustomerReq;
	(* Always Change If Project Change *)
	
END_ACTION
