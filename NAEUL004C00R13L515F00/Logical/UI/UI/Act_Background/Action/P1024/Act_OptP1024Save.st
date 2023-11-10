
ACTION Act_OptP1024Save:
	
	IF tyP1024McSetAntiGap.tyAntiGap.tyNumLftSenOff.bRtCompl	
		OR tyP1024McSetAntiGap.tyAntiGap.tyNumMidSenOff.bRtCompl
		OR tyP1024McSetAntiGap.tyAntiGap.tyNumRgtSenOff.bRtCompl
		OR tyP1024McSetAntiGap.tyAntiGap.tyNumClrSenOff.bRtCompl 		
		OR tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.bRtCompl
		OR tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOff.bRtCompl 
		OR tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOn.bRtCompl
		OR tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOff.bRtCompl
		THEN
		
		fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		tyP1024McSetAntiGap.tyAntiGap.tyNumLftSenOff.bRtCompl			:= FALSE;
		tyP1024McSetAntiGap.tyAntiGap.tyNumMidSenOff.bRtCompl			:= FALSE;
		tyP1024McSetAntiGap.tyAntiGap.tyNumRgtSenOff.bRtCompl			:= FALSE;
		tyP1024McSetAntiGap.tyAntiGap.tyNumClrSenOff.bRtCompl			:= FALSE;
		tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.bRtCompl		:= FALSE;
		tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOff.bRtCompl		:= FALSE;
		tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOn.bRtCompl	:= FALSE;
		tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOff.bRtCompl	:= FALSE;
		
	END_IF
	
	IF tyCommon.tySet.tyBtnSave.bRtCompl = TRUE THEN
		
		tyMcParamWr.tyLftSenAntiGapDly.diSigOffTm			:=  tyP1024McSetAntiGap.tyAntiGap.tyNumLftSenOff.diValue;
		tyMcParamWr.tyMidSenAntiGapDly.diSigOffTm			:=  tyP1024McSetAntiGap.tyAntiGap.tyNumMidSenOff.diValue;
		tyMcParamWr.tyRgtSenAntiGapDly.diSigOffTm			:=	tyP1024McSetAntiGap.tyAntiGap.tyNumRgtSenOff.diValue;
		tyMcParamWr.tyClrSenAntiGapDly.diSigOffTm			:=  tyP1024McSetAntiGap.tyAntiGap.tyNumClrSenOff.diValue;
		tyMcParamWr.tyMagConvEntrySenAntiGapDly.diSigOnTm	:=  tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.diValue;
		tyMcParamWr.tyMagConvEntrySenAntiGapDly.diSigOffTm	:=  tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOff.diValue;
		tyMcParamWr.tyMagConvPresentSenAntiGapDly.diSigOnTm	:=	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOn.diValue;
		tyMcParamWr.tyMagConvPresentSenAntiGapDly.diSigOffTm:=	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOff.diValue;
		
		eMcParamAct	:= McParamActWrite;
		
		IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
			
			eMcParamAct	:= McParamActIdle;
			
			//Update BackUp Param
			tyP1024McSetAntiGap.tyAntiGapBkUp	:= tyP1024McSetAntiGap.tyAntiGap;
			
			tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));

		ELSIF p_eMcParamStatus = Error THEN
			p_tyC0008MsgBox ACCESS ADR(tyP1024McSetAntiGap.tyMsgBoxSaveErr);
			
			IF tyP1024McSetAntiGap.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
				tyP1024McSetAntiGap.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
				tyP1024McSetAntiGap.tyMsgBoxSaveErr.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1024McSetAntiGap.tyMsgBoxHide);
				
				//Restore Param
				tyP1024McSetAntiGap.tyAntiGap	:= tyP1024McSetAntiGap.tyAntiGapBkUp;
				tyMcParamWr						:= p_tyMcParamCurr;
				
				tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			END_IF
			
		END_IF
		
	END_IF
	
END_ACTION
