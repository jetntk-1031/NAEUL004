
ACTION Act_Main_P0940:
	
	//Display
	tyP0940CommCtrl.tyUSSMEMAB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjLaneBPrep);
	IF p_tyNtParamCurr.bProjAGVPrep AND (p_tyMcParamCurr.eAGVComProtocol <> McSetAGVTCPEnableTCP AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVTCPDisableTCP) THEN
		tyP0940CommCtrl.tySOT.tySOTLyr1.uiRtStat.0 := FALSE;
		tyP0940CommCtrl.tySOT.tySOTLyr2.uiRtStat.0 := FALSE;
		tyP0940CommCtrl.tySOT.tySOTLyr3.uiRtStat.0 := p_tyNtParamCurr.eProjMag <> ULMagTriple AND p_tyNtParamCurr.eProjMag <> ULMagQuadruple;
		tyP0940CommCtrl.tySOT.tySOTLyr4.uiRtStat.0 := p_tyNtParamCurr.eProjMag <> ULMagQuadruple;
		IF p_tyNtParamCurr.bProjMagConvLane1Prep THEN
			tyP0940CommCtrl.tySOT.tyTxtAIVCommProtocol.uiRtStat.0 := TRUE;
		END_IF
	ELSE
		
		tyP0940CommCtrl.tySOT.tySOTLyr1.uiRtStat.0 := TRUE;
		tyP0940CommCtrl.tySOT.tySOTLyr2.uiRtStat.0 := TRUE;
		tyP0940CommCtrl.tySOT.tySOTLyr3.uiRtStat.0 := TRUE;
		tyP0940CommCtrl.tySOT.tySOTLyr4.uiRtStat.0 := TRUE;
		IF p_tyNtParamCurr.bProjMagConvLane1Prep THEN
			tyP0940CommCtrl.tySOT.tyTxtAIVCommProtocol.uiRtStat.0 := TRUE;
		END_IF
	END_IF
	
	tyP0940CommCtrl.tySOT.tyBtnAIVRcv1.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0940CommCtrl.tySOT.tyBtnAIVRcv2.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0940CommCtrl.tySOT.tyBtnAIVRcv3.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0940CommCtrl.tySOT.tyBtnAIVRcv4.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
		
	IF  tyP0940CommCtrl.tySOT.tySOTLyr4.uiRtStat.0 = TRUE AND p_tyNtParamCurr.tyDISettings.diScanComplSig > 0   THEN //if hidden update
		tyP0940CommCtrl.tyDMCRFID.tyLyr.uiRtStat.0 := FALSE;
	ELSE
		tyP0940CommCtrl.tyDMCRFID.tyLyr.uiRtStat.0 := TRUE;
	END_IF
END_ACTION
