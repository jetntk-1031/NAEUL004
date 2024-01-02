(** 2018-12-08 **)
ACTION Act_Link:

		
		
	//Machine --> AGV ---> Communication On & Machine itself RUN Mode
	IF g_tyOps.bRun = TRUE THEN
		
		tylocalAGV.Out.tyDTMagToAGV.bCI1Auto := TRUE;
	ELSE
		tylocalAGV.Out.tyDTMagToAGV.bCI1Auto	:= FALSE;
	END_IF
	
	tylocalAGV.Out.tyDTMagToAGV.bCI1Occupied 			:= tylocalAGV.In.bBufferMagPresent OR tylocalAGV.In.bMagConvLftSen OR tylocalAGV.In.bMagConvRgtSen; // Magazine is present
	
	fbMagFullTm(IN:= tylocalAGV.In.bMagConvRgtSen = FALSE AND tylocalAGV.In.bBufferMagPresent = FALSE);
	IF tylocalAGV.In.bBufferMagPresent AND tylocalAGV.In.tyLinkBufferStat.bBffrFull THEN
		tylocalAGV.Out.tyDTMagToAGV.bCI1MagazineFull		:=  TRUE;
	ELSIF fbMagFullTm.Q THEN
		tylocalAGV.Out.tyDTMagToAGV.bCI1MagazineFull		:=  FALSE;
	END_IF 
	
	IF tylocalAGV.In.bLinkAGVOnline THEN
		
		tylocalAGV.In.tyAGVToDTMag.bVEHAuto		:= tylocalAGV.In.tyLinkAGVtoDTMag.bVEHAuto;
		tylocalAGV.In.tyAGVToDTMag.bVEHInPos1	:= tylocalAGV.In.tyLinkAGVtoDTMag.bVEHInPos1 AND bAGVInPosSen;
		tylocalAGV.In.tyAGVToDTMag.bVEHInPos2 	:= tylocalAGV.In.tyLinkAGVtoDTMag.bVEHInPos2;
		tylocalAGV.In.tyAGVToDTMag.bVEHInPos3 	:= tylocalAGV.In.tyLinkAGVtoDTMag.bVEHInPos3;
		tylocalAGV.In.tyAGVToDTMag.bVEH1Occupied	:= tylocalAGV.In.tyLinkAGVtoDTMag.bVEH1Occupied;
		tylocalAGV.In.tyAGVToDTMag.bVEH2Occupied	:= tylocalAGV.In.tyLinkAGVtoDTMag.bVEH2Occupied;
		tylocalAGV.In.tyAGVToDTMag.bVEH3Occupied	:= tylocalAGV.In.tyLinkAGVtoDTMag.bVEH3Occupied;
		tylocalAGV.In.tyAGVToDTMag.bVEHRunning	:= tylocalAGV.In.tyLinkAGVtoDTMag.bVEHRunning;
		
	ELSE
		
		tylocalAGV.In.tyAGVToDTMag.bVEHAuto		:= FALSE;
		tylocalAGV.In.tyAGVToDTMag.bVEHInPos1	:= FALSE;
		tylocalAGV.In.tyAGVToDTMag.bVEHInPos2 	:= FALSE;
		tylocalAGV.In.tyAGVToDTMag.bVEHInPos3 	:= FALSE;
		tylocalAGV.In.tyAGVToDTMag.bVEH1Occupied:= FALSE;
		tylocalAGV.In.tyAGVToDTMag.bVEH2Occupied:= FALSE;
		tylocalAGV.In.tyAGVToDTMag.bVEH3Occupied:= FALSE;
		tylocalAGV.In.tyAGVToDTMag.bVEHRunning	:= FALSE;
		
	END_IF
 
	bAIVInPos := tylocalAGV.In.tyAGVToDTMag.bVEHInPos1;
	bAIVAuto := tylocalAGV.In.tyAGVToDTMag.bVEHAuto;
	bAIVOccupied := tylocalAGV.In.tyAGVToDTMag.bVEH1Occupied;
	bMagConvAuto := tylocalAGV.Out.tyDTMagToAGV.bCI1Auto;
	bMagConvOccupied :=  tylocalAGV.Out.tyDTMagToAGV.bCI1Occupied;
	
	tylocalAGV.Out.tyDTMagToAGV.bCI1Running := bMagConvRun; 
	tylocalAGV.Out.tyDTMagToAGV.bCI1Rdy	:= bMagConvRdy;
	
	
	IF tylocalAGV.In.bNtParamAGVInPosSenPrep THEN
		fbInPosErrTimer(IN:= tylocalAGV.In.tyLinkAGVtoDTMag.bVEHInPos1 AND bAGVInPosSen = FALSE, PT:= T#10s);
		IF fbInPosErrTimer.Q THEN
			tylocalAGV.Out.eStatus		:= Error;
			udiStatus	:= 10009;	//AIV Not In Position
		END_IF
	END_IF
	
	
	IF tylocalAGV.In.bNtParamAGVInPosSenPrep THEN
		bAGVInPosSen := tylocalAGV.In.bAGVInPosSen1 AND tylocalAGV.In.bAGVInPosSen2;
	ELSE
		bAGVInPosSen := TRUE;
	END_IF
	
	
	
END_ACTION
