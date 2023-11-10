
ACTION Act_OptP0800Mag3Updt: 

	IF p_tyDI.bMagPresentSen3 THEN
		IF p_tyBuffer3BffrStat.bBffrFull THEN
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiValueIdx	:= 2;
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiColor	:= 1;
		ELSIF p_tyBuffer3BffrStat.bBffrMty THEN
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiValueIdx := 1;
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiColor	:= 0;
		ELSE
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiValueIdx := 3;
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiColor	:= 2;
		END_IF
	ELSE
		tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiValueIdx		:= 0;
		tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiColor		:= 1;
	END_IF
	
	//Set Magazine Full
	IF tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetFull.bRtCompl THEN
		tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetFull.bValue	:= TRUE;
		
		eBuffer3Act	:= BufferActSetFull;
		
		IF p_eBuffer3Stat = BufferActSetFull AND p_eBuffer3Status = Done THEN
			eBuffer3Act	:= BufferActIdle;
			
			tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetFull.bRtCompl	:= FALSE;
			tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetFull.bValue	:= FALSE;
		END_IF
	END_IF
	
	IF p_bOpsRun THEN
		tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetFull.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen3 AND NOT p_tyBuffer3BffrStat.bBffrFull AND p_bOpsMagConvUL3RlsMagAllw;
	ELSE
		tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetFull.uiMaskRtStat.0   := p_tyDI.bMagPresentSen3 AND NOT p_tyBuffer3BffrStat.bBffrFull;
	END_IF
	
END_ACTION
