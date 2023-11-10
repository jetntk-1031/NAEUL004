
ACTION Act_OptP0940ReadDI:
	

		tyP0940CommCtrl.tyUSSMEMAA.tyBtnUBA.bValue		:= p_tyDI.bUBAA;
		tyP0940CommCtrl.tyUSSMEMAA.tyBtnUBAStat.bValue	:= p_tyDI.bUBAAStat;
		tyP0940CommCtrl.tyUSSMEMAB.tyBtnUBA.bValue		:= p_tyDI.bUBAB;
		tyP0940CommCtrl.tyUSSMEMAB.tyBtnUBAStat.bValue	:= p_tyDI.bUBABStat;	
		
	IF p_tyNtParamCurr.bProjSOTSensorPrep THEN
//		CASE p_tyMcParamCurr.eAGVComProtocol OF
//			McSetAGVCommHardIO, :
				tyP0940CommCtrl.tySOT.tyBtnAIVRcv1.bValue		:= p_tyDI.bSOT1Receive;
				tyP0940CommCtrl.tySOT.tyBtnAIVErr1.bValue		:= p_tyDI.bSOT1AIVError;
				tyP0940CommCtrl.tySOT.tyBtnAIVRdy1.bValue		:= p_tyDI.bSOT1AIVReady;
				tyP0940CommCtrl.tySOT.tyBtnAIVAvail1.bValue		:= p_tyDI.bSOT1AIVAvailable;
				tyP0940CommCtrl.tySOT.tyBtnAIVSLarge1.bValue	:= p_tyDI.bSOT1AIVSizeLarge;
				
				tyP0940CommCtrl.tySOT.tyBtnAIVRcv2.bValue		:= p_tyDI.bSOT2Receive;
				tyP0940CommCtrl.tySOT.tyBtnAIVErr2.bValue		:= p_tyDI.bSOT2AIVError;
				tyP0940CommCtrl.tySOT.tyBtnAIVRdy2.bValue		:= p_tyDI.bSOT2AIVReady;
				tyP0940CommCtrl.tySOT.tyBtnAIVAvail2.bValue		:= p_tyDI.bSOT2AIVAvailable;
				tyP0940CommCtrl.tySOT.tyBtnAIVSLarge2.bValue	:= p_tyDI.bSOT2AIVSizeLarge;
				
				tyP0940CommCtrl.tySOT.tyBtnAIVRcv3.bValue		:= p_tyDI.bSOT3Receive;
				tyP0940CommCtrl.tySOT.tyBtnAIVErr3.bValue		:= p_tyDI.bSOT3AIVError;
				tyP0940CommCtrl.tySOT.tyBtnAIVRdy3.bValue		:= p_tyDI.bSOT3AIVReady;
				tyP0940CommCtrl.tySOT.tyBtnAIVAvail3.bValue		:= p_tyDI.bSOT3AIVAvailable;
				tyP0940CommCtrl.tySOT.tyBtnAIVSLarge3.bValue	:= p_tyDI.bSOT3AIVSizeLarge;
				
				tyP0940CommCtrl.tySOT.tyBtnAIVRcv4.bValue		:= p_tyDI.bSOT4Receive;
				tyP0940CommCtrl.tySOT.tyBtnAIVErr4.bValue		:= p_tyDI.bSOT4AIVError;
				tyP0940CommCtrl.tySOT.tyBtnAIVRdy4.bValue		:= p_tyDI.bSOT4AIVReady;
				tyP0940CommCtrl.tySOT.tyBtnAIVAvail4.bValue		:= p_tyDI.bSOT4AIVAvailable;
				tyP0940CommCtrl.tySOT.tyBtnAIVSLarge4.bValue	:= p_tyDI.bSOT4AIVSizeLarge;
		
				tyP0940CommCtrl.tySOT.tyBtnFleetMgrActive.bValue := p_tyDI.bFleetManagerReady OR p_tyTagFromMes.bActive;
	
//			McSetAGVCommOPCUA:
//				
//				tyP0940CommCtrl.tySOT.tyBtnAIVErr1.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[1].bError;
//				tyP0940CommCtrl.tySOT.tyBtnAIVRdy1.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[1].bReady;
//				tyP0940CommCtrl.tySOT.tyBtnAIVAvail1.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[1].bAvailable;
//				tyP0940CommCtrl.tySOT.tyBtnAIVSLarge1.bValue	:= p_tyTagFromMes.tyTagStatOfPlatforms[1].bSizeLarge;
//		
//				tyP0940CommCtrl.tySOT.tyBtnAIVErr2.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[2].bError;
//				tyP0940CommCtrl.tySOT.tyBtnAIVRdy2.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[2].bReady;
//				tyP0940CommCtrl.tySOT.tyBtnAIVAvail2.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[2].bAvailable;
//				tyP0940CommCtrl.tySOT.tyBtnAIVSLarge2.bValue	:= p_tyTagFromMes.tyTagStatOfPlatforms[2].bSizeLarge;
//		
//				tyP0940CommCtrl.tySOT.tyBtnAIVErr3.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[3].bError;
//				tyP0940CommCtrl.tySOT.tyBtnAIVRdy3.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[3].bReady;
//				tyP0940CommCtrl.tySOT.tyBtnAIVAvail3.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[3].bAvailable;
//				tyP0940CommCtrl.tySOT.tyBtnAIVSLarge3.bValue	:= p_tyTagFromMes.tyTagStatOfPlatforms[3].bSizeLarge;
//		
//				tyP0940CommCtrl.tySOT.tyBtnAIVErr4.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[4].bError;
//				tyP0940CommCtrl.tySOT.tyBtnAIVRdy4.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[4].bReady;
//				tyP0940CommCtrl.tySOT.tyBtnAIVAvail4.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[4].bAvailable;
//				tyP0940CommCtrl.tySOT.tyBtnAIVSLarge4.bValue	:= p_tyTagFromMes.tyTagStatOfPlatforms[4].bSizeLarge;
//				
//				tyP0940CommCtrl.tySOT.tyBtnFleetMgrActive.bValue := p_tyTagFromMes.bActive;	
			
