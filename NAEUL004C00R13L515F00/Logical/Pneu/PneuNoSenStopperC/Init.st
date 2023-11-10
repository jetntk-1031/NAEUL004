(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	bPrep	:= FALSE;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenStopperCStat			:= ADR(eStat);
	p_PneuNoSenStopperCStatus		:= ADR(eStatus);
	p_PneuNoSenStopperCStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenStopperCAlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenStopperCExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenStopperCRetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenStopperCTwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_PneuNoSenStopperCExtended		:= ADR(bExtended);
	p_PneuNoSenStopperCRetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM