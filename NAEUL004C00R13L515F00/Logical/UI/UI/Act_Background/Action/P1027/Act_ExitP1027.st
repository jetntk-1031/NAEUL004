
ACTION Act_ExitP1027: 
	
	IF tyCommon.tySet.tyBtnSave.uiMaskRtStat.0 = FALSE THEN
		usiChgPage	:= 1;
		
	ELSE
		
		p_tyC0008MsgBox ACCESS ADR(tyP1027McSetOpCon.tyMsgBoxExitAsk);
		
		IF tyP1027McSetOpCon.tyMsgBoxExitAsk.tyBtnYes.bRtCompl = TRUE THEN
			tyP1027McSetOpCon.tyMsgBoxExitAsk.tyBtnYes.bRtCompl	:= FALSE;
			tyP1027McSetOpCon.tyMsgBoxExitAsk.tyBtnYes.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1027McSetOpCon.tyMsgBoxHide);
			
			//Restore Param
			tyP1027McSetOpCon.tyParam	:= tyP1027McSetOpCon.tyParamBkUp;
			
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			usiChgPage	:= 1;
			
		ELSIF tyP1027McSetOpCon.tyMsgBoxExitAsk.tyBtnNo.bRtCompl = TRUE THEN
			tyP1027McSetOpCon.tyMsgBoxExitAsk.tyBtnNo.bRtCompl	:= FALSE;
			tyP1027McSetOpCon.tyMsgBoxExitAsk.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1027McSetOpCon.tyMsgBoxHide);
			
			eChgPage	:= eCurrPage;
			usiChgPage	:= 0;
			
		END_IF
		
	END_IF
	
END_ACTION
