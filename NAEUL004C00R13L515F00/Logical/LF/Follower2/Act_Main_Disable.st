
ACTION Act_Main_Disable:
	
	tylocalFollower.Out.bUSAllow			:= TRUE;
	tylocalFollower.Out.bDSAllow			:= TRUE;
	tylocalFollower.Out.bProdAccDataMnl		:= FALSE;
	tylocalFollower.Out.bProdUpdtDataMnl	:= FALSE;
	tylocalFollower.Out.bMagAccDataMnl		:= FALSE;
	tylocalFollower.Out.bWaitRlsBrd			:= FALSE;
	
	usiProdAccDatStep		:= 0;
	usiProdUpdtDatStep		:= 0;
	tyInfoData.udiCode		:= 0;
	tyInfoData.eSeverity	:= AlmSeverityNA;

	
	usiMagAccDatStep		:= 0;
	tylocalFollower.Out.tyInfoData1.udiCode		:= 0;
	tylocalFollower.Out.tyInfoData1.eSeverity	:= AlmSeverityNA;

	bSetTm		:= FALSE;
	
	tylocalFollower.Out.eStatus		:= Idle;
	udiStatus	:= 0;
	bProdRcpErr	:= FALSE;
	bMagRcpErr	:= FALSE;
	tylocalFollower.Out.bLdrSeqCtrlInActive	:= FALSE;
	
	bProdRcpErrNotExist		:= FALSE;
	bProdRcpErrWidthMismatch:= FALSE;
	
	
END_ACTION
