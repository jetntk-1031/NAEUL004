
ACTION Act_OptP0204RstMnl:
	
	IF eCurrPage <> UIP0204OpsMag3 AND eCurrPage <> UIP0003MMenu THEN
		bNewMag3	:= FALSE;
		bRlsMag3	:= FALSE;
		tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
		tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
		tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
		
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.bValue := FALSE;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.bRtLk  := FALSE;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.usiBitmapIdx := 0;
	END_IF
	
END_ACTION
