(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SMag3AWEngageStat	:= ADR(eStat);
	p_Pneu2SMag3AWEngageStatus	:= ADR(eStatus);
	p_Pneu2SMag3AWEngageStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SMag3AWEngageAlmData	:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SMag3AWEngageExtCtrl		:= ADR(bExtCtrl);
	p_Pneu2SMag3AWEngageRetCtrl		:= ADR(bRetCtrl);
	p_Pneu2SMag3AWEngageTwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_Pneu2SMag3AWEngageExtended	:= ADR(bExtended);
	p_Pneu2SMag3AWEngageRetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM