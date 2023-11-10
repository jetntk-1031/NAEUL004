(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SMag2AWEngageStat	:= ADR(eStat);
	p_Pneu2SMag2AWEngageStatus	:= ADR(eStatus);
	p_Pneu2SMag2AWEngageStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SMag2AWEngageAlmData	:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SMag2AWEngageExtCtrl		:= ADR(bExtCtrl);
	p_Pneu2SMag2AWEngageRetCtrl		:= ADR(bRetCtrl);
	p_Pneu2SMag2AWEngageTwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_Pneu2SMag2AWEngageExtended	:= ADR(bExtended);
	p_Pneu2SMag2AWEngageRetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM