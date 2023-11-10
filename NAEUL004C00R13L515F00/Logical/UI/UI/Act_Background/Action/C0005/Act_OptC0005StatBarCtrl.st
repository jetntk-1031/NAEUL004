
ACTION Act_OptC0005StatBarCtrl: 
	
	//Error / Warning / Info
	IF p_bAlarmErr = TRUE OR p_bAlarmWarning = TRUE OR p_bAlarmInfo = TRUE THEN
		
		fbErrBlinkTm(IN := TRUE);
		IF fbErrBlinkTm.Q = TRUE THEN
			fbErrBlinkTm(IN := FALSE);
			
			IF p_bAlarmErr = TRUE THEN
				
				IF tyCommon.tyMain.tyBitmapStatBar.usiValueIdx = 1 OR tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx = 1 THEN
					tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 0;
					tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 0;
				ELSE
					tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 1;
					tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 1;
				END_IF
				
			ELSE
				
				IF tyCommon.tyMain.tyBitmapStatBar.usiValueIdx = 3 OR tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx = 3  THEN
					tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 0;
					tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 0;
				ELSE
					tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 3;
					tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 3;
				END_IF
				
			END_IF
			
		END_IF
		
	//Safety Relay Signal Activated
	ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
		
		fbRstBlinkTm(IN := TRUE);
		IF fbRstBlinkTm.Q = TRUE THEN
			fbRstBlinkTm(IN := FALSE);
			
			IF tyCommon.tyMain.tyBitmapStatBar.usiValueIdx = 5 OR tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx = 5 THEN
				tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 6;
				tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 6;
			ELSE
				tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 5;
				tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 5;
			END_IF
			
		END_IF
		
	//Manual Running
	ELSIF bUIManualMod THEN
		tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 0;
		tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 0;
		
	//Operation Cycle Stopping
	ELSIF p_eOpsOpsStatus = OperationsStatusCycleStopping OR p_eSimuSimuStatus = SimulationsStatusCycleStopping THEN
		
		fbStopBlinkTm(IN := TRUE);
		IF fbStopBlinkTm.Q = TRUE THEN
			fbStopBlinkTm(IN := FALSE);
			
			IF tyCommon.tyMain.tyBitmapStatBar.usiValueIdx = 1 OR tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx = 1  THEN
				tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 2;
				tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 2;
			ELSE
				tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 1;
				tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 1;
			END_IF
			
		END_IF
		
	//Operation Stepping
	ELSIF p_eOpsOpsStatus = OperationsStatusStep OR p_eSimuSimuStatus = SimulationsStatusRun THEN
		tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 3;
		tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 3;
		
	//Operation Running
	ELSIF p_eOpsOpsStatus = OperationsStatusRun THEN
		tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 2;
		tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 2;
		
	//Standby
	ELSE
		tyCommon.tyMain.tyBitmapStatBar.usiValueIdx		:= 0;
		tyCommon.tyMain1.tyBitmapStatBar.usiValueIdx	:= 0;
	END_IF
	
END_ACTION
