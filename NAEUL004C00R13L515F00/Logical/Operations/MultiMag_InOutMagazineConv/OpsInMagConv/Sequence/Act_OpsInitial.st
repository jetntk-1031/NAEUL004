(** 2019-01-16 **)
ACTION Act_OpsInitial:
	
	eGotoStep	:= InMagConvStepInit;
	eOpsStep	:= InMagConvStepNA;
	eGotoStep1	:= InMagConvStepInit;
	eOpsStep1	:= InMagConvStepNA;

	bStepEnterMag	:= FALSE;
	bStepEntToMid 	:= FALSE;
	bStepExitMag	:= FALSE;
	bStepEnterMag2	:= FALSE;
	bStepEntToMid2	:= FALSE;
	bStepExitMag2	:= FALSE;

END_ACTION
