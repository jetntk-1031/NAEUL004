(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenTopExtStpr2Stat			:= ADR(eStat);
	p_PneuNoSenTopExtStpr2Status			:= ADR(eStatus);
	p_PneuNoSenTopExtStpr2StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenTopExtStpr2AlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenTopExtStpr2ExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenTopExtStpr2RetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenTopExtStpr2TwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuNoSenTopExtStpr2Extended		:= ADR(bExtended);
	p_PneuNoSenTopExtStpr2Retracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM