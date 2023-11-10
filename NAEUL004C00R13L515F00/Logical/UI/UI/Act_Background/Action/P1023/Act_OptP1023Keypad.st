
ACTION Act_OptP1023Keypad: 
	
	//Upstream A
	IF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyUSHermesA.tyNumSndAliveTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyUSHermesA.tyNumSndAliveTm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyUSHermesA.tyNumLaneID.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyUSHermesA.tyNumLaneID.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyUSHermesA.tyNumHostPort.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyUSHermesA.tyNumHostPort.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyUSHermesA.tyStringHostAddr.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyUSHermesA.tyStringHostAddr.sKeypadTitle;
		
	END_IF
	
	//Upstream B
	IF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyUSHermesB.tyNumSndAliveTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyUSHermesB.tyNumSndAliveTm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyUSHermesB.tyNumLaneID.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyUSHermesB.tyNumLaneID.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyUSHermesB.tyNumHostPort.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyUSHermesB.tyNumHostPort.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyUSHermesB.tyStringHostAddr.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyUSHermesB.tyStringHostAddr.sKeypadTitle;
		
	END_IF
	
END_ACTION
