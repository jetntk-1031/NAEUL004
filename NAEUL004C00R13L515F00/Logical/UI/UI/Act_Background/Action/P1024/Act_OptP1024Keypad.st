
ACTION Act_OptP1024Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP1024McSetAntiGap.tyAntiGap.tyNumLftSenOff.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1024McSetAntiGap.tyAntiGap.tyNumLftSenOff.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1024McSetAntiGap.tyAntiGap.tyNumMidSenOff.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1024McSetAntiGap.tyAntiGap.tyNumMidSenOff.sKeypadTitle; 
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1024McSetAntiGap.tyAntiGap.tyNumRgtSenOff.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1024McSetAntiGap.tyAntiGap.tyNumRgtSenOff.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1024McSetAntiGap.tyAntiGap.tyNumClrSenOff.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1024McSetAntiGap.tyAntiGap.tyNumClrSenOff.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOff.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOff.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOff.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOn.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.sKeypadTitle;
		
	END_IF
	
END_ACTION
