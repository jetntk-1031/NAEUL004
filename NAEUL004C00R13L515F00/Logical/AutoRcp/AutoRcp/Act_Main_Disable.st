(** 2020-09-21 **)
ACTION Act_Main_Disable:
	
	bUSAllow			:= TRUE;
	bDSAllow			:= TRUE;

	
	usiProdAccDatStep		:= 0;
	usiProdUpdtDatStep		:= 0;
	tyInfoData.sProgNm		:= '';
	tyInfoData.udiCode		:= 0;
	tyInfoData.eSeverity	:= AlmSeverityNA;
	tyInfoData.sAlmMsg		:= '';
	
	usiMagAccDatStep		:= 0;
	tyInfoData1.sProgNm		:= '';
	tyInfoData1.udiCode		:= 0;
	tyInfoData1.eSeverity	:= AlmSeverityNA;
	tyInfoData1.sAlmMsg		:= '';
	
	
	eStatus		:= Idle;
	udiStatus	:= 0;
	bProdRcpErr	:= FALSE;
	bMagRcpErr	:= FALSE;

	
	
END_ACTION
