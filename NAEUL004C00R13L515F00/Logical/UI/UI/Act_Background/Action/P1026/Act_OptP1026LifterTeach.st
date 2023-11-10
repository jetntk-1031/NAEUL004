
ACTION Act_OptP1026LifterTeach:
	
	IF tyP1026McSetTeach.tyTeachLifterPosA.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA);
		IF tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA.tyBtnNo.bRtCompl THEN	//tyBtnNo
			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA.tyBtnNo.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Machine Settings
			tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.diValue		:= p_diLifterBtmActualPos;
			tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.bRtCompl	:= TRUE;
			
			//Back To Machine Settings
			eChgPage	:= UIP1021McSetGen;
			
			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn1.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn1.bValue	:= FALSE;
//		ELSIF tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA.tyBtnNo.bRtCompl THEN
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA.tyBtnNo.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA.tyBtnNo.bValue		:= FALSE;
//			
//			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
//			
//			//Back To Machine Settings
//			eChgPage	:= UIP1021McSetGen;
//						
//			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn1.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn1.bValue	:= FALSE;
			
		END_IF
		
	ELSIF tyP1026McSetTeach.tyTeachLifterPosB.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB);
		IF tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB.tyBtnNo.bRtCompl THEN	
			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB.tyBtnNo.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Machine Settings
			tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.diValue		:= p_diLifterBtmActualPos;
			tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.bRtCompl	:= TRUE;
			
			//Back To Machine Settings
			eChgPage	:= UIP1021McSetGen;
			
			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn1.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn1.bValue	:= FALSE;
		
		
//		ELSIF tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB.tyBtnNo.bRtCompl THEN
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB.tyBtnNo.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB.tyBtnNo.bValue		:= FALSE;
//			
//			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
//	
//			//Back To Machine Settings
//			eChgPage	:= UIP1021McSetGen;
//						
//			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn1.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn1.bValue	:= FALSE;
			
		END_IF
		
	ELSIF tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos);
		IF tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos.tyBtnNo.bRtCompl THEN	
			tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos.tyBtnNo.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Machine Settings
			tyP1021McSetGen.tyGen.tyNumLifterTopPos.diValue		:= p_diLifterBtmActualPos;
			tyP1021McSetGen.tyGen.tyNumLifterTopPos.bRtCompl	:= TRUE;
			
			//Back To Machine Settings
			eChgPage	:= UIP1021McSetGen;
			
			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn1.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn1.bValue	:= FALSE;
		
//		ELSIF tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos.tyBtnNo.bRtCompl THEN
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos.tyBtnNo.bRtCompl		:= FALSE;
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos.tyBtnNo.bValue		:= FALSE;
//			
//			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
//						
//			//Back To Machine Settings
//			eChgPage	:= UIP1021McSetGen;
//						
//			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn1.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn1.bValue	:= FALSE;
			
		END_IF
		
	ELSIF tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos);
		IF tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos.tyBtnNo.bRtCompl THEN
			tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos.tyBtnNo.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Machine Settings
			tyP1021McSetGen.tyGen.tyNumLifterBtmPos.diValue		:= p_diLifterBtmActualPos;
			tyP1021McSetGen.tyGen.tyNumLifterBtmPos.bRtCompl	:= TRUE;
			
			//Back To Machine Settings
			eChgPage	:= UIP1021McSetGen;
			
			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn1.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn1.bValue	:= FALSE;

//		ELSIF tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos.tyBtnNo.bRtCompl THEN
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos.tyBtnNo.bRtCompl		:= FALSE;
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos.tyBtnNo.bValue		:= FALSE;
//			
//			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
//			
//			//Write Actual Position To Machine Settings
//			tyP1021McSetGen.tyGen.tyNumLifterBtmPos.diValue		:= p_diLifterBtmActualPos;
//			tyP1021McSetGen.tyGen.tyNumLifterBtmPos.bRtCompl	:= TRUE;
//			
//			//Back To Machine Settings
//			eChgPage	:= UIP1021McSetGen;
//			
//			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
//			
//			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn1.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn1.bValue	:= FALSE;
			
		END_IF
		
	ELSIF tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos2);
		IF tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos2.tyBtnNo.bRtCompl THEN
			tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos2.tyBtnNo.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos2.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Machine Settings
			tyP1021McSetGen.tyGen.tyNumLifterTopPos2.diValue		:= p_diLifter2ActualPos;
			tyP1021McSetGen.tyGen.tyNumLifterTopPos2.bRtCompl	:= TRUE;
			
			//Back To Machine Settings
			eChgPage	:= UIP1021McSetGen;
			
			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn1.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn1.bValue	:= FALSE;
//		ELSIF tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos2.tyBtnNo.bRtCompl THEN
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos2.tyBtnNo.bRtCompl		:= FALSE;
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterTopPos2.tyBtnNo.bValue		:= FALSE;
//			
//			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
//
//			//Back To Machine Settings
//			eChgPage	:= UIP1021McSetGen;
//		
//			tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn1.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn1.bValue	:= FALSE;
//			
		END_IF
		
	ELSIF tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos2);
		IF tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos2.tyBtnNo.bRtCompl THEN
			tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos2.tyBtnNo.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos2.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Machine Settings
			tyP1021McSetGen.tyGen.tyNumLifterBtmPos2.diValue		:= p_diLifter2ActualPos;
			tyP1021McSetGen.tyGen.tyNumLifterBtmPos2.bRtCompl	:= TRUE;
			
			//Back To Machine Settings
			eChgPage	:= UIP1021McSetGen;
			
			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn1.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn1.bValue	:= FALSE;
//		ELSIF tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos2.tyBtnNo.bRtCompl THEN
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos2.tyBtnNo.bRtCompl		:= FALSE;
//			tyP1026McSetTeach.tyMsgBoxUpdtLifterBtmPos2.tyBtnNo.bValue		:= FALSE;
//			
//			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
//					
//			//Back To Machine Settings
//			eChgPage	:= UIP1021McSetGen;
//			
//			tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn1.bRtCompl	:= FALSE;
//			tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn1.bValue	:= FALSE;
//			
		END_IF
	END_IF
	
END_ACTION
