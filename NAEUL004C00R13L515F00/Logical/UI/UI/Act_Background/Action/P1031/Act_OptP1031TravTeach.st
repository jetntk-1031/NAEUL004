
ACTION Act_OptP1031TravTeach:
	
	IF tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag1);
			
		IF tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag1.tyBtnNo.bRtCompl THEN
			tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag1.tyBtnNo.bRtCompl := FALSE;
			tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag1.tyBtnNo.bValue 	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Magazine Setting.
			tyP1030MagSet.tyMagSet.tyNumTravPosMag1.diValue 	:= p_diTravActualPos;
			tyP1030MagSet.tyMagSet.tyNumTravPosMag1.bRtCompl	:= TRUE;
			
			//Back To Magazine Settings
			eChgPage	:= UIP1030MagSet;
			
			fUIInRtStatHide(ADR(tyP1030MagSet.tyMagSet.tyBtnSave.uiMaskRtStat));
			
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn1.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn1.bValue		:= FALSE;
			
		END_IF
		
	ELSIF tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag2);
		
		IF tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag2.tyBtnNo.bRtCompl THEN
			tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag2.tyBtnNo.bRtCompl := FALSE;
			tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag2.tyBtnNo.bValue 	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Magazine Setting.
			tyP1030MagSet.tyMagSet.tyNumTravPosMag2.diValue		:= p_diTravActualPos;
			tyP1030MagSet.tyMagSet.tyNumTravPosMag2.bRtCompl	:= TRUE;
			
			//Back To Magazine Settings
			eChgPage	:= UIP1030MagSet;
			
			fUIInRtStatHide(ADR(tyP1030MagSet.tyMagSet.tyBtnSave.uiMaskRtStat));
			
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn1.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn1.bValue		:= FALSE;
			
		END_IF
		
	ELSIF tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag3);
			
		IF tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag3.tyBtnNo.bRtCompl THEN
			tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag3.tyBtnNo.bRtCompl := FALSE;
			tyP1031MagSetTeach.tyMsgBoxUpdtTravPosMag3.tyBtnNo.bValue 	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Magazine Setting.
			tyP1030MagSet.tyMagSet.tyNumTravPosMag3.diValue 	:= p_diTravActualPos;
			tyP1030MagSet.tyMagSet.tyNumTravPosMag3.bRtCompl	:= TRUE;
			
			//Back To Magazine Settings
			eChgPage	:= UIP1030MagSet;
			
			fUIInRtStatHide(ADR(tyP1030MagSet.tyMagSet.tyBtnSave.uiMaskRtStat));
			
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn1.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn1.bValue		:= FALSE;
			
		END_IF
		
	END_IF
	
END_ACTION
