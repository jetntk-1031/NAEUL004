(** 2019-07-15 **)
ACTION Act_Link:
	
	//Check Limit
	IF p_bLCSMngRcpChkLmt OR p_bLCSLFChkLmt THEN
		
		IF tyTagNm.tyProdRcpInfo.sRcpNm = '' THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Recipe Name Empty ';
			
		ELSIF tyTagNm.tyProdRcpInfo.diWidthInUM < p_tyNtParamCurr.tyProdRcpWidth.diMin THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Width Lower Limit ';
			
		ELSIF tyTagNm.tyProdRcpInfo.diWidthInUM > p_tyNtParamCurr.tyProdRcpWidth.diMax THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Width Upper Limit ';
			
		ELSIF NOT p_bLinkNtParamProjLaneBPrep AND (tyTagNm.tyProdRcpInfo.usiMcMod < DINT_TO_USINT(p_tyNtParamCurr.tyProdRcpMcModA.diMin)) THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Machine Mode Lower Limit ';
			
		ELSIF NOT p_bLinkNtParamProjLaneBPrep AND (tyTagNm.tyProdRcpInfo.usiMcMod > DINT_TO_USINT(p_tyNtParamCurr.tyProdRcpMcModA.diMax)) THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Machine Mode Upper Limit ';
			
		ELSIF p_bLinkNtParamProjLaneBPrep AND (tyTagNm.tyProdRcpInfo.usiMcMod < DINT_TO_USINT(p_tyNtParamCurr.tyProdRcpMcModAB.diMin)) THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Machine Mode Lower Limit ';
			
		ELSIF p_bLinkNtParamProjLaneBPrep AND (tyTagNm.tyProdRcpInfo.usiMcMod > DINT_TO_USINT(p_tyNtParamCurr.tyProdRcpMcModAB.diMax)) THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Machine Mode Upper Limit ';
			
		ELSIF tyTagNm.tyProdRcpInfo.diMaxSltValue < tyTagNm.tyProdRcpInfo.diMinSltValue THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Max Slot Lower Limit ';
			
		ELSIF tyTagNm.tyProdRcpInfo.diMaxSltValue > p_tyLinkMcParamMagParamSelected.diTtlSlt THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Max Slot Upper Limit ';
			
		ELSIF tyTagNm.tyProdRcpInfo.diMinSltValue < p_tyNtParamCurr.diProjMagMinSlt THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Min Slot Lower Limit ';
			
		ELSIF tyTagNm.tyProdRcpInfo.diMinSltValue > tyTagNm.tyProdRcpInfo.diMaxSltValue THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Min Slot Upper Limit ';
			
		ELSIF tyTagNm.tyProdRcpInfo.diPitch < p_tyNtParamCurr.tyProdRcpPitch.diMin THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Pitch Lower Limit ';
			
		ELSIF tyTagNm.tyProdRcpInfo.diPitch > (tyTagNm.tyProdRcpInfo.diMaxSltValue - tyTagNm.tyProdRcpInfo.diMinSltValue + 1) THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Pitch Upper Limit ';
			
		ELSIF tyTagNm.tyProdRcpInfo.diMinReqFreeBffr < p_tyNtParamCurr.tyProdRcpOvenMinReqFreeBffr.diMin THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Minimum Required Free Buffer Lower Limit ';
			
		ELSIF tyTagNm.tyProdRcpInfo.diMinReqFreeBffr > p_tyNtParamCurr.tyProdRcpOvenMinReqFreeBffr.diMax THEN
		
			bChkLmtOK	:= FALSE;
			bChkLmtNG	:= TRUE;
			sAddMsg		:= 'Minimum Required Free Buffer Upper Limit ';
		
		ELSE
			
			bChkLmtOK	:= TRUE;
			bChkLmtNG	:= FALSE;
			sAddMsg		:= '';
		
		END_IF
		
	ELSE
		
		bChkLmtOK	:= FALSE;
		bChkLmtNG	:= FALSE;
	
	END_IF
	
	IF p_bLCSMngMagRcpChkLmt THEN
		IF tyTagNm.tyMagRcpInfo.sRcpNm = '' THEN
		
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Magazine Recipe Name Empty ';
		ELSIF tyTagNm.tyMagRcpInfo.diMag1Slt1PosInUM < p_tyNtParamCurr.tyUILifterTargetPos.diMin OR 
			tyTagNm.tyMagRcpInfo.diMag2Slt1PosInUM < p_tyNtParamCurr.tyUILifterTargetPos.diMin OR 
			tyTagNm.tyMagRcpInfo.diMag3Slt1PosInUM < p_tyNtParamCurr.tyUILifterTargetPos.diMin
			THEN
			
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Magazine Slot 1 Lower Limit ';
			
		ELSIF tyTagNm.tyMagRcpInfo.diMag1Slt1PosInUM > p_tyNtParamCurr.tyUILifterTargetPos.diMax OR 
			tyTagNm.tyMagRcpInfo.diMag2Slt1PosInUM > p_tyNtParamCurr.tyUILifterTargetPos.diMax OR 
			tyTagNm.tyMagRcpInfo.diMag3Slt1PosInUM > p_tyNtParamCurr.tyUILifterTargetPos.diMax
			THEN
			
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Magazine Slot 1 Upper Limit ';
			
		ELSIF tyTagNm.tyMagRcpInfo.diSltToSltInUM < p_tyNtParamCurr.tyUISltToSltDist.diMin THEN
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Slot to Slot Lower Limit ';
			
		ELSIF tyTagNm.tyMagRcpInfo.diSltToSltInUM > p_tyNtParamCurr.tyUISltToSltDist.diMax THEN
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Slot to Slot Upper Limit ';
		
		
		ELSIF tyTagNm.tyMagRcpInfo.diTtlSlt < p_tyNtParamCurr.diProjMagMinSlt THEN
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Total Slot Lower Limit ';
			
		ELSIF tyTagNm.tyMagRcpInfo.diTtlSlt > p_tyNtParamCurr.diProjMagMaxSlt THEN
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Total Slot Upper Limit ';
		ELSIF tyTagNm.tyMagRcpInfo.usiMagModel < 0 THEN	
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Magazine Model Lower Limit ';
		ELSIF tyTagNm.tyMagRcpInfo.usiMagModel > 2 THEN
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Magazine Model Upper Limit ';
		ELSIF tyTagNm.tyMagRcpInfo.diMagMaxBrdWidth < p_tyNtParamCurr.tyProdRcpWidth.diMin THEN
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Maximum Board Width Upper Limit ';
		ELSIF tyTagNm.tyMagRcpInfo.diMagMaxBrdWidth > p_tyNtParamCurr.tyProdRcpWidth.diMax THEN
			bChkMagLmtOk	:= FALSE;
			bChkMagLmtNG	:= TRUE;
			sAddMsg		:= 'Maximum Board Width Upper Limit ';
		ELSE
			
			bChkMagLmtOk	:= TRUE;
			bChkMagLmtNG	:= FALSE;
			sAddMsg		:= '';
		
		END_IF
	ELSE
		
		bChkMagLmtOk	:= FALSE;
		bChkMagLmtNG	:= FALSE;
	END_IF 
		
	//Update LCS Enable
	tyTagNm.bMngRcpEn		:= p_bLinkNtParamLCSManageRcpPrep AND p_bLinkMcParamLCSManageRcpEn;
	tyTagNm.bLFEn			:= p_bLinkNtParamLCSLFPrep AND p_bLinkMcParamLCSLFEn;
	tyTagNm.bLiveData		:= p_bLinkNtParamLCSLiveDatPrep AND p_bLinkMcParamLCSLiveDatEn;
	
	//tyTagNm.usiBrdStatus = 0 (Machine Empty)
	//tyTagNm.usiBrdStatus = 1 (Machine Not Empty)
	IF p_eLinkNtParamProjMag = ULMagDual THEN
		tyTagNm.usiBrdStatus	:= BOOL_TO_USINT(NOT(p_bLinkPshrConvHvBrd = FALSE AND p_bLinkBffr1MagRemoved = TRUE AND p_bLinkBffr2MagRemoved = TRUE));
	ELSIF p_eLinkNtParamProjMag = ULMagTriple THEN
		tyTagNm.usiBrdStatus	:= BOOL_TO_USINT(NOT(p_bLinkPshrConvHvBrd = FALSE AND p_bLinkBffr1MagRemoved = TRUE AND p_bLinkBffr2MagRemoved = TRUE AND p_bLinkBffr3MagRemoved = TRUE));
	END_IF
	
	//Action
	IF tyTagNm.eAct = LCSActRunProd THEN
		
		bLFRun		:= TRUE;
		bMngRcpRun	:= FALSE;
		
	ELSIF (tyTagNm.eAct = LCSActAddProd)
		OR (tyTagNm.eAct = LCSActAddMultiProd)
		OR (tyTagNm.eAct = LCSActEditProd)
		OR (tyTagNm.eAct = LCSActEditMultiProd)
		OR (tyTagNm.eAct = LCSActOverWriteProd)
		OR (tyTagNm.eAct = LCSActOverWriteMultiProd)
		OR (tyTagNm.eAct = LCSActDelProd)
		OR (tyTagNm.eAct = LCSActDelMultiProd)
		OR (tyTagNm.eAct = LCSActUploadProd)
		OR (tyTagNm.eAct = LCSActUploadMultiProd) 
		OR (tyTagNm.eAct = LCSActOverWriteMag) 
		OR (tyTagNm.eAct = LCSActDelMag) 
		OR (tyTagNm.eAct = LCSActUploadMag) 
		THEN
		
		bLFRun		:= FALSE;
		bMngRcpRun	:= TRUE;
		
	ELSIF tyTagNm.eAct = LCSActIdle THEN
		
		bLFRun		:= FALSE;
		bMngRcpRun	:= FALSE;
		
	END_IF
	
	IF bLFRun = TRUE THEN
		eLCSLF_LCSAct			:= tyTagNm.eAct;
		tyLCSLF_LCSProdRcpInfo	:= tyTagNm.tyProdRcpInfo;
		
		tyLCSLF_LCSProdRcpInfo.bTopToBtm	:= INT_TO_BOOL(tyTagNm.iTopToBtm);
		
		sLastModifiedTemp	:= CONCAT('DT#' , tyTagNm.sLastModified);
		tyLCSLF_LCSProdRcpInfo.dtLastModified	:= STRING_TO_DT(sLastModifiedTemp);
		
		tyTagNm.eStat		:= p_eLCSLF_PLCStat;
		tyTagNm.udiStatus	:= p_udiLCSLF_PLCStatus;
		
		IF tyTagNm.udiStatus > 0 AND tyTagNm.udiStatus < 65534 THEN
			tyTagNm.sErrMsg	:= a_tyAlmText[tyTagNm.udiStatus].sAlmText;
			
			IF tyTagNm.udiStatus = 10010 OR tyTagNm.udiStatus = 10011 THEN
				tyTagNm.sErrMsg	:= CONCAT(sAddMsg , tyTagNm.sErrMsg);
			END_IF
		END_IF
		
	ELSIF bMngRcpRun = TRUE THEN
		eLCSMngRcp_LCSAct	:= tyTagNm.eAct;
		IF tyTagNm.tyProdRcpInfo.diBrdPerSlt <1 THEN
			tyTagNm.tyProdRcpInfo.diBrdPerSlt := 1;
		END_IF
		tyTagNm.eStat		:= p_eLCSMngRcp_PLCStat;
		tyTagNm.udiStatus	:= p_udiLCSMngRcp_PLCStatus;
		
		IF tyTagNm.udiStatus > 0 AND tyTagNm.udiStatus < 65534 THEN
			tyTagNm.sErrMsg	:= a_tyAlmText[tyTagNm.udiStatus].sAlmText;
			
			IF tyTagNm.udiStatus = 10010 OR tyTagNm.udiStatus = 10011 THEN
				tyTagNm.sErrMsg	:= CONCAT(sAddMsg , tyTagNm.sErrMsg);
			END_IF
		END_IF
		
		IF tyTagNm.eAct = LCSActUploadProd THEN
			IF tyTagNm.udiStatus = 0 THEN
				tyTagNm.tyProdRcpInfo	:= p_tyLCSMngRcp_PLCProdRcpInfo;
				
				tyTagNm.iTopToBtm	:= BOOL_TO_INT(tyLCSMngRcp_LCSProdRcpInfo.bTopToBtm);
		
				tyTagNm.sLastModified	:= DT_TO_STRING(tyLCSMngRcp_LCSProdRcpInfo.dtLastModified);
				tyTagNm.sLastModified	:= RIGHT(tyTagNm.sLastModified , (LEN(tyTagNm.sLastModified) - 3));
		
			ELSE
				tyLCSMngRcp_LCSProdRcpInfo	:= tyTagNm.tyProdRcpInfo;
				
				tyLCSMngRcp_LCSProdRcpInfo.bTopToBtm	:= INT_TO_BOOL(tyTagNm.iTopToBtm);
				tyLCSMngRcp_LCSProdRcpInfo.diWidthInUM2 := tyTagNm.tyProdRcpInfo.diWidthInUM;	

				sLastModifiedTemp	:= CONCAT('DT#' , tyTagNm.sLastModified);
				tyLCSMngRcp_LCSProdRcpInfo.dtLastModified	:= STRING_TO_DT(sLastModifiedTemp);
		
			END_IF
			
		ELSIF tyTagNm.eAct = LCSActUploadMultiProd THEN
			iLCSMngRcp_LCSIdxStat	:= tyTagNm.iIdxAct;
			
			tyTagNm.iIdxStat		:= p_iLCSMngRcp_PLCIdxAct;
		
			tyTagNm.tyProdRcpInfo	:= p_tyLCSMngRcp_PLCProdRcpInfo;
		
			tyTagNm.iTopToBtm	:= BOOL_TO_INT(tyLCSMngRcp_LCSProdRcpInfo.bTopToBtm);
		
			tyTagNm.sLastModified	:= DT_TO_STRING(tyLCSMngRcp_LCSProdRcpInfo.dtLastModified);
			tyTagNm.sLastModified	:= RIGHT(tyTagNm.sLastModified , (LEN(tyTagNm.sLastModified) - 3));
		ELSIF tyTagNm.eAct = LCSActUploadMag THEN
			IF tyTagNm.udiStatus = 0 THEN
				tyTagNm.tyMagRcpInfo	:= p_tyLCSMngRcp_PLCMagRcpInfo;
				
				tyTagNm.iTopToBtm	:= BOOL_TO_INT(tyLCSMngRcp_LCSProdRcpInfo.bTopToBtm);
		
				tyTagNm.sLastModified	:= DT_TO_STRING(tyLCSMngRcp_LCSProdRcpInfo.dtLastModified);
				tyTagNm.sLastModified	:= RIGHT(tyTagNm.sLastModified , (LEN(tyTagNm.sLastModified) - 3));
		
			ELSE
				tyLCSMngRcp_LCSMagRcpInfo	:= tyTagNm.tyMagRcpInfo;

				sLastModifiedTemp	:= CONCAT('DT#' , tyTagNm.sLastModified);
				tyLCSMngRcp_LCSMagRcpInfo.dtLastModified	:= STRING_TO_DT(sLastModifiedTemp);
		
			END_IF
		ELSE
			iLCSMngRcp_LCSIdxAct		:= tyTagNm.iIdxAct;
			tyLCSMngRcp_LCSProdRcpInfo	:= tyTagNm.tyProdRcpInfo;
			tyLCSMngRcp_LCSMagRcpInfo   := tyTagNm.tyMagRcpInfo;
			
			tyLCSMngRcp_LCSProdRcpInfo.bTopToBtm	:= INT_TO_BOOL(tyTagNm.iTopToBtm);
			tyLCSMngRcp_LCSProdRcpInfo.diWidthInUM2 := tyTagNm.tyProdRcpInfo.diWidthInUM;
			
			sLastModifiedTemp	:= CONCAT('DT#' , tyTagNm.sLastModified);
			tyLCSMngRcp_LCSProdRcpInfo.dtLastModified	:= STRING_TO_DT(sLastModifiedTemp);
		
			tyTagNm.iIdxStat	:= p_iLCSMngRcp_PLCIdxStat;
			
		END_IF
		
	ELSE
		
		eLCSLF_LCSAct		:= LCSActIdle;
		eLCSMngRcp_LCSAct	:= LCSActIdle;
		tyTagNm.eStat		:= LCSActIdle;
		tyTagNm.udiStatus	:= 65534;
		tyTagNm.sErrMsg		:= '';
		
	END_IF
	
END_ACTION
