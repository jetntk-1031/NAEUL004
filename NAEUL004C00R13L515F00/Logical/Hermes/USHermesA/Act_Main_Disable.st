(** 2021-08-01 **)
ACTION Act_Main_Disable:
	
	bConnected		:= FALSE;
	bHandshakeDone	:= FALSE;
	bAccDataReq		:= FALSE;
	bOverWriteSlt	:= FALSE;
	bOverWriteWidth	:= FALSE;
	bUSRdy			:= FALSE;
	bDSRdy			:= FALSE;
	bTransporting	:= FALSE;
	bStopTransport	:= FALSE;

END_ACTION
