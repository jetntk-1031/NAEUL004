(** 2019-05-20 **)
ACTION Act_Link:
	//
	IF p_eCustomerReq = Siemens THEN
		p_bTLAmber ACCESS p_TLBuzWhite;
	ELSE 
		p_bTLAmber ACCESS p_TLBuzAmber;
	END_IF
	
	
	//Motor power relay
	IF p_bLinkStartupRun = FALSE THEN
		p_bMtrPwrRly		:= TRUE;
	END_IF
	
	IF p_bManual THEN
		
		p_bSOTMagError1	ACCESS p_UISOTMagErr1;		
		p_bSOTMagError2	ACCESS p_UISOTMagErr2;		
		p_bSOTMagError3	ACCESS p_UISOTMagErr3;	
		//		p_bSOTMagError4	ACCESS p_UISOTMagErr4;		
		p_bSOTMagReady1	ACCESS p_UISOTMagRdy1;	
		p_bSOTMagReady2	ACCESS p_UISOTMagRdy2;	
		p_bSOTMagReady3	ACCESS p_UISOTMagRdy3;		
		//		p_bSOTMagReady4	ACCESS p_UISOTMagRdy4;		
		p_bSOTMagAvailable1	ACCESS p_UISOTMagAvail1;	
		p_bSOTMagAvailable2	ACCESS p_UISOTMagAvail2;	
		p_bSOTMagAvailable3	ACCESS p_UISOTMagAvail3;	
		//		p_bSOTMagAvailable4	ACCESS p_UISOTMagAvail4;	
		p_bSOTMagSizeLarge1	ACCESS p_UISOTMagSLarge1;	
		p_bSOTMagSizeLarge2	ACCESS p_UISOTMagSLarge2;	
		p_bSOTMagSizeLarge3 ACCESS p_UISOTMagSLarge3;	
		//		p_bSOTMagSizeLarge4	ACCESS p_UISOTMagSLarge4;
		
		
		p_bMagAWOpenLimByp1 ACCESS p_UIMagAWOpenLimByp1;
		p_bMagAWOpenLimByp2 ACCESS p_UIMagAWOpenLimByp2;
		p_bMagAWOpenLimByp3 ACCESS p_UIMagAWOpenLimByp3;
		//		p_bMagAWOpenLimByp4 ACCESS p_UIMagAWOpenLimByp4;
		
		p_bMagAWSmallLimSen1 ACCESS p_UIMagAWSmallLimSen1;
		p_bMagAWSmallLimSen2 ACCESS p_UIMagAWSmallLimSen2;
		p_bMagAWSmallLimSen3 ACCESS p_UIMagAWSmallLimSen3;
		//		p_bMagAWSmallLimSen4 ACCESS p_UIMagAWSmallLimSen4;
		
		p_bRequestToBring1 ACCESS p_UIAIVReqBring1;
		p_bRequestToBring2 ACCESS p_UIAIVReqBring2;
		p_bRequestToBring3 ACCESS p_UIAIVReqBring3;
		
		p_bRequestToGet1 ACCESS p_UIAIVReqGet1;
		p_bRequestToGet2 ACCESS p_UIAIVReqGet2;
		p_bRequestToGet3 ACCESS p_UIAIVReqGet3;
		
		//DMCRFID 
		p_bScanTrigSig ACCESS p_UIStartScanSig;
		p_bMag1ExitPCB ACCESS p_UIMag1TransOut;
		p_bMag2ExitPCB ACCESS p_UIMag2TransOut;
		p_bMag3ExitPCB ACCESS p_UIMag3TransOut;

	ELSIF p_bLinkOpsRun THEN
		p_bSOTMagReady1 ACCESS p_USSOT1USB;
		p_bSOTMagReady2 ACCESS p_USSOT2USB;
		p_bSOTMagReady3 ACCESS p_USSOT3USB;
		
		p_bSOTMagError1 ACCESS p_AlarmErr;
		p_bSOTMagError2 ACCESS p_AlarmErr;
		p_bSOTMagError3 ACCESS p_AlarmErr;
		
		p_bSOTMagAvailable1 ACCESS p_DSSOT1DBA;
		p_bSOTMagAvailable2 ACCESS p_DSSOT2DBA;
		p_bSOTMagAvailable3 ACCESS p_DSSOT3DBA;
		
		p_bSOTMagSizeLarge1 ACCESS p_DSSOT1MagSizeLarge;
		p_bSOTMagSizeLarge2 ACCESS p_DSSOT2MagSizeLarge;
		p_bSOTMagSizeLarge3 ACCESS p_DSSOT3MagSizeLarge;
			
		p_bRequestToBring1 ACCESS p_Buffer1MagRemoved;
		p_bRequestToBring2 ACCESS p_Buffer2MagRemoved;
		p_bRequestToBring3 ACCESS p_Buffer3MagRemoved;
		//	p_bRequestToBring4 ACCESS p_Buffer4MagRemoved;
		
		p_bRequestToGet1 ACCESS p_DSSOT1DBA;
		p_bRequestToGet2 ACCESS p_DSSOT2DBA;
		p_bRequestToGet3 ACCESS p_DSSOT3DBA;
		//	p_bRequestToGet4 ACCESS p_DSSOT4DBA;
		
		//DMCRFID 
		p_bScanTrigSig ACCESS p_OpsTravLifStartScanSig;
		p_bMag1ExitPCB ACCESS p_OpsTravLifMag1TransOut;
		p_bMag2ExitPCB ACCESS p_OpsTravLifMag2TransOut;
		p_bMag3ExitPCB ACCESS p_OpsTravLifMag3TransOut;
	ELSE
		p_bSOTMagReady1 := FALSE;
		p_bSOTMagReady2 := FALSE;
		p_bSOTMagReady3 := FALSE;
		
		p_bSOTMagError1 ACCESS p_AlarmErr;
		p_bSOTMagError2 ACCESS p_AlarmErr;
		p_bSOTMagError3 ACCESS p_AlarmErr;
		
		p_bSOTMagAvailable1 := FALSE;
		p_bSOTMagAvailable2 := FALSE;
		p_bSOTMagAvailable3 := FALSE;
		
		p_bSOTMagSizeLarge1 := FALSE;
		p_bSOTMagSizeLarge2 := FALSE;
		p_bSOTMagSizeLarge3 := FALSE;
	
