
ACTION Act_OptP1031LifterKeypad: 
		
	IF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyNumTargetPos.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumTargetPos.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyNumStepSize.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumStepSize.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyNumSlwSpd.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumSlwSpd.sKeypadTitle;
			
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyNumNewSlt.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyNumNewSlt.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyNumNewSlt.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyNumNewSlt.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyNumNewSlt.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyNumNewSlt.sKeypadTitle;
	
//	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1031MagSetTeach.tyTeachLifterMag4Slt1Pos.tyNumNewSlt.uiRtStat)) = TRUE THEN
//		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle		:= tyP1031MagSetTeach.tyTeachLifterMag4Slt1Pos.tyNumNewSlt.sKeypadTitle;
//	
	END_IF
	
END_ACTION
