
ACTION Act_OptP0203Lane2ChgMag:

	
	tyP0203OpsMag2.tyChgMag.tyBtnChgMag.bRtLk				:= FALSE; 
	
	tChgMag ( IN:= tyP0203OpsMag2.tyChgMag.tyBtnChgMag.bValue = TRUE OR  FALSE , PT:=T#3s0ms);
	
	IF tChgMag.IN = TRUE THEN
			
	fbChgMagBlinkTm(IN := TRUE);
		
		IF fbChgMagBlinkTm.Q THEN
			fbChgMagBlinkTm(IN := FALSE);
				
			IF (tyP0203OpsMag2.tyChgMag.tyBitmapChgMag.usiValueIdx = 1) THEN
				tyP0203OpsMag2.tyChgMag.tyBitmapChgMag.usiValueIdx		:= 0;
			ELSE
				tyP0203OpsMag2.tyChgMag.tyBitmapChgMag.usiValueIdx		:= 1;
			END_IF
		END_IF
	ELSIF bChgMag = FALSE THEN
		
		tyP0203OpsMag2.tyChgMag.tyBitmapChgMag.usiValueIdx		:= 0;
	END_IF
	
	IF tChgMag.Q = TRUE THEN //(tyP0200OpsGen.tyChgMag.tyBtnChgMag.bRtCompl = TRUE) OR (tyP0203OpsMag2.tyChgMag.tyBtnChgMag.bRtCompl = TRUE) 
	//	OR (tyP0203OpsMag2.tyChgMag.tyBtnChgMag.bRtCompl = TRUE)	OR (tyP0204OpsOutMagConv.tyChgMag.tyBtnChgMag.bRtCompl = TRUE) THEN
		
		tyP0203OpsMag2.tyChgMag.tyBitmapChgMag.usiValueIdx	:= 1;
		
		tyP0203OpsMag2.tyChgMag.tyBtnChgMag.bRtCompl			:= FALSE;
			
		bChgMag			:= TRUE;
	
//	ELSIF EDGEPOS(p_bFollower2SetBffrFull) THEN
//		bFllw2SetFull	:= TRUE;
//	ELSIF EDGEPOS(p_tyDI.bChgMagSig) THEN
//		bChgMagSig		:= TRUE;
	END_IF
	
	IF (p_bOpsOutMagConv2StepInitDone AND p_bOpsStatusRun = TRUE) AND bChgMag = TRUE THEN
		
		eBuffer2Act			:= BufferActSetFull;
			
		IF p_eBuffer2Stat = BufferActSetFull AND p_eBuffer2Status = Done THEN
			eBuffer1Act		:= BufferActIdle;
			
			bChgMag			:= FALSE;
					
		END_IF
		
//	ELSIF bFllw2SetFull = TRUE THEN
//		eBufferAct			:= BufferActSetFull;
//			
//		IF p_eBufferStat = BufferActSetFull AND p_eBufferStatus = Done THEN
//			eBufferAct		:= BufferActIdle;
//			
//			bFllw2SetFull	:= FALSE;
//		END_IF
		
	ELSIF (p_bOpsOutMagConv2StepInitDone AND p_bOpsStatusRun = TRUE) AND bChgMagSig THEN //ADAM Feature
		
		eBuffer2Act			:= BufferActSetFull;
			
		IF p_eBuffer2Stat = BufferActSetFull AND p_eBuffer2Status = Done THEN
			eBuffer2Act		:= BufferActIdle;
			
			bChgMagSig		:= FALSE;
	
		END_IF

	END_IF
	
	IF p_tyDI.bLifter2LmtSW = TRUE THEN 
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyChgMag.tyBtnChgMag.uiMaskRtStat));
	ELSE 
		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyChgMag.tyBtnChgMag.uiMaskRtStat));
	END_IF
	
	
	//Manual unload magazine-------------------------------------------------------------------------------------------------------------
	IF p_bOpsRun THEN
		IF tyP0203OpsMag2.tyChgMag.tyBtnMnlUnloadMag.bValue THEN
			bOpsMnlUnloadMag2 := TRUE;
		ELSE
			bOpsMnlUnloadMag2 := FALSE;
		END_IF
	ELSE
		tyP0203OpsMag2.tyChgMag.tyBtnMnlUnloadMag.bValue := FALSE;
		bOpsMnlUnloadMag2 := FALSE;
	END_IF
	
	IF p_bOpsRun AND p_eOutMagConv2Status <> Busy THEN
		fUIInRtStatHide (ADR(tyP0203OpsMag2.tyChgMag.tyBtnMnlUnloadMag.uiMaskRtStat));
	ELSE
		fUIInRtStatOff (ADR(tyP0203OpsMag2.tyChgMag.tyBtnMnlUnloadMag.uiMaskRtStat));
	END_IF
END_ACTION
