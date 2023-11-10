
ACTION Act_OptP1080Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP1080UsrMgmt.tyCreate.tyStringUsrNm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1080UsrMgmt.tyCreate.tyStringUsrNm.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1080UsrMgmt.tyCreate.tyStringPw.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1080UsrMgmt.tyCreate.tyStringPw.sKeypadTitle;

	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1080UsrMgmt.tyEdit.tyStringPw.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1080UsrMgmt.tyCreate.tyStringPw.sKeypadTitle;
		
	ELSE	
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= '';
		
	END_IF
	
END_ACTION
