
ACTION Act_OptP1021Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyStringMcNm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyStringMcNm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumSSaverTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumSSaverTm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyStringIPAddr.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyStringIPAddr.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyStringSubnetMask.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyStringSubnetMask.sKeypadTitle;
		//ADD
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyStringHMIIPAddr.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyTxtTitle.sTxt		:= tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumConvInitTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumConvInitTm.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumWidthAtHm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumWidthAtHm.sKeypadTitle;	
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumTranInErrDlyTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumTranInErrDlyTm.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumTravPosLaneA.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumTravPosLaneA.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumTravPosLaneB.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumTravPosLaneB.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumWidthOffset.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumWidthOffset.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyNetwork.tyStringIPAddr.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyNetwork.tyStringIPAddr.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyNetwork.tyStringSubnetMask.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyNetwork.tyStringSubnetMask.sKeypadTitle;
			
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumMag1WidthAtHm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumMag1WidthAtHm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumMag2WidthAtHm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumMag2WidthAtHm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumMag3WidthAtHm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumMag3WidthAtHm.sKeypadTitle;

	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.sKeypadTitle;

	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosInlet.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosInlet.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumTCPSvrPort.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumTCPSvrPort.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1021McSetGen.tyGen.tyStringDefaultGWIP.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1021McSetGen.tyGen.tyStringDefaultGWIP.sKeypadTitle;
	ELSE
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= '';
		
	END_IF

END_ACTION
