(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenBtmExtStpr2Stat			:= ADR(eStat);
	p_PneuNoSenBtmExtStpr2Status			:= ADR(eStatus);
	p_PneuNoSenBtmExtStpr2StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenBtmExtStpr2AlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenBtmExtStpr2ExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenBtmExtStpr2RetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenBtmExtStpr2TwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuNoSenBtmExtStpr2Extended		:= ADR(bExtended);
	p_PneuNoSenBtmExtStpr2Retracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM