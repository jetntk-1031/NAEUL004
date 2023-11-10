
ACTION PrecededBySelfLink: 

	//For Accepting BA or BF from HermesA/B
	p_bHermesBADataAccepted := p_bHermesABAAccepted OR p_bHermesBBAAccepted;
	IF p_bHermesABAAccepted THEN
		p_tyHermesBARcv ACCESS p_USHermesABoardAvailableRcv;
	ELSIF  p_bHermesBBAAccepted THEN
		p_tyHermesBARcv ACCESS p_USHermesABoardAvailableRcv;
	END_IF	
	
	p_bHermesBFDataAccepted	:= 	p_bHermesABFAccepted OR p_bHermesBBFAccepted;
	IF p_bHermesABFAccepted THEN
		p_tyHermesBFRcv ACCESS p_USHermesABoardForecastRcv;
	ELSIF p_bHermesBBFAccepted THEN
		p_tyHermesBFRcv ACCESS p_USHermesBBoardForecastRcv;
	END_IF
	
	
	//Z1 Accepting Condition
	p_bZ1AccNewRcpCondition := (p_bLinkOpsRun = TRUE) AND (p_bLinkOpsTravLifULInitDone = TRUE) AND (p_bLinkPshrConvHvBrd = FALSE);
	
	//Z2 Accepting Condition
	p_bZ2AccNewRcpCondition := (p_bLinkOpsRun = TRUE);// AND (p_bLinkOpsMagConvUL1InitDone AND p_bLinkOpsMagConvUL2InitDone AND p_bLinkOpsMagConvUL3InitDone);
	
END_ACTION
