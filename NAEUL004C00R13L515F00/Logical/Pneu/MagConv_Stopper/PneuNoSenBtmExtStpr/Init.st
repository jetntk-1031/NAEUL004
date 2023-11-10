(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenBtmExtStprStat			:= ADR(eStat);
	p_PneuNoSenBtmExtStprStatus			:= ADR(eStatus);
	p_PneuNoSenBtmExtStprStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenBtmExtStprAlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenBtmExtStprExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenBtmExtStprRetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenBtmExtStprTwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuNoSenBtmExtStprExtended		:= ADR(bExtended);
	p_PneuNoSenBtmExtStprRetracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM