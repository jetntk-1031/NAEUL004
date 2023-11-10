(** 2019-06-02 **)
ACTION Act_RstErr:
	
	IF p_udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= p_udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	IF (bRstConnection AND eStat = TCPActIdle_0) OR ((bRstErr OR fbClose.bEn =TRUE) AND udiTCPIdent1 <> 0 AND eStat = TCPActIdle_0 )THEN
		fbClose.udiTCPIdent	:= udiTCPIdent1;
		fbClose(bEn := TRUE);
			
		IF fbClose.udiStatus = 0 THEN
			udiTCPIdent	:= 0;
			fbClose(bEn := FALSE);
			bRstConnection := FALSE;
			udiTCPIdent1 := 0;
		ELSIF fbClose.udiStatus < 65534 THEN
			udiTCPIdent	:= 0;
			eStatus	:= Error;
		
			IF fbClose.udiStatus = 2300 THEN
				udiStatus	:= 10146;	//Invalid Ident While Closing TCP
			ELSIF fbClose.udiStatus = 2310 THEN
				udiStatus	:= 10147;	//Closing TCP Error
			ELSE
				udiStatus	:= fbClose.udiStatus;
			END_IF
			
		END_IF
	END_IF
	
		
END_ACTION
