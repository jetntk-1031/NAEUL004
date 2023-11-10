(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenBtmMidStprStat			:= ADR(eStat);
	p_PneuNoSenBtmMidStprStatus			:= ADR(eStatus);
	p_PneuNoSenBtmMidStprStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenBtmMidStprAlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenBtmMidStprExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenBtmMidStprRetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenBtmMidStprTwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuNoSenBtmMidStprExtended		:= ADR(bExtended);
	p_PneuNoSenBtmMidStprRetracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM