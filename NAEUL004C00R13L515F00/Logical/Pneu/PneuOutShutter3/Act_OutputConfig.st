(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SenOutShutterStat3			:= ADR(eStat);
	p_Pneu2SenOutShutterStatus3			:= ADR(eStatus);
	p_Pneu2SenOutShutterStatTxt3		:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SenOutShutterAlmData3		:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SenOutShutterExtCtrl3		:= ADR(bExtCtrl);
	p_Pneu2SenOutShutterRetCtrl3		:= ADR(bRetCtrl);
	p_Pneu2SenOutShutterTwoCtrlOut3		:= ADR(bTwoCtrlOut);
	p_Pneu2SenOutShutterExtended3		:= ADR(bExtended);
	p_Pneu2SenOutShutterRetracted3		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM