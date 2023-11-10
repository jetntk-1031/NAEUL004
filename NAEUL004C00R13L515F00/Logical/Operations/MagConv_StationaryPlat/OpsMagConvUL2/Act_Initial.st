(** 2019-01-20 **)
ACTION Act_Initial:
	
	//Initial
	IF p_bNtParamProjOutletShut2Prep THEN
		p_bOutShutterExtended ACCESS p_Pneu2SenOutShutterExtended2;
	ELSE
		p_bOutShutterExtended ACCESS p_Pneu2SenOutShutterExtended;
	END_IF
END_ACTION
