
ACTION Act_OptP0939Keypad: 
		
	IF fUIOutRtStatTPIsOpen(ADR(tyP0939Lifter2.tyMotionStd.tyNumTargetPos.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0939Lifter2.tyMotionStd.tyNumTargetPos.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0939Lifter2.tyMotionStd.tyNumStepSize.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0939Lifter2.tyMotionStd.tyNumStepSize.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0939Lifter2.tyMotionStd.tyNumNomSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0939Lifter2.tyMotionStd.tyNumSlwSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0939Lifter2.tyMotionStd.tyNumSlwSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0939Lifter2.tyLifter.tyNumNewSlt.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.sKeypadTitle;

	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0939Lifter2.tyLifter.tyNumMagPos.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0939Lifter2.tyLifter.tyNumMagPos.sKeypadTitle;
		
	END_IF
	
END_ACTION
