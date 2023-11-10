(** 2019-01-23 **)
ACTION Act_Background:
	
	IF (p_diProdRcpCurrRcpWidth > p_diMagRcpCurrRcpMaxWidth) AND (eStatus <> Error) THEN
		
		eStatus		:= Error;
		udiStatus   := 10000;
		
	END_IF
	
	//Reset Error
	IF (eStatus = Error) AND bRstErr THEN
		eStatus		:= Idle;
		udiStatus	:= 0;
	END_IF
	
END_ACTION
