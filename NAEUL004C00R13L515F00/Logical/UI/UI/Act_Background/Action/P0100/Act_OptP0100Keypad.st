
ACTION Act_OptP0100Keypad: 
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP0100Login.tyLogin.tyStringUsrNm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0100Login.tyLogin.tyStringUsrNm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0100Login.tyLogin.tyStringPw.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0100Login.tyLogin.tyStringPw.sKeypadTitle;
		
	ELSE
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= '';
		
	END_IF
	
END_ACTION
