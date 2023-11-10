(** 2020-03-16 **)
ACTION Act_Action: 

	//Reset Error
	IF (eStatus = Error) AND bRstErr THEN
		p_eAct	:= PPActIdle;
		eStat	:= PPActIdle;
		
		fMotionCANRstCtrlWord(ADR(tyParamOutDriver));
	END_IF
	
	//Reset Done
	IF eStatus = Done AND p_eAct = PPActIdle THEN
		eStat	:= PPActIdle;
	END_IF
	
	//Set p_eAct
	IF (eStatus = Idle 
		AND eStatus1 = Idle 
		AND eStatus2 = Idle 
		AND eStatus3 = Idle) 
		OR p_eAct = PPActIdle 
		OR p_eAct = PPActStop
		OR (p_eAct = PPActJogStop AND eStatus = Done)
		THEN
		eStat	:= p_eAct;
	END_IF
	
	IF EDGEPOS(bModuleNotOK) THEN
		eStat := PPActIdle;
	END_IF
	
END_ACTION
