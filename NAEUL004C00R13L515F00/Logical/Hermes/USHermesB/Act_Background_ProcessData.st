(** 2021-08-01 **)
ACTION Act_Background_ProcessData:
	
    //Pass Board Available data and bStopTransportSnd BOOL to "BoardArrived" (SupervisoryHermes)
	IF EDGEPOS (fbSequenceUS.eMsgTypeSnd = HermesMsgTypeStopTransport) AND p_bOpsGConv1HvBrd THEN //Incoming Zone have board
		tyBoardArrivedInfo := tyBoardAvailableRcv; 
		bStopTransportSnd := TRUE;	
	END_IF
	
	//Auto Reset bStopTransportSnd
	fbSendTm(IN := bStopTransportSnd, PT := T#0.5S);
	IF fbSendTm.Q = TRUE THEN
		fbSendTm(IN := FALSE);
		bStopTransportSnd	:= FALSE;
	END_IF
	
	//Process BoardForecast(Id) or BoardForecast()
	bFeatureBoardForecast := (p_tyParam.bFeatureBoardForecast = TRUE) AND (tyServiceDescriptionRcv.tyAvl.tySupportedFeatures.bFeatureBoardForecast = TRUE);
	
	IF bFeatureBoardForecast THEN 
		IF tyMsgTypeRcv.bBoardForecast AND tyBoardForecastRcv.tyData.sForecastId <> '' AND bProcessBoardForecastId = FALSE AND fbDelayTm.Q AND bBFAccDataReq = FALSE AND bManuallInsertLastZone = FALSE THEN
			bProcessBoardForecastId := TRUE; //Process BoardForecast(Id)
			tyBoardForecastAcc := tyBoardForecastRcv;
			tyMsgTypeRcv.bBoardForecast := FALSE;
			fbDelayTm(IN := FALSE);
		ELSIF tyMsgTypeRcv.bBoardForecast AND tyBoardForecastRcv.tyData.sForecastId = '' AND bProcessBoardForecastId = FALSE THEN //Process BoardForecast()
			tyBoardForecastAcc := tyBoardForecastRcv;
			tyMsgTypeRcv.bBoardForecast := FALSE;
		END_IF
	ELSE
		bProcessBoardForecastId := FALSE;
	END_IF
	
	//Next PCB incoming time
	tNextPCBTm := REAL_TO_TIME((tyBoardForecastAcc.tyData.rTimeUntilAvailable)*1000);
	
    //Delay 0.5s to process another new BoardForecast(Id)
	fbDelayTm(IN := NOT bProcessBoardForecastId, PT := T#0.5S); 
	
	//Ready Transport
	p_bRdyTransport	:= bRdyTransport;
	
	//Auto Reset bStopTransportSnd
	fbCheckBATimer(IN := bBoardAvailable AND (fbSequenceUS.eState = HermesStateAvailableAndReady) AND (bBlkUS = FALSE), PT := T#0.1S); //need this small delay to compare recipe & width, before board transfer can happens
	IF fbCheckBATimer.Q = TRUE THEN
		fbCheckBATimer(IN := FALSE);
		bRdyTransport := TRUE;
	ELSE
		bRdyTransport := FALSE;
	END_IF

END_ACTION
