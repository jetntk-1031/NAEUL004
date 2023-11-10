
ACTION Act_OptP1025Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP1025McSetScan.tyScan.tyStringTopScanSvrIP.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1025McSetScan.tyScan.tyStringTopScanSvrIP.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1025McSetScan.tyScan.tyNumTopScanSvrPort.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1025McSetScan.tyScan.tyNumTopScanSvrPort.sKeypadTitle; 
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1025McSetScan.tyScan.tyStringBtmScanSvrIP.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1025McSetScan.tyScan.tyStringBtmScanSvrIP.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1025McSetScan.tyScan.tyNumBtmScanSvrPort.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1025McSetScan.tyScan.tyNumBtmScanSvrPort.sKeypadTitle;

	END_IF
	
END_ACTION
