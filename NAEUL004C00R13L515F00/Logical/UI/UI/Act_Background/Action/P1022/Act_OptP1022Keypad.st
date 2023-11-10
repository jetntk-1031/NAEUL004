
ACTION Act_OptP1022Keypad: 
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP1022McSetVComm.tyVComSvy.tyNumSndAliveTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyTxtTitle.sTxt	:= tyP1022McSetVComm.tyVComSvy.tyNumSndAliveTm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1022McSetVComm.tyVComSvy.tyNumSvySystemPort.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyTxtTitle.sTxt	:= tyP1022McSetVComm.tyVComSvy.tyNumSvySystemPort.sKeypadTitle;
		
	END_IF
	
END_ACTION
