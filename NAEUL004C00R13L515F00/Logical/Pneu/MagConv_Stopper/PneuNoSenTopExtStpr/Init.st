(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenTopExtStprStat			:= ADR(eStat);
	p_PneuNoSenTopExtStprStatus			:= ADR(eStatus);
	p_PneuNoSenTopExtStprStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenTopExtStprAlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenTopExtStprExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenTopExtStprRetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenTopExtStprTwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuNoSenTopExtStprExtended		:= ADR(bExtended);
	p_PneuNoSenTopExtStprRetracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM