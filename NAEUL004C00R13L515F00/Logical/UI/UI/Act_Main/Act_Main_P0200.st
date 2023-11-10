(** 2018-12-21 **)
ACTION Act_Main_P0200:
	
	//Display L to R
	tyP0200OpsGen.tyOps.tyHotspotOpsMagInfo.uiRtStat.0	:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	
	tyP0200OpsGen.tyOps.tyTxtMag1Slt.uiRtStat.0 		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyTxtMag1Backslash.uiRtStat.0	:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyNumMag1AvlQty.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyNumMag1TtlSlt.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	
	tyP0200OpsGen.tyOps.tyTxtMag2Slt.uiRtStat.0 		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyTxtMag2Backslash.uiRtStat.0	:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyNumMag2AvlQty.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyNumMag2TtlSlt.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	
	tyP0200OpsGen.tyOps.tyTxtMag3Slt.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyTxtBackslash3.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyNumMag3AvlQty.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyNumMag3TtlSlt.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	
	tyP0200OpsGen.tyOps.tyHotspotOps2Mag1.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagDual);
	tyP0200OpsGen.tyOps.tyHotspotOps2Mag2.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagDual);
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag1.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag2.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag3.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	tyP0200OpsGen.tyOps.tyTxtMagSlt.uiRtStat.0			:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyTxtMagSltBackslash.uiRtStat.0	:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyNumMinSltRange.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyNumMaxSltRange.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	
	tyP0200OpsGen.tyOps.tyTxtPitchSlt.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyNumPitch.uiRtStat.0			:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	
	tyP0200OpsGen.tyOps.tyHotspotOvenGroup.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	
	//Display R to L
	tyP0200OpsGen.tyOps.tyHotspotOpsMagInfoRToL.uiRtStat.0	:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	
	tyP0200OpsGen.tyOps.tyTxtMag1SltRToL.uiRtStat.0 		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyTxtMag1BackslashRToL.uiRtStat.0	:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyNumMag1AvlQtyRToL.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyNumMag1TtlSltRToL.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	
	tyP0200OpsGen.tyOps.tyTxtMag2SltRToL.uiRtStat.0 		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyTxtMag2BackslashRToL.uiRtStat.0	:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyNumMag2AvlQtyRToL.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyNumMag2TtlSltRToL.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	
	tyP0200OpsGen.tyOps.tyTxtMag3SltRToL.uiRtStat.0			:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyTxtMag3BackslashRToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyNumMag3AvlQtyRToL.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyNumMag3TtlSltRToL.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = FALSE;

	tyP0200OpsGen.tyOps.tyTxtMagSltRToL.uiRtStat.0			:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyTxtMagSltBackslashRToL.uiRtStat.0	:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyNumMinSltRangeRToL.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyNumMaxSltRangeRToL.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	
	tyP0200OpsGen.tyOps.tyTxtPitchSltRToL.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyNumPitchRToL.uiRtStat.0			:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	
	tyP0200OpsGen.tyOps.tyHotspotOvenGroupRL.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;

	
	//L to R
	tyP0200OpsGen.tyOps.tyHotspotOps2Mag1.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagDual) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps2Mag2.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagDual)OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag1.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple)OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag2.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple)OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag3.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple)OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOpsTravLifter.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;
	//R to L
	tyP0200OpsGen.tyOps.tyHotspotOps2Mag1RToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagDual) OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyHotspotOps2Mag2RToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagDual)OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag1RToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple)OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag2RToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple)OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag3RToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple)OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyHotspotOpsTravRToL.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	
	
	
	//Oven
	tyP0200OpsGen.tyOven.tyTxtCntr.uiRtStat.0	:= NOT (p_tyNtParamCurr.bOvenInfoExtdPrep AND p_tyNtParamCurr.bUIConvDirRL);
	//tyP0200OpsGen.tyOven.tyTxtA.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL; //added
	tyP0200OpsGen.tyOven.tyTxtB.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bUIConvDirRL);
	//tyP0200OpsGen.tyOven.tyBtnOvenA.uiRtStat.0	:= p_tyNtParamCurr.bUIConvDirRL; //added
	tyP0200OpsGen.tyOven.tyBtnOvenB.uiRtStat.0	:= NOT (p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bUIConvDirRL);
	tyP0200OpsGen.tyOven.tyBtnCntrA.uiRtStat.0	:= NOT (p_tyNtParamCurr.bOvenInfoExtdPrep AND p_tyNtParamCurr.bUIConvDirRL);
	tyP0200OpsGen.tyOven.tyBtnCntrB.uiRtStat.0	:= NOT(p_tyNtParamCurr.bOvenInfoExtdPrep AND p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bUIConvDirRL);
	//R to L
	tyP0200OpsGen.tyOven.tyTxtCntrRToL.uiRtStat.0	:= NOT (p_tyNtParamCurr.bOvenInfoExtdPrep AND p_tyNtParamCurr.bUIConvDirRL = FALSE);
	tyP0200OpsGen.tyOven.tyTxtBRToL.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bUIConvDirRL = FALSE);
	tyP0200OpsGen.tyOven.tyBtnOvenBRToL.uiRtStat.0	:= NOT (p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bUIConvDirRL = FALSE);
	tyP0200OpsGen.tyOven.tyBtnCntrARToL.uiRtStat.0	:= NOT (p_tyNtParamCurr.bOvenInfoExtdPrep AND p_tyNtParamCurr.bUIConvDirRL = FALSE);
	tyP0200OpsGen.tyOven.tyBtnCntrBRToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.bOvenInfoExtdPrep AND p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bUIConvDirRL = FALSE);

	
	
	//Machine Bitmap
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 800;
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 500;
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 100;
		ELSE
			tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 200; //200
		END_IF	
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 700;
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL = FALSE AND p_tyNtParamCurr.bProjMagConvLane1Prep THEN
			tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 900;
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 600;
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 300;
		ELSE
			tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 300;
		END_IF
	END_IF
	
	//Communication
	tyP0200OpsGen.tyUSCommB.tyLyr.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjLaneBPrep);
	
	//Direction
	CASE p_tyNtParamCurr.eProjConvDir OF
		ConvDirLToR:
			tyP0200OpsGen.tyOps.tyBitmapDir1.usiValueIdx	:= 0;	// -->>
			tyP0200OpsGen.tyOps.tyBitmapDir2.usiValueIdx	:= 0;	// -->>
		ConvDirRToL:
			tyP0200OpsGen.tyOps.tyBitmapDir1.usiValueIdx	:= 1;	// <<--
			tyP0200OpsGen.tyOps.tyBitmapDir2.usiValueIdx	:= 1;	// <<--
	END_CASE
	

	
	//Hide Warning Bitmap for LF
