(** 2020-03-16 **)
ACTION Act_Action: 

	//Reset Error
	IF (eStatus = Error) AND bRstErr THEN
		p_eAct	:= MagAWActIdle;
		eStat	:= MagAWActIdle;
		
		fMotionCANRstCtrlWord(ADR(tyParamOutDriver));
	END_IF
	
	//Reset Done
	IF eStatus = Done AND p_eAct = MagAWActIdle THEN
		eStat	:= MagAWActIdle;
	END_IF
	
	//Set p_eAct
	IF (eStatus = Idle AND eStatus1 = Idle AND eStatus2 = Idle AND eStatus3 = Idle) OR p_eAct = MagAWActIdle OR p_eAct = MagAWActStop OR p_eAct = MagAWActJogStop OR p_eAct = MagAWActEngageStop THEN
		eStat	:= p_eAct;
	END_IF
	
	IF EDGEPOS(bModuleNotOK) THEN
		eStat := MagAWActIdle;
	END_IF
	
END_ACTION
