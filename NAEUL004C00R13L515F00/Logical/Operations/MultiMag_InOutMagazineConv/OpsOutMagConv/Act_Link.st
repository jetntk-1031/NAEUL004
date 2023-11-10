(** 2018-12-11 **)
ACTION Act_Link:
	
	bLifterBtmPos	:= (ABS(p_diLinkLifterActualPos - p_diLinkLifterBtmPos))<500;
	bLifterBtmPos2	:= (ABS(p_diLinkLifter2ActualPos - p_diLinkLifterBtmPos2))<500;

	p_bStepEntMag	:= p_bLinkOpsLifMagULInitDone1 = TRUE AND bLifterBtmPos = TRUE AND (p_tyLinkBffrStat.bBffrFull = TRUE AND p_bLinkLifterLmtSW = TRUE) AND p_bLinkLiftExitMag;
	p_bStepEntMag2	:= p_bLinkOpsLifMagULInitDone2 = TRUE AND bLifterBtmPos2 = TRUE AND (p_tyLinkBffr2Stat.bBffrFull = TRUE AND p_bLinkLifter2LmtSW = TRUE) AND p_bLinkLiftExitMag2;
	
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
