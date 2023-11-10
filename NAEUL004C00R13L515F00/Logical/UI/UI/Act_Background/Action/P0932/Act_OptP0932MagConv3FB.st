
ACTION Act_OptP0932MagConv3FB:
	
	//Magazine Conveyor
	IF tyP0932MagConv3.tyFB.tyBtnStop.bRtCompl = TRUE THEN
		eMagConv2Clp3Act	:= MagConv2ClpActStop;
		
		IF p_eMagConv2Clp3Stat = MagConv2ClpActStop AND p_eMagConv2Clp3Status = Done THEN
			eMagConv2Clp3Act	:= MagConv2ClpActIdle;
			
			tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl	:= FALSE;
			tyP0932MagConv3.tyFB.tyBtnEnt.bValue	:= FALSE;
			tyP0932MagConv3.tyFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl	:= FALSE;
			tyP0932MagConv3.tyFB.tyBtnExit.bValue	:= FALSE;
			tyP0932MagConv3.tyFB.tyBtnExit.bRtLk	:= FALSE;
			
			tyP0932MagConv3.tyFB.tyBtnStop.bRtCompl	:= FALSE;
			tyP0932MagConv3.tyFB.tyBtnStop.bValue	:= TRUE;
			tyP0932MagConv3.tyFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl = TRUE THEN
		tyP0932MagConv3.tyFB.tyBtnEnt.bValue	:= TRUE;
		tyP0932MagConv3.tyFB.tyBtnEnt.bRtLk		:= TRUE;
		
		tyP0932MagConv3.tyFB.tyBtnStop.bValue	:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnStop.bRtLk	:= FALSE;
		
		eMagConv2Clp3Act	:= MagConv2ClpActEnt;
		
		IF p_eMagConv2Clp3Stat = MagConv2ClpActEnt AND p_eMagConv2Clp3Status = Done THEN
			eMagConv2Clp3Act	:= MagConv2ClpActIdle;
			
			tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl	:= FALSE;
			
			tyP0932MagConv3.tyFB.tyBtnEnt.bValue	:= FALSE;
			tyP0932MagConv3.tyFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0932MagConv3.tyFB.tyBtnStop.bValue	:= TRUE;
			tyP0932MagConv3.tyFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF (p_eMagConv2Clp3Stat = MagConv2ClpActPreExit AND p_eMagConv2Clp3Status = Done) THEN
		eMagConv2Clp3Act	:= MagConv2ClpActIdle;
			
		tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl	:= FALSE;
			
		tyP0932MagConv3.tyFB.tyBtnExit.bValue	:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnExit.bRtLk	:= FALSE;
			
		tyP0932MagConv3.tyFB.tyBtnStop.bValue	:= TRUE;
		tyP0932MagConv3.tyFB.tyBtnStop.bRtLk	:= TRUE;
		
	
	ELSIF (p_eMagConv2Clp3Stat = MagConv2ClpActExit AND p_eMagConv2Clp3Status = Done) THEN
		eMagConv2Clp3Act	:= MagConv2ClpActIdle;
					
		tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl	:= FALSE;
					
		tyP0932MagConv3.tyFB.tyBtnExit.bValue	:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnExit.bRtLk	:= FALSE;
					
		tyP0932MagConv3.tyFB.tyBtnStop.bValue	:= TRUE;
		tyP0932MagConv3.tyFB.tyBtnStop.bRtLk	:= TRUE;
		
	ELSIF tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl = TRUE THEN
		tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl	:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnExit.bValue	:= TRUE;
		tyP0932MagConv3.tyFB.tyBtnExit.bRtLk	:= TRUE;
		
		tyP0932MagConv3.tyFB.tyBtnStop.bValue	:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyDI.bMagConvEntSen3  THEN
			eMagConv2Clp3Act	:= MagConv2ClpActExit;
		ELSE
			IF p_tyDI.bMagPresentSen3 THEN
				eMagConv2Clp3Act	:= MagConv2ClpActPreExit;
			ELSE
				eMagConv2Clp3Act	:= MagConv2ClpActExit;
			END_IF
		END_IF	
	END_IF
	
	//Magazine Clamper
	IF tyP0932MagConv3.tyCom.tyBtnSwitch.bValue = FALSE THEN
		
		//Fixed
		IF tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bRtCompl = TRUE THEN
			tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
			
			tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bValue	:= TRUE;
			tyP0932MagConv3.tyFB.tyBtnFixedClamp.bValue		:= FALSE;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bRtCompl = TRUE THEN
			tyP0932MagConv3.tyFB.tyBtnFixedClamp.bRtCompl	:= FALSE;
			
			tyP0932MagConv3.tyFB.tyBtnFixedClamp.bValue		:= TRUE;
			tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bValue	:= FALSE;
			
		END_IF
		
		//Remote
		IF tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bRtCompl = TRUE THEN
			tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
			
			tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bValue	:= TRUE;
			tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bValue	:= FALSE;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bRtCompl = TRUE THEN
			tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bRtCompl	:= FALSE;
			
			tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bValue	:= TRUE;
			tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bValue	:= FALSE;
			
		END_IF
		
		//Selection
		IF tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bRtCompl = TRUE THEN
			tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bRtCompl	:= FALSE;
			
			tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bValue	:= TRUE;
			tyP0932MagConv3.tyFB.tyBtnSelClamp.bValue	:= FALSE;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnSelClamp.bRtCompl = TRUE THEN
			tyP0932MagConv3.tyFB.tyBtnSelClamp.bRtCompl	:= FALSE;
			
			tyP0932MagConv3.tyFB.tyBtnSelClamp.bValue	:= TRUE;
			tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bValue	:= FALSE;
			
		END_IF
		
		// Fixed Clamper
		IF tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bValue = TRUE THEN
			
			eMagConv2Clp3Act	:= MagConv2ClpActFixClprUnclamp;
			
			IF p_eMagConv2Clp3Stat = MagConv2ClpActFixClprUnclamp AND p_eMagConv2Clp3Status = Done THEN
				
				eMagConv2Clp3Act	:= MagConv2ClpActIdle;
				
				tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bValue	:= FALSE;
				
			ELSIF p_eMagConv2Clp3Status = Error THEN
				
				tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bValue = TRUE THEN
			eMagConv2Clp3Act	:= MagConv2ClpActFixClprClamp;
			
			IF p_eMagConv2Clp3Stat = MagConv2ClpActFixClprClamp AND p_eMagConv2Clp3Status = Done THEN
				
				eMagConv2Clp3Act	:= MagConv2ClpActIdle;
				
				tyP0932MagConv3.tyFB.tyBtnFixedClamp.bValue := FALSE;
				
			ELSIF p_eMagConv2Clp3Status = Error THEN
				tyP0932MagConv3.tyFB.tyBtnFixedClamp.bValue := FALSE;
				
			END_IF
			
			//Sel
			IF tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bRtCompl = TRUE THEN
				tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bRtCompl	:= FALSE;
			
				tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bValue	:= TRUE;
				tyP0932MagConv3.tyFB.tyBtnSelClamp.bValue	:= FALSE;
			
			ELSIF tyP0932MagConv3.tyFB.tyBtnSelClamp.bRtCompl = TRUE THEN
				tyP0932MagConv3.tyFB.tyBtnSelClamp.bRtCompl	:= FALSE;
			
				tyP0932MagConv3.tyFB.tyBtnSelClamp.bValue	:= TRUE;
				tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bValue	:= FALSE;
			
			END_IF
			
		END_IF
		
		//Remote Clamper
		IF tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bValue = TRUE THEN
			
			eMagConv2Clp3Act	:= MagConv2ClpActRmtClprUnclamp;
			
			IF p_eMagConv2Clp3Stat = MagConv2ClpActRmtClprUnclamp AND p_eMagConv2Clp3Status = Done THEN
				
				eMagConv2Clp3Act	:= MagConv2ClpActIdle;
				
				tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bValue	:= FALSE;
				
			ELSIF p_eMagConv2Clp3Status = Error THEN
				
				tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bValue = TRUE THEN
			eMagConv2Clp3Act	:= MagConv2ClpActRmtClprClamp;
			
			IF p_eMagConv2Clp3Stat = MagConv2ClpActRmtClprClamp AND p_eMagConv2Clp3Status = Done THEN
				
				eMagConv2Clp3Act	:= MagConv2ClpActIdle;
				
				tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bValue := FALSE;
				
			ELSIF p_eMagConv2Clp3Status = Error THEN
				tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bValue := FALSE;
				
			END_IF
			
		END_IF
		
		//Selection Clamper
		IF tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bValue = TRUE THEN
			
			eMagConvSelClp3Act	:= PneuActExt;
			
			IF p_eSelClamp3Stat = PneuActExt AND p_eSelClamp3Status = Done THEN
				
				eMagConvSelClp3Act	:= PneuActIdle;
				
				tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bValue	:= FALSE;
				
			ELSIF p_eSelClamp3Status = Error THEN
				
				tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnSelClamp.bValue = TRUE THEN
			eMagConvSelClp3Act	:= PneuActRet;
			
			IF p_eSelClamp3Stat = PneuActRet AND p_eSelClamp3Status = Done THEN
				
				eMagConvSelClp3Act	:= PneuActIdle;
				
				tyP0932MagConv3.tyFB.tyBtnSelClamp.bValue	:= FALSE;
				
			ELSIF p_eSelClamp3Status = Error THEN
				tyP0932MagConv3.tyFB.tyBtnSelClamp.bValue	:= FALSE;
				
			END_IF
			
		END_IF
		
		//Update Status
		tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.bValue	:= NOT p_bMagConv2Clp3ClprFixClampCtrl;
		tyP0932MagConv3.tyDC.tyBtnFixedClamp.bValue		:= p_bMagConv2Clp3ClprFixClampCtrl;
		tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.bValue	:= NOT p_bMagConv2Clp3ClprRmtClampCtrl;
		tyP0932MagConv3.tyDC.tyBtnRemoteClamp.bValue	:= p_bMagConv2Clp3ClprRmtClampCtrl;
		
		tyP0932MagConv3.tyDC.tyBtnSelUnclamp.bRtCompl	:= FALSE;	
		tyP0932MagConv3.tyDC.tyBtnSelClamp.bRtCompl		:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnSelUnclamp.bValue	:= p_bSelClamp3RetCtrl;
		tyP0932MagConv3.tyDC.tyBtnSelClamp.bValue	:= p_bSelClamp3ExtCtrl;
	END_IF
	
	//Mask
	IF p_tyUsrMgmtCurrAccessRgt.bManualFBOnly THEN
		
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyCom.tyBtnSwitch.uiMaskRtStat));

	ELSE
		
	IF p_eMagConv2Clp3Status = Error THEN
		
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnSelClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSIF tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnSelClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSIF tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnSelClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSIF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bValue = TRUE OR tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bValue = TRUE
			OR tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bValue = TRUE 
			OR tyP0932MagConv3.tyFB.tyBtnSelClamp.bValue = TRUE OR tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bValue = TRUE
			THEN
		
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnSelClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSE
		
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnSelClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0932MagConv3.tyCom.tyBtnSwitch.uiMaskRtStat));
			
	END_IF
END_IF
	
	IF p_tyDI.bMagConvCAB717MagSen3 THEN
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnSelClamp.uiMaskRtStat));
	END_IF
	
	IF p_bMagConv2Clp3ClprFixClampCtrl OR p_bMagConv2Clp3ClprRmtClampCtrl THEN
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyBtnExit.uiMaskRtStat));
	END_IF
	
END_ACTION
