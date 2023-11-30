ACTION Act_OpsScanner:
	//DMC Scanner for Bosch
	//CASE
	bScannerEn := (p_tyNtParamDISettings.diScanComplSig <> 0 OR
	p_tyNtParamDOSettings.diScanTrigSig <> 0 ) AND p_bMcParamDMCScannerEn;
	bSignalTrigMagOutEn := (p_tyNtParamDOSettings.diMag1ExitPCB <> 0 OR
	p_tyNtParamDOSettings.diMag2ExitPCB <> 0 OR
	p_tyNtParamDOSettings.diMag3ExitPCB <> 0 ) AND p_bMcParamDMCScannerEn;
	bTCPScanner :=  (p_bTopScannerEn OR p_bBtmScannerEn);
	IF bScannerEn OR bSignalTrigMagOutEn OR bTCPScanner THEN
		CASE  eOpsStep OF
			TravLifULStepScanStdBy:
				bStartScanSig := TRUE;
				fbScanTimOut(IN:= TRUE,PT :=  DINT_TO_TIME(p_diMcParamDMCScanResponseTO));
				eTCPBtmAct   := TCPActFullWriteReadUntilValid*BOOL_TO_USINT(p_bBtmScannerEn);
				eTCPTopAct	 := TCPActFullWriteReadUntilValid*BOOL_TO_USINT(p_bTopScannerEn);
				IF (p_bDIPCBScanComplSig OR NOT(bScannerEn))
					AND  
					(NOT(p_bBtmScannerEn) OR  (p_eTCPBtmStatus = Done AND p_eTCPBtmStat = TCPActFullWriteReadUntilValid )) 
					AND
					(NOT(p_bTopScannerEn) OR  (p_eTCPTopStatus = Done AND p_eTCPTopStat = TCPActFullWriteReadUntilValid ))
					THEN // 
					eTCPBtmAct := TCPActIdle_0*BOOL_TO_USINT(p_bBtmScannerEn);
					eTCPTopAct	 := TCPActIdle_0*BOOL_TO_USINT(p_bTopScannerEn);
					bStartScanSig := FALSE;
					eGotoOpsStep := TravLifULStepDSSigWait;
					fbScanTimOut(IN:= FALSE);
				ELSIF fbScanTimOut.Q THEN //Error
					bStartScanSig := FALSE;
					fbScanTimOut(IN:= FALSE);
					eStatus := Error;
					udiStatus	:= 10011;
				END_IF
		TravLifULStepExitBrd:
			IF bSignalTrigMagOutEn THEN
				IF eGotoOpsStep <> TravLifULStepExitBrd THEN
					bPCBExitMag1 := FALSE;
					bPCBExitMag2 := FALSE;
					bPCBExitMag3 := FALSE;
				ELSIF eTravLifPosGo = TravLifULPosDS1 THEN
					bPCBExitMag1 := TRUE;
				ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
					bPCBExitMag2 := TRUE;
				ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
					bPCBExitMag3 := TRUE;
				END_IF
			END_IF
		END_CASE
		
		//update in/output
		
		
		//interrupt (start scan)
		CASE  eGotoOpsStep OF 
			TravLifULStepDSSigWait:
				IF eOpsStep <> TravLifULStepScanStdBy AND 
					(eOpsStep = TravLifULStepInitTravLif OR eOpsStep = TravLifULStepEntBrd 
					OR (eOpsStep = TravLifULStepInletPneuCls AND bSkipCloseInletShutter))				 
					AND (bScannerEn  ) THEN //temporary bypass
					eGotoOpsStep := TravLifULStepScanStdBy;
				END_IF
				
		END_CASE
	END_IF 
END_ACTION
