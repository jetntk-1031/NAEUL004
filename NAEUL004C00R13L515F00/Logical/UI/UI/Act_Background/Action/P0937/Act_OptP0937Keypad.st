
ACTION Act_OptP0937Keypad: 
		
	IF fUIOutRtStatTPIsOpen(ADR(tyP0937AWPushOrPuller.tyAW.tyNumNewWidth.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP0937AWPushOrPuller.tyAW.tyNumNewWidth.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyNumTargetPos.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumTargetPos.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyNumStepSize.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumStepSize.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyNumNomSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumNomSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyNumSlwSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumSlwSpd.sKeypadTitle;
		
	END_IF
	
END_ACTION
