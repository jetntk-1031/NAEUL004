(** 2020-03-16 **)
ACTION Act_Action: 
	
	//Reset Error
	IF (eStatus = Error) AND bRstErr THEN
		p_eAct	:= TravActIdle;
		eStat	:= TravActIdle;
		
		fMotionCANRstCtrlWord(ADR(tyParamOutDriver));
	END_IF
	
	//Reset Done
	IF eStatus = Done AND p_eAct = TravActIdle THEN
		eStat	:= TravActIdle;
	END_IF
	
	//Set p_eAct
	IF (eStatus = Idle AND eStatus1 = Idle AND eStatus2 = Idle AND eStatus3 = Idle) OR p_eAct = TravActIdle OR p_eAct = TravActStop OR p_eAct = TravActJogStop THEN
		eStat	:= p_eAct;
	END_IF
	
END_ACTION
