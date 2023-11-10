
ACTION Act_OptP0940WriteDO:
	
	//USBA
	IF tyP0940CommCtrl.tyUSSMEMAA.tyBtnUSB.bRtCompl = TRUE THEN
		
		IF tyP0940CommCtrl.tyUSSMEMAA.tyBtnUSB.bValue = TRUE THEN
			eUSSMEMAAAct	:= SMEMAActSetSig;
			
			IF p_eUSSMEMAAStat = SMEMAActSetSig AND p_eUSSMEMAAStatus = Done THEN
				eUSSMEMAAAct	:= SMEMAActIdle;
				
				tyP0940CommCtrl.tyUSSMEMAA.tyBtnUSB.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			eUSSMEMAAAct	:= SMEMAActRstSig;
			
			IF p_eUSSMEMAAStat = SMEMAActRstSig AND p_eUSSMEMAAStatus = Done THEN
				eUSSMEMAAAct	:= SMEMAActIdle;
				
				tyP0940CommCtrl.tyUSSMEMAA.tyBtnUSB.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	END_IF
	
	//USBB
	IF tyP0940CommCtrl.tyUSSMEMAB.tyBtnUSB.bRtCompl = TRUE THEN
		
		IF tyP0940CommCtrl.tyUSSMEMAB.tyBtnUSB.bValue = TRUE THEN
			eUSSMEMABAct	:= SMEMAActSetSig;
			
			IF p_eUSSMEMABStat = SMEMAActSetSig AND p_eUSSMEMABStatus = Done THEN
				eUSSMEMABAct	:= SMEMAActIdle;
				
				tyP0940CommCtrl.tyUSSMEMAB.tyBtnUSB.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			eUSSMEMABAct	:= SMEMAActRstSig;
			
			IF p_eUSSMEMABStat = SMEMAActRstSig AND p_eUSSMEMABStatus = Done THEN
				eUSSMEMABAct	:= SMEMAActIdle;
				
				tyP0940CommCtrl.tyUSSMEMAB.tyBtnUSB.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	END_IF
	
	IF p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled THEN	
		//Error
		IF tyP0940CommCtrl.tySOT.tyBtnMagErr1.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagErr1.bValue = TRUE THEN
				bSOTMagErr1 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagErr1.bRtCompl := FALSE;
			ELSE
				bSOTMagErr1 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagErr1.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagErr2.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagErr2.bValue = TRUE THEN
				bSOTMagErr2 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagErr2.bRtCompl := FALSE;
			ELSE
				bSOTMagErr2 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagErr2.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagErr3.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagErr3.bValue = TRUE THEN
				bSOTMagErr3 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagErr3.bRtCompl := FALSE;
			ELSE
				bSOTMagErr3 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagErr3.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagErr4.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagErr4.bValue = TRUE THEN
				bSOTMagErr4 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagErr4.bRtCompl := FALSE;
			ELSE
				bSOTMagErr4 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagErr4.bRtCompl := FALSE;
			END_IF
		END_IF
		
		//Ready
		IF tyP0940CommCtrl.tySOT.tyBtnMagRdy1.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagRdy1.bValue = TRUE THEN
				bSOTMagRdy1 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagRdy1.bRtCompl := FALSE;
			ELSE
				bSOTMagRdy1 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagRdy1.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagRdy2.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagRdy2.bValue = TRUE THEN
				bSOTMagRdy2 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagRdy2.bRtCompl := FALSE;
			ELSE
				bSOTMagRdy2 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagRdy2.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagRdy3.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagRdy3.bValue = TRUE THEN
				bSOTMagRdy3 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagRdy3.bRtCompl := FALSE;
			ELSE
				bSOTMagRdy3 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagRdy3.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagRdy4.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagRdy4.bValue = TRUE THEN
				bSOTMagRdy4 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagRdy4.bRtCompl := FALSE;
			ELSE
				bSOTMagRdy4 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagRdy4.bRtCompl := FALSE;
			END_IF
		END_IF
		
		//Available
		IF tyP0940CommCtrl.tySOT.tyBtnMagAvail1.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagAvail1.bValue = TRUE THEN
				bSOTMagAvail1 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagAvail1.bRtCompl := FALSE;
			ELSE
				bSOTMagAvail1 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagAvail1.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagAvail2.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagAvail2.bValue = TRUE THEN
				bSOTMagAvail2 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagAvail2.bRtCompl := FALSE;
			ELSE
				bSOTMagAvail2 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagAvail2.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagAvail3.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagAvail3.bValue = TRUE THEN
				bSOTMagAvail3 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagAvail3.bRtCompl := FALSE;
			ELSE
				bSOTMagAvail3 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagAvail3.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagAvail4.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagAvail4.bValue = TRUE THEN
				bSOTMagAvail4 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagAvail4.bRtCompl := FALSE;
			ELSE
				bSOTMagAvail4 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagAvail4.bRtCompl := FALSE;
			END_IF
		END_IF
		
		//Size
		IF tyP0940CommCtrl.tySOT.tyBtnMagSLarge1.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagSLarge1.bValue = TRUE THEN
				bSOTMagSLarge1 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagSLarge1.bRtCompl := FALSE;
			ELSE
				bSOTMagSLarge1 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagSLarge1.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagSLarge2.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagSLarge2.bValue = TRUE THEN
				bSOTMagSLarge2 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagSLarge2.bRtCompl := FALSE;
			ELSE
				bSOTMagSLarge2 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagSLarge2.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagSLarge3.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagSLarge3.bValue = TRUE THEN
				bSOTMagSLarge3 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagSLarge3.bRtCompl := FALSE;
			ELSE
				bSOTMagSLarge3 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagSLarge3.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagSLarge4.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagSLarge4.bValue = TRUE THEN
				bSOTMagSLarge4 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagSLarge4.bRtCompl := FALSE;
			ELSE
				bSOTMagSLarge4 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagSLarge4.bRtCompl := FALSE;
			END_IF
		END_IF
		
		
		//Req Bring
		IF tyP0940CommCtrl.tySOT.tyBtnMagReqBring1.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagReqBring1.bValue = TRUE THEN
				bAIVReqBring1 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqBring1.bRtCompl := FALSE;
			ELSE
				bAIVReqBring1 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqBring1.bRtCompl := FALSE;
			END_IF
		END_IF
	
		IF tyP0940CommCtrl.tySOT.tyBtnMagReqBring2.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagReqBring2.bValue = TRUE THEN
				bAIVReqBring2 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqBring2.bRtCompl := FALSE;
			ELSE
				bAIVReqBring2 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqBring2.bRtCompl := FALSE;
			END_IF
		END_IF
			
		IF tyP0940CommCtrl.tySOT.tyBtnMagReqBring3.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagReqBring3.bValue = TRUE THEN
				bAIVReqBring1 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqBring3.bRtCompl := FALSE;
			ELSE
				bAIVReqBring1 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqBring3.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagReqBring4.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagReqBring4.bValue = TRUE THEN
				bAIVReqBring1 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqBring4.bRtCompl := FALSE;
			ELSE
				bAIVReqBring1 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqBring4.bRtCompl := FALSE;
			END_IF
		END_IF
		
		
		//Req Get
		IF tyP0940CommCtrl.tySOT.tyBtnMagReqtGet1.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagReqtGet1.bValue = TRUE THEN
				bAIVReqGet1 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqtGet1.bRtCompl := FALSE;
			ELSE
				bAIVReqGet1 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqtGet1.bRtCompl := FALSE;
			END_IF
		END_IF
	
		IF tyP0940CommCtrl.tySOT.tyBtnMagReqtGet2.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagReqtGet2.bValue = TRUE THEN
				bAIVReqGet2 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqtGet2.bRtCompl := FALSE;
			ELSE
				bAIVReqGet2 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqtGet2.bRtCompl := FALSE;
			END_IF
		END_IF
			
		IF tyP0940CommCtrl.tySOT.tyBtnMagReqtGet3.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagReqtGet3.bValue = TRUE THEN
				bAIVReqGet3 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqtGet3.bRtCompl := FALSE;
			ELSE
				bAIVReqGet3 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqtGet3.bRtCompl := FALSE;
			END_IF
		END_IF
		
		IF tyP0940CommCtrl.tySOT.tyBtnMagReqtGet4.bRtCompl = TRUE THEN
			
			IF tyP0940CommCtrl.tySOT.tyBtnMagReqtGet4.bValue = TRUE THEN
				bAIVReqGet4 := TRUE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqtGet4.bRtCompl := FALSE;
			ELSE
				bAIVReqGet4 := FALSE;
				tyP0940CommCtrl.tySOT.tyBtnMagReqtGet4.bRtCompl := FALSE;
			END_IF
		END_IF
	END_IF
	
	
	//DMC Start Scan
	IF tyP0940CommCtrl.tyDMCRFID.tyLyr.uiRtStat.0 = 0 THEN
		IF tyP0940CommCtrl.tyDMCRFID.tyBtnTrigStartScan.bRtCompl = TRUE THEN
			IF tyP0940CommCtrl.tyDMCRFID.tyBtnTrigStartScan.bValue = TRUE THEN
				bStartScanSig := TRUE;
			ELSE
				bStartScanSig := FALSE;
			END_IF
		END_IF
		IF tyP0940CommCtrl.tyDMCRFID.tyBtnTrigTransMag1Out.bRtCompl = TRUE THEN
			IF tyP0940CommCtrl.tyDMCRFID.tyBtnTrigTransMag1Out.bValue = TRUE THEN
				bPCBExitMag1 := TRUE;
			ELSE
				bPCBExitMag1 := FALSE;
			END_IF
		END_IF
		IF tyP0940CommCtrl.tyDMCRFID.tyBtnTrigTransMag2Out.bRtCompl = TRUE THEN
			IF tyP0940CommCtrl.tyDMCRFID.tyBtnTrigTransMag2Out.bValue = TRUE THEN
				bPCBExitMag2 := TRUE;
			ELSE
				bPCBExitMag2 := FALSE;
			END_IF
		END_IF
		IF tyP0940CommCtrl.tyDMCRFID.tyBtnTrigTransMag3Out.bRtCompl = TRUE THEN
			IF tyP0940CommCtrl.tyDMCRFID.tyBtnTrigTransMag3Out.bValue = TRUE THEN
				bPCBExitMag3 := TRUE;
			ELSE
				bPCBExitMag3 := FALSE;
			END_IF
		END_IF
	END_IF
END_ACTION
