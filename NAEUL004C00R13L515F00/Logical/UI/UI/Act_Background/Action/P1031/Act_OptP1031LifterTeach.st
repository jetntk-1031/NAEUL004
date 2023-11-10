
ACTION Act_OptP1031LifterTeach:
	
	IF tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn1.bRtCompl = TRUE THEN // Teach Lifter Magazine 1 Slot 1 Position
		
		p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag1Slt1Pos);
			
		IF tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag1Slt1Pos.tyBtnNo.bRtCompl THEN
			tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag1Slt1Pos.tyBtnNo.bRtCompl 	:= FALSE;
			tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag1Slt1Pos.tyBtnNo.bValue 	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Magazine Setting.
			tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.diValue 	:= p_diLifterBtmActualPos;
			tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.bRtCompl	:= TRUE;
			
			//Back To Magazine Settings
			eChgPage	:= UIP1030MagSet;
			
			fUIInRtStatHide(ADR(tyP1030MagSet.tyMagSet.tyBtnSave.uiMaskRtStat));
			
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn1.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn1.bValue	:= FALSE;
			
		END_IF
		
	ELSIF tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn1.bRtCompl = TRUE THEN // Teach Lifter Magazine 2 Slot 1 Position
		
		p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag2Slt1Pos);
		
		IF tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag2Slt1Pos.tyBtnNo.bRtCompl THEN
			tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag2Slt1Pos.tyBtnNo.bRtCompl 	:= FALSE;
			tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag2Slt1Pos.tyBtnNo.bValue 	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxHide);
		
			IF p_tyNtParamCurr.bProjMagConvLane2Prep THEN
				tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.diValue 	:= p_diLifter2ActualPos;
			ELSE
				//Write Actual Position To Magazine Setting.
				tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.diValue 	:= p_diLifterBtmActualPos;
			END_IF
			
			tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.bRtCompl	:= TRUE;
			
			//Back To Magazine Settings
			eChgPage	:= UIP1030MagSet;
			
			fUIInRtStatHide(ADR(tyP1030MagSet.tyMagSet.tyBtnSave.uiMaskRtStat));
			
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn1.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn1.bValue	:= FALSE;
			
		END_IF
		
	ELSIF tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn1.bRtCompl = TRUE THEN // Teach Lifter Magazine 3 Slot 1 Position
		
		p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag3Slt1Pos);
		
		IF tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag3Slt1Pos.tyBtnNo.bRtCompl THEN
			tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag3Slt1Pos.tyBtnNo.bRtCompl 	:= FALSE;
			tyP1031MagSetTeach.tyMsgBoxUpdtLifterMag3Slt1Pos.tyBtnNo.bValue 	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxHide);
		
			//Write Actual Position To Magazine Setting.
			tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.diValue 	:= p_diLifterBtmActualPos;
			tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.bRtCompl	:= TRUE;
			
			//Back To Magazine Settings
			eChgPage	:= UIP1030MagSet;
			
			fUIInRtStatHide(ADR(tyP1030MagSet.tyMagSet.tyBtnSave.uiMaskRtStat));
			
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn1.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn1.bValue	:= FALSE;
			
		END_IF
		
	END_IF
	
END_ACTION
