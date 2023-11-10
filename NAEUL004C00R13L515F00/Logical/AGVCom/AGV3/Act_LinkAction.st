(** 2019-03-29 **)
ACTION Act_LinkAction:
	
	IF EDGENEG(p_bLinkOpsRun) THEN
		p_eAct	:= AGVMagActIdle;
	END_IF
	
	
END_ACTION
