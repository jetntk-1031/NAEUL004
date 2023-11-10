(** 2019-04-04 **)
ACTION Act_LinkAction:
	
	IF EDGENEG(p_bManual) THEN
		p_eAct	:= OvenInfoActIdle;
	END_IF
	
END_ACTION
