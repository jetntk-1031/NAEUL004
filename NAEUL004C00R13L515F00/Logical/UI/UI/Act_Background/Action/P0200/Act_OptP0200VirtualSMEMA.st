
ACTION Act_OptP0200VSMEMA:
	
	//Upstream Virtual SMEMA A
	//Enable / Disable
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA.bValue = TRUE THEN
				bVSMEMAUSAEn	:= TRUE;
			
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyLyr.uiRtStat));
			ELSE
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnNom.bValue	:= FALSE;
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.bValue	:= FALSE;
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.bValue	:= FALSE;
			
				bVSMEMAUSAEn	:= FALSE;
			
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyLyr.uiRtStat));
			END_IF
		
		END_IF
	ELSE
		IF tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.bValue = TRUE THEN
				bVSMEMAUSAEn	:= TRUE;
			
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyLyr.uiRtStat));
			ELSE
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnNom.bValue	:= FALSE;
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.bValue	:= FALSE;
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.bValue	:= FALSE;
			
				bVSMEMAUSAEn	:= FALSE;
			
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyLyr.uiRtStat));
			END_IF
		
		END_IF
		
	END_IF
	
	//Control
	
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.bValue = TRUE THEN
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnNom.bValue	:= TRUE;
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.bValue	:= TRUE;
			ELSE
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnNom.bValue	:= FALSE;
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.bValue	:= FALSE;
			END_IF
		
		ELSIF tyP0200OpsGen.tyUSAVSMEMA.tyBtnNom.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSAVSMEMA.tyBtnNom.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSAVSMEMA.tyBtnNom.bValue = TRUE THEN
				IF tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.bValue =  TRUE THEN
					tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.bValue	:= TRUE;	
				END_IF	
			ELSE	
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.bValue	:= FALSE;	
			END_IF
		
		ELSIF tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.bValue = TRUE THEN
				IF tyP0200OpsGen.tyUSAVSMEMA.tyBtnNom.bValue =  TRUE THEN
					tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.bValue	:= TRUE;	
				END_IF	
			ELSE	
				tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.bValue	:= FALSE;	
			END_IF	
		
		END_IF
	ELSE
		IF tyP0200OpsGen.tyUSAVSMEMA1.tyBtnDual.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSAVSMEMA1.tyBtnDual.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSAVSMEMA1.tyBtnDual.bValue = TRUE THEN
				tyP0200OpsGen.tyUSAVSMEMA1.tyBtnNom.bValue	:= TRUE;
				tyP0200OpsGen.tyUSAVSMEMA1.tyBtnStat.bValue	:= TRUE;
			ELSE
				tyP0200OpsGen.tyUSAVSMEMA1.tyBtnNom.bValue	:= FALSE;
				tyP0200OpsGen.tyUSAVSMEMA1.tyBtnStat.bValue	:= FALSE;
			END_IF
		
		ELSIF tyP0200OpsGen.tyUSAVSMEMA1.tyBtnNom.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSAVSMEMA1.tyBtnNom.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSAVSMEMA1.tyBtnNom.bValue = TRUE THEN
				IF tyP0200OpsGen.tyUSAVSMEMA1.tyBtnStat.bValue =  TRUE THEN
					tyP0200OpsGen.tyUSAVSMEMA1.tyBtnDual.bValue	:= TRUE;	
				END_IF	
			ELSE	
				tyP0200OpsGen.tyUSAVSMEMA1.tyBtnDual.bValue	:= FALSE;	
			END_IF
		
		ELSIF tyP0200OpsGen.tyUSAVSMEMA1.tyBtnStat.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSAVSMEMA1.tyBtnStat.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSAVSMEMA1.tyBtnStat.bValue = TRUE THEN
				IF tyP0200OpsGen.tyUSAVSMEMA1.tyBtnNom.bValue =  TRUE THEN
					tyP0200OpsGen.tyUSAVSMEMA1.tyBtnDual.bValue	:= TRUE;	
				END_IF	
			ELSE	
				tyP0200OpsGen.tyUSAVSMEMA1.tyBtnDual.bValue	:= FALSE;	
			END_IF	
		
		END_IF
	END_IF
	
	//Update
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		bVSMEMAUBAA		:= tyP0200OpsGen.tyUSAVSMEMA.tyBtnNom.bValue;
		bVSMEMAUBAAStat	:= tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.bValue;
	ELSE
		bVSMEMAUBAA		:= tyP0200OpsGen.tyUSAVSMEMA1.tyBtnNom.bValue;
		bVSMEMAUBAAStat	:= tyP0200OpsGen.tyUSAVSMEMA1.tyBtnStat.bValue;
	END_IF
	
	
	
	//Upstream Virtual SMEMA B
	//Enable / Disable
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA.bValue = TRUE THEN
				bVSMEMAUSBEn	:= TRUE;
			
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyLyr.uiRtStat));
			ELSE
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnNom.bValue	:= FALSE;
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.bValue	:= FALSE;
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.bValue	:= FALSE;
			
				bVSMEMAUSBEn	:= FALSE;
			
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyLyr.uiRtStat));
			END_IF
		
		END_IF
	
	ELSE
		IF tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA1.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA1.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA1.bValue = TRUE THEN
				bVSMEMAUSBEn	:= TRUE;
			
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyLyr.uiRtStat));
			ELSE
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnNom.bValue	:= FALSE;
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.bValue	:= FALSE;
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.bValue	:= FALSE;
			
				bVSMEMAUSBEn	:= FALSE;
			
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyLyr.uiRtStat));
			END_IF
		
		END_IF
	
	END_IF
	
	//Control
	
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		
		IF tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.bValue = TRUE THEN
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnNom.bValue	:= TRUE;
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.bValue	:= TRUE;
			ELSE
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnNom.bValue	:= FALSE;
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.bValue	:= FALSE;
			END_IF
		
		ELSIF tyP0200OpsGen.tyUSBVSMEMA.tyBtnNom.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSBVSMEMA.tyBtnNom.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSBVSMEMA.tyBtnNom.bValue = TRUE THEN
				IF tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.bValue =  TRUE THEN
					tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.bValue	:= TRUE;	
				END_IF	
			ELSE	
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.bValue	:= FALSE;	
			END_IF
		
		ELSIF tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.bValue = TRUE THEN
				IF tyP0200OpsGen.tyUSBVSMEMA.tyBtnNom.bValue =  TRUE THEN
					tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.bValue	:= TRUE;	
				END_IF	
			ELSE	
				tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.bValue	:= FALSE;	
			END_IF	
		
		END_IF
		
	ELSE
		
		IF tyP0200OpsGen.tyUSBVSMEMA1.tyBtnDual.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSBVSMEMA1.tyBtnDual.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSBVSMEMA1.tyBtnDual.bValue = TRUE THEN
				tyP0200OpsGen.tyUSBVSMEMA1.tyBtnNom.bValue	:= TRUE;
				tyP0200OpsGen.tyUSBVSMEMA1.tyBtnStat.bValue	:= TRUE;
			ELSE
				tyP0200OpsGen.tyUSBVSMEMA1.tyBtnNom.bValue	:= FALSE;
				tyP0200OpsGen.tyUSBVSMEMA1.tyBtnStat.bValue	:= FALSE;
			END_IF
		
		ELSIF tyP0200OpsGen.tyUSBVSMEMA1.tyBtnNom.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSBVSMEMA1.tyBtnNom.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSBVSMEMA1.tyBtnNom.bValue = TRUE THEN
				IF tyP0200OpsGen.tyUSBVSMEMA1.tyBtnStat.bValue =  TRUE THEN
					tyP0200OpsGen.tyUSBVSMEMA1.tyBtnDual.bValue	:= TRUE;	
				END_IF	
			ELSE	
				tyP0200OpsGen.tyUSBVSMEMA1.tyBtnDual.bValue	:= FALSE;	
			END_IF
		
		ELSIF tyP0200OpsGen.tyUSBVSMEMA1.tyBtnStat.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyUSBVSMEMA1.tyBtnStat.bRtCompl	:= FALSE;
		
			IF tyP0200OpsGen.tyUSBVSMEMA1.tyBtnStat.bValue = TRUE THEN
				IF tyP0200OpsGen.tyUSBVSMEMA1.tyBtnNom.bValue =  TRUE THEN
					tyP0200OpsGen.tyUSBVSMEMA1.tyBtnDual.bValue	:= TRUE;	
				END_IF	
			ELSE	
				tyP0200OpsGen.tyUSBVSMEMA1.tyBtnDual.bValue	:= FALSE;	
			END_IF	
		
		END_IF
	END_IF
	
	//Update
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		bVSMEMAUBAB		:= tyP0200OpsGen.tyUSBVSMEMA.tyBtnNom.bValue;
		bVSMEMAUBABStat	:= tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.bValue;
	ELSE
		bVSMEMAUBAB		:= tyP0200OpsGen.tyUSBVSMEMA1.tyBtnNom.bValue;
		bVSMEMAUBABStat	:= tyP0200OpsGen.tyUSBVSMEMA1.tyBtnStat.bValue;
	END_IF
	
END_ACTION
