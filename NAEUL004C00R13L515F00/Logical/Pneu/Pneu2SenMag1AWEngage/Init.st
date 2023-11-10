(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SMag1AWEngageStat	:= ADR(eStat);
	p_Pneu2SMag1AWEngageStatus	:= ADR(eStatus);
	p_Pneu2SMag1AWEngageStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SMag1AWEngageAlmData	:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SMag1AWEngageExtCtrl		:= ADR(bExtCtrl);
	p_Pneu2SMag1AWEngageRetCtrl		:= ADR(bRetCtrl);
	p_Pneu2SMag1AWEngageTwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_Pneu2SMag1AWEngageExtended	:= ADR(bExtended);
	p_Pneu2SMag1AWEngageRetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM