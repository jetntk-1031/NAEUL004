
ACTION Act_OptP1026LifterKeypad: 
		
	IF fUIOutRtStatTPIsOpen(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyNumTargetPos.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1026McSetTeach.tyMotionStdLifter.tyNumTargetPos.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyNumStepSize.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1026McSetTeach.tyMotionStdLifter.tyNumStepSize.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyNumSlwSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1026McSetTeach.tyMotionStdLifter.tyNumSlwSpd.sKeypadTitle;
		
	END_IF
	
END_ACTION
