
ACTION Act_OptP0933FullMask: 
	
	IF eCurrPage = UIP0933PusherConv THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0933PushConv.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0933PushConv.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0933PushConv.tyFullMaskSafetyRly);
			
		ELSIF p_tyNtParamCurr.bProjOutletShutPrep AND 
			(p_tyDI.bOutShutterOpenRS = FALSE AND ((ABS(p_diTravActualPos - p_tyMagRcpCurrRcp.diMag1TravPosInUM) < 500) OR p_bTravIsHomed = FALSE))
			OR (p_tyDI.bOutShutterOpenRS2 = FALSE AND ((ABS(p_diTravActualPos - p_tyMagRcpCurrRcp.diMag2TravPosInUM) < 500) OR p_bTravIsHomed = FALSE))
			OR (p_tyDI.bOutShutterOpenRS3 = FALSE AND ((ABS(p_diTravActualPos - p_tyMagRcpCurrRcp.diMag3TravPosInUM) < 500) OR p_bTravIsHomed = FALSE)) THEN 
			
			//	p_tyC0002FullMask ACCESS ADR(tyP0933PushConv.tyFullMaskOutShutterInterrupt);
			p_tyC0002FullMask ACCESS ADR(tyP0933PushConv.tyFullMaskHide);
			tyP0933PushConv.tyCom.tyTxtExtWarning.sValue := sPshrExtWarnMsg;
			tyP0933PushConv.tyCom.tyTxtExtWarning.uiRtStat := FALSE;
			
		ELSIF p_tyNtParamCurr.bAWPrep AND  p_tyNtParamCurr.bAWPusherPrep 
			AND p_tyMcParamCurr.bAWDis = FALSE
			AND p_bAWOpenIsHomed = FALSE 
			AND (p_diAWPushOrPullerActualPos + p_tyMcParamCurr.diAWPusherAtHmPosInUM )>(p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos-15000) 
			THEN
			p_tyC0002FullMask ACCESS ADR(tyP0933PushConv.tyFullMaskAWConvInterrupt);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0933PushConv.tyFullMaskHide);
			tyP0933PushConv.tyCom.tyTxtExtWarning.uiRtStat := TRUE;

		END_IF
		
	END_IF
	
END_ACTION
