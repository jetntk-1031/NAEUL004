
ACTION Act_OptP0935Keypad: 
		
	IF fUIOutRtStatTPIsOpen(ADR(tyP0935Lifter.tyMotionStd.tyNumTargetPos.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0935Lifter.tyMotionStd.tyNumTargetPos.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0935Lifter.tyMotionStd.tyNumStepSize.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0935Lifter.tyMotionStd.tyNumStepSize.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0935Lifter.tyMotionStd.tyNumNomSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0935Lifter.tyMotionStd.tyNumSlwSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0935Lifter.tyMotionStd.tyNumSlwSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0935Lifter.tyLifter.tyNumNewSlt.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0935Lifter.tyLifter.tyNumNewSlt.sKeypadTitle;

	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0935Lifter.tyLifter.tyNumMagPos.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0935Lifter.tyLifter.tyNumMagPos.sKeypadTitle;
		
	END_IF
	
END_ACTION
