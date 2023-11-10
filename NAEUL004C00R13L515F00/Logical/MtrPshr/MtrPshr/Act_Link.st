(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bLinkDISafetyRlySig = FALSE THEN
		bExtended	:= FALSE;
		bRetracted	:= FALSE;
	END_IF
	
	IF p_bManual = TRUE THEN
		p_diExtNomSpd ACCESS p_UIMnlMtrPshrExtSpd;
		p_diExtTorque ACCESS p_UIMnlMtrPshrExtTorq;
	ELSE
		IF p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis) THEN
			p_diExtNomSpd ACCESS p_ProdRcpCurrRcp0MtrPshrExtSpd;
			p_diExtTorque ACCESS p_ProdRcpCurrRcp0MtrPshrExtTorq;
		ELSE
			p_diExtNomSpd ACCESS p_ProdRcpCurrRcp1MtrPshrExtSpd;
			p_diExtTorque ACCESS p_ProdRcpCurrRcp1MtrPshrExtTorq;
		END_IF
	END_IF
	
	IF p_bLinkDISafetyRlySig = TRUE THEN
		p_bAlarmSig := p_bLinkAlarmSig;
	ELSE
		p_bAlarmSig := TRUE;
	END_IF
	
END_ACTION
