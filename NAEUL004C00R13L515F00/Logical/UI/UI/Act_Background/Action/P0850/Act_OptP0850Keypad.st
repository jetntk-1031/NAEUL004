
ACTION Act_OptP0850Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP0850OvenInfo.tyExtddA.tyNumBrdInOven.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0850OvenInfo.tyExtddA.tyNumBrdInOven.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0850OvenInfo.tyExtddB.tyNumBrdInOven.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0850OvenInfo.tyExtddB.tyNumBrdInOven.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenA.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenA.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenB.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenB.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenA.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenA.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenB.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenB.sKeypadTitle;
		
	ELSE
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= '';
		
	END_IF
	
END_ACTION
