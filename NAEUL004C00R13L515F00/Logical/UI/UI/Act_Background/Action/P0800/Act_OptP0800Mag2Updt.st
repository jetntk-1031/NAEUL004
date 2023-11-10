
ACTION Act_OptP0800Mag2Updt: 

	IF p_tyDI.bMagPresentSen2 THEN
		IF p_tyBuffer2BffrStat.bBffrFull THEN
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiValueIdx	:= 2;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiColor	:= 1;
		ELSIF p_tyBuffer2BffrStat.bBffrMty THEN
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiValueIdx := 1;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiColor	:= 0;
		ELSE
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiValueIdx := 3;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiColor	:= 2;
		END_IF
	ELSE
		tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiValueIdx		:= 0;
		tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiColor		:= 1;
	END_IF
	
	//Set Magazine Full
	IF tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetFull.bRtCompl THEN
		tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetFull.bValue	:= TRUE;
		
		eBuffer2Act	:= BufferActSetFull;
		
		IF p_eBuffer2Stat = BufferActSetFull AND p_eBuffer2Status = Done THEN
			eBuffer2Act	:= BufferActIdle;
			
			tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetFull.bRtCompl	:= FALSE;
			tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetFull.bValue	:= FALSE;
		END_IF
	END_IF
	
	IF p_bOpsRun THEN
		tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetFull.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen2 AND NOT p_tyBuffer2BffrStat.bBffrFull AND p_bOpsMagConvUL2RlsMagAllw;
	ELSE
		tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetFull.uiMaskRtStat.0   := p_tyDI.bMagPresentSen2 AND NOT p_tyBuffer2BffrStat.bBffrFull;
	END_IF
	
END_ACTION