//		END_CASE
	ELSIF p_tyMcParamCurr.eAGVComProtocol = McSetAGVCommHardIO AND p_tyNtParamCurr.bProjSOTSensorPrep = FALSE THEN
		tyP0940CommCtrl.tySOT.tyBtnAIVRcv1.bValue		:= p_tyDI.bSOT1Receive;
		tyP0940CommCtrl.tySOT.tyBtnAIVErr1.bValue		:= p_tyDI.bSOT1AIVError;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy1.bValue		:= p_tyDI.bSOT1AIVReady;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail1.bValue		:= p_tyDI.bSOT1AIVAvailable;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge1.bValue	:= p_tyDI.bSOT1AIVSizeLarge;
				
		tyP0940CommCtrl.tySOT.tyBtnAIVRcv2.bValue		:= p_tyDI.bSOT2Receive;
		tyP0940CommCtrl.tySOT.tyBtnAIVErr2.bValue		:= p_tyDI.bSOT2AIVError;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy2.bValue		:= p_tyDI.bSOT2AIVReady;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail2.bValue		:= p_tyDI.bSOT2AIVAvailable;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge2.bValue	:= p_tyDI.bSOT2AIVSizeLarge;
				
		tyP0940CommCtrl.tySOT.tyBtnAIVRcv3.bValue		:= p_tyDI.bSOT3Receive;
		tyP0940CommCtrl.tySOT.tyBtnAIVErr3.bValue		:= p_tyDI.bSOT3AIVError;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy3.bValue		:= p_tyDI.bSOT3AIVReady;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail3.bValue		:= p_tyDI.bSOT3AIVAvailable;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge3.bValue	:= p_tyDI.bSOT3AIVSizeLarge;
				
		tyP0940CommCtrl.tySOT.tyBtnAIVRcv4.bValue		:= p_tyDI.bSOT4Receive;
		tyP0940CommCtrl.tySOT.tyBtnAIVErr4.bValue		:= p_tyDI.bSOT4AIVError;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy4.bValue		:= p_tyDI.bSOT4AIVReady;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail4.bValue		:= p_tyDI.bSOT4AIVAvailable;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge4.bValue	:= p_tyDI.bSOT4AIVSizeLarge;
		
		tyP0940CommCtrl.tySOT.tyBtnFleetMgrActive.bValue := p_tyDI.bFleetManagerReady;
		
	ELSIF p_tyMcParamCurr.eAGVComProtocol = McSetAGVCommOPCUA AND p_tyNtParamCurr.bProjSOTSensorPrep = FALSE THEN
		
		tyP0940CommCtrl.tySOT.tyBtnAIVErr1.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[1].bError;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy1.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[1].bReady;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail1.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[1].bAvailable;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge1.bValue	:= p_tyTagFromMes.tyTagStatOfPlatforms[1].bSizeLarge;
		
		tyP0940CommCtrl.tySOT.tyBtnAIVErr2.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[2].bError;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy2.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[2].bReady;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail2.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[2].bAvailable;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge2.bValue	:= p_tyTagFromMes.tyTagStatOfPlatforms[2].bSizeLarge;
		
		tyP0940CommCtrl.tySOT.tyBtnAIVErr3.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[3].bError;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy3.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[3].bReady;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail3.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[3].bAvailable;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge3.bValue	:= p_tyTagFromMes.tyTagStatOfPlatforms[3].bSizeLarge;
		
		tyP0940CommCtrl.tySOT.tyBtnAIVErr4.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[4].bError;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy4.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[4].bReady;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail4.bValue		:= p_tyTagFromMes.tyTagStatOfPlatforms[4].bAvailable;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge4.bValue	:= p_tyTagFromMes.tyTagStatOfPlatforms[4].bSizeLarge;
		
		tyP0940CommCtrl.tySOT.tyBtnFleetMgrActive.bValue := p_tyTagFromMes.bActive;
	END_IF
	
	IF p_tyMcParamCurr.eAGVComProtocol = McSetAGVCommDisabled THEN
		tyP0940CommCtrl.tySOT.tyBtnAIVErr1.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy1.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail1.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge1.bValue	:= FALSE;
		
		tyP0940CommCtrl.tySOT.tyBtnAIVErr2.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy2.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail2.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge2.bValue	:= FALSE;
		
		tyP0940CommCtrl.tySOT.tyBtnAIVErr3.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy3.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail3.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge3.bValue	:= FALSE;
		
		tyP0940CommCtrl.tySOT.tyBtnAIVErr4.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVRdy4.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVAvail4.bValue		:= FALSE;
		tyP0940CommCtrl.tySOT.tyBtnAIVSLarge4.bValue	:= FALSE;
		
		tyP0940CommCtrl.tySOT.tyBtnFleetMgrActive.bValue := FALSE;
	END_IF
	
	IF tyP0940CommCtrl.tyDMCRFID.tyLyr.uiRtStat.0 = 0  THEN //if hidden update
		tyP0940CommCtrl.tyDMCRFID.tyBtnScanComplSig.bValue		:= p_bDIPCBScanComplSig;
		
	END_IF
END_ACTION
