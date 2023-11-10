
ACTION Act_OptP0207UpdtDat: 
	
	//Status
	fbMcStatUpdtTm(IN := TRUE);
	IF fbMcStatUpdtTm.Q = TRUE THEN
		fbMcStatUpdtTm(IN := FALSE);
		
		tyP0207OpsMagConv2.tyOps.tyStringMcTopStat.sValue	:= p_sOpsInMagConvStepTxt1;
		tyP0207OpsMagConv2.tyOps.tyStringMcBtmStat.sValue	:= p_sOpsOutMagConvStepTxt1;
	END_IF
	
	//Mode
	tyP0207OpsMagConv2.tyOps.tyTxtMod.usiValueIdx	:= p_tyProdRcpCurrRcp1.usiMcMod;
	
	//Width
	IF p_tyNtParamCurr.bAWPrep = TRUE AND p_tyMcParamCurr.bAWDis = FALSE THEN
		tyP0207OpsMagConv2.tyOps.tyNumWidth.diValue		:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
		tyP0207OpsMagConv2.tyOps.tyNumWidth2.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
	ELSE
		tyP0207OpsMagConv2.tyOps.tyNumWidth.diValue		:= p_tyProdRcpCurrRcp1.diWidthInUM;
		tyP0207OpsMagConv2.tyOps.tyNumWidth2.diValue		:= p_tyProdRcpCurrRcp1.diWidthInUM2;
	END_IF
	
	//Program Info
	tyP0207OpsMagConv2.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp1.sRcpNm;
	tyP0207OpsMagConv2.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp1.diMinSltValue;
	tyP0207OpsMagConv2.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp1.diMaxSltValue;
	tyP0207OpsMagConv2.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp1.bTopToBtm;
	tyP0207OpsMagConv2.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp1.diPitch;
	
	//PCB Status
	IF p_bPshrConvHvBrd = TRUE THEN
		IF p_bPshrConvGdBrd = TRUE THEN
			tyP0207OpsMagConv2.tyOps.tyBitmapPCB.usiValueIdx	:= 1;
		ELSE
			tyP0207OpsMagConv2.tyOps.tyBitmapPCB.usiValueIdx	:= 2;
		END_IF
	ELSE
		tyP0207OpsMagConv2.tyOps.tyBitmapPCB.usiValueIdx	:= 0;
	END_IF
	
	//AIV TCP Bitmap
	IF p_tyNtParamCurr.bProjAGVPrep THEN 
		tyP0207OpsMagConv2.tyOps.tyBtnAIVWifi.usiBitmapIdx := BOOL_TO_USINT (p_bTCPConnected);
	END_IF
	//Product Recipe 254
	tyP0207OpsMagConv2.tyOps.tyHotspotShowLRcp.uiRtStat.0 := NOT(tyP0207OpsMagConv2.tyOps.tyStringProdNm.sValue <> '');
	
	IF tyP0207OpsMagConv2.tyOps.tyHotspotShowLRcp.bRtCompl = TRUE THEN
		tyP0207OpsMagConv2.tyOps.tyHotspotShowLRcp.bRtCompl := FALSE;
		
		fUIInRtStatOff(ADR(tyP0207OpsMagConv2.tyRcpPopUp.tyLyr.uiRtStat));
		
		tyP0207OpsMagConv2.tyRcpPopUp.tyStringInfo.sValue  := p_tyProdRcpCurrRcp1.sRcpNm;
		
	ELSIF tyP0207OpsMagConv2.tyRcpPopUp.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0207OpsMagConv2.tyRcpPopUp.tyHotspotClose.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0207OpsMagConv2.tyRcpPopUp.tyLyr.uiRtStat));
	END_IF
	
END_ACTION
