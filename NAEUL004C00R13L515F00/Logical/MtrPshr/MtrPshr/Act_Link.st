(** 2019-03-29 **)
ACTION Act_Link:
	
	IF tylocalMtrPshr.In.bLinkDISafetyRlySig = FALSE THEN
		tylocalMtrPshr.Out.bExtended	:= FALSE;
		tylocalMtrPshr.Out.bRetracted	:= FALSE;
	END_IF
	
	IF tylocalMtrPshr.In.bManual = TRUE THEN
		tylocalMtrPshr.In.diExtNomSpd ACCESS ADR(g_tyUIMnlMtrPshrExtSpd);
		tylocalMtrPshr.In.diExtTorque ACCESS ADR(g_tyUIMnlMtrPshrExtTorq);
	ELSE
		IF tylocalMtrPshr.In.bNtParamAutoRcpPrep AND NOT(tylocalMtrPshr.In.bMcParamAutoRcpDis) THEN
			tylocalMtrPshr.In.diExtNomSpd ACCESS g_tyProdRcpCurrRcp0MtrPshrExtSpd;
			tylocalMtrPshr.In.diExtTorque ACCESS g_tyProdRcpCurrRcp0MtrPshrExtTorq;
		ELSE
			tylocalMtrPshr.In.diExtNomSpd ACCESS  g_tyProdRcpCurrRcp1MtrPshrExtSpd;
			tylocalMtrPshr.In.diExtTorque ACCESS g_tyProdRcpCurrRcp1MtrPshrExtTorq;
		END_IF
	END_IF
	
	IF tylocalMtrPshr.In.bLinkDISafetyRlySig = TRUE THEN
		tylocalMtrPshr.In.bAlarmSig := tylocalMtrPshr.In.bLinkAlarmSig;
	ELSE
		tylocalMtrPshr.In.bAlarmSig := TRUE;
	END_IF
	
END_ACTION
