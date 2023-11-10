(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenTopEntStprStat			:= ADR(eStat);
	p_PneuNoSenTopEntStprStatus			:= ADR(eStatus);
	p_PneuNoSenTopEntStprStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenTopEntStprAlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenTopEntStprExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenTopEntStprRetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenTopEntStprTwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuNoSenTopEntStprExtended		:= ADR(bExtended);
	p_PneuNoSenTopEntStprRetracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM