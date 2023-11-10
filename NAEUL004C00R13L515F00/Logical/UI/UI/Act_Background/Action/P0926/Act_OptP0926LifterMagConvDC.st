
ACTION Act_OptP0926LifterMagConvDC:
	
	IF tyP0926LifterMagConv.tyDC.tyBtnStop.bRtCompl = TRUE THEN	
		tyP0926LifterMagConv.tyDC.tyBtnStop.bValue				:= TRUE;
		tyP0926LifterMagConv.tyDC.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0926LifterMagConv.tyDC.tyBtnMagIn.bValue				:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnMagIn.bRtLk				:= FALSE;
		
		tyP0926LifterMagConv.tyDC.tyBtnMagOut.bValue			:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnMagOut.bRtLk				:= FALSE;
		
		eLifterMagConvAct		:= MagConvActStop;
		
		IF p_eLifterMagConvStat = MagConvActStop AND p_eLifterMagConvStatus = Done THEN
			eLifterMagConvAct	:= MagConvActIdle;
			
			tyP0926LifterMagConv.tyDC.tyBtnStop.bRtCompl		:= FALSE;
		END_IF	
		
	ELSIF tyP0926LifterMagConv.tyDC.tyBtnMagIn.bRtCompl = TRUE THEN	
		tyP0926LifterMagConv.tyDC.tyBtnMagIn.bValue				:= TRUE;
		tyP0926LifterMagConv.tyDC.tyBtnMagIn.bRtLk				:= TRUE;
		
		tyP0926LifterMagConv.tyDC.tyBtnStop.bValue				:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnStop.bRtLk				:= FALSE;
		
		eLifterMagConvAct		:= MagConvActSetMtrDirOrRToL;
		
		IF p_eLifterMagConvStat = MagConvActSetMtrDirOrRToL AND p_eLifterMagConvStatus = Done THEN
			
			eLifterMagConvAct	:= MagConvActIdle;
			
			tyP0926LifterMagConv.tyDC.tyBtnMagIn.bRtCompl		:= FALSE;
		END_IF	
		
	ELSIF tyP0926LifterMagConv.tyDC.tyBtnMagOut.bRtCompl = TRUE THEN
		
		tyP0926LifterMagConv.tyDC.tyBtnMagOut.bValue			:= TRUE;
		tyP0926LifterMagConv.tyDC.tyBtnMagOut.bRtLk				:= TRUE;
		
		tyP0926LifterMagConv.tyDC.tyBtnStop.bValue				:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnStop.bRtLk				:= FALSE;
		
		eLifterMagConvAct		:= MagConvActSetMtrSigOnOrLToR;
		
		IF p_eLifterMagConvStat = MagConvActSetMtrSigOnOrLToR AND p_eLifterMagConvStatus = Done THEN
			
			eLifterMagConvAct	:= MagConvActIdle;
			
			tyP0926LifterMagConv.tyDC.tyBtnMagOut.bRtCompl		:= FALSE;
		END_IF	
		
	END_IF	
	
	//Clamper
	IF p_bLifterMagConvClprTwoCtrlOut = FALSE THEN
		IF tyP0926LifterMagConv.tyDC.tyBtnClamp.bRtCompl = TRUE THEN
			tyP0926LifterMagConv.tyDC.tyBtnClamp.bValue			:= TRUE;
			tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bValue		:= FALSE;
				
			eLifterMagConvAct		:= MagConvActClprSetClamp;
				
			IF p_eLifterMagConvStat = MagConvActClprSetClamp AND p_eLifterMagConvStatus = Done THEN
				eLifterMagConvAct	:= MagConvActIdle;
					
				tyP0926LifterMagConv.tyDC.tyBtnClamp.bRtCompl	:= FALSE;
			END_IF	
					
		ELSIF tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bRtCompl = TRUE THEN	
			tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bValue		:= TRUE;
			tyP0926LifterMagConv.tyDC.tyBtnClamp.bValue			:= FALSE;
				
			eLifterMagConvAct		:= MagConvActClprSetUnclamp;
				
			IF p_eLifterMagConvStat = MagConvActClprSetUnclamp AND p_eLifterMagConvStatus = Done THEN
				eLifterMagConvAct	:= MagConvActIdle;
					
				tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bRtCompl	:= FALSE;
			END_IF	
		END_IF	
					
	ELSE
		IF (tyP0926LifterMagConv.tyDC.tyBtnClamp.bRtCompl = TRUE) OR (tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bRtCompl = TRUE) THEN
			IF (tyP0926LifterMagConv.tyDC.tyBtnClamp.bValue = TRUE) AND (tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bValue = TRUE) THEN
				
				eLifterMagConvAct	:= MagConvActClprSetAll;
					
				IF p_eLifterMagConvStat = MagConvActClprSetAll AND p_eLifterMagConvStatus = Done THEN
					eLifterMagConvAct	:= MagConvActIdle;
						
					tyP0926LifterMagConv.tyDC.tyBtnClamp.bRtCompl	:= FALSE;
					tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF (tyP0926LifterMagConv.tyDC.tyBtnClamp.bValue = TRUE) AND (tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bValue = FALSE) THEN	
				
				eLifterMagConvAct		:= MagConvActClprSetClamp;
					
				IF p_eLifterMagConvStat = MagConvActClprSetClamp AND p_eLifterMagConvStatus = Done THEN
					
					eLifterMagConvAct	:= MagConvActIdle;
						
					tyP0926LifterMagConv.tyDC.tyBtnClamp.bRtCompl	:= FALSE;
					tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bRtCompl	:= FALSE;
				END_IF
					
			ELSIF (tyP0926LifterMagConv.tyDC.tyBtnClamp.bValue = FALSE) AND (tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bValue = TRUE) THEN	
				
				eLifterMagConvAct		:= MagConvActClprSetUnclamp;
					
				IF p_eLifterMagConvStat = MagConvActClprSetUnclamp AND p_eLifterMagConvStatus = Done THEN
					
					eLifterMagConvAct	:= MagConvActIdle;
						
					tyP0926LifterMagConv.tyDC.tyBtnClamp.bRtCompl	:= FALSE;
					tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bRtCompl	:= FALSE;
				END_IF
					
			ELSE	
				eLifterMagConvAct		:= MagConvActClprRstAll;
					
				IF p_eLifterMagConvStat = MagConvActClprRstAll AND p_eLifterMagConvStatus = Done THEN
					
					eLifterMagConvAct	:= MagConvActIdle;
						
					tyP0926LifterMagConv.tyDC.tyBtnClamp.bRtCompl	:= FALSE;
					tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bRtCompl	:= FALSE;
				END_IF
					
			END_IF	
		END_IF	
	END_IF
	
	IF tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.bValue = TRUE THEN
		tyP0926LifterMagConv.tyFB.tyBtnClamp.bRtCompl				:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bRtCompl				:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnClamp.bValue					:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bValue				:= FALSE;
	END_IF
	
		
	//Mask
	
	IF p_eLifterMagConvStatus = Error THEN
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyBtnUnclamp.uiMaskRtStat));
		
	ELSIF tyP0926LifterMagConv.tyDC.tyBtnMagIn.bRtCompl = TRUE THEN
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyBtnUnclamp.uiMaskRtStat));
		
	ELSIF tyP0926LifterMagConv.tyDC.tyBtnMagOut.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyBtnUnclamp.uiMaskRtStat));
		
	ELSIF tyP0926LifterMagConv.tyDC.tyBtnStop.bRtCompl = TRUE THEN
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyDC.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyDC.tyBtnUnclamp.uiMaskRtStat));
		
	END_IF
		
END_ACTION
