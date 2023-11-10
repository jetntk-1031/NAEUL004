
ACTION Act_OptP1027Save:
	
	IF tyP1027McSetOpCon.tyParam.tyNumLineNo.bRtCompl OR tyP1027McSetOpCon.tyParam.tyNumStatNo.bRtCompl OR
		tyP1027McSetOpCon.tyParam.tyNumStatIdx.bRtCompl OR tyP1027McSetOpCon.tyParam.tyNumFuNo.bRtCompl OR 
		tyP1027McSetOpCon.tyParam.tyNumWorkPos.bRtCompl OR tyP1027McSetOpCon.tyParam.tyNumToolPos.bRtCompl OR 
		tyP1027McSetOpCon.tyParam.tyNumProcessNo.bRtCompl OR tyP1027McSetOpCon.tyParam.tyStringProcessNm.bRtCompl OR
		tyP1027McSetOpCon.tyParam.tyStringApplication.bRtCompl OR tyP1027McSetOpCon.tyParam.tyBtnOpConEn.bRtCompl OR 
		tyP1027McSetOpCon.tyParam.tyStringOpConSvrIP.bRtCompl OR tyP1027McSetOpCon.tyParam.tyNumOpConSvrPort.bRtCompl THEN
		
		fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		tyP1027McSetOpCon.tyParam.tyNumLineNo.bRtCompl			:= FALSE;
		tyP1027McSetOpCon.tyParam.tyNumStatNo.bRtCompl			:= FALSE;
		tyP1027McSetOpCon.tyParam.tyNumStatIdx.bRtCompl			:= FALSE;
		tyP1027McSetOpCon.tyParam.tyNumFuNo.bRtCompl			:= FALSE;
		tyP1027McSetOpCon.tyParam.tyNumWorkPos.bRtCompl			:= FALSE;
		tyP1027McSetOpCon.tyParam.tyNumToolPos.bRtCompl			:= FALSE;
		tyP1027McSetOpCon.tyParam.tyNumProcessNo.bRtCompl		:= FALSE;
		tyP1027McSetOpCon.tyParam.tyStringProcessNm.bRtCompl	:= FALSE;
		tyP1027McSetOpCon.tyParam.tyStringApplication.bRtCompl	:= FALSE;
		tyP1027McSetOpCon.tyParam.tyBtnOpConEn.bRtCompl			:= FALSE;
		tyP1027McSetOpCon.tyParam.tyStringOpConSvrIP.bRtCompl	:= FALSE;
		tyP1027McSetOpCon.tyParam.tyNumOpConSvrPort.bRtCompl	:= FALSE;

	END_IF
	
	IF tyCommon.tySet.tyBtnSave.bRtCompl = TRUE THEN
		
		tyMcParamWr.tyOpConParam.uiLineNo			:=  DINT_TO_UINT (tyP1027McSetOpCon.tyParam.tyNumLineNo.diValue);
		tyMcParamWr.tyOpConParam.uiStatNo			:=  DINT_TO_UINT (tyP1027McSetOpCon.tyParam.tyNumStatNo.diValue);
		tyMcParamWr.tyOpConParam.uiStatIdx			:=  DINT_TO_UINT (tyP1027McSetOpCon.tyParam.tyNumStatIdx.diValue);
		tyMcParamWr.tyOpConParam.uiFuNo				:=  DINT_TO_UINT (tyP1027McSetOpCon.tyParam.tyNumFuNo.diValue);
		tyMcParamWr.tyOpConParam.uiWorkPos			:=  DINT_TO_UINT (tyP1027McSetOpCon.tyParam.tyNumWorkPos.diValue);
		tyMcParamWr.tyOpConParam.uiToolPos			:=  DINT_TO_UINT (tyP1027McSetOpCon.tyParam.tyNumToolPos.diValue);
		tyMcParamWr.tyOpConParam.uiProcessNo		:=  DINT_TO_UINT (tyP1027McSetOpCon.tyParam.tyNumProcessNo.diValue);
		tyMcParamWr.tyOpConParam.sProcessName			:=  tyP1027McSetOpCon.tyParam.tyStringProcessNm.sValue;
		tyMcParamWr.tyOpConParam.sApplication			:=  tyP1027McSetOpCon.tyParam.tyStringApplication.sValue;
		tyMcParamWr.bOpConEn				:=  tyP1027McSetOpCon.tyParam.tyBtnOpConEn.bValue;
		tyMcParamWr.sOpConIPAddr			:=  tyP1027McSetOpCon.tyParam.tyStringOpConSvrIP.sValue;
		tyMcParamWr.uiOpConSvrPort			:=  DINT_TO_UINT (tyP1027McSetOpCon.tyParam.tyNumOpConSvrPort.diValue);

		eMcParamAct	:= McParamActWrite;
		
		IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
			
			eMcParamAct	:= McParamActIdle;
			
			//Update BackUp Param
			tyP1027McSetOpCon.tyParamBkUp	:= tyP1027McSetOpCon.tyParam;
			
			tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));

		ELSIF p_eMcParamStatus = Error THEN
			p_tyC0008MsgBox ACCESS ADR(tyP1027McSetOpCon.tyMsgBoxSaveErr);
			
			IF tyP1027McSetOpCon.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
				tyP1027McSetOpCon.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
				tyP1027McSetOpCon.tyMsgBoxSaveErr.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1027McSetOpCon.tyMsgBoxHide);
				
				//Restore Param
				tyP1027McSetOpCon.tyParam	:= tyP1027McSetOpCon.tyParamBkUp;
				tyMcParamWr						:= p_tyMcParamCurr;
				
				tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			END_IF
			
		END_IF
		
	END_IF
	
END_ACTION
