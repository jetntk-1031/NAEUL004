(** 2039-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenSelClamp3Stat		:= ADR(eStat);
	p_PneuNoSenSelClamp3Status		:= ADR(eStatus);
	p_PneuNoSenSelClamp3StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenSelClamp3AlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenSelClamp3ExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenSelClamp3RetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenSelClamp3TwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_PneuNoSenSelClamp3Extended	:= ADR(bExtended);
	p_PneuNoSenSelClamp3Retracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM