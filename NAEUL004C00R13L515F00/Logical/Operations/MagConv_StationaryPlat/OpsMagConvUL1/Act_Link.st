(** 2018-12-11 **)
ACTION Act_Link:
	
	//Clamp RS
	p_bMagClampRS1 		:= (p_bLinkFixedMagClampRS1 AND p_bLinkRmtMagClampRS1) OR bNewMagVerified;
	p_bMagClampRS2		:= (p_bLinkFixedMagClampRS2 AND p_bLinkRmtMagClampRS2) OR p_bLinkNewMagVerified2;
	p_bMagClampRS3		:= (p_bLinkFixedMagClampRS3 AND p_bLinkRmtMagClampRS3) OR p_bLinkNewMagVerified3;

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
	
	//New magazine auto detection at inlet sensor 
	fbMagAutoDetTm(IN := p_bLinkDIMagEntrySen OR p_bLinkDIMagPresentSen1, PT := DINT_TO_TIME(p_bLinkMcParamMagAutoDetTm));
	IF fbMagAutoDetTm.Q AND bMagManEx THEN
		bNewMagAutoDetected := TRUE;
	ELSE 
		bNewMagAutoDetected := FALSE;
	END_IF
	
	
	IF p_bLinkNtParamMagModelAutoVerify THEN
		IF p_bLinkMagRcpCurrRcpMagModel = 0  //CAB706.2
			AND p_bDIMagConvHeightSen = TRUE 
			AND p_bDIMagConvSelUnclampRS = FALSE
			AND p_bDIMagConvCAB717Sen = FALSE
			AND p_bDIMagConvSmallSen
			AND ((NOT p_bMagAWCloseLimit AND NOT  p_bMagAWOpenLimit) OR p_tyBufferStat1.bBffrMty = FALSE)
			THEN
			bNewMagVerified:= TRUE;
			
		ELSIF  p_bLinkMagRcpCurrRcpMagModel = 1 //CAB716.2
			AND p_bDIMagConvHeightSen = FALSE
			AND p_bDIMagConvSelUnclampRS = FALSE
			AND p_bDIMagConvCAB717Sen = FALSE
			AND p_bDIMagConvSmallSen 
			AND ((NOT p_bMagAWCloseLimit AND NOT  p_bMagAWOpenLimit) OR p_tyBufferStat1.bBffrMty = FALSE)
			THEN
			bNewMagVerified:= TRUE;
		
		ELSIF  p_bLinkMagRcpCurrRcpMagModel = 2 //CAB717.2
			AND p_bDIMagConvHeightSen = FALSE 
			AND p_bDIMagConvSelUnclampRS
			AND p_bDIMagConvCAB717Sen
			AND p_bDIMagConvLargeSen
			AND ((NOT p_bMagAWCloseLimit AND NOT  p_bMagAWOpenLimit) OR p_tyBufferStat1.bBffrMty = FALSE)
			THEN
			bNewMagVerified:= TRUE;
		ELSE
			bNewMagVerified:= FALSE;
		END_IF
	ELSE
		bNewMagVerified:= TRUE;
	END_IF
	
	IF p_bLinkMagRcpCurrRcpMagModel = 3 THEN
		bCAB703		:= TRUE;
		bFIXMag		:= FALSE;
	ELSIF p_bLinkMagRcpCurrRcpMagModel = 4 THEN
		bCAB703		:= FALSE;
		bFIXMag		:= TRUE;
	END_IF
		
	
	bAIVInPos := p_tyAGVToDTMag.bVEHInPos1 OR p_bDISOTRcv;
	
	IF p_bBufferMagRemoved THEN
		bManualUnloadMag := FALSE;
	END_IF

	
	
	IF bAutoRcpEn THEN 
		p_bUSAllow := NOT(p_bMagPropDiffBlk) ;
		p_bAllwChgWidth := p_bChgMagWidth;
		p_bAllwChgSlot	:= p_bChgMagSlot;
	ELSE
		p_bUSAllow := p_sProdRcpCurrRcp1Name = p_sProdRcpCurrRcp2Name;
	END_IF
		

	

END_ACTION
