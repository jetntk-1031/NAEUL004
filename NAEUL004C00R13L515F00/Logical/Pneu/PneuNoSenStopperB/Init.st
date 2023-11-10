(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenStopperBStat			:= ADR(eStat);
	p_PneuNoSenStopperBStatus		:= ADR(eStatus);
	p_PneuNoSenStopperBStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenStopperBAlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenStopperBExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenStopperBRetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenStopperBTwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_PneuNoSenStopperBExtended		:= ADR(bExtended);
	p_PneuNoSenStopperBRetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM