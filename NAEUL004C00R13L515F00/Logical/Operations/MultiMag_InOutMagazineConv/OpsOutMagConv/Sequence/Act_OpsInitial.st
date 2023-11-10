(** 2019-01-16 **)
ACTION Act_OpsInitial:
	
	eGotoStep	:= OutMagConvStepInit;
	eOpsStep	:= OutMagConvStepNA;
	eGotoStep1	:= OutMagConvStepInit;
	eOpsStep1	:= OutMagConvStepNA;

	bStepEnterMag		:= FALSE;
	bStepEnterMidMag 	:= FALSE;
	bStepExitMag		:= FALSE;
	bStepEnterMag2		:= FALSE;
	bStepEnterMidMag2 	:= FALSE;
	bStepExitMag2		:= FALSE;

END_ACTION
