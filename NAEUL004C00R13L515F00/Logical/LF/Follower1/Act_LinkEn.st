(** 2019-04-26 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	p_bDis	:= (p_bLinkStartupRun = TRUE);
	IF p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis) THEN 
		CASE p_eNtParamAutoRcpPrecededBy OF 
			PrecededBySelf:
				p_bPrep := FALSE;
			PrecededByF1:
				p_bPrep := TRUE;
		END_CASE
	ELSE
		p_bPrep := TRUE;
	END_IF
END_ACTION
