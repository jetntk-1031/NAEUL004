(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_OvenInfoBStat		:= ADR(eStat);
	p_OvenInfoBStatus	:= ADR(eStatus);
	p_OvenInfoBStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	
	//Output
	p_OvenInfoBOvenAllow	:= ADR(bOvenAllow);
	p_OvenInfoBBrdInOven	:= ADR(diBrdInOven);
	
	(* Always Change If Project Change *)
	
END_PROGRAM