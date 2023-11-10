
ACTION Act_OptP0800Mag1Updt: 

	IF p_tyDI.bMagPresentSen1 THEN
		IF p_tyBuffer1BffrStat.bBffrFull THEN
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiValueIdx	:= 2;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiColor	:= 1;
		ELSIF p_tyBuffer1BffrStat.bBffrMty THEN
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiValueIdx := 1;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiColor	:= 0;
		ELSE
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiValueIdx := 3;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiColor	:= 2;
		END_IF
	ELSE
		tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiValueIdx		:= 0;
		tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiColor		:= 1;
	END_IF
	
	//Set Magazine Full
	IF tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetFull.bRtCompl THEN
		tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetFull.bValue	:= TRUE;
		
		eBuffer1Act	:= BufferActSetFull;
		
		IF p_eBuffer1Stat = BufferActSetFull AND p_eBuffer1Status = Done THEN
			eBuffer1Act	:= BufferActIdle;
			
			tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetFull.bRtCompl	:= FALSE;
			tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetFull.bValue	:= FALSE;
		END_IF
	END_IF
	
	IF p_bOpsRun THEN
		tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetFull.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen1 AND NOT p_tyBuffer1BffrStat.bBffrFull AND p_bOpsMagConvUL1RlsMagAllw;	
	ELSE
		tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetFull.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen1 AND NOT p_tyBuffer1BffrStat.bBffrFull;
	END_IF
		
	
END_ACTION
