(** 2029-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenSelClamp2Stat		:= ADR(eStat);
	p_PneuNoSenSelClamp2Status		:= ADR(eStatus);
	p_PneuNoSenSelClamp2StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenSelClamp2AlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenSelClamp2ExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenSelClamp2RetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenSelClamp2TwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_PneuNoSenSelClamp2Extended	:= ADR(bExtended);
	p_PneuNoSenSelClamp2Retracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM