(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenTopEntStpr2Stat			:= ADR(eStat);
	p_PneuNoSenTopEntStpr2Status			:= ADR(eStatus);
	p_PneuNoSenTopEntStpr2StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenTopEntStpr2AlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenTopEntStpr2ExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenTopEntStpr2RetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenTopEntStpr2TwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuNoSenTopEntStpr2Extended		:= ADR(bExtended);
	p_PneuNoSenTopEntStpr2Retracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM