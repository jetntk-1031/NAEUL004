
ACTION Act_OptP1023ShowLyr:
	
	//Upstream A
	IF tyP1023McSetHComm.tyUSSelA.tyLyr.uiRtStat.0 = FALSE THEN	
		
		IF tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bValue = TRUE THEN
			
			fUIInRtStatOff(ADR(tyP1023McSetHComm.tyUSSMEMAA.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP1023McSetHComm.tyUSHermesA.tyLyr.uiRtStat));
		
			tyP1023McSetHComm.tyUSSMEMAA.tyBtnGdSig.uiRtStat.0	:= NOT(tyP1023McSetHComm.tyUSSMEMAA.tyDrpDnSMEMAMod.usiValueIdx = 2);
			
		ELSIF tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bValue = TRUE THEN	
			
			fUIInRtStatHide(ADR(tyP1023McSetHComm.tyUSSMEMAA.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP1023McSetHComm.tyUSHermesA.tyLyr.uiRtStat));
			
			//Mask
			tyP1023McSetHComm.tyUSHermesA.tyBitmapMask.uiRtStat.0	:= NOT(p_tyNtParamCurr.bHermesRmtPrep = TRUE AND p_tyMcParamCurr.bHermesRmtEn = TRUE);
		END_IF
		
	ELSE
	
		fUIInRtStatHide(ADR(tyP1023McSetHComm.tyUSSMEMAA.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP1023McSetHComm.tyUSHermesA.tyLyr.uiRtStat));
	
	END_IF
	
	//Upstream B
	IF tyP1023McSetHComm.tyUSSelB.tyLyr.uiRtStat.0 = FALSE THEN	
		
		IF tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bValue = TRUE THEN
			
			fUIInRtStatOff(ADR(tyP1023McSetHComm.tyUSSMEMAB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP1023McSetHComm.tyUSHermesB.tyLyr.uiRtStat));
		
			tyP1023McSetHComm.tyUSSMEMAB.tyBtnGdSig.uiRtStat.0	:= NOT(tyP1023McSetHComm.tyUSSMEMAB.tyDrpDnSMEMAMod.usiValueIdx = 2);
			
		ELSIF tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bValue = TRUE THEN	
			
			fUIInRtStatHide(ADR(tyP1023McSetHComm.tyUSSMEMAB.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP1023McSetHComm.tyUSHermesB.tyLyr.uiRtStat));
			
			//Mask
			tyP1023McSetHComm.tyUSHermesB.tyBitmapMask.uiRtStat.0	:= NOT(p_tyNtParamCurr.bHermesRmtPrep = TRUE AND p_tyMcParamCurr.bHermesRmtEn = TRUE);
		END_IF
		
	ELSE
	
		fUIInRtStatHide(ADR(tyP1023McSetHComm.tyUSSMEMAB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP1023McSetHComm.tyUSHermesB.tyLyr.uiRtStat));
	
	END_IF
		
END_ACTION
