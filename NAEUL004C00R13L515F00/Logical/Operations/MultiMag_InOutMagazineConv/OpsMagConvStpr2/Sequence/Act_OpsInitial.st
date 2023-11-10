(** 2019-01-16 **)
ACTION Act_OpsInitial:
	
	eOpsStep		:= MagConvStprStepNA;
	eGotoOpsStep	:= MagConvStprStepInit; //btm stpr
	eOpsStep1		:= MagConvStprStepNA;
	eGotoOpsStep1	:= MagConvStprStepInitDone; //top ent stpr
	eOpsStep2		:= MagConvStprStepNA;
	eGotoOpsStep2	:= MagConvStprStepInit; //top stpr

END_ACTION
