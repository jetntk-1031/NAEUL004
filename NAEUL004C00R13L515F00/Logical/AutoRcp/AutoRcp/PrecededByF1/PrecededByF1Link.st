
ACTION PrecededByF1Link: 

	
	
	
	
	p_bZ2AccNewRcpCondition := (p_bLinkOpsRun = TRUE);// AND (p_bLinkOpsMagConvUL1InitDone AND p_bLinkOpsMagConvUL2InitDone AND p_bLinkOpsMagConvUL3InitDone);
	
	
	IF p_bNtParamF1ArbitraryType THEN
		p_bZ1AccNewRcpCondition := (p_bLinkOpsRun = TRUE) AND (p_bLinkOpsTravLifULInitDone = TRUE) AND (p_bLinkPshrConvHvBrd = TRUE);
	
		//tyCurrReqRcp.sBottomBarcode := p_sScannerBarcode;
	END_IF
	
END_ACTION
