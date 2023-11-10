ACTION Act_OpsScanner:
	//DMC Scanner for Bosch
	//CASE
	bScannerEn := (p_tyNtParamDISettings.diScanComplSig <> 0 OR
	p_tyNtParamDOSettings.diScanTrigSig <> 0 ) AND p_bMcParamDMCScannerEn;
	bSignalTrigMagOutEn := (p_tyNtParamDOSettings.diMag1ExitPCB <> 0 OR
	p_tyNtParamDOSettings.diMag2ExitPCB <> 0 OR
	p_tyNtParamDOSettings.diMag3ExitPCB <> 0 ) AND p_bMcParamDMCScannerEn;
	IF bScannerEn OR bSignalTrigMagOutEn THEN
		CASE  eOpsStep OF
			TravLifULStepScanStdBy:
				bStartScanSig := TRUE;
				fbScanTimOut(IN:= TRUE,PT :=  DINT_TO_TIME(p_diMcParamDMCScanResponseTO));
				IF p_bDIPCBScanComplSig THEN
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
