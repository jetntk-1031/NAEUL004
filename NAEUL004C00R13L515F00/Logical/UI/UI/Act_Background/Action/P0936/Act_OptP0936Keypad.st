
ACTION Act_OptP0936Keypad: 
		
	IF fUIOutRtStatTPIsOpen(ADR(tyP0936Trav.tyMotionStd.tyNumTargetPos.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP0936Trav.tyMotionStd.tyNumTargetPos.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0936Trav.tyMotionStd.tyNumStepSize.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP0936Trav.tyMotionStd.tyNumStepSize.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0936Trav.tyMotionStd.tyNumNomSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP0936Trav.tyMotionStd.tyNumNomSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0936Trav.tyMotionStd.tyNumSlwSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP0936Trav.tyMotionStd.tyNumSlwSpd.sKeypadTitle;
		
	END_IF
	
END_ACTION
