(** 2019-06-10 **)
ACTION Act_Background_TCPClose:
	
	//Close TCP Connection
	fbClose.udiTCPIdent	:= udiTCPIdent;
	fbClose(bEn := TRUE);
		
	IF fbClose.udiStatus = 0 THEN
		udiTCPIdent	:= 0;
		fbClose(bEn := FALSE);
		
		bRstConnection	:= FALSE;
		
	ELSIF fbClose.udiStatus < 65534 THEN
		udiTCPIdent	:= 0;
		eStatus1	:= Error;
	
		IF fbClose.udiStatus = 2300 THEN
			udiStatus1	:= 10027;	//Invalid Ident While Closing TCP
		ELSIF fbClose.udiStatus = 2310 THEN
			udiStatus1	:= 10028;	//Closing TCP Error
		ELSE
			udiStatus1	:= fbClose.udiStatus;
		END_IF
		
	END_IF
	
	
END_ACTION
