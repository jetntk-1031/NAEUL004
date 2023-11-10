
ACTION Act_OptP0931MagConv2FB:
	
	//Magazine Conveyor
	IF tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl = TRUE THEN
		eMagConv2Clp2Act	:= MagConv2ClpActStop;
		
		IF p_eMagConv2Clp2Stat = MagConv2ClpActStop AND p_eMagConv2Clp2Status = Done THEN
			eMagConv2Clp2Act	:= MagConv2ClpActIdle;
			
			tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl	:= FALSE;
			tyP0931MagConv2.tyFB.tyBtnEnt.bValue	:= FALSE;
			tyP0931MagConv2.tyFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl	:= FALSE;
			tyP0931MagConv2.tyFB.tyBtnExit.bValue	:= FALSE;
			tyP0931MagConv2.tyFB.tyBtnExit.bRtLk	:= FALSE;
			
			tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl	:= FALSE;
			tyP0931MagConv2.tyFB.tyBtnStop.bValue	:= TRUE;
			tyP0931MagConv2.tyFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl = TRUE THEN
		tyP0931MagConv2.tyFB.tyBtnEnt.bValue	:= TRUE;
		tyP0931MagConv2.tyFB.tyBtnEnt.bRtLk		:= TRUE;
		
		tyP0931MagConv2.tyFB.tyBtnStop.bValue	:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnStop.bRtLk	:= FALSE;
		
		eMagConv2Clp2Act	:= MagConv2ClpActEnt;
		
		IF p_eMagConv2Clp2Stat = MagConv2ClpActEnt AND p_eMagConv2Clp2Status = Done THEN
			eMagConv2Clp2Act	:= MagConv2ClpActIdle;
			
			tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl	:= FALSE;
			
			tyP0931MagConv2.tyFB.tyBtnEnt.bValue	:= FALSE;
			tyP0931MagConv2.tyFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0931MagConv2.tyFB.tyBtnStop.bValue	:= TRUE;
			tyP0931MagConv2.tyFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF (p_eMagConv2Clp2Stat = MagConv2ClpActPreExit AND p_eMagConv2Clp2Status = Done) THEN
		eMagConv2Clp2Act	:= MagConv2ClpActIdle;
			
		tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl	:= FALSE;
			
		tyP0931MagConv2.tyFB.tyBtnExit.bValue	:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnExit.bRtLk	:= FALSE;
			
		tyP0931MagConv2.tyFB.tyBtnStop.bValue	:= TRUE;
		tyP0931MagConv2.tyFB.tyBtnStop.bRtLk	:= TRUE;
		
	
	ELSIF (p_eMagConv2Clp2Stat = MagConv2ClpActExit AND p_eMagConv2Clp2Status = Done) THEN
		eMagConv2Clp2Act	:= MagConv2ClpActIdle;
					
		tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl	:= FALSE;
					
		tyP0931MagConv2.tyFB.tyBtnExit.bValue	:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnExit.bRtLk	:= FALSE;
					
		tyP0931MagConv2.tyFB.tyBtnStop.bValue	:= TRUE;
		tyP0931MagConv2.tyFB.tyBtnStop.bRtLk	:= TRUE;
		
	ELSIF tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl = TRUE THEN
		tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl	:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnExit.bValue	:= TRUE;
		tyP0931MagConv2.tyFB.tyBtnExit.bRtLk	:= TRUE;
		
		tyP0931MagConv2.tyFB.tyBtnStop.bValue	:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyDI.bMagConvEntSen2  THEN
			eMagConv2Clp2Act	:= MagConv2ClpActExit;
		ELSE
			IF p_tyDI.bMagPresentSen2 THEN
				eMagConv2Clp2Act	:= MagConv2ClpActPreExit;
			ELSE
				eMagConv2Clp2Act	:= MagConv2ClpActExit;
			END_IF
		END_IF	
	END_IF
	
	//Magazine Clamper
	IF tyP0931MagConv2.tyCom.tyBtnSwitch.bValue = FALSE THEN
		
		//Fixed
		IF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl = TRUE THEN
			tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
			
			tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bValue	:= TRUE;
			tyP0931MagConv2.tyFB.tyBtnFixedClamp.bValue		:= FALSE;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl = TRUE THEN
			tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl	:= FALSE;
			
			tyP0931MagConv2.tyFB.tyBtnFixedClamp.bValue		:= TRUE;
			tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bValue	:= FALSE;
			
		END_IF
		
		//Remote
		IF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl = TRUE THEN
			tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
			
			tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bValue	:= TRUE;
			tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bValue	:= FALSE;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl = TRUE THEN
			tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl	:= FALSE;
			
			tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bValue	:= TRUE;
			tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bValue	:= FALSE;
			
		END_IF
		
		//Selection
		IF tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bRtCompl = TRUE THEN
			tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bRtCompl	:= FALSE;
			
			tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bValue	:= TRUE;
			tyP0931MagConv2.tyFB.tyBtnSelClamp.bValue	:= FALSE;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnSelClamp.bRtCompl = TRUE THEN
			tyP0931MagConv2.tyFB.tyBtnSelClamp.bRtCompl	:= FALSE;
			
			tyP0931MagConv2.tyFB.tyBtnSelClamp.bValue	:= TRUE;
			tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bValue	:= FALSE;
			
		END_IF
		
		// Fixed Clamper
		IF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bValue = TRUE THEN
			
			eMagConv2Clp2Act	:= MagConv2ClpActFixClprUnclamp;
			
			IF p_eMagConv2Clp2Stat = MagConv2ClpActFixClprUnclamp AND p_eMagConv2Clp2Status = Done THEN
				
				eMagConv2Clp2Act	:= MagConv2ClpActIdle;
				
				tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bValue	:= FALSE;
				
			ELSIF p_eMagConv2Clp2Status = Error THEN
				
				tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bValue = TRUE THEN
			eMagConv2Clp2Act	:= MagConv2ClpActFixClprClamp;
			
			IF p_eMagConv2Clp2Stat = MagConv2ClpActFixClprClamp AND p_eMagConv2Clp2Status = Done THEN
				
				eMagConv2Clp2Act	:= MagConv2ClpActIdle;
				
				tyP0931MagConv2.tyFB.tyBtnFixedClamp.bValue := FALSE;
				
			ELSIF p_eMagConv2Clp2Status = Error THEN
				tyP0931MagConv2.tyFB.tyBtnFixedClamp.bValue := FALSE;
				
			END_IF
			
		END_IF
		
		//Remote Clamper
		IF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bValue = TRUE THEN
			
			eMagConv2Clp2Act	:= MagConv2ClpActRmtClprUnclamp;
			
			IF p_eMagConv2Clp2Stat = MagConv2ClpActRmtClprUnclamp AND p_eMagConv2Clp2Status = Done THEN
				
				eMagConv2Clp2Act	:= MagConv2ClpActIdle;
				
				tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bValue	:= FALSE;
				
			ELSIF p_eMagConv2Clp2Status = Error THEN
				
				tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bValue = TRUE THEN
			eMagConv2Clp2Act	:= MagConv2ClpActRmtClprClamp;
			
			IF p_eMagConv2Clp2Stat = MagConv2ClpActRmtClprClamp AND p_eMagConv2Clp2Status = Done THEN
				
				eMagConv2Clp2Act	:= MagConv2ClpActIdle;
				
				tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bValue := FALSE;
				
			ELSIF p_eMagConv2Clp2Status = Error THEN
				tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bValue := FALSE;
				
			END_IF
			
		END_IF
		
		//Selection Clamper
		IF tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bValue = TRUE THEN
			
			eMagConvSelClp2Act	:= PneuActExt;
			
			IF p_eSelClamp2Stat = PneuActExt AND p_eSelClamp2Status = Done THEN
				
				eMagConvSelClp2Act	:= PneuActIdle;
				
				tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bValue	:= FALSE;
				
			ELSIF p_eSelClamp2Status = Error THEN
				
				tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnSelClamp.bValue = TRUE THEN
			eMagConvSelClp2Act	:= PneuActRet;
			
			IF p_eSelClamp2Stat = PneuActRet AND p_eSelClamp2Status = Done THEN
				
				eMagConvSelClp2Act	:= PneuActIdle;
				
				tyP0931MagConv2.tyFB.tyBtnSelClamp.bValue	:= FALSE;
				
			ELSIF p_eSelClamp2Status = Error THEN
				tyP0931MagConv2.tyFB.tyBtnSelClamp.bValue	:= FALSE;
				
			END_IF
			
		END_IF
		
		//Update Status
		tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bValue	:= NOT p_bMagConv2Clp2ClprFixClampCtrl;
		tyP0931MagConv2.tyDC.tyBtnFixedClamp.bValue		:= p_bMagConv2Clp2ClprFixClampCtrl;
		tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bValue	:= NOT p_bMagConv2Clp2ClprRmtClampCtrl;
		tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bValue	:= p_bMagConv2Clp2ClprRmtClampCtrl;
		
		tyP0931MagConv2.tyDC.tyBtnSelUnclamp.bRtCompl	:= FALSE;	
		tyP0931MagConv2.tyDC.tyBtnSelClamp.bRtCompl		:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnSelUnclamp.bValue	:= p_bSelClamp2RetCtrl;
		tyP0931MagConv2.tyDC.tyBtnSelClamp.bValue	:= p_bSelClamp2ExtCtrl;	
	END_IF
	
	//Mask
	IF p_tyUsrMgmtCurrAccessRgt.bManualFBOnly THEN
		
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));

	ELSE
	
	IF p_eMagConv2Clp2Status = Error THEN
		
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnSelClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnSelClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSIF tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnSelClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSIF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bValue = TRUE OR tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bValue = TRUE
			OR tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bValue = TRUE 
			OR tyP0931MagConv2.tyFB.tyBtnSelClamp.bValue = TRUE OR tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bValue = TRUE 
			THEN
		
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnSelClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSE
		
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnSelClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0931MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
			
	END_IF
END_IF
	
	IF p_tyDI.bMagConvCAB717MagSen2 THEN
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnSelClamp.uiMaskRtStat));
	END_IF
	
	IF p_bMagConv2Clp2ClprFixClampCtrl OR p_bMagConv2Clp2ClprRmtClampCtrl THEN
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyBtnExit.uiMaskRtStat));
	END_IF
	
END_ACTION
