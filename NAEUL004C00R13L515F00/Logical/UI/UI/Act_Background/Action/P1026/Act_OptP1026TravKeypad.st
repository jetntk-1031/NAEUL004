
ACTION Act_OptP1026TravKeypad: 
		
	IF fUIOutRtStatTPIsOpen(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyNumTargetPos.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1026McSetTeach.tyMotionStdTrav.tyNumTargetPos.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyNumStepSize.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1026McSetTeach.tyMotionStdTrav.tyNumStepSize.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyNumSlwSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1026McSetTeach.tyMotionStdTrav.tyNumSlwSpd.sKeypadTitle;
		
	END_IF
	
END_ACTION
