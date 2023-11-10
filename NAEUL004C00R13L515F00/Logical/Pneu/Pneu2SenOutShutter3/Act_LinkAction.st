(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		IF p_bNtParamProjLifter2Prep = FALSE  THEN
			IF p_eLinkLifterBtmStat = LifterActIdle AND p_eLinkLifterBtmStatus <> Busy  THEN // 
				p_eAct ACCESS p_OpsTravLifULOutletPneuAct3;
			ELSE
				p_eAct ACCESS ADR(eAct);
			END_IF
		ELSE
			IF p_eLinkLifterBtmStat = LifterActIdle AND p_eLinkLifterBtmStatus <> Busy AND p_eLinkLifter2Stat = LifterActIdle AND p_eLinkLifter2Status <> Busy  THEN // p_eLinkLifter2Status <> Busy 
				p_eAct ACCESS p_OpsTravLifULOutletPneuAct3;
			ELSE
				p_eAct ACCESS ADR(eAct);
			END_IF	
		END_IF
	ELSIF p_bManual = TRUE OR p_bUISimu THEN
		p_eAct ACCESS p_UIOutShutterAct3;
	ELSIF p_bSimu THEN
		p_eAct ACCESS p_Simu1OutShutterAct3;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
