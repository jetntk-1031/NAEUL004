(** 2019-05-20 **)
ACTION Act_Link:
	//
	IF p_eCustomerReq = Siemens THEN
		bTLAmber := g_tyTLBuzWhite;
	ELSE 
		bTLAmber := g_tyTLBuzAmber;
	END_IF
	
	
	//Motor power relay
	IF bLinkStartupRun = FALSE THEN
		bMtrPwrRly		:= TRUE;
	END_IF
	
	IF g_tyUIOut.bManualMod THEN
		
		bSOTMagError1	:= g_tyUISOTMagErr1;		
		bSOTMagError2	:= g_tyUISOTMagErr2;		
		bSOTMagError3	:= g_tyUISOTMagErr3;	
		//		bSOTMagError4	:= g_tyUISOTMagErr4;		
		bSOTMagReady1	:= g_tyUISOTMagRdy1;	
		bSOTMagReady2	:= g_tyUISOTMagRdy2;	
		bSOTMagReady3	:= g_tyUISOTMagRdy3;		
		//		bSOTMagReady4	:= g_tyUISOTMagRdy4;		
		bSOTMagAvailable1	:= g_tyUISOTMagAvail1;	
		bSOTMagAvailable2	:= g_tyUISOTMagAvail2;	
		bSOTMagAvailable3	:= g_tyUISOTMagAvail3;	
		//		bSOTMagAvailable4	:= g_tyUISOTMagAvail4;	
		bSOTMagSizeLarge1	:= g_tyUISOTMagSLarge1;	
		bSOTMagSizeLarge2	:= g_tyUISOTMagSLarge2;	
		bSOTMagSizeLarge3 := g_tyUISOTMagSLarge3;	
		//		bSOTMagSizeLarge4	:= g_tyUISOTMagSLarge4;
		
		
		bMagAWOpenLimByp1 := g_tyUIMagAWOpenLimByp1;
		bMagAWOpenLimByp2 := g_tyUIMagAWOpenLimByp2;
		bMagAWOpenLimByp3 := g_tyUIMagAWOpenLimByp3;
		//		bMagAWOpenLimByp4 := g_tyUIMagAWOpenLimByp4;
		
		bMagAWSmallLimSen1 := g_tyUIMagAWSmallLimSen1;
		bMagAWSmallLimSen2 := g_tyUIMagAWSmallLimSen2;
		bMagAWSmallLimSen3 := g_tyUIMagAWSmallLimSen3;
		//		bMagAWSmallLimSen4 := g_tyUIMagAWSmallLimSen4;
		
		bRequestToBring1 := g_tyUIAIVReqBring1;
		bRequestToBring2 := g_tyUIAIVReqBring2;
		bRequestToBring3 := g_tyUIAIVReqBring3;
		
		bRequestToGet1 := g_tyUIAIVReqGet1;
		bRequestToGet2 := g_tyUIAIVReqGet2;
		bRequestToGet3 := g_tyUIAIVReqGet3;
		
		//DMCRFID 
		bScanTrigSig := g_tyUIStartScanSig;
		bMag1ExitPCB := g_tyUIMag1TransOut;
		bMag2ExitPCB := g_tyUIMag2TransOut;
		bMag3ExitPCB := g_tyUIMag3TransOut;

	ELSIF g_tyOps.bRun THEN
		bSOTMagReady1 := g_tyUSSOT1USB;
		bSOTMagReady2 := g_tyUSSOT2USB;
		bSOTMagReady3 := g_tyUSSOT3USB;
		
		bSOTMagError1 := g_tyAlarmErr;
		bSOTMagError2 := g_tyAlarmErr;
		bSOTMagError3 := g_tyAlarmErr;
		
		bSOTMagAvailable1 := g_tyDSSOT1DBA;
		bSOTMagAvailable2 := g_tyDSSOT2DBA;
		bSOTMagAvailable3 := g_tyDSSOT3DBA;
		
		bSOTMagSizeLarge1 := g_tyDSSOT1MagSizeLarge;
		bSOTMagSizeLarge2 := g_tyDSSOT2MagSizeLarge;
		bSOTMagSizeLarge3 := g_tyDSSOT3MagSizeLarge;
			
		bRequestToBring1 := g_tyBuffer1MagRemoved;
		bRequestToBring2 := g_tyBuffer2MagRemoved;
		bRequestToBring3 := g_tyBuffer3MagRemoved;
		//	bRequestToBring4 := g_tyBuffer4MagRemoved;
		
		bRequestToGet1 := g_tyDSSOT1DBA;
		bRequestToGet2 := g_tyDSSOT2DBA;
		bRequestToGet3 := g_tyDSSOT3DBA;
		//	bRequestToGet4 := g_tyDSSOT4DBA;
		
		//DMCRFID 
		bScanTrigSig := g_tyOpsTravLifStartScanSig;
		bMag1ExitPCB := g_tyOpsTravLifMag1TransOut;
		bMag2ExitPCB := g_tyOpsTravLifMag2TransOut;
		bMag3ExitPCB := g_tyOpsTravLifMag3TransOut;
	ELSE
		bSOTMagReady1 := FALSE;
		bSOTMagReady2 := FALSE;
		bSOTMagReady3 := FALSE;
		
		bSOTMagError1 := g_tyAlarmErr;
		bSOTMagError2 := g_tyAlarmErr;
		bSOTMagError3 := g_tyAlarmErr;
		
		bSOTMagAvailable1 := FALSE;
		bSOTMagAvailable2 := FALSE;
		bSOTMagAvailable3 := FALSE;
		
		bSOTMagSizeLarge1 := FALSE;
		bSOTMagSizeLarge2 := FALSE;
		bSOTMagSizeLarge3 := FALSE;
	
