(** 2019-03-25 **)
ACTION Act_Action: 

	//Reset Error
	IF (eStatus = Error) AND bRstErr THEN
		p_eAct	:= MagRcpActIdle;
		eStat	:= MagRcpActIdle;
	END_IF
	
	//Reset Done
	IF eStatus = Done AND p_eAct = MagRcpActIdle THEN
		eStat	:= MagRcpActIdle;
	END_IF
	
	//Set p_eAct
	IF eStatus = Idle THEN
		eStat	:= p_eAct;
	END_IF
	
END_ACTION
