
ACTION Act_OptP1025Save:
	
	IF tyP1025McSetScan.tyScan.tyStringTopScanSvrIP.bRtCompl OR tyP1025McSetScan.tyScan.tyNumTopScanSvrPort.bRtCompl
		OR tyP1025McSetScan.tyScan.tyStringTopScanSvrIP.bRtCompl OR tyP1025McSetScan.tyScan.tyNumBtmScanSvrPort.bRtCompl
		OR tyP1025McSetScan.tyScan.tyBtnTopScanEn.bRtCompl OR tyP1025McSetScan.tyScan.tyBtnBtmScanEn.bRtCompl THEN
		
		fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		tyP1025McSetScan.tyScan.tyStringTopScanSvrIP.bRtCompl			:= FALSE;
		tyP1025McSetScan.tyScan.tyNumTopScanSvrPort.bRtCompl			:= FALSE;
		tyP1025McSetScan.tyScan.tyStringTopScanSvrIP.bRtCompl			:= FALSE;
		tyP1025McSetScan.tyScan.tyNumBtmScanSvrPort.bRtCompl			:= FALSE;
		tyP1025McSetScan.tyScan.tyBtnTopScanEn.bRtCompl					:= FALSE;
		tyP1025McSetScan.tyScan.tyBtnBtmScanEn.bRtCompl					:= FALSE;

	END_IF
	
	IF tyCommon.tySet.tyBtnSave.bRtCompl = TRUE THEN
		
		tyMcParamWr.sTopScanIPAddr			:=  tyP1025McSetScan.tyScan.tyStringTopScanSvrIP.sValue;
		tyMcParamWr.uiTopScanSvrPort		:=  DINT_TO_UINT (tyP1025McSetScan.tyScan.tyNumTopScanSvrPort.diValue);
		tyMcParamWr.sBtmScanIPAddr			:=	tyP1025McSetScan.tyScan.tyStringBtmScanSvrIP.sValue;
		tyMcParamWr.uiBtmScanSvrPort		:=  DINT_TO_UINT (tyP1025McSetScan.tyScan.tyNumBtmScanSvrPort.diValue);
		tyMcParamWr.bTopScannerEn			:=  tyP1025McSetScan.tyScan.tyBtnTopScanEn.bValue;
		tyMcParamWr.bBtmScannerEn			:=  tyP1025McSetScan.tyScan.tyBtnBtmScanEn.bValue;

		eMcParamAct	:= McParamActWrite;
		
		IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
			
			eMcParamAct	:= McParamActIdle;
			
			//Update BackUp Param
			tyP1025McSetScan.tyScanBkUp	:= tyP1025McSetScan.tyScan;
			
			tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));

		ELSIF p_eMcParamStatus = Error THEN
			p_tyC0008MsgBox ACCESS ADR(tyP1025McSetScan.tyMsgBoxSaveErr);
			
			IF tyP1025McSetScan.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
				tyP1025McSetScan.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
				tyP1025McSetScan.tyMsgBoxSaveErr.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1025McSetScan.tyMsgBoxHide);
				
				//Restore Param
				tyP1025McSetScan.tyScan	:= tyP1025McSetScan.tyScanBkUp;
				tyMcParamWr						:= p_tyMcParamCurr;
				
				tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			END_IF
			
		END_IF
		
	END_IF
	
END_ACTION
