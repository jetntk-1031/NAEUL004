
ACTION Act_OptP0927LifterMagConvFB:
		
	IF tyP0927LifterMagConv2.tyFB.tyBtnStop.bRtCompl = TRUE THEN	
		eLifterMagConv2Act		:= MagConvActStop;
		
		IF p_eLifterMagConv2Stat = MagConvActStop AND p_eLifterMagConv2Status = Done THEN
			eLifterMagConv2Act	:= MagConvActIdle;
				
			tyP0927LifterMagConv2.tyFB.tyBtnEnter.bRtCompl			:= FALSE;
			tyP0927LifterMagConv2.tyFB.tyBtnEnter.bValue				:= FALSE;
			tyP0927LifterMagConv2.tyFB.tyBtnEnter.bRtLk				:= FALSE;
		
			tyP0927LifterMagConv2.tyFB.tyBtnExit.bRtCompl			:= FALSE;
			tyP0927LifterMagConv2.tyFB.tyBtnExit.bValue				:= FALSE;
			tyP0927LifterMagConv2.tyFB.tyBtnExit.bRtLk				:= FALSE;
		
			tyP0927LifterMagConv2.tyFB.tyBtnStop.bRtCompl			:= FALSE;
			tyP0927LifterMagConv2.tyFB.tyBtnStop.bValue				:= TRUE;
			tyP0927LifterMagConv2.tyFB.tyBtnStop.bRtLk				:= TRUE;
		END_IF	
			
	ELSIF tyP0927LifterMagConv2.tyFB.tyBtnEnter.bRtCompl = TRUE THEN	
		tyP0927LifterMagConv2.tyFB.tyBtnEnter.bValue					:= TRUE;
		tyP0927LifterMagConv2.tyFB.tyBtnEnter.bRtLk					:= TRUE;
		
		tyP0927LifterMagConv2.tyFB.tyBtnStop.bValue					:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnStop.bRtLk					:= FALSE;
			
		eLifterMagConv2Act		:= MagConvActEnt;
		
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat));
		
		IF p_eLifterMagConv2Stat = MagConvActEnt AND p_eLifterMagConv2Status = Done THEN
			eLifterMagConv2Act	:= MagConvActIdle;
			
			tyP0927LifterMagConv2.tyFB.tyBtnEnter.bRtCompl			:= FALSE;
		
			tyP0927LifterMagConv2.tyFB.tyBtnEnter.bValue				:= FALSE;
			tyP0927LifterMagConv2.tyFB.tyBtnEnter.bRtLk				:= FALSE;
			
			tyP0927LifterMagConv2.tyFB.tyBtnStop.bValue				:= TRUE;
			tyP0927LifterMagConv2.tyFB.tyBtnStop.bRtLk				:= TRUE;
			
			fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat));
			
		END_IF	
			
	ELSIF tyP0927LifterMagConv2.tyFB.tyBtnExit.bRtCompl = TRUE THEN	
		tyP0927LifterMagConv2.tyFB.tyBtnExit.bValue					:= TRUE;
		tyP0927LifterMagConv2.tyFB.tyBtnExit.bRtLk					:= TRUE;
		
		tyP0927LifterMagConv2.tyFB.tyBtnStop.bValue					:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnStop.bRtLk					:= FALSE;
		
		eLifterMagConv2Act		:= MagConvActExit;
			
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat));
		
		IF p_eLifterMagConv2Stat = MagConvActExit AND p_eLifterMagConv2Status = Done THEN
			eLifterMagConv2Act	:= MagConvActIdle;
			
			tyP0927LifterMagConv2.tyFB.tyBtnExit.bRtCompl			:= FALSE;
			
			tyP0927LifterMagConv2.tyFB.tyBtnExit.bValue				:= FALSE;
			tyP0927LifterMagConv2.tyFB.tyBtnExit.bRtLk				:= FALSE;
			
			tyP0927LifterMagConv2.tyFB.tyBtnStop.bValue				:= TRUE;
			tyP0927LifterMagConv2.tyFB.tyBtnStop.bRtLk				:= TRUE;
			
			fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat));
		END_IF	
		
	END_IF
	
	IF tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.bValue = FALSE THEN
		
		IF tyP0927LifterMagConv2.tyFB.tyBtnClamp.bRtCompl = TRUE THEN
			tyP0927LifterMagConv2.tyFB.tyBtnClamp.bRtCompl			:= FALSE;
			
			tyP0927LifterMagConv2.tyFB.tyBtnClamp.bValue				:= TRUE;
			tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bValue			:= FALSE;
			
		ELSIF tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bRtCompl = TRUE THEN
			tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bRtCompl			:= FALSE;
	
			tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bValue			:= TRUE;
			tyP0927LifterMagConv2.tyFB.tyBtnClamp.bValue 			:= FALSE;
		
		END_IF
		
	
		IF tyP0927LifterMagConv2.tyFB.tyBtnClamp.bValue = TRUE THEN
			eLifterMagConv2Act		:= MagConvActClprClamp;
				
			IF p_eLifterMagConv2Stat = MagConvActClprClamp AND p_eLifterMagConv2Status = Done THEN
				eLifterMagConv2Act	:= MagConvActIdle;
					
				tyP0927LifterMagConv2.tyFB.tyBtnClamp.bValue			:= FALSE;
				
			ELSIF p_eLifterMagConv2Status = Error THEN
				tyP0927LifterMagConv2.tyFB.tyBtnClamp.bValue			:= FALSE;
				
			END_IF
			
		ELSIF tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bValue = TRUE THEN
			eLifterMagConv2Act		:= MagConvActClprUnclamp;
			
			IF p_eLifterMagConv2Stat = MagConvActClprUnclamp AND p_eLifterMagConv2Status = Done THEN
				eLifterMagConv2Act	:= MagConvActIdle;
				
				tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bValue		:= FALSE;
				
			ELSIF p_eLifterMagConv2Status = Error THEN
				tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bValue		:= FALSE;
				
			END_IF	
			
		END_IF
		
		//Update Status
		tyP0927LifterMagConv2.tyDC.tyBtnClamp.bValue					:= p_bLifterMagConvClprClampCtrl;
		tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bValue				:= NOT p_bLifterMagConvClprClampCtrl;
	
	END_IF
	
	//Mask
	IF p_tyUsrMgmtCurrAccessRgt.bManualFBOnly THEN 
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat));
	
	ELSE 
		
		IF (p_eLifterMagConv2Status = Error) THEN
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnEnter.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat));
		
		ELSIF tyP0927LifterMagConv2.tyFB.tyBtnEnter.bRtCompl = TRUE THEN
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyFB.tyBtnEnter.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat));
	
		ELSIF tyP0927LifterMagConv2.tyFB.tyBtnExit.bRtCompl = TRUE THEN	
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnEnter.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat));
	
		ELSIF tyP0927LifterMagConv2.tyFB.tyBtnClamp.bRtCompl = TRUE OR tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bRtCompl = TRUE THEN	
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnEnter.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyFB.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat));
		
		ELSE	
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyFB.tyBtnEnter.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyFB.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat));
	
		END_IF	
	END_IF
	
END_ACTION