//	fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//	fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//	fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//	fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//	fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				
//	fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapWarningLF.uiRtStat));
//	fUIInRtStatHide(ADR(tyP0201OpsTrav.tyOps.tyBitmapWarningLF.uiRtStat));
//	fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBitmapWarningLF.uiRtStat));
//	fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBitmapWarningLF.uiRtStat));
	//	fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyBitmapWarningLF.uiRtStat));
	
	
	tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjTCPAGVSigPrep);
	tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiMaskRtStat.0 := NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjTCPAGVSigPrep);
	tyP0200OpsGen.tyOps.tyHotspotAIVGroup1.uiRtStat.0 := p_tyNtParamCurr.bProjMagConvLane1Prep = TRUE AND p_tyNtParamCurr.bProjAGVPrep; //left pic
	tyP0200OpsGen.tyOps.tyHotspotAIVGroup.uiRtStat.0 := p_tyNtParamCurr.bProjMagConvLane1Prep = FALSE AND NOT(p_tyNtParamCurr.bProjAGVPrep); //right pic
	
	tyP0200OpsGen.tyOps.tyHotspotOpsMagLane1.uiRtStat := NOT(p_tyNtParamCurr.bProjMagConvLane1Prep);
	tyP0200OpsGen.tyOps.tyHotspotOpsMagLane2.uiRtStat := NOT(p_tyNtParamCurr.bProjMagConvLane2Prep);

	

	
END_ACTION
