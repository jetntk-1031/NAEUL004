(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bLinkProjLifterMagPlatform = FALSE THEN
		p_bRdyRcv	:= (*p_bLinkOpsMagMagBffrAvl = TRUE OR*) p_bLinkOpsMagConvMagBffrAvl = TRUE;
	ELSE
		p_bRdyRcv	:= p_eLinkOpsLifMagULMagNxtLoad = MagNxtLoadMag3;
	END_IF
	
	p_bComplSigOn	:= p_bLeftSen = FALSE;
	
	p_bDirLToR	:= p_eLinkConvDir = ConvDirLToR OR p_eLinkConvDir = ConvDirLToL;
	
END_ACTION