//		p_bRequestToBring1 := FALSE;
//		p_bRequestToBring2 := FALSE;
//		p_bRequestToBring3 := FALSE;
		
		p_bRequestToGet1 := FALSE;
		p_bRequestToGet2 := FALSE;
		p_bRequestToGet3 := FALSE;
		
		//DMCRFID 
		p_bScanTrigSig ACCESS ADR(bStartScanSig);
		p_bMag1ExitPCB ACCESS ADR(bPCBExitMag1);
		p_bMag2ExitPCB ACCESS ADR(bPCBExitMag2);
		p_bMag3ExitPCB ACCESS ADR(bPCBExitMag3);
		
	END_IF
	
	CASE p_eLinkAGVComProtocol OF
		McSetAGVCommOPCUA, McSetAGVCommDisabled:
			IF p_bLinkNtParamProjSOTSenPrep THEN
				bAgvComIODisabled := FALSE;
			ELSE
				bAgvComIODisabled := TRUE;
			END_IF
			
		McSetAGVCommHardIO:
			bAgvComIODisabled := FALSE;
		
	END_CASE
	
	IF p_bLinkProjMagConvLane1Prep AND p_bLinkProjMagConvLane2Prep THEN
		p_bMag1FixedClampCtrl ACCESS p_LifterMagConvClprClampCtrl; //share lifter mag clmp -act_link
		p_bMag2FixedClampCtrl ACCESS p_LifterMagConv2ClprClampCtrl;
		
		p_bMag1ConvMtrIn ACCESS p_LifterMagConvMtrDirOrRToL; //share lifter mag conv -act_link
		p_bMag1ConvMtrOut ACCESS p_LifterMagConvMtrSigOnOrLToR;
		p_bMag2ConvMtrIn ACCESS p_LifterMagConv2MtrDirOrRToL;
		p_bMag2ConvMtrOut ACCESS p_LifterMagConv2MtrSigOnOrLToR;
	ELSE
		p_bMag1FixedClampCtrl ACCESS p_MagConv2Clp1FixClprClampCtrl; //share lifter mag clmp -act_link
		p_bMag2FixedClampCtrl ACCESS p_MagConv2Clp2FixClprClampCtrl;
		
		p_bMag1ConvMtrIn ACCESS p_MagConv2Clp1MtrSigOnOrLToR; //share lifter mag conv -act_link
		p_bMag1ConvMtrOut ACCESS p_MagConv2Clp1MtrDirOrRToL;
		p_bMag2ConvMtrIn ACCESS p_MagConv2Clp2MtrSigOnOrLToR;
		p_bMag2ConvMtrOut ACCESS p_MagConv2Clp2MtrDirOrRToL;
	END_IF
	
	IF p_bManual THEN
		p_bBypCurtainSen ACCESS p_UIMnlBypCurtainSen;
		p_bRstCurtainSen ACCESS p_UISafetyCurtainReset;
		p_bBypCurtainPBLED ACCESS p_UIMnlBypCurtainPBLED;
		
	ELSIF p_bLinkOpsRun THEN
		
		p_bBypCurtainPBLED	 := p_bLinkOpsBypCurtainLED;
		
		IF p_bLinkOpsBypCurtainSen OR p_bLinkAGVCommRdy1 OR p_bLinkAGVCommRdy2 OR p_bLinkAGVCommRdy3 THEN
			p_bBypCurtainSen     := TRUE;
		ELSE
			p_bBypCurtainSen	 := FALSE;
		END_IF

	ELSE
		p_bRstCurtainSen ACCESS p_UISafetyCurtainReset;
		p_bBypCurtainSen ACCESS p_UIMnlBypCurtainSen;//:= FALSE;
		p_bBypCurtainPBLED ACCESS p_UIMnlBypCurtainPBLED;//:= FALSE;
	END_IF
	
END_ACTION
