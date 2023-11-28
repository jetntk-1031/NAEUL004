(** 2019-03-29 **)
ACTION Act_Link:
	IF p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis) AND NOT(p_bNtParamAutoRcpF1ArbitraryType) THEN
		p_diMinSlt ACCESS p_diAutoRcpMag3MinSlt;
		p_diMaxSlt ACCESS p_diAutoRcpMag3MaxSlt;
		p_diPitch ACCESS p_diAutoRcpMag3Pitch;		
	ELSE 
		p_diMinSlt ACCESS p_ProdRcpCurrRcp2MinSltValue;
		p_diMaxSlt ACCESS p_ProdRcpCurrRcp2MaxSltValue;
		p_diPitch ACCESS p_ProdRcpCurrRcp2Pitch;
	END_IF
	IF p_bLinkProjLifterMagPlatform THEN
		p_diSltToSltInUM ACCESS p_MagRcpCurrRcpSltToSlt;
	ELSE
		p_diSltToSltInUM	:= p_diLinkSltToSltDist * -1;
	END_IF
	
	p_bAscending	:= NOT p_bLinkMcParamProdSelTopToBtm;
	
	IF p_bLinkOpsTravLifULExitBrd THEN
		p_bMagPresentSensor := p_bLinkPresentSen1; //present sensor only
	ELSE
		p_bMagPresentSensor := p_bLinkPresentSen1 OR p_bLinkPresentSen2;
	END_IF
	
	//For MES Call Full
	IF p_tyResponseFromMES.bTrigMagFull AND p_bOpsMagConvULRlsMagAllw 
		AND NOT(tyBufferStat.bBffrFull)  AND p_eNtParamCustomerReq = Siemens THEN 
		bMESTrigSetFull	:= TRUE;
	END_IF
	IF bMESTrigSetFull THEN
		eAct	:= BufferActSetFull;
		IF eStat = BufferActSetFull AND eStatus = Done THEN
			eAct	:= BufferActIdle;
			bMESTrigSetFull := FALSE;
		END_IF
	END_IF
END_ACTION
