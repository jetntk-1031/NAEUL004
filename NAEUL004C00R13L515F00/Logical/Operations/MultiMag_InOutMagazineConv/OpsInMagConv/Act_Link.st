
(** 2018-12-11 **)
ACTION Act_Link:
	
	bLifterTopPos		:= (ABS(p_diLinkLifterActualPos - p_diLinkLifterTopPos))<500;
	bLifterTopPos2		:= (ABS(p_diLinkLifter2ActualPos - p_diLinkLifterTopPos2))<500;

//	p_bStepOpsEntMag	:= p_bLinkOpsLifMagULInitDone1 = TRUE AND (p_bLinkUIMagRun = TRUE OR (p_bLinkInMagConvExtSen = FALSE AND p_bLinkInMagConvMidSen = TRUE));
	p_bStepOpsEntMag	:= p_bLinkInMagConvExtSen = FALSE AND p_bLinkInMagConvMidSen = TRUE;
	p_bStepOpsExtMag	:= p_bLinkOpsLifMagULInitDone1 = TRUE AND bLifterTopPos = TRUE AND p_bLinkExtStprRetracted = TRUE AND p_bLinkInMagConvExtSen = TRUE AND p_bLinkOpsLifterMagStepEntMag = TRUE;
	p_bStepOpsEntMidMag	:= p_bLinkInMagConvEntSen AND p_bLinkInMagConvMidSen = FALSE;
	
	p_bStepOpsEntMag2	:= p_bLinkInMagConv2ExtSen = FALSE AND p_bLinkInMagConv2MidSen = TRUE;
	p_bStepOpsExtMag2	:= p_bLinkOpsLifMagULInitDone2 = TRUE AND bLifterTopPos2 = TRUE AND p_bLinkExtStpr2Retracted = TRUE AND p_bLinkInMagConv2ExtSen = TRUE AND p_bLinkOpsLifterMagStepEntMag2 = TRUE;
	p_bStepOpsEntMidMag2:= p_bLinkInMagConv2EntSen AND p_bLinkInMagConv2MidSen = FALSE;

	//LiftConv Out magazine
	IF p_bLinkOpsLifterMagStepExtMag THEN
		bLiftConvMagExist := FALSE;
	END_IF
	IF p_bLinkOpsLifterMagStepExtMag2 THEN
		bLiftConvMagExist2 := FALSE;
	END_IF
	
	//Mag Exchange Mode
	CASE p_eLinkMcParamMagExMode OF
		McSetMagXcAutoManMode:
			bMagManEx := TRUE;
			bMagAutoEx := TRUE;
	
		McSetMagXcAutoMode:
			bMagManEx := FALSE;
			bMagAutoEx := TRUE;
			
		McSetMagXcManMode:
			bMagManEx := TRUE;
			bMagAutoEx := FALSE;
		
	END_CASE
END_ACTION
