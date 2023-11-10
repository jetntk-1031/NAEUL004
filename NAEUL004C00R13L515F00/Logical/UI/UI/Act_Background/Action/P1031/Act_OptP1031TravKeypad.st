
ACTION Act_OptP1031TravKeypad: 
		
	IF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyNumTargetPos.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumTargetPos.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyNumStepSize.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumStepSize.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyNumSlwSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumSlwSpd.sKeypadTitle;
	END_IF
	
END_ACTION
