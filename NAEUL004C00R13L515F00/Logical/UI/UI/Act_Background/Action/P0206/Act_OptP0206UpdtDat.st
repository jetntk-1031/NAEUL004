
ACTION Act_OptP0206UpdtDat: 
	
	//Status
	fbMcStatUpdtTm(IN := TRUE);
	IF fbMcStatUpdtTm.Q = TRUE THEN
		fbMcStatUpdtTm(IN := FALSE);
		
		tyP0206OpsMagConv1.tyOps.tyStringMcTopStat.sValue	:= p_sOpsInMagConvStepTxt;
		tyP0206OpsMagConv1.tyOps.tyStringMcBtmStat.sValue	:= p_sOpsOutMagConvStepTxt;
	END_IF
	
	//Mode
	tyP0206OpsMagConv1.tyOps.tyTxtMod.usiValueIdx	:= p_tyProdRcpCurrRcp1.usiMcMod;
	
	//Width
	IF p_tyNtParamCurr.bAWPrep = TRUE AND p_tyMcParamCurr.bAWDis = FALSE THEN
		tyP0206OpsMagConv1.tyOps.tyNumWidth.diValue		:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
		tyP0206OpsMagConv1.tyOps.tyNumWidth2.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
	ELSE
		tyP0206OpsMagConv1.tyOps.tyNumWidth.diValue		:= p_tyProdRcpCurrRcp1.diWidthInUM;
		tyP0206OpsMagConv1.tyOps.tyNumWidth2.diValue		:= p_tyProdRcpCurrRcp1.diWidthInUM2;
	END_IF
	
	//Program Info
	tyP0206OpsMagConv1.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp1.sRcpNm;
	tyP0206OpsMagConv1.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp1.diMinSltValue;
	tyP0206OpsMagConv1.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp1.diMaxSltValue;
	tyP0206OpsMagConv1.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp1.bTopToBtm;
	tyP0206OpsMagConv1.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp1.diPitch;
	
	//PCB Status
	IF p_bPshrConvHvBrd = TRUE THEN
		IF p_bPshrConvGdBrd = TRUE THEN
			tyP0206OpsMagConv1.tyOps.tyBitmapPCB.usiValueIdx	:= 1;
		ELSE
			tyP0206OpsMagConv1.tyOps.tyBitmapPCB.usiValueIdx	:= 2;
		END_IF
	ELSE
		tyP0206OpsMagConv1.tyOps.tyBitmapPCB.usiValueIdx	:= 0;
	END_IF
	
	//AIV TCP Bitmap
	IF p_tyNtParamCurr.bProjAGVPrep THEN 
		tyP0206OpsMagConv1.tyOps.tyBtnAIVWifi.usiBitmapIdx := BOOL_TO_USINT (p_bTCPConnected);
	END_IF 
	
	//Product Recipe 254
	tyP0206OpsMagConv1.tyOps.tyHotspotShowLRcp.uiRtStat.0 := NOT(tyP0206OpsMagConv1.tyOps.tyStringProdNm.sValue <> '');
	
	IF tyP0206OpsMagConv1.tyOps.tyHotspotShowLRcp.bRtCompl = TRUE THEN
		tyP0206OpsMagConv1.tyOps.tyHotspotShowLRcp.bRtCompl := FALSE;
		
		fUIInRtStatOff(ADR(tyP0206OpsMagConv1.tyRcpPopUp.tyLyr.uiRtStat));
		
		tyP0206OpsMagConv1.tyRcpPopUp.tyStringInfo.sValue  := p_tyProdRcpCurrRcp1.sRcpNm;
		
	ELSIF tyP0206OpsMagConv1.tyRcpPopUp.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0206OpsMagConv1.tyRcpPopUp.tyHotspotClose.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0206OpsMagConv1.tyRcpPopUp.tyLyr.uiRtStat));
	END_IF
	
END_ACTION
