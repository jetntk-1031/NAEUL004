(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SMag3SafetyBarStat		:= ADR(eStat);
	p_Pneu2SMag3SafetyBarStatus		:= ADR(eStatus);
	p_Pneu2SMag3SafetyBarStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SMag3SafetyBarAlmData	:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SMag3SafetyBarExtCtrl	:= ADR(bExtCtrl);
	p_Pneu2SMag3SafetyBarRetCtrl	:= ADR(bRetCtrl);
	p_Pneu2SMag3SafetyBarTwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_Pneu2SMag3SafetyBarExtended	:= ADR(bExtended);
	p_Pneu2SMag3SafetyBarRetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM