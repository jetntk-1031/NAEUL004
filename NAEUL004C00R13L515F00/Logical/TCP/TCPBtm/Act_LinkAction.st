(** 2019-06-02 **)
ACTION Act_LinkAction:
	
	IF p_bRun THEN
		p_eAct ACCESS p_OpsTravLifULBtmScan;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF

END_ACTION
