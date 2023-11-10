(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_OvenInfoAStat		:= ADR(eStat);
	p_OvenInfoAStatus	:= ADR(eStatus);
	p_OvenInfoAStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	
	//Output
	p_OvenInfoAOvenAllow	:= ADR(bOvenAllow);
	p_OvenInfoABrdInOven	:= ADR(diBrdInOven);
	
	(* Always Change If Project Change *)
	
END_PROGRAM