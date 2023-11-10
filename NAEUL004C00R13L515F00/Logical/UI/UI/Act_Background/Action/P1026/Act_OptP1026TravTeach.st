
ACTION Act_OptP1026TravTeach:
	
	IF tyP1026McSetTeach.tyTeachTravPosA.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxUpdtTravPosA);
		IF tyP1026McSetTeach.tyMsgBoxUpdtTravPosA.tyBtnNo.bRtCompl THEN  //tyBtnYes
			tyP1026McSetTeach.tyMsgBoxUpdtTravPosA.tyBtnNo.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyMsgBoxUpdtTravPosA.tyBtnNo.bValue	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Machine Settings
			tyP1021McSetGen.tyGen.tyNumTravPosLaneA.diValue 	:= p_diTravActualPos;
			tyP1021McSetGen.tyGen.tyNumTravPosLaneA.bRtCompl	:= TRUE;
			
			//Back To Machine Settings
			eChgPage	:= UIP1021McSetGen;
			
			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn1.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn1.bValue		:= FALSE;
//		ELSIF tyP1026McSetTeach.tyMsgBoxUpdtTravPosA.tyBtnNo.bRtCompl THEN
//			tyP1026McSetTeach.tyMsgBoxUpdtTravPosA.tyBtnNo.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyMsgBoxUpdtTravPosA.tyBtnNo.bValue	:= FALSE;
//			
//			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
//						
//			//Back To Machine Settings
//			eChgPage	:= UIP1021McSetGen;
//			
//			tyP1026McSetTeach.tyTeachTravPosA.tyBtn1.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyTeachTravPosA.tyBtn1.bValue		:= FALSE;
			
		END_IF
		
	ELSIF tyP1026McSetTeach.tyTeachTravPosB.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxUpdtTravPosB);
		IF tyP1026McSetTeach.tyMsgBoxUpdtTravPosB.tyBtnNo.bRtCompl THEN
			tyP1026McSetTeach.tyMsgBoxUpdtTravPosB.tyBtnNo.bRtCompl := FALSE;
			tyP1026McSetTeach.tyMsgBoxUpdtTravPosB.tyBtnNo.bValue 	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
			//Back To Machine Settings
			eChgPage	:= UIP1021McSetGen;
			
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn1.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn1.bValue		:= FALSE;
//		ELSIF tyP1026McSetTeach.tyMsgBoxUpdtTravPosB.tyBtnNo.bRtCompl THEN
//			tyP1026McSetTeach.tyMsgBoxUpdtTravPosB.tyBtnNo.bRtCompl := FALSE;
//			tyP1026McSetTeach.tyMsgBoxUpdtTravPosB.tyBtnNo.bValue 	:= FALSE;
//			
//			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
//			
//			//Write Actual Position To Machine Settings
//			tyP1021McSetGen.tyGen.tyNumTravPosLaneB.diValue 	:= p_diTravActualPos;
//			tyP1021McSetGen.tyGen.tyNumTravPosLaneB.bRtCompl	:= TRUE;
//			
//			//Back To Machine Settings
//			eChgPage	:= UIP1021McSetGen;
//			
//			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
//			
//			tyP1026McSetTeach.tyTeachTravPosB.tyBtn1.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyTeachTravPosB.tyBtn1.bValue		:= FALSE;
			
		END_IF
		
	END_IF
	
END_ACTION
