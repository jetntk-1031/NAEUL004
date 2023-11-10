(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsInMagConvAlmData		:= ADR(tyAlmData);
	
	//Output
	p_OpsInMagConvAct			:= ADR(eInMagConvAct);
	p_OpsInMagConv2Act			:= ADR(eInMagConv2Act);
	p_OpsInMagConvUSSOTAct		:= ADR(eUSSOTAct);
	p_OpsInMagConv2USSOTAct		:= ADR(eUSSOTAct2);
	p_OpsInMagConvStepTxt		:= ADR(sStepTxt);
	p_OpsInMagConvStepTxt1		:= ADR(sStepTxt1);
	p_OpsInMagConvPaused		:= ADR(bPaused);
	
	p_OpsInMagConvStepEntMag	:= ADR(bStepEnterMag);
	p_OpsInMagConvStepEntToMid	:= ADR(bStepEntToMid);
	p_OpsInMagConvStepExtMag	:= ADR(bStepExitMag);
	
	p_OpsInMagConv2StepEntMag	:= ADR(bStepEnterMag2);
	p_OpsInMagConv2StepEntToMid	:= ADR(bStepEntToMid2);
	p_OpsInMagConv2StepExtMag	:= ADR(bStepExitMag2);


	(* Always Change If Project Change *)
	
END_PROGRAM