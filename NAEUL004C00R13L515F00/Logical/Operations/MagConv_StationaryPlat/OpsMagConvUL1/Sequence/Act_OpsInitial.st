(** 2019-01-16 **)
ACTION Act_OpsInitial:
	
	eOpsStep		:= MagConvULStepNA;
	eGotoOpsStep	:= MagConvULStepInitMag;

	bOpsInitDone		:= FALSE;
	bMagBffrAvl			:= FALSE;
	bNewMagAllw			:= FALSE;
	bRlsMagAllw			:= FALSE;
	bStepMagExitedWait	:= FALSE;
	bAGVComm1Rdy		:= FALSE;
	
END_ACTION
