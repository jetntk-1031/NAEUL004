(** 2019-01-20 **)
ACTION Act_Link:
	
	IF p_bLinkProjLifterMagPlatform AND NOT(p_bLinkProjMagConvLanePrep) THEN
		p_bPaused	:= p_bLinkOpsTravLifULPaused AND p_bLinkOpsLifMagULPaused;
	ELSIF p_bLinkProjMagConvLanePrep THEN
		p_bPaused	:=  p_bLinkOpsLifMagULPaused AND p_bLinkOpsInMagConvPaused AND p_bLinkOpsOutMagConvPaused AND p_bLinkOpsMagConvStprPaused
						AND p_bLinkOpsMagConv2StprPaused;
	ELSE
		
		p_bPaused	:= p_bLinkOpsTravLifULPaused
					(*AND p_bLinkOpsMagUL1Paused AND p_bLinkOpsMagUL2Paused AND p_bLinkOpsMagUL3Paused*)
						AND p_bLinkOpsMagConvUL1Paused AND p_bLinkOpsMagConvUL2Paused AND p_bLinkOpsMagConvUL3Paused;
		
	END_IF
	
END_ACTION
