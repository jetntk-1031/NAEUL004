(** 2019-01-20 **)
ACTION Act_Initial:
	
	//Initial

	IF p_bNtParamProjOutletShut3Prep THEN
		p_bOutShutterExtended ACCESS p_Pneu2SenOutShutterExtended3;
	ELSE
		p_bOutShutterExtended ACCESS p_Pneu2SenOutShutterExtended;
	END_IF
	
END_ACTION
