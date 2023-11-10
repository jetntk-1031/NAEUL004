
ACTION Act_OptP1023USSel:

	//Select SMEMA Communication A
	IF tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bRtCompl = TRUE THEN
		tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bRtCompl	:= FALSE;
		
		tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bValue	:= TRUE;
		tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bRtLk		:= TRUE;
		
		tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bValue	:= FALSE;
		tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bRtLk	:= FALSE;
		
	//Select Hermes Communication A
	ELSIF tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bRtCompl = TRUE THEN
		tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bRtCompl	:= FALSE;
		
		tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bValue	:= FALSE;
		tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bRtLk		:= FALSE;
		
		tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bValue	:= TRUE;
		tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bRtLk	:= TRUE;
		
	END_IF
	
	//Select SMEMA Communication B
	IF tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bRtCompl = TRUE THEN
		tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bRtCompl	:= FALSE;
		
		tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bValue	:= TRUE;
		tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bRtLk		:= TRUE;
		
		tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bValue	:= FALSE;
		tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bRtLk	:= FALSE;
		
		//Select Hermes Communication B
	ELSIF tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bRtCompl = TRUE THEN
		tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bRtCompl	:= FALSE;
		
		tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bValue	:= FALSE;
		tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bRtLk		:= FALSE;
		
		tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bValue	:= TRUE;
		tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bRtLk	:= TRUE;
		
	END_IF
	
END_ACTION
