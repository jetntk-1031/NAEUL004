
ACTION Act_ExitP1025: 
	
	IF tyCommon.tySet.tyBtnSave.uiMaskRtStat.0 = FALSE THEN
		usiChgPage	:= 1;
		
	ELSE
		
		p_tyC0008MsgBox ACCESS ADR(tyP1025McSetScan.tyMsgBoxExitAsk);
		
		IF tyP1025McSetScan.tyMsgBoxExitAsk.tyBtnYes.bRtCompl = TRUE THEN
			tyP1025McSetScan.tyMsgBoxExitAsk.tyBtnYes.bRtCompl	:= FALSE;
			tyP1025McSetScan.tyMsgBoxExitAsk.tyBtnYes.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1025McSetScan.tyMsgBoxHide);
			
			//Restore Param
			tyP1025McSetScan.tyScan	:= tyP1025McSetScan.tyScanBkUp;
			
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			usiChgPage	:= 1;
			
		ELSIF tyP1025McSetScan.tyMsgBoxExitAsk.tyBtnNo.bRtCompl = TRUE THEN
			tyP1025McSetScan.tyMsgBoxExitAsk.tyBtnNo.bRtCompl	:= FALSE;
			tyP1025McSetScan.tyMsgBoxExitAsk.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1025McSetScan.tyMsgBoxHide);
			
			eChgPage	:= eCurrPage;
			usiChgPage	:= 0;
			
		END_IF
		
	END_IF
	
END_ACTION
