(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_InletStopperStat				:= ADR(eStat);
	p_InletStopperStatus			:= ADR(eStatus);
	p_InletStopperStatTxt			:= ADR(sStatTxt);
	
	//Alarm
	p_InletStopperAlmData			:= ADR(tyAlmData);
	
	//Output
	p_InletStopperExtCtrl			:= ADR(bExtCtrl);
	p_InletStopperRetCtrl			:= ADR(bRetCtrl);
	p_InletStopperTwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_InletStopperExtended			:= ADR(bExtended);
	p_InletStopperRetracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM