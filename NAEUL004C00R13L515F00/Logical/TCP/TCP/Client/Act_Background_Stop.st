(** 2019-03-15 **)
ACTION Act_Background_Stop:
		
	IF bStop = TRUE THEN
	
		IF a_sMsgSend[0] = '' THEN
			
			bRstConnection	:= TRUE;
			
			IF udiTCPIdent = 0 THEN
				
				bRun	:= FALSE;
				
			END_IF
			
		END_IF
	
	END_IF
	
END_ACTION
