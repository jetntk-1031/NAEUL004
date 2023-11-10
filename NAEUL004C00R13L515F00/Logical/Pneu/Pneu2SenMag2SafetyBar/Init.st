(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SMag2SafetyBarStat		:= ADR(eStat);
	p_Pneu2SMag2SafetyBarStatus		:= ADR(eStatus);
	p_Pneu2SMag2SafetyBarStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SMag2SafetyBarAlmData	:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SMag2SafetyBarExtCtrl	:= ADR(bExtCtrl);
	p_Pneu2SMag2SafetyBarRetCtrl	:= ADR(bRetCtrl);
	p_Pneu2SMag2SafetyBarTwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_Pneu2SMag2SafetyBarExtended	:= ADR(bExtended);
	p_Pneu2SMag2SafetyBarRetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM