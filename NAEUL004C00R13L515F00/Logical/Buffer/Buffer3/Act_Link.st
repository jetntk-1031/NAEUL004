(** 2019-03-29 **)
ACTION Act_Link:
	IF g_tyNtParamCurr.bAutoRcpPrep AND NOT(g_tyMcParamCurr.bAutoRcpDisable) THEN
		tylocalBuffer.In.diMinSlt ACCESS g_tyAutoRcpMag3.diMinSlt;
		tylocalBuffer.In.diMaxSlt ACCESS g_tyAutoRcpMag3.diMaxSlt;
		tylocalBuffer.In.diPitch ACCESS g_tyAutoRcpMag3.diPitch;		
	ELSE 
		tylocalBuffer.In.diMinSlt ACCESS p_ProdRcpCurrRcp2MinSltValue;
		tylocalBuffer.In.diMaxSlt ACCESS p_ProdRcpCurrRcp2MaxSltValue;
		tylocalBuffer.In.diPitch ACCESS p_ProdRcpCurrRcp2Pitch;
	END_IF
	IF g_tyNtParamCurr.bProjLifterMagPlatform THEN
		tylocalBuffer.In.diSltToSltInUM ACCESS p_MagRcpCurrRcpSltToSlt;
	ELSE
		tylocalBuffer.In.diSltToSltInUM	:= tylocalBuffer.In.diLinkSltToSltDist * -1;
	END_IF
	
	tylocalBuffer.In.bAscending	:= NOT tylocalBuffer.In.bLinkMcParamProdSelTopToBtm;
	
	IF tylocalBuffer.In.bLinkOpsTravLifULExitBrd THEN
		tylocalBuffer.In.bMagPresentSensor := tylocalBuffer.In.bLinkPresentSen1; //present sensor only
	ELSE
		tylocalBuffer.In.bMagPresentSensor := tylocalBuffer.In.bLinkPresentSen1 OR tylocalBuffer.In.bLinkPresentSen2;
	END_IF
	
	//For MES Call Full
	IF tylocalBuffer.In.tyResponseFromMES.bTrigMagFull AND tylocalBuffer.In.bOpsMagConvULRlsMagAllw 
		AND NOT(tylocalBuffer.Out.tyBufferStat.bBffrFull)  AND tylocalBuffer.In.eNtParamCustomerReq = Siemens THEN 
		bMESTrigSetFull	:= TRUE;
	END_IF
	IF bMESTrigSetFull THEN
		tylocalBuffer.In.eAct	:= BufferActSetFull;
		IF tylocalBuffer.Out.eStat = BufferActSetFull AND tylocalBuffer.Out.eStatus = Done THEN
			tylocalBuffer.In.eAct	:= BufferActIdle;
			bMESTrigSetFull := FALSE;
		END_IF
	END_IF
END_ACTION
