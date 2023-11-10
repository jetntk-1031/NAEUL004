
ACTION Act_Main_P1027:

	tyP1027McSetOpCon.tyParam.tyNumLineNo.diValue			:= UINT_TO_DINT(p_tyMcParamCurr.tyOpConParam.uiLineNo);
	tyP1027McSetOpCon.tyParam.tyNumStatNo.diValue			:= UINT_TO_DINT(p_tyMcParamCurr.tyOpConParam.uiStatNo);
	tyP1027McSetOpCon.tyParam.tyNumStatIdx.diValue			:= UINT_TO_DINT(p_tyMcParamCurr.tyOpConParam.uiStatIdx);
	tyP1027McSetOpCon.tyParam.tyNumFuNo.diValue				:= UINT_TO_DINT(p_tyMcParamCurr.tyOpConParam.uiFuNo);
	tyP1027McSetOpCon.tyParam.tyNumWorkPos.diValue			:= UINT_TO_DINT(p_tyMcParamCurr.tyOpConParam.uiWorkPos);
	tyP1027McSetOpCon.tyParam.tyNumToolPos.diValue			:= UINT_TO_DINT(p_tyMcParamCurr.tyOpConParam.uiToolPos);
	tyP1027McSetOpCon.tyParam.tyNumProcessNo.diValue		:= UINT_TO_DINT(p_tyMcParamCurr.tyOpConParam.uiProcessNo);
	tyP1027McSetOpCon.tyParam.tyStringProcessNm.sValue		:= p_tyMcParamCurr.tyOpConParam.sProcessName;
	tyP1027McSetOpCon.tyParam.tyStringApplication.sValue	:= p_tyMcParamCurr.tyOpConParam.sApplication;
	tyP1027McSetOpCon.tyParam.tyBtnOpConEn.bValue			:= p_tyMcParamCurr.bOpConEn;
	tyP1027McSetOpCon.tyParam.tyStringOpConSvrIP.sValue		:= p_tyMcParamCurr.sOpConIPAddr;
	tyP1027McSetOpCon.tyParam.tyNumOpConSvrPort.diValue		:= UINT_TO_DINT (p_tyMcParamCurr.uiOpConSvrPort);
END_ACTION
