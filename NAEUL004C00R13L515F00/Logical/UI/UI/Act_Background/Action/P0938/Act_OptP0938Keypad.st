
ACTION Act_OptP0938Keypad: 
	
	IF bDispMagAW1 = TRUE THEN
		
		(*Magazine Auto Width 1*)
		IF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMagAW1.tyNumNewWidth.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMagAW1.tyNumNewWidth.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd1.tyNumTargetPos.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd1.tyNumTargetPos.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd1.tyNumStepSize.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd1.tyNumStepSize.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd1.tyNumNomSpd.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd1.tyNumNomSpd.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd1.tyNumSlwSpd.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd1.tyNumSlwSpd.sKeypadTitle;
			
		END_IF
		
	ELSIF bDispMagAW2 = TRUE THEN
		
		(*Magazine Auto Width 2*)
		IF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMagAW2.tyNumNewWidth.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMagAW2.tyNumNewWidth.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd2.tyNumTargetPos.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd2.tyNumTargetPos.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd2.tyNumStepSize.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd2.tyNumStepSize.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd2.tyNumNomSpd.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd2.tyNumNomSpd.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd2.tyNumSlwSpd.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd2.tyNumSlwSpd.sKeypadTitle;
			
		END_IF
		
	ELSIF bDispMagAW3 = TRUE THEN
		
		(*Magazine Auto Width 3*)
		IF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMagAW3.tyNumNewWidth.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMagAW3.tyNumNewWidth.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd3.tyNumTargetPos.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd3.tyNumTargetPos.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd3.tyNumStepSize.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd3.tyNumStepSize.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd3.tyNumNomSpd.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd3.tyNumNomSpd.sKeypadTitle;
			
		ELSIF fUIOutRtStatTPIsOpen(ADR(tyP0938MagAW.tyMotionStd3.tyNumSlwSpd.uiRtStat)) = TRUE THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0938MagAW.tyMotionStd3.tyNumSlwSpd.sKeypadTitle;
			
		END_IF
		
	END_IF
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		CASE p_tyMagRcpCurrRcp.usiMagModel OF
			0,1:
				tyP0938MagAW.tyMagAW1.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax-70000;
				tyP0938MagAW.tyMagAW2.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax-70000;
				tyP0938MagAW.tyMagAW3.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax-70000;
				
			
			2:
				tyP0938MagAW.tyMagAW1.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
				tyP0938MagAW.tyMagAW2.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
				tyP0938MagAW.tyMagAW3.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
		END_CASE
	ELSE
		tyP0938MagAW.tyMagAW1.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
		tyP0938MagAW.tyMagAW2.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
		tyP0938MagAW.tyMagAW3.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
		
	END_IF
END_ACTION
