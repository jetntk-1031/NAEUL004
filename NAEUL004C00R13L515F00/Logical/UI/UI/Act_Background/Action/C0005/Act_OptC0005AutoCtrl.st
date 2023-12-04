
ACTION Act_OptC0005AutoCtrl: 
	
	//Control
	//Error
	IF EDGEPOS(p_bAlarmErr = TRUE AND p_bOpsStatusStop = FALSE) THEN
		
		tyCommon.tyMain.tyBtnStart.bRtCompl	:= FALSE;
		tyCommon.tyMain.tyBtnStop.bRtCompl	:= FALSE;
		tyCommon.tyMain.tyBtnStep.bRtCompl	:= FALSE;
		
		tyCommon.tyMain.tyBtnStart.bValue	:= FALSE;
		tyCommon.tyMain.tyBtnStop.bValue	:= FALSE;
		tyCommon.tyMain.tyBtnStep.bValue	:= FALSE;
		
		//Additional HMI Control
		
		tyP0003MMenu.tyMMenuBtn.tyBtnAuto.bRtCompl  := FALSE;
		tyP0003MMenu.tyMMenuBtn.tyBtnStop.bRtCompl  := FALSE; 
		
		tyP0003MMenu.tyMMenuBtn.tyBtnAuto.bValue 	:= FALSE;
		tyP0003MMenu.tyMMenuBtn.tyBtnStop.bValue 	:= FALSE;
		
		eOpsAct	:= OperationsActError;
		
	ELSE
		
		IF p_eOpsStat = OperationsActError AND p_eOpsStatus = Done THEN
			eOpsAct	:= OperationsActIdle;
		END_IF
		
	END_IF
		
	//Start
	IF tyCommon.tyMain.tyBtnStart.bRtCompl = TRUE OR tyP0003MMenu.tyMMenuBtn.tyBtnAuto.bRtCompl  THEN
		
		IF tyCommon.tyMain.tyBtnStart.bValue = TRUE OR tyP0003MMenu.tyMMenuBtn.tyBtnAuto.bValue = TRUE  THEN
			
			IF eCurrPage <> UIP0200OpsGen AND eCurrPage <> UIP0201OpsTravLifter AND eCurrPage <> UIP0202OpsMag1 AND eCurrPage <> UIP0203OpsMag2 AND eCurrPage <> UIP0204OpsMag3 
				AND NOT tyP0003MMenu.tyMMenuBtn.tyBtnAuto.bValue THEN
				
				IF bChgPage = FALSE THEN
					bChgPage	:= TRUE;
					eChgPage	:= UIP0200OpsGen;
				ELSE
					IF eChgPage <> UIP0200OpsGen THEN
						bChgPage	:= FALSE;
						
						tyCommon.tyMain.tyBtnStart.bRtCompl	:= FALSE;
						tyCommon.tyMain.tyBtnStart.bValue	:= FALSE;
					END_IF
				END_IF
				
			ELSE
				bChgPage	:= FALSE;
				
				tyCommon.tyMain.tyBtnStart.bValue	:= FALSE;
				
				tyCommon.tyMain.tyBtnStop.bRtCompl	:= FALSE;
				tyCommon.tyMain.tyBtnStep.bRtCompl	:= FALSE;
			
				tyCommon.tyMain.tyBtnStop.bValue	:= FALSE;
				tyCommon.tyMain.tyBtnStep.bValue	:= FALSE;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnAuto.bValue := FALSE;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnStop.bRtCompl := FALSE;
				tyP0003MMenu.tyMMenuBtn.tyBtnStop.bValue   := FALSE;
				
			END_IF
			
		ELSE
			
			eOpsAct	:= OperationsActStart;
			
			IF p_eOpsStat = OperationsActStart AND p_eOpsStatus = Done THEN
				eOpsAct	:= OperationsActIdle;
				
				tyCommon.tyMain.tyBtnStart.bRtCompl		   := FALSE;
				tyP0003MMenu.tyMMenuBtn.tyBtnAuto.bRtCompl := FALSE;
				
			END_IF
			
		END_IF
		
	END_IF
	
	//Stop
	IF tyCommon.tyMain.tyBtnStop.bRtCompl = TRUE OR tyP0003MMenu.tyMMenuBtn.tyBtnStop.bRtCompl  THEN
		
		IF tyCommon.tyMain.tyBtnStop.bValue = TRUE OR tyP0003MMenu.tyMMenuBtn.tyBtnStop.bValue THEN
			
			tyCommon.tyMain.tyBtnStop.bValue			:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnStop.bValue	:= FALSE;
			
			tyCommon.tyMain.tyBtnStart.bRtCompl	:= FALSE;
			tyCommon.tyMain.tyBtnStep.bRtCompl	:= FALSE;
			
			tyP0003MMenu.tyMMenuBtn.tyBtnAuto.bRtCompl	:= FALSE;
			
			tyCommon.tyMain.tyBtnStart.bValue	:= FALSE;
			tyCommon.tyMain.tyBtnStep.bValue	:= FALSE;
			
			tyP0003MMenu.tyMMenuBtn.tyBtnAuto.bValue	:= FALSE;
			
		ELSE
			
			eOpsAct	:= OperationsActStop;
			
			IF p_eOpsStat = OperationsActStop AND p_eOpsStatus = Done THEN
				eOpsAct	:= OperationsActIdle;
				
				tyCommon.tyMain.tyBtnStop.bRtCompl	:= FALSE;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnStop.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	END_IF
	
	//Step
	IF tyCommon.tyMain.tyBtnStep.bRtCompl = TRUE THEN
		
		IF tyCommon.tyMain.tyBtnStep.bValue = TRUE THEN
			
			IF eCurrPage <> UIP0200OpsGen AND eCurrPage <> UIP0201OpsTravLifter AND eCurrPage <> UIP0202OpsMag1 AND eCurrPage <> UIP0203OpsMag2 AND eCurrPage <> UIP0204OpsMag3 THEN
				
				IF bChgPage = FALSE THEN
					bChgPage	:= TRUE;
					eChgPage	:= UIP0200OpsGen;
				ELSE
					IF eChgPage <> UIP0200OpsGen THEN
						bChgPage	:= FALSE;
						
						tyCommon.tyMain.tyBtnStep.bRtCompl	:= FALSE;
						tyCommon.tyMain.tyBtnStep.bValue	:= FALSE;
					END_IF
				END_IF
				
			ELSE
				bChgPage	:= FALSE;
				
				tyCommon.tyMain.tyBtnStep.bValue	:= FALSE;
				
				tyCommon.tyMain.tyBtnStart.bRtCompl	:= FALSE;
				tyCommon.tyMain.tyBtnStop.bRtCompl	:= FALSE;
			
				tyCommon.tyMain.tyBtnStart.bValue	:= FALSE;
				tyCommon.tyMain.tyBtnStop.bValue	:= FALSE;
			END_IF
			
		ELSE
			
			eOpsAct	:= OperationsActStep;
			
			IF p_eOpsStat = OperationsActStep AND p_eOpsStatus = Done THEN
				eOpsAct	:= OperationsActIdle;
				
				tyCommon.tyMain.tyBtnStep.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	END_IF
	
	//Display
	//Auto Step
	IF p_tyMcParamCurr.bAutoStepEn = TRUE THEN
		fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnStep.uiRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStep.uiRtStat));
		fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStep.uiMaskRtStat));
	END_IF
	
	//Mask
	IF (p_bAlarmErr = TRUE) OR (bUIManualMod = TRUE) OR (p_tyDI.bSafetyRlySig = FALSE) OR (tyCommon.tyMain.tyBtnHome.uiMaskRtStat.0 = FALSE) OR eCurrPage = UIP0950Simu THEN
		fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnStop.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnAuto.uiMaskRtStat));
		IF p_tyMcParamCurr.bAutoStepEn = TRUE THEN
			fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnStep.uiMaskRtStat));
		END_IF
		
	ELSE
		
		IF p_eOpsOpsStatus = OperationsStatusRun THEN
			
			fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnStart.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStop.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStep.uiMaskRtStat));
			
			fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnAuto.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnStop.uiMaskRtStat));
			
		ELSIF p_eOpsOpsStatus = OperationsStatusCycleStopping THEN
			
			fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStart.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnStop.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStep.uiMaskRtStat));
			
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnAuto.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnStop.uiMaskRtStat));
			
		ELSIF p_eOpsOpsStatus = OperationsStatusStep THEN
			
			fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStart.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStop.uiMaskRtStat));
			
			IF p_eOpsStatus = Busy THEN
				fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnStep.uiMaskRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStep.uiMaskRtStat));
			END_IF
			
		ELSE
			
			fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStart.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnStop.uiMaskRtStat));

			fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnStep.uiMaskRtStat));
			
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnAuto.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnStop.uiMaskRtStat));
			
		END_IF
		
	END_IF
	
END_ACTION
