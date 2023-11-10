
ACTION Act_ExitP1023: 
	
	IF tyCommon.tySet.tyBtnSave.uiMaskRtStat.0 = FALSE THEN
		usiChgPage	:= 1;
		
	ELSE
		
		p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxExitAsk);
		
		IF tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnYes.bRtCompl = TRUE THEN
			tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnYes.bRtCompl	:= FALSE;
			tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnYes.bValue	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
			
			//Restore Param
			tyP1023McSetHComm.tyUSSelA		:= tyP1023McSetHComm.tyUSSelABkUp;
			tyP1023McSetHComm.tyUSSMEMAA	:= tyP1023McSetHComm.tyUSSMEMAABkUp;
			tyP1023McSetHComm.tyUSHermesA	:= tyP1023McSetHComm.tyUSHermesABkUp;
			
			tyP1023McSetHComm.tyUSSelB		:= tyP1023McSetHComm.tyUSSelBBkUp;
			tyP1023McSetHComm.tyUSSMEMAB	:= tyP1023McSetHComm.tyUSSMEMABBkUp;
			tyP1023McSetHComm.tyUSHermesB	:= tyP1023McSetHComm.tyUSHermesBBkUp;
			
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			usiChgPage	:= 1;
			
		ELSIF tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnNo.bRtCompl = TRUE THEN
			tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnNo.bRtCompl	:= FALSE;
			tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnNo.bValue	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
			
			eChgPage	:= eCurrPage;
			usiChgPage	:= 0;
			
		END_IF
		
	END_IF
	
END_ACTION
