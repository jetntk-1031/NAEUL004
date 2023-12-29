(** 2019-01-23 **)
ACTION Act_Background:
	
	IF (tylocalMachine.In.diProdRcpCurrRcpWidth > tylocalMachine.In.diMagRcpCurrRcpMaxWidth) AND (tylocalMachine.Out.eStatus <> Error) THEN
		tylocalMachine.Out.eStatus		:= Error;
		udiStatus   := 10000;
	END_IF
	
	//Reset Error
	IF (tylocalMachine.Out.eStatus = Error) AND bRstErr THEN
		tylocalMachine.Out.eStatus		:= Idle;
		udiStatus	:= 0;
	END_IF
	
END_ACTION
