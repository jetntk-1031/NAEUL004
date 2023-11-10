(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenBtmMidStpr2Stat			:= ADR(eStat);
	p_PneuNoSenBtmMidStpr2Status			:= ADR(eStatus);
	p_PneuNoSenBtmMidStpr2StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenBtmMidStpr2AlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenBtmMidStpr2ExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenBtmMidStpr2RetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenBtmMidStpr2TwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuNoSenBtmMidStpr2Extended		:= ADR(bExtended);
	p_PneuNoSenBtmMidStpr2Retracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM