(** 2019-03-29 **)
ACTION Act_LinkAction:
	
	
	IF p_bLinkUIOpsAct <> OperationsActIdle THEN
		p_eAct ACCESS p_UIOpsAct;
	ELSIF EDGEPOS(p_bLinkSimuRun) THEN
		p_eAct := OperationsActStart;
	ELSIF EDGEPOS(p_bLinkSimuStop) THEN	
		p_eAct := OperationsActStop;	
	END_IF
    
	IF (eStat = OperationsActStart OR eStat = OperationsActStop) AND  eStatus = Done THEN
		eAct := OperationsActIdle;
		p_eAct := OperationsActIdle;
	END_IF
	
END_ACTION
