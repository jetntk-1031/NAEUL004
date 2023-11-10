(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SMag1SafetyBarStat		:= ADR(eStat);
	p_Pneu2SMag1SafetyBarStatus		:= ADR(eStatus);
	p_Pneu2SMag1SafetyBarStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SMag1SafetyBarAlmData	:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SMag1SafetyBarExtCtrl	:= ADR(bExtCtrl);
	p_Pneu2SMag1SafetyBarRetCtrl	:= ADR(bRetCtrl);
	p_Pneu2SMag1SafetyBarTwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_Pneu2SMag1SafetyBarExtended	:= ADR(bExtended);
	p_Pneu2SMag1SafetyBarRetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM