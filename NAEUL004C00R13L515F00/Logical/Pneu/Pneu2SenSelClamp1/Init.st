(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenSelClamp1Stat		:= ADR(eStat);
	p_PneuNoSenSelClamp1Status		:= ADR(eStatus);
	p_PneuNoSenSelClamp1StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenSelClamp1AlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenSelClamp1ExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenSelClamp1RetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenSelClamp1TwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_PneuNoSenSelClamp1Extended	:= ADR(bExtended);
	p_PneuNoSenSelClamp1Retracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM