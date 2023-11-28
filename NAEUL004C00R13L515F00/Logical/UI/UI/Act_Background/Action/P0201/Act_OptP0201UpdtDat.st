
ACTION Act_OptP0201UpdtDat: 
	
	//Status
	fbMcStatUpdtTm(IN := TRUE);
	IF fbMcStatUpdtTm.Q = TRUE THEN
		fbMcStatUpdtTm(IN := FALSE);
		
		tyP0201OpsTravLifter.tyOps.tyStringMcStat.sValue	:= p_sOpsTravLifULStepTxt;
	END_IF
	

	
	
	//Width
	IF p_tyNtParamCurr.bAWPrep = TRUE AND p_tyMcParamCurr.bAWDis = FALSE THEN
		tyP0201OpsTravLifter.tyOps.tyNumWidth.diValue		:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
		tyP0201OpsTravLifter.tyOps.tyNumWidth2.diValue		:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
	ELSE
		tyP0201OpsTravLifter.tyOps.tyNumWidth.diValue		:= p_tyProdRcpCurrRcp1.diWidthInUM;
		tyP0201OpsTravLifter.tyOps.tyNumWidth2.diValue		:= p_tyProdRcpCurrRcp1.diWidthInUM2;
	END_IF
	
	//Program Info
	tyP0201OpsTravLifter.tyOps.tyNumMtrPshrExtSpd.diValue	:= p_tyProdRcpCurrRcp1.diMtrPshrExtSpd;
	tyP0201OpsTravLifter.tyOps.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpCurrRcp1.diMtrPshrExtTorq;
	tyP0201OpsTravLifter.tyOps.tyNumPshrOffset.diValue		:= p_tyProdRcpCurrRcp1.diPshrOffset;
	IF p_bMcParamAutoRcpDisable OR p_tyNtParamCurr.eAutoRcpPrecededBy =  PrecededByF1 THEN
		tyP0201OpsTravLifter.tyOps.tyTxtMod.usiValueIdx			:= p_tyProdRcpCurrRcp1.usiMcMod;
		tyP0201OpsTravLifter.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp1.sRcpNm;
		tyP0201OpsTravLifter.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp1.bTopToBtm;
		tyP0201OpsTravLifter.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp1.diMinSltValue;
		tyP0201OpsTravLifter.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp1.diMaxSltValue;
		tyP0201OpsTravLifter.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp1.diPitch;
	ELSE  //FALSE AutoRcp Mode and eAutoRcpPrecededBy = self
		tyP0201OpsTravLifter.tyOps.tyStringProdNm.sValue		:= pa_tyAutoRcpBrdProps[1].sProductTypeId;
		tyP0201OpsTravLifter.tyOps.tyTxtMod.usiValueIdx			:= p_tyProdRcpCurrRcp0.usiMcMod;
		tyP0201OpsTravLifter.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp0.bTopToBtm;
		tyP0201OpsTravLifter.tyOps.tyNumMtrPshrExtSpd.diValue	:= p_tyProdRcpCurrRcp0.diMtrPshrExtSpd;
		tyP0201OpsTravLifter.tyOps.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpCurrRcp0.diMtrPshrExtTorq;
		tyP0201OpsTravLifter.tyOps.tyNumPshrOffset.diValue		:= p_tyProdRcpCurrRcp0.diPshrOffset;
	END_IF

	
	//PCB Status
	IF p_bPshrConvHvBrd = TRUE THEN
		IF p_bPshrConvGdBrd = TRUE THEN
			tyP0201OpsTravLifter.tyOps.tyBitmapPCB.usiValueIdx	:= 1;
		ELSE
			tyP0201OpsTravLifter.tyOps.tyBitmapPCB.usiValueIdx	:= 2;
		END_IF
	ELSE
		tyP0201OpsTravLifter.tyOps.tyBitmapPCB.usiValueIdx	:= 0;
	END_IF
	
	//Product Recipe 254
	tyP0201OpsTravLifter.tyOps.tyHotspotShowLRcp.uiRtStat.0 := NOT(tyP0201OpsTravLifter.tyOps.tyStringProdNm.sValue <> '');
	
	IF tyP0201OpsTravLifter.tyOps.tyHotspotShowLRcp.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyOps.tyHotspotShowLRcp.bRtCompl := FALSE;
		
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyRcpPopUp.tyLyr.uiRtStat));
		
		tyP0201OpsTravLifter.tyRcpPopUp.tyStringInfo.sValue  := p_tyProdRcpCurrRcp1.sRcpNm;
		
	ELSIF tyP0201OpsTravLifter.tyRcpPopUp.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyRcpPopUp.tyHotspotClose.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyRcpPopUp.tyLyr.uiRtStat));
	END_IF
	
END_ACTION
