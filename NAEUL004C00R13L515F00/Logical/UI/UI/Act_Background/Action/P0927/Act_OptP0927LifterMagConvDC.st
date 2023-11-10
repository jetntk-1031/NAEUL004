
ACTION Act_OptP0927LifterMagConvDC:
	
	IF tyP0927LifterMagConv2.tyDC.tyBtnStop.bRtCompl = TRUE THEN	
		tyP0927LifterMagConv2.tyDC.tyBtnStop.bValue				:= TRUE;
		tyP0927LifterMagConv2.tyDC.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0927LifterMagConv2.tyDC.tyBtnMagIn.bValue				:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnMagIn.bRtLk				:= FALSE;
		
		tyP0927LifterMagConv2.tyDC.tyBtnMagOut.bValue			:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnMagOut.bRtLk				:= FALSE;
		
		eLifterMagConv2Act		:= MagConvActStop;
		
		IF p_eLifterMagConv2Stat = MagConvActStop AND p_eLifterMagConv2Status = Done THEN
			eLifterMagConv2Act	:= MagConvActIdle;
			
			tyP0927LifterMagConv2.tyDC.tyBtnStop.bRtCompl		:= FALSE;
		END_IF	
		
	ELSIF tyP0927LifterMagConv2.tyDC.tyBtnMagIn.bRtCompl = TRUE THEN	
		tyP0927LifterMagConv2.tyDC.tyBtnMagIn.bValue				:= TRUE;
		tyP0927LifterMagConv2.tyDC.tyBtnMagIn.bRtLk				:= TRUE;
		
		tyP0927LifterMagConv2.tyDC.tyBtnStop.bValue				:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnStop.bRtLk				:= FALSE;
		
		eLifterMagConv2Act		:= MagConvActSetMtrDirOrRToL;
		
		IF p_eLifterMagConv2Stat = MagConvActSetMtrDirOrRToL AND p_eLifterMagConv2Status = Done THEN
			
			eLifterMagConv2Act	:= MagConvActIdle;
			
			tyP0927LifterMagConv2.tyDC.tyBtnMagIn.bRtCompl		:= FALSE;
		END_IF	
		
	ELSIF tyP0927LifterMagConv2.tyDC.tyBtnMagOut.bRtCompl = TRUE THEN
		
		tyP0927LifterMagConv2.tyDC.tyBtnMagOut.bValue			:= TRUE;
		tyP0927LifterMagConv2.tyDC.tyBtnMagOut.bRtLk				:= TRUE;
		
		tyP0927LifterMagConv2.tyDC.tyBtnStop.bValue				:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnStop.bRtLk				:= FALSE;
		
		eLifterMagConv2Act		:= MagConvActSetMtrSigOnOrLToR;
		
		IF p_eLifterMagConv2Stat = MagConvActSetMtrSigOnOrLToR AND p_eLifterMagConv2Status = Done THEN
			
			eLifterMagConv2Act	:= MagConvActIdle;
			
			tyP0927LifterMagConv2.tyDC.tyBtnMagOut.bRtCompl		:= FALSE;
		END_IF	
		
	END_IF	
	
	//Clamper
	IF p_bLifterMagConvClprTwoCtrlOut = FALSE THEN
		IF tyP0927LifterMagConv2.tyDC.tyBtnClamp.bRtCompl = TRUE THEN
			tyP0927LifterMagConv2.tyDC.tyBtnClamp.bValue			:= TRUE;
			tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bValue		:= FALSE;
				
			eLifterMagConv2Act		:= MagConvActClprSetClamp;
				
			IF p_eLifterMagConv2Stat = MagConvActClprSetClamp AND p_eLifterMagConv2Status = Done THEN
				eLifterMagConv2Act	:= MagConvActIdle;
					
				tyP0927LifterMagConv2.tyDC.tyBtnClamp.bRtCompl	:= FALSE;
			END_IF	
					
		ELSIF tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bRtCompl = TRUE THEN	
			tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bValue		:= TRUE;
			tyP0927LifterMagConv2.tyDC.tyBtnClamp.bValue			:= FALSE;
				
			eLifterMagConv2Act		:= MagConvActClprSetUnclamp;
				
			IF p_eLifterMagConv2Stat = MagConvActClprSetUnclamp AND p_eLifterMagConv2Status = Done THEN
				eLifterMagConv2Act	:= MagConvActIdle;
					
				tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bRtCompl	:= FALSE;
			END_IF	
		END_IF	
					
	ELSE
		IF (tyP0927LifterMagConv2.tyDC.tyBtnClamp.bRtCompl = TRUE) OR (tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bRtCompl = TRUE) THEN
			IF (tyP0927LifterMagConv2.tyDC.tyBtnClamp.bValue = TRUE) AND (tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bValue = TRUE) THEN
				
				eLifterMagConv2Act	:= MagConvActClprSetAll;
					
				IF p_eLifterMagConv2Stat = MagConvActClprSetAll AND p_eLifterMagConv2Status = Done THEN
					eLifterMagConv2Act	:= MagConvActIdle;
						
					tyP0927LifterMagConv2.tyDC.tyBtnClamp.bRtCompl	:= FALSE;
					tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF (tyP0927LifterMagConv2.tyDC.tyBtnClamp.bValue = TRUE) AND (tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bValue = FALSE) THEN	
				
				eLifterMagConv2Act		:= MagConvActClprSetClamp;
					
				IF p_eLifterMagConv2Stat = MagConvActClprSetClamp AND p_eLifterMagConv2Status = Done THEN
					
					eLifterMagConv2Act	:= MagConvActIdle;
						
					tyP0927LifterMagConv2.tyDC.tyBtnClamp.bRtCompl	:= FALSE;
					tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bRtCompl	:= FALSE;
				END_IF
					
			ELSIF (tyP0927LifterMagConv2.tyDC.tyBtnClamp.bValue = FALSE) AND (tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bValue = TRUE) THEN	
				
				eLifterMagConv2Act		:= MagConvActClprSetUnclamp;
					
				IF p_eLifterMagConv2Stat = MagConvActClprSetUnclamp AND p_eLifterMagConv2Status = Done THEN
					
					eLifterMagConv2Act	:= MagConvActIdle;
						
					tyP0927LifterMagConv2.tyDC.tyBtnClamp.bRtCompl	:= FALSE;
					tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bRtCompl	:= FALSE;
				END_IF
					
			ELSE	
				eLifterMagConv2Act		:= MagConvActClprRstAll;
					
				IF p_eLifterMagConv2Stat = MagConvActClprRstAll AND p_eLifterMagConv2Status = Done THEN
					
					eLifterMagConv2Act	:= MagConvActIdle;
						
					tyP0927LifterMagConv2.tyDC.tyBtnClamp.bRtCompl	:= FALSE;
					tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bRtCompl	:= FALSE;
				END_IF
					
			END_IF	
		END_IF	
	END_IF
	
	IF tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.bValue = TRUE THEN
		tyP0927LifterMagConv2.tyFB.tyBtnClamp.bRtCompl				:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bRtCompl				:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnClamp.bValue					:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bValue				:= FALSE;
	END_IF
	
		
	//Mask
	
	IF p_eLifterMagConv2Status = Error THEN
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.uiMaskRtStat));
		
	ELSIF tyP0927LifterMagConv2.tyDC.tyBtnMagIn.bRtCompl = TRUE THEN
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.uiMaskRtStat));
		
	ELSIF tyP0927LifterMagConv2.tyDC.tyBtnMagOut.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.uiMaskRtStat));
		
	ELSIF tyP0927LifterMagConv2.tyDC.tyBtnStop.bRtCompl = TRUE THEN
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyDC.tyBtnClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.uiMaskRtStat));
		
	END_IF
		
END_ACTION
