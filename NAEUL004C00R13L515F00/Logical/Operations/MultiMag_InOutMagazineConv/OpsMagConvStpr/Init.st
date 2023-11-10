(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsMagConvStprAlmData	:= ADR(tyAlmData);
	
	//Output
	p_OpsMagConvStprStepTxt		:= ADR(sStepTxt);
	p_OpsMagConvStprPaused		:= ADR(bPaused);
	p_OpsMagConvStprBtmEntAct	:= ADR(eStprBtmEntAct);
	p_OpsMagConvStprBtmExitAct	:= ADR(eStprBtmExitAct);
	p_OpsMagConvStprBtmMidAct   := ADR(eStprBtmMidAct);
	p_OpsMagConvStprTopEntAct	:= ADR(eStprTopEntAct);
	p_OpsMagConvStprTopExitAct	:= ADR(eStprTopExitAct);
	p_OpsMagConvStprTopMidAct	:= ADR(eStprTopMidAct);


	
	(* Always Change If Project Change *)
	
END_PROGRAM