//		bRequestToBring1 := FALSE;
//		bRequestToBring2 := FALSE;
//		bRequestToBring3 := FALSE;
		
		bRequestToGet1 := FALSE;
		bRequestToGet2 := FALSE;
		bRequestToGet3 := FALSE;
		
		//DMCRFID 
		bScanTrigSig ACCESS ADR(bStartScanSig);
		bMag1ExitPCB ACCESS ADR(bPCBExitMag1);
		bMag2ExitPCB ACCESS ADR(bPCBExitMag2);
		bMag3ExitPCB ACCESS ADR(bPCBExitMag3);
		
	END_IF
	
	CASE p_eLinkAGVComProtocol OF
		McSetAGVCommOPCUA, McSetAGVCommDisabled:
			IF bLinkNtParamProjSOTSenPrep THEN
				bAgvComIODisabled := FALSE;
			ELSE
				bAgvComIODisabled := TRUE;
			END_IF
			
		McSetAGVCommHardIO:
			bAgvComIODisabled := FALSE;
		
	END_CASE
	


	

	
	IF g_tyUIOut.bManualMod THEN
		bBypCurtainSen := g_tyUIOut.bMnlBypCurtainSen;
		bRstCurtainSen := g_tyUIOut.bSafetyCurtainReset;
		bBypCurtainPBLED := g_tyUIOut.bMnlBypCurtainPBLED;
		
	ELSIF g_tyOps.bRun THEN
		
		bBypCurtainPBLED	 := g_tyOpsTravLifUL.bBypCurtainSensorPBLED;
		
		IF g_tyOpsTravLifUL.bBypCurtainSenCtrl OR bLinkAGVCommRdy1 OR bLinkAGVCommRdy2 OR bLinkAGVCommRdy3 THEN
			bBypCurtainSen     := TRUE;
		ELSE
			bBypCurtainSen	 := FALSE;
		END_IF

	ELSE
		bRstCurtainSen := g_tyUISafetyCurtainReset;
		bBypCurtainSen := g_tyUIMnlBypCurtainSen;//:= FALSE;
		bBypCurtainPBLED := g_tyUIMnlBypCurtainPBLED;//:= FALSE;
	END_IF
	
END_ACTION
