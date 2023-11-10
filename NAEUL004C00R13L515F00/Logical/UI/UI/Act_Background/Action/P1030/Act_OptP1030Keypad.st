
ACTION Act_OptP1030Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP1030MagSet.tyMagSet.tyStringRecipeNm.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1030MagSet.tyMagSet.tyStringRecipeNm.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1030MagSet.tyMagSet.tyNumSltToSltDist.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1030MagSet.tyMagSet.tyNumSltToSltDist.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1030MagSet.tyMagSet.tyNumMaxSlt.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1030MagSet.tyMagSet.tyNumMaxSlt.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1030MagSet.tyMagSet.tyNumTravPosMag1.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1030MagSet.tyMagSet.tyNumTravPosMag1.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1030MagSet.tyMagSet.tyNumTravPosMag2.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1030MagSet.tyMagSet.tyNumTravPosMag2.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1030MagSet.tyMagSet.tyNumTravPosMag3.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1030MagSet.tyMagSet.tyNumTravPosMag3.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle  := tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.sKeypadTitle;	
	ELSE
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= '';
		
	END_IF

END_ACTION
