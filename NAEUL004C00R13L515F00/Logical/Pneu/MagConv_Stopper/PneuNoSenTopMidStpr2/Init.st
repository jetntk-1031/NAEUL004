(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenTopMidStpr2Stat			:= ADR(eStat);
	p_PneuNoSenTopMidStpr2Status			:= ADR(eStatus);
	p_PneuNoSenTopMidStpr2StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenTopMidStpr2AlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenTopMidStpr2ExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenTopMidStpr2RetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenTopMidStpr2TwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuNoSenTopMidStpr2Extended		:= ADR(bExtended);
	p_PneuNoSenTopMidStpr2Retracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM