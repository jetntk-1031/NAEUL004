(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsMagConv2StprAlmData	:= ADR(tyAlmData);
	
	//Output
	p_OpsMagConv2StprStepTxt	:= ADR(sStepTxt);
	p_OpsMagConv2StprPaused		:= ADR(bPaused);
	p_OpsMagConv2StprBtmEntAct	:= ADR(eStprBtmEntAct);
	p_OpsMagConv2StprBtmExitAct	:= ADR(eStprBtmExitAct);
	p_OpsMagConv2StprBtmMidAct  := ADR(eStprBtmMidAct);
	p_OpsMagConv2StprTopEntAct	:= ADR(eStprTopEntAct);
	p_OpsMagConv2StprTopExitAct	:= ADR(eStprTopExitAct);
	p_OpsMagConv2StprTopMidAct	:= ADR(eStprTopMidAct);


	
	(* Always Change If Project Change *)
	
END_PROGRAM