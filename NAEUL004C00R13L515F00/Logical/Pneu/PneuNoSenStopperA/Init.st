(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenStopperAStat			:= ADR(eStat);
	p_PneuNoSenStopperAStatus		:= ADR(eStatus);
	p_PneuNoSenStopperAStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenStopperAAlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenStopperAExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenStopperARetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenStopperATwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_PneuNoSenStopperAExtended		:= ADR(bExtended);
	p_PneuNoSenStopperARetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM