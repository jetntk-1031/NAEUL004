(** 2019-01-16 **)
ACTION Act_OpsInitial:
	
	eOpsStep		:= TravLifULStepNA;
	eGotoOpsStep	:= TravLifULStepInitConv;
	
	bInitConv		:= FALSE;
	bOpsInitDone	:= FALSE;
	bUSComm			:= FALSE;
	bEntBrd			:= FALSE;
	bDSComm			:= FALSE;
	bExitBrd		:= FALSE;
	
	usiMagWidthChkStep  := 0;
	bMagWidthChk		:= FALSE;
	bTravGoToChkPt		:= FALSE;
	
	bShut1Closed		:= FALSE;
	bShut2Closed		:= FALSE;
	bShut3Closed		:= FALSE;
	
END_ACTION
