 (** 2023-03-22  **)
ACTION Act_Background_PLCError:
	FOR i := 1 TO 15 DO 
		IF p_tyLinkAlarmCurrList[i].eSeverity = AlmSeverityNA THEN
			IF p_tyLinkAlarmCurrList[1].eSeverity = AlmSeverityNA THEN
				memset(ADR(s1),0,SIZEOF(s1));
				memset(ADR(bMsgIssued),0,SIZEOF(bMsgIssued));
			END_IF
			EXIT;
		ELSIF p_tyLinkAlarmCurrList[i].eSeverity = AlmSeverityError THEN
			
			s1[i] := MID (MID(p_tyLinkAlarmCurrList[i].sMsg , LEN(p_tyLinkAlarmCurrList[i].sMsg),FIND(p_tyLinkAlarmCurrList[i].sMsg , '|')+2),LEN(p_tyLinkAlarmCurrList[i].sMsg),FIND(MID(p_tyLinkAlarmCurrList[i].sMsg , LEN(p_tyLinkAlarmCurrList[i].sMsg),FIND(p_tyLinkAlarmCurrList[i].sMsg , '|')+2) , '|')+2);
//			uiPLCErrorNo := STRING_TO_UINT (LEFT(s1[i],5));
//			sPLCErrorText := MID(s1[i],LEN(s1[i]),9);
		END_IF
//		IF s1[i] <> '' THEN
//			tyPLCError.tyData.uiErrorNo := uiPLCErrorNo;
//			tyPLCError.tyData.sErrorText := sPLCErrorText;
//		END_IF

	END_FOR
	
	
	
	
END_ACTION
