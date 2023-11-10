
ACTION Act_OptP0926LifterMagConvFB:
		
	IF tyP0926LifterMagConv.tyFB.tyBtnStop.bRtCompl = TRUE THEN	
		eLifterMagConvAct		:= MagConvActStop;
		
		IF p_eLifterMagConvStat = MagConvActStop AND p_eLifterMagConvStatus = Done THEN
			eLifterMagConvAct	:= MagConvActIdle;
				
			tyP0926LifterMagConv.tyFB.tyBtnEnter.bRtCompl			:= FALSE;
			tyP0926LifterMagConv.tyFB.tyBtnEnter.bValue				:= FALSE;
			tyP0926LifterMagConv.tyFB.tyBtnEnter.bRtLk				:= FALSE;
		
			tyP0926LifterMagConv.tyFB.tyBtnExit.bRtCompl			:= FALSE;
			tyP0926LifterMagConv.tyFB.tyBtnExit.bValue				:= FALSE;
			tyP0926LifterMagConv.tyFB.tyBtnExit.bRtLk				:= FALSE;
		
			tyP0926LifterMagConv.tyFB.tyBtnStop.bRtCompl			:= FALSE;
			tyP0926LifterMagConv.tyFB.tyBtnStop.bValue				:= TRUE;
			tyP0926LifterMagConv.tyFB.tyBtnStop.bRtLk				:= TRUE;
		END_IF	
			
	ELSIF tyP0926LifterMagConv.tyFB.tyBtnEnter.bRtCompl = TRUE THEN	
		tyP0926LifterMagConv.tyFB.tyBtnEnter.bValue					:= TRUE;
		tyP0926LifterMagConv.tyFB.tyBtnEnter.bRtLk					:= TRUE;
		
		tyP0926LifterMagConv.tyFB.tyBtnStop.bValue					:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnStop.bRtLk					:= FALSE;
			
		eLifterMagConvAct		:= MagConvActEnt;
		
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat));
		
		IF p_eLifterMagConvStat = MagConvActEnt AND p_eLifterMagConvStatus = Done THEN
			eLifterMagConvAct	:= MagConvActIdle;
			
			tyP0926LifterMagConv.tyFB.tyBtnEnter.bRtCompl			:= FALSE;
		
			tyP0926LifterMagConv.tyFB.tyBtnEnter.bValue				:= FALSE;
			tyP0926LifterMagConv.tyFB.tyBtnEnter.bRtLk				:= FALSE;
			
			tyP0926LifterMagConv.tyFB.tyBtnStop.bValue				:= TRUE;
			tyP0926LifterMagConv.tyFB.tyBtnStop.bRtLk				:= TRUE;
			
			fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat));
			
		END_IF	
			
	ELSIF tyP0926LifterMagConv.tyFB.tyBtnExit.bRtCompl = TRUE THEN	
		tyP0926LifterMagConv.tyFB.tyBtnExit.bValue					:= TRUE;
		tyP0926LifterMagConv.tyFB.tyBtnExit.bRtLk					:= TRUE;
		
		tyP0926LifterMagConv.tyFB.tyBtnStop.bValue					:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnStop.bRtLk					:= FALSE;
		
		eLifterMagConvAct		:= MagConvActExit;
			
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat));
		
		IF p_eLifterMagConvStat = MagConvActExit AND p_eLifterMagConvStatus = Done THEN
			eLifterMagConvAct	:= MagConvActIdle;
			
			tyP0926LifterMagConv.tyFB.tyBtnExit.bRtCompl			:= FALSE;
			
			tyP0926LifterMagConv.tyFB.tyBtnExit.bValue				:= FALSE;
			tyP0926LifterMagConv.tyFB.tyBtnExit.bRtLk				:= FALSE;
			
			tyP0926LifterMagConv.tyFB.tyBtnStop.bValue				:= TRUE;
			tyP0926LifterMagConv.tyFB.tyBtnStop.bRtLk				:= TRUE;
			
			fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat));
		END_IF	
		
	END_IF
	
	IF tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.bValue = FALSE THEN
		
		IF tyP0926LifterMagConv.tyFB.tyBtnClamp.bRtCompl = TRUE THEN
			tyP0926LifterMagConv.tyFB.tyBtnClamp.bRtCompl			:= FALSE;
			
			tyP0926LifterMagConv.tyFB.tyBtnClamp.bValue				:= TRUE;
			tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bValue			:= FALSE;
			
		ELSIF tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bRtCompl = TRUE THEN
			tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bRtCompl			:= FALSE;
	
			tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bValue			:= TRUE;
			tyP0926LifterMagConv.tyFB.tyBtnClamp.bValue 			:= FALSE;
		
		END_IF
		
	
		IF tyP0926LifterMagConv.tyFB.tyBtnClamp.bValue = TRUE THEN
			eLifterMagConvAct		:= MagConvActClprClamp;
				
			IF p_eLifterMagConvStat = MagConvActClprClamp AND p_eLifterMagConvStatus = Done THEN
				eLifterMagConvAct	:= MagConvActIdle;
					
				tyP0926LifterMagConv.tyFB.tyBtnClamp.bValue			:= FALSE;
				
			ELSIF p_eLifterMagConvStatus = Error THEN
				tyP0926LifterMagConv.tyFB.tyBtnClamp.bValue			:= FALSE;
				
			END_IF
			
		ELSIF tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bValue = TRUE THEN
			eLifterMagConvAct		:= MagConvActClprUnclamp;
			
			IF p_eLifterMagConvStat = MagConvActClprUnclamp AND p_eLifterMagConvStatus = Done THEN
				eLifterMagConvAct	:= MagConvActIdle;
				
				tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bValue		:= FALSE;
				
			ELSIF p_eLifterMagConvStatus = Error THEN
				tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bValue		:= FALSE;
				
			END_IF	
			
		END_IF
		
		//Update Status
		tyP0926LifterMagConv.tyDC.tyBtnClamp.bValue					:= p_bLifterMagConvClprClampCtrl;
		tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bValue				:= NOT p_bLifterMagConvClprClampCtrl;
	
	END_IF
	
	//Mask
	IF p_tyUsrMgmtCurrAccessRgt.bManualFBOnly THEN 
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat));
	
	ELSE 
		
		IF (p_eLifterMagConvStatus = Error) THEN
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnEnter.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat));
		
		ELSIF tyP0926LifterMagConv.tyFB.tyBtnEnter.bRtCompl = TRUE THEN
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyFB.tyBtnEnter.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat));
	
		ELSIF tyP0926LifterMagConv.tyFB.tyBtnExit.bRtCompl = TRUE THEN	
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnEnter.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat));
	
		ELSIF tyP0926LifterMagConv.tyFB.tyBtnClamp.bRtCompl = TRUE OR tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bRtCompl = TRUE THEN	
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnEnter.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyFB.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyFB.tyBtnUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat));
		
		ELSE	
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyFB.tyBtnEnter.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyFB.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyFB.tyBtnUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat));
	
		END_IF	
	END_IF
	
END_ACTION
