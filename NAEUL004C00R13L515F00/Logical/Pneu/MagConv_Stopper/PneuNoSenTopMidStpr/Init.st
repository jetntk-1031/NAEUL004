(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenTopMidStprStat			:= ADR(eStat);
	p_PneuNoSenTopMidStprStatus			:= ADR(eStatus);
	p_PneuNoSenTopMidStprStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenTopMidStprAlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenTopMidStprExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenTopMidStprRetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenTopMidStprTwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuNoSenTopMidStprExtended		:= ADR(bExtended);
	p_PneuNoSenTopMidStprRetracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM