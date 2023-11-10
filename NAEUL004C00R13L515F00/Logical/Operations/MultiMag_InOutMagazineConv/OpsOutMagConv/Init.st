(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsOutMagConvAlmData		:= ADR(tyAlmData);
	
	//Output
	p_OpsOutMagConvAct			:= ADR(eOutMagConvAct);
	p_OpsOutMagConv2Act			:= ADR(eOutMagConv2Act);
	p_OpsOutMagConvDSSOTAct		:= ADR(eDSSOTAct);
	p_OpsOutMagConv2DSSOTAct	:= ADR(eDSSOTAct2);
	p_OpsOutMagConvStepTxt		:= ADR(sStepTxt);
	p_OpsOutMagConvStepTxt1		:= ADR(sStepTxt1);
	p_OpsOutMagConvPaused		:= ADR(bPaused);

	p_OpsOutMagConvStepInitDone		:= ADR(bStepInitDone);
	p_OpsOutMagConvStepEntMag		:= ADR(bStepEnterMag);
	p_OpsOutMagConvStepEntMidMag	:= ADR(bStepEnterMidMag);
	p_OpsOutMagConvStepExtMag		:= ADR(bStepExitMag);
	p_OpsOutMagConvStepWaitToRmvMag	:= ADR(bStepWaitMagToRmvMnl);

	p_OpsOutMagConv2StepInitDone	:= ADR(bStepInitDone2);
	p_OpsOutMagConv2StepEntMag		:= ADR(bStepEnterMag2);
	p_OpsOutMagConv2StepEntMidMag	:= ADR(bStepEnterMidMag2);
	p_OpsOutMagConv2StepExtMag		:= ADR(bStepExitMag2);
	p_OpsOutMagConv2StepWaitToRmvMag	:= ADR(bStepWaitMagToRmvMnl2);

	(* Always Change If Project Change *)
	
END_PROGRAM