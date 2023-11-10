
ACTION Act_OptP0933Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP0933PullConv.tyFB.tyNumExtSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0933PushConv.tyFB.tyNumExtSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0933PullConv.tyFB.tyNumExtTorqPercent.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0933PushConv.tyFB.tyNumExtTorqPercent.sKeypadTitle; 
		
	END_IF
	
END_ACTION